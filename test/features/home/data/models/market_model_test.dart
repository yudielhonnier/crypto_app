// import 'dart:convert';

// import 'package:crypto_app/features/home/data/models/market_model.dart';
// import 'package:crypto_app/features/home/domain/entities/market.dart';
// import 'package:flutter_test/flutter_test.dart';

// import '../../../../fixtures/fixture_reader.dart';


// void main(){
//   final tMarketModel = MarketModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24h: high24h, low24h: low24h, priceChange24h: priceChange24h, priceChangePercentage24h: priceChangePercentage24h, marketCapChange24h: marketCapChange24h, marketCapChangePercentage24h: marketCapChangePercentage24h, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, roi: roi, lastUpdated: lastUpdated)

//   test('should be a subclass of Market entity', () async{
//     expect(tMarketModel,isA<Market>());
//   });


//   group('fromJson', () { 

//      test('should return a valid model when a Json a valid', () async {
//       //arrange
//       final List<dynamic> jsonMap=json.decode(fixture('markets.json'));

//       final result = jsonMap.map((e) => MarketModel.fromJson(e)).toList();
     
//       expect(result,marketModels);

//   });
//   });

//   group('toJson', () { 

//      test('should return a JSON map containing the proper data', () async {
      
 
//   });
//   });

// }
