import 'package:axis_task/core/network/dio_helper.dart';
import 'package:axis_task/features/actors/data/api_services/api_service.dart';
import 'package:axis_task/features/actors/data/repository/actors_repo.dart';
import 'package:axis_task/features/actors/domain/logic_holder/actors_controller.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.instance;

void init() {
//! Features - actors

// Bloc

  di.registerFactory(() => ActorsProvider(di()));

// Repository

  di.registerLazySingleton<ActorsRepo>(() => ActorsRepo(di()));

// Datasources
  Dio dio = DioHelper.getDio();
  di.registerLazySingleton<ActorsApiService>(() => ActorsApiService(dio));
}
