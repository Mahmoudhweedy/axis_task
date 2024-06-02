import 'package:axis_task/features/actors/data/models/actor_model.dart';

import '../../../../core/cache_helper/app_caching.dart';
import '../../../../core/cache_helper/cach_constants.dart';

class ActorsCacheHelper {
  ActorsCacheHelper._();
  static final instance = ActorsCacheHelper._();
  var localStorageService = LocalStorageService<ActorModel>();
  void onSuccessUpdatingData(List<ActorModel> actors) {
    localStorageService.saveEntities(actors, CacheConstants.actors);
  }

  Future<List<ActorModel>?> retrieveActorsData() async {
    return await localStorageService.loadEntities(CacheConstants.actors);
  }
}
