import 'package:hive/hive.dart';

class LocalStorageService<T> {
  Future<void> saveEntities(List<T> entities, String key) async {
    final box = await Hive.openBox<T>(key);
    await box.clear();
    await box.addAll(entities);
  }

  Future<void> saveEntity(T entity, String key) async {
    final box = await Hive.openBox<T>(key);
    await box.clear();
    await box.add(entity);
  }

  Future<List<T>>? loadEntities(String key) async {
    final box = await Hive.openBox<T>(key);
    return box.values.toList();
  }

  Future<T>? loadEntity(String key) async {
    late Box<T> box;

    box = await Hive.openBox(key);
    return box.values.first;
  }
}
