import 'package:axis_task/core/network/api_constants.dart';
import 'package:axis_task/features/actors/data/models/actor_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/actor_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ActorsApiService {
  factory ActorsApiService(Dio dio, {String baseUrl}) = _ActorsApiService;

  @GET('${ApiConstants.allActorsUrl}{pageKey}')
  Future<ActorResponse> getAllActors(@Path() int pageKey);
}
