// import 'package:crypto_app/core/error/failure.dart';
// import 'package:crypto_app/core/network/network_info.dart';
// import 'package:crypto_app/features/home/data/repository/market_repository_impl.dart';
// import 'package:dartz/dartz.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';

// import 'package:crypto_app/features/home/data/data_sources/remote/market_remote_data_source.dart';
// import 'package:crypto_app/features/home/data/data_sources/local/market_local_data_source.dart';

// class MockRemoteDataSource extends Mock implements MarketRemoteDataSource {}

// class MockLocalDataSource extends Mock implements MarketLocalDataSource {}

// class MockNetworkInfo extends Mock implements NetworkInfo {}

// void main() {
//   late MarketRepositoryImpl repositoryImpl;
//   late MockLocalDataSource mockLocalDataSource;
//   late MockRemoteDataSource mockRemoteDataSource;
//   late MockNetworkInfo mockNetworkInfo;

//   setUp(() {
//     mockLocalDataSource = MockLocalDataSource();
//     mockRemoteDataSource = MockRemoteDataSource();
//     mockNetworkInfo = MockNetworkInfo();

//     repositoryImpl = MarketRepositoryImpl(
//         localDataSource: mockLocalDataSource,
//         remoteDataSource: mockRemoteDataSource,
//         networkInfo: mockNetworkInfo);
//   });

//   group('getMarket', () {
//     test('should check if the device is online', () async {
//       //arrange
//       when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);

//       //act
//       repositoryImpl.getMarkets();

//       //assert
//       verify(mockNetworkInfo.isConnected);
//     });
//   });

//   group('device is online ', () {
//     setUp(() {
//       when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
//     });
//     test('should return data when the call to remote data source is success',
//         () async {
//       //arrange
//       when(mockRemoteDataSource.getMarkets())
//           .thenAnswer((_) async => tMarketList);
//       //act
//       final result = await repositoryImpl.getMarkets();

//       //assert
//       verify(mockRemoteDataSource.getMarkets());
//       expect(result, equals(Right(tMarketList)));
//     });

//     test(
//         'should cache the data locally when the call to remote data source is successful',
//         () async {
//       //arrange
//       when(mockRemoteDataSource.getMarkets())
//           .thenAnswer((_) async => tMarketList);
//       //act
//       final result = await repositoryImpl.getMarkets();

//       //assert
//       verify(mockRemoteDataSource.getMarkets());
//       verify(mockLocalDataSource.cacheMarkets(tMarketList));
//     });

//     test(
//         'should return server failure when the call to remote data source is unsuccessful',
//         () async {
//       //arrange
//       when(mockRemoteDataSource.getMarkets())
//           .thenAnswer((_) async => tMarketList);
//       //act
//       final result = await repositoryImpl.getMarkets();

//       //assert
//       verify(mockRemoteDataSource.getMarkets());
//       verifyZeroInteractions(mockLocalDataSource);
//       expect(result, equals(Left(ServerFailure())));
//     });
//   });

//   group('device is offline', () {
//     setUp(() {
//       when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
//     });
//     test('should check if the device is online', () async {
//       //arrange

//       //act
//       repositoryImpl.getMarkets();

//       //assert
//       verify(mockNetworkInfo.isConnected);
//     });
//   });
// }
