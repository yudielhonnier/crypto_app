import 'dart:async';

import 'package:crypto_app/features/shared/models/coin_response.dart';
import 'package:crypto_app/features/shared/models/coin_simple_response.dart';
import 'package:dio/dio.dart';

class TrafficService {
  TrafficService._privateConstructor();

  static final TrafficService _instance = TrafficService._privateConstructor();
  factory TrafficService() {
    return _instance;
  }

  final _dio = Dio();
  // final debouncer = Debouncer<String>(duration: Duration(milliseconds: 2000));

  final _base = 'https://api.coingecko.com/api/v3';

  // final StreamController<SearchResponse> _suggestionsStreamController =
  //     new StreamController<SearchResponse>.broadcast();
  // Stream<SearchResponse> get suggestionsStream =>
  //     this._suggestionsStreamController.stream;

  // https://api.coingecko.com/api/v3/coins/list
  Future<CoinSimpleResponseList> getCoinsSimpleResponseList() async {
    final url = '${_base}/coins/list';

    final resp = await this
        ._dio
        .get(url, queryParameters: {'include_platform': 'false'});

    final data = CoinSimpleResponseList.fromJsonList(resp.data);
    // print(data.items);
    return data;
  }

// https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&ids=bitcoin
  Future<CoinResponseList> getCoinsMarkets(
      String vs_currency, String id) async {
    final url = '${_base}/coins/markets';

    final resp = await this._dio.get(url, queryParameters: {
      'vs_currency': vs_currency,
      'ids': id,
      'per_page': 1
    });

    final data = CoinResponseList.fromJsonList(resp.data);
    // print(data);
    return data;
  }
}
