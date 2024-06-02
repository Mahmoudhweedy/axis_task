import 'package:axis_task/features/actors/data/api_services/api_service.dart';
import 'package:axis_task/features/actors/data/models/actor_model.dart';

import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/api_result.dart';

class ActorsRepo {
  final ActorsApiService _service;

  ActorsRepo(this._service);
  Future<ApiResult<ActorModel>> getLatestActorsRepos(String pageKey) async {
    try {
      final response = await _service.getAllActors(pageKey);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
