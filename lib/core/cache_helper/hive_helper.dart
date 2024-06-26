import 'package:axis_task/features/actors/data/models/actor_model.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveHelper {
  static void initHive() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    final hivePath = appDocumentDir.path;
    Hive.init(hivePath);
    _registerAdaptors();
  }

  static void _registerAdaptors() {
    Hive.registerAdapter(ActorModelAdapter());
  }
}
