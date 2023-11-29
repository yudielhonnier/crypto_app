import 'package:crypto_app/core/resources/ticket_db_helper.dart';
import 'package:crypto_app/features/home/presentation/bloc/markets_bloc.dart';
import 'package:crypto_app/features/profile/data/data_sources/local/user_local_data_source.dart';
import 'package:crypto_app/features/profile/data/repository/user_repository_impl.dart';
import 'package:crypto_app/features/profile/domain/repository/user_repository.dart';
import 'package:crypto_app/features/profile/domain/usecase/pick_image_use_case.dart';
import 'package:crypto_app/features/profile/presentation/bloc/user_bloc.dart';
import 'package:crypto_app/features/shared/data/data-source/local/ticket_local_data_source.dart';
import 'package:crypto_app/features/shared/data/repository/tickets_repository_impl.dart';
import 'package:crypto_app/features/shared/domain/repository/ticket_repository.dart';
import 'package:crypto_app/features/shared/domain/usecase/add_ticket_use_case.dart';
import 'package:crypto_app/features/shared/domain/usecase/delete_ticket_by_id_use_case.dart';
import 'package:crypto_app/features/shared/domain/usecase/get_all_tickets_use_case.dart';
import 'package:crypto_app/features/shared/domain/usecase/get_ticket_by_id_use_case.dart';
import 'package:crypto_app/features/shared/presentation/bloc/tickets/tickets_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/home/data/data_sources/local/market_local_data_source.dart';
import '../features/home/data/data_sources/remote/market_remote_data_source.dart';
import '../features/home/data/repository/market_repository_impl.dart';
import '../features/home/domain/repository/market_repository.dart';
import '../features/home/domain/usecase/get_markets_use_case.dart';

import '../core/network/network_info.dart';

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
  getIt.registerLazySingleton(() => AddTicketUseCase(getIt()));
  getIt.registerLazySingleton(() => GetTicketByIdUseCase(getIt()));
  getIt.registerLazySingleton(() => DeleteTicketByIdUseCase(getIt()));
  getIt.registerLazySingleton(() => GetAllTicketsUseCase(getIt()));
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
  getIt.registerLazySingleton<TicketRepository>(
    () => TicketRepositoryImpl(
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
  getIt.registerLazySingleton<TicketLocalDataSourceImpl>(
    () => TicketLocalDataSourceImpl(
        sharedPreferences: getIt(), ticketDB: getIt()),
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

  getIt.registerLazySingleton(() => TicketDatabaseHelper());
}

void initBlocs() {
  getIt.registerFactory<MarketsBloc>(() => MarketsBloc(getIt()));
  getIt.registerFactory<UserBloc>(() => UserBloc(getIt()));
  getIt.registerFactory<TicketsBloc>(
      () => TicketsBloc(getIt(), getIt(), getIt(), getIt()));
}
