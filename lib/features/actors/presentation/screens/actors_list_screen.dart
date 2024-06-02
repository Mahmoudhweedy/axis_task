import 'package:axis_task/features/actors/domain/logic_holder/actors_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/di/dependency_injection.dart';
import 'actor_list_view.dart';

class ActorsListScreen extends StatelessWidget {
  const ActorsListScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Actors')),
        resizeToAvoidBottomInset: false,
        body: ChangeNotifierProvider(
          create: (context) => di<ActorsProvider>(),
          child: const ActorsListView(),
        ),
      );
}
