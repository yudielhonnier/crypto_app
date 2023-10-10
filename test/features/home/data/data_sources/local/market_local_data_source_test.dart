// import 'package:crypto_app/core/error/exceptions.dart';
// import 'package:crypto_app/features/home/data/data_sources/local/market_local_data_source.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:matcher/matcher.dart';

// class MockSharedPreferences extends Mock implements SharedPreferences {}

// void main() {
//   late MarketLocalDataSourceImpl dataStorage;
//   late MockSharedPreferences mockSharedPreferences;

//   setUp(() {
//     mockSharedPreferences = MockSharedPreferences();
//     dataStorage =
//         MarketLocalDataSourceImpl(sharedPreferences: mockSharedPreferences);

//     test('should  throw a cachedException ', () async {
//       //arrange
//       when(mockSharedPreferences.getString(any)).thenReturn(null);
//       //act
//       final call = dataStorage.getLastMarkets;

//       //assert

//       expect(() => call(), throwsA(TypeMatcher<CacheException>()));
//     });
//   });
// }
