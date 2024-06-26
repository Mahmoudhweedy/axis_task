import 'package:axis_task/features/actors/data/api_services/api_service.dart';
import 'package:axis_task/features/actors/data/caching/actors_cache_helper.dart';
import 'package:axis_task/features/actors/data/models/actor_images_response.dart';

import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/api_result.dart';
import '../models/actor_response.dart';

class ActorsRepo {
  final ActorsApiService _service;

  ActorsRepo(this._service);
  Future<ApiResult<ActorResponse>> getAllActors(int pageKey) async {
    try {
      final response = await _service.getAllActors(pageKey);
      ActorsCacheHelper.instance.onSuccessUpdatingData(response.actors);
      return ApiResult.success(response);
    } catch (error) {
      final cachedResponse =
          await ActorsCacheHelper.instance.retrieveActorsData();
      return cachedResponse != null
          ? ApiResult.success(ActorResponse(actors: cachedResponse))
          : ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<ActorImagesResponse>> getActorImages(int actorId) async {
    try {
      final response = await _service.getActorImages(actorId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
