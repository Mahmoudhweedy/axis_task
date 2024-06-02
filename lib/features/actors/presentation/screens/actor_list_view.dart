import 'package:axis_task/features/actors/data/models/actor_model.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

import '../../domain/logic_holder/actors_controller.dart';
import '../widgets/actor_list_item.dart';

class ActorsListView extends StatefulWidget {
  const ActorsListView({super.key});

  @override
  State<ActorsListView> createState() => _ActorsListViewState();
}

class _ActorsListViewState extends State<ActorsListView> {
  late ActorsProvider actorsProvider;

  @override
  void initState() {
    actorsProvider = context.read<ActorsProvider>();
    actorsProvider.pagingController.addPageRequestListener((pageKey) {
      actorsProvider.fetchPage(pageKey, context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) => RefreshIndicator(
        onRefresh: () => Future.sync(
          () => actorsProvider.pagingController.refresh(),
        ),
        child: PagedListView<int, ActorModel>.separated(
          pagingController: actorsProvider.pagingController,
          builderDelegate: PagedChildBuilderDelegate<ActorModel>(
            animateTransitions: true,
            itemBuilder: (context, item, index) => CharacterListItem(
              actor: item,
            ),
          ),
          separatorBuilder: (context, index) => const Divider(),
        ),
      );

  @override
  void dispose() {
    actorsProvider.pagingController.dispose();
    super.dispose();
  }
}
