import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_template/config/flavor/build_variables.dart';
import 'package:flutter_template/core/storage/shared_prefs_impl.dart';
import 'package:flutter_template/core/storage/storage_client.dart';
import 'package:get_it/get_it.dart';

import '../../core/api/client/api_client.dart';
import '../../core/api/client/dio_api_client.dart';
import '../../core/utils/observers.dart';
import '../../features/auth/bloc/auth_bloc.dart';
import '../../features/auth/data/datasource/auth_datasource.dart';
import '../../features/auth/data/repository/auth_repository.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class DependencyContainer {
  static late GetIt instanceLocator;

  DependencyContainer._();

  void close() {
    instanceLocator.reset();
  }

  // ** initialize all necessary instances
  static Future<void> create() async {
    instanceLocator = GetIt.instance;
    Bloc.observer = AppBlocObserver();
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await dotenv.load(fileName: '.env'); // ?? load your env file
    BuildVariables.init();
    initialize();
  }

  static void initialize() {
    initializeLocalDataSources();
    initializeAPIClient();
    initializeRemoteDataSources();
    initializeRepository();
  }

  static void initializeLocalDataSources() {
    instanceLocator.registerLazySingleton<StorageClient>(
      () => SharedPrefsImpl(),
    );
    instanceLocator.registerLazySingleton<LocalStorage>(
      () => LocalStoragImpl(
        storageClient: instanceLocator.get<StorageClient>(),
        databaseStorage: instanceLocator.get<
            DatabaseStorage>(), // ** This line will throw an error since no database impl as been created
      ),
    );
  }

  static void initializeAPIClient() {
    instanceLocator.registerLazySingleton<ApiClient>(() => DioApiClient());
  }

  static void initializeRemoteDataSources() {
    instanceLocator.registerLazySingleton<RemoteDataSource>(
      () => AuthRemoteDataSource(client: instanceLocator()),
    );
  }

  static void initializeRepository() {
    instanceLocator.registerLazySingleton<AuthRemoteRepository>(
      () => AuthRepository(authRemoteDataSource: instanceLocator()),
    );
  }

  static void initializeBloc() {
    instanceLocator.registerFactory<AuthBloc>(() => AuthBloc());
  }
}
