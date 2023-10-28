import 'package:crypto_app/features/home/presentation/bloc/markets_bloc.dart';
import 'package:crypto_app/features/profile/data/data_sources/local/user_local_data_source.dart';
import 'package:crypto_app/features/profile/data/repository/user_repository_impl.dart';
import 'package:crypto_app/features/profile/domain/repository/user_repository.dart';
import 'package:crypto_app/features/profile/domain/usecase/pick_image_use_case.dart';
import 'package:crypto_app/features/profile/presentation/bloc/user_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/home/data/data_sources/local/market_local_data_source.dart';
import 'features/home/data/data_sources/remote/market_remote_data_source.dart';
import 'features/home/data/repository/market_repository_impl.dart';
import 'features/home/domain/repository/market_repository.dart';
import 'features/home/domain/usecase/get_markets_use_case.dart';

import 'core/network/network_info.dart';

final getIt = GetIt.instance;

Future<void> initializeDependencies() async {
  initBlocs();
  initUseCases();
  initRepositories();
  initDataSources();
  initCores();
  await initExternals();
}

void initUseCases() {
  getIt.registerLazySingleton(() => GetMarketsUseCase(getIt()));
  getIt.registerLazySingleton(() => PickImageUseCase(getIt()));
}

void initRepositories() {
  getIt.registerLazySingleton<MarketRepository>(
    () => MarketRepositoryImpl(
      remoteDataSource: getIt(),
      localDataSource: getIt(),
      networkInfo: getIt(),
    ),
  );
  getIt.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(
      localDataSource: getIt(),
    ),
  );
}

void initDataSources() {
  getIt.registerLazySingleton<MarketRemoteDataSource>(
    () => MarketRemoteDataSourceImpl(getIt()),
  );
  getIt.registerLazySingleton<MarketLocalDataSource>(
    () => MarketLocalDataSourceImpl(sharedPreferences: getIt()),
  );
  getIt.registerLazySingleton<UserLocalDataSource>(
    () => UserLocalDataSourceImpl(sharedPreferences: getIt()),
  );
}

void initCores() {
  getIt.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(getIt()),
  );
}

Future<void> initExternals() async {
  final prefs = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => prefs);

  getIt.registerLazySingleton(() => Dio());

  getIt.registerLazySingleton(() => Connectivity());
}

void initBlocs() {
  getIt.registerFactory<MarketsBloc>(() => MarketsBloc(getIt()));
  getIt.registerFactory<UserBloc>(() => UserBloc(getIt(), getIt()));
}
