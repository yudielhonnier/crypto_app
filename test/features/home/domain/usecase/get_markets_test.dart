// import 'package:crypto_app/core/no_params.dart';
// import 'package:crypto_app/features/home/domain/entities/market.dart';
// import 'package:crypto_app/features/home/domain/usecase/get_markets.dart';
// import 'package:dartz/dartz.dart';
// import 'package:mockito/mockito.dart';
// import 'package:flutter_test/flutter_test.dart';

// import 'package:crypto_app/features/home/domain/repository/market_repository.dart';

// class MockMarketRepository extends Mock implements MarketRepository {}

// void main() {
//   late GetMarkets usecase;
//   late MockMarketRepository mockMarketRepository;

//   group('GetMarkets usecase', () {
//     setUp(() {
//       mockMarketRepository = MockMarketRepository();
//       usecase = GetMarkets(mockMarketRepository);
//     });

//     final tMarket = new Market();

//     test('should get markets from the repository', () async {
//       //arrange
//       when(mockMarketRepository.getMarkets())
//           .thenAnswer((_) async => Right([tMarket]));
//       //act
//       final result = await usecase(noParams);
//       //assert
//       expect(result, Right(tMarket));
//       verify(mockMarketRepository.getMarkets());
//     });
//   });
// }
