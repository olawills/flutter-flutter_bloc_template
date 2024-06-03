// ** Your abtract Storage class for both secure and local cache data
abstract class StorageClient {
  Future<T?> read<T>(String key);
  Future write<T>(String key, T value);
  Future delete(String key);
  Future deleteAll({List<String> ignoredKeys = const []});
}

// TODO: Pending
abstract class DatabaseStorage {
  void openDb();
  void closeDb();
  Future<List<T>> readFromDb<T>();
  Future<void> writeToDb<T>(T value);
  Future<void> writeListToDb<T>(List<T> value);
}

abstract class LocalStorage {}

class LocalStoragImpl implements LocalStorage {
  final StorageClient storageClient;
  final DatabaseStorage databaseStorage;

  LocalStoragImpl({
    required this.storageClient,
    required this.databaseStorage,
  });
}
