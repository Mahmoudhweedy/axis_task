import 'package:axis_task/core/utils/snackbar_message.dart';
import 'package:axis_task/features/actors/data/models/actor_model.dart';
import 'package:axis_task/features/actors/data/repository/actors_repo.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ActorsProvider extends ChangeNotifier {
  final ActorsRepo getActorsRepo;

  ActorsProvider(this.getActorsRepo);

  Future<List<ActorModel>> getAllActors(
      int pageKey, BuildContext context) async {
    List<ActorModel> actors = [];
    final response = await getActorsRepo.getAllActors(pageKey);
    response.when(
      success: (data) => actors = data,
      failure: (errorHandler) => SnackBarMessage.showErrorSnackBar(
        context: context,
        message: errorHandler.apiErrorModel.message!,
      ),
    );
    return actors;
  }

  final PagingController<int, ActorModel> pagingController =
      PagingController(firstPageKey: 1);
  Future<void> fetchPage(int pageKey, BuildContext context) async {
    try {
      final newItems = await getAllActors(pageKey, context);

      final isLastPage = newItems.length < 20;
      if (isLastPage) {
        pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + 1;
        pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      pagingController.error = error;
    }
  }
}
