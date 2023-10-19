// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarketModel _$MarketModelFromJson(Map<String, dynamic> json) {
  return _MarketModel.fromJson(json);
}

/// @nodoc
mixin _$MarketModel {
  String get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_price')
  double get currentPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'market_cap')
  double get marketCap => throw _privateConstructorUsedError;
  @JsonKey(name: 'market_cap_rank')
  int get marketCapRank => throw _privateConstructorUsedError;
  @JsonKey(name: 'fully_diluted_valuation')
  double get fullyDilutedValuation => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_volume')
  double get totalVolume => throw _privateConstructorUsedError;
  @JsonKey(name: 'high_24h')
  double get high24H => throw _privateConstructorUsedError;
  @JsonKey(name: 'low_24h')
  double get low24H => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_change_24h')
  double get priceChange24H => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_change_percentage_24h')
  double get priceChangePercentage24H => throw _privateConstructorUsedError;
  @JsonKey(name: 'market_cap_change_24h')
  double get marketCapChange24H => throw _privateConstructorUsedError;
  @JsonKey(name: 'market_cap_change_percentage_24h')
  double get marketCapChangePercentage24H => throw _privateConstructorUsedError;
  @JsonKey(name: 'circulating_supply')
  double get circulatingSupply => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_supply')
  double get totalSupply => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_supply')
  double? get maxSupply => throw _privateConstructorUsedError;
  double get ath => throw _privateConstructorUsedError;
  @JsonKey(name: 'ath_change_percentage')
  double get athChangePercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'ath_date')
  DateTime get athDate => throw _privateConstructorUsedError;
  double get atl => throw _privateConstructorUsedError;
  @JsonKey(name: 'atl_change_percentage')
  double get atlChangePercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'atl_date')
  DateTime get atlDate => throw _privateConstructorUsedError;
  Roi? get roi => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated')
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketModelCopyWith<MarketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketModelCopyWith<$Res> {
  factory $MarketModelCopyWith(
          MarketModel value, $Res Function(MarketModel) then) =
      _$MarketModelCopyWithImpl<$Res, MarketModel>;
  @useResult
  $Res call(
      {String id,
      String symbol,
      String name,
      String image,
      @JsonKey(name: 'current_price') double currentPrice,
      @JsonKey(name: 'market_cap') double marketCap,
      @JsonKey(name: 'market_cap_rank') int marketCapRank,
      @JsonKey(name: 'fully_diluted_valuation') double fullyDilutedValuation,
      @JsonKey(name: 'total_volume') double totalVolume,
      @JsonKey(name: 'high_24h') double high24H,
      @JsonKey(name: 'low_24h') double low24H,
      @JsonKey(name: 'price_change_24h') double priceChange24H,
      @JsonKey(name: 'price_change_percentage_24h')
      double priceChangePercentage24H,
      @JsonKey(name: 'market_cap_change_24h') double marketCapChange24H,
      @JsonKey(name: 'market_cap_change_percentage_24h')
      double marketCapChangePercentage24H,
      @JsonKey(name: 'circulating_supply') double circulatingSupply,
      @JsonKey(name: 'total_supply') double totalSupply,
      @JsonKey(name: 'max_supply') double? maxSupply,
      double ath,
      @JsonKey(name: 'ath_change_percentage') double athChangePercentage,
      @JsonKey(name: 'ath_date') DateTime athDate,
      double atl,
      @JsonKey(name: 'atl_change_percentage') double atlChangePercentage,
      @JsonKey(name: 'atl_date') DateTime atlDate,
      Roi? roi,
      @JsonKey(name: 'last_updated') DateTime lastUpdated});

  $RoiCopyWith<$Res>? get roi;
}

/// @nodoc
class _$MarketModelCopyWithImpl<$Res, $Val extends MarketModel>
    implements $MarketModelCopyWith<$Res> {
  _$MarketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
    Object? image = null,
    Object? currentPrice = null,
    Object? marketCap = null,
    Object? marketCapRank = null,
    Object? fullyDilutedValuation = null,
    Object? totalVolume = null,
    Object? high24H = null,
    Object? low24H = null,
    Object? priceChange24H = null,
    Object? priceChangePercentage24H = null,
    Object? marketCapChange24H = null,
    Object? marketCapChangePercentage24H = null,
    Object? circulatingSupply = null,
    Object? totalSupply = null,
    Object? maxSupply = freezed,
    Object? ath = null,
    Object? athChangePercentage = null,
    Object? athDate = null,
    Object? atl = null,
    Object? atlChangePercentage = null,
    Object? atlDate = null,
    Object? roi = freezed,
    Object? lastUpdated = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      marketCap: null == marketCap
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as double,
      marketCapRank: null == marketCapRank
          ? _value.marketCapRank
          : marketCapRank // ignore: cast_nullable_to_non_nullable
              as int,
      fullyDilutedValuation: null == fullyDilutedValuation
          ? _value.fullyDilutedValuation
          : fullyDilutedValuation // ignore: cast_nullable_to_non_nullable
              as double,
      totalVolume: null == totalVolume
          ? _value.totalVolume
          : totalVolume // ignore: cast_nullable_to_non_nullable
              as double,
      high24H: null == high24H
          ? _value.high24H
          : high24H // ignore: cast_nullable_to_non_nullable
              as double,
      low24H: null == low24H
          ? _value.low24H
          : low24H // ignore: cast_nullable_to_non_nullable
              as double,
      priceChange24H: null == priceChange24H
          ? _value.priceChange24H
          : priceChange24H // ignore: cast_nullable_to_non_nullable
              as double,
      priceChangePercentage24H: null == priceChangePercentage24H
          ? _value.priceChangePercentage24H
          : priceChangePercentage24H // ignore: cast_nullable_to_non_nullable
              as double,
      marketCapChange24H: null == marketCapChange24H
          ? _value.marketCapChange24H
          : marketCapChange24H // ignore: cast_nullable_to_non_nullable
              as double,
      marketCapChangePercentage24H: null == marketCapChangePercentage24H
          ? _value.marketCapChangePercentage24H
          : marketCapChangePercentage24H // ignore: cast_nullable_to_non_nullable
              as double,
      circulatingSupply: null == circulatingSupply
          ? _value.circulatingSupply
          : circulatingSupply // ignore: cast_nullable_to_non_nullable
              as double,
      totalSupply: null == totalSupply
          ? _value.totalSupply
          : totalSupply // ignore: cast_nullable_to_non_nullable
              as double,
      maxSupply: freezed == maxSupply
          ? _value.maxSupply
          : maxSupply // ignore: cast_nullable_to_non_nullable
              as double?,
      ath: null == ath
          ? _value.ath
          : ath // ignore: cast_nullable_to_non_nullable
              as double,
      athChangePercentage: null == athChangePercentage
          ? _value.athChangePercentage
          : athChangePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      athDate: null == athDate
          ? _value.athDate
          : athDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      atl: null == atl
          ? _value.atl
          : atl // ignore: cast_nullable_to_non_nullable
              as double,
      atlChangePercentage: null == atlChangePercentage
          ? _value.atlChangePercentage
          : atlChangePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      atlDate: null == atlDate
          ? _value.atlDate
          : atlDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      roi: freezed == roi
          ? _value.roi
          : roi // ignore: cast_nullable_to_non_nullable
              as Roi?,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoiCopyWith<$Res>? get roi {
    if (_value.roi == null) {
      return null;
    }

    return $RoiCopyWith<$Res>(_value.roi!, (value) {
      return _then(_value.copyWith(roi: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MarketModelCopyWith<$Res>
    implements $MarketModelCopyWith<$Res> {
  factory _$$_MarketModelCopyWith(
          _$_MarketModel value, $Res Function(_$_MarketModel) then) =
      __$$_MarketModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String symbol,
      String name,
      String image,
      @JsonKey(name: 'current_price') double currentPrice,
      @JsonKey(name: 'market_cap') double marketCap,
      @JsonKey(name: 'market_cap_rank') int marketCapRank,
      @JsonKey(name: 'fully_diluted_valuation') double fullyDilutedValuation,
      @JsonKey(name: 'total_volume') double totalVolume,
      @JsonKey(name: 'high_24h') double high24H,
      @JsonKey(name: 'low_24h') double low24H,
      @JsonKey(name: 'price_change_24h') double priceChange24H,
      @JsonKey(name: 'price_change_percentage_24h')
      double priceChangePercentage24H,
      @JsonKey(name: 'market_cap_change_24h') double marketCapChange24H,
      @JsonKey(name: 'market_cap_change_percentage_24h')
      double marketCapChangePercentage24H,
      @JsonKey(name: 'circulating_supply') double circulatingSupply,
      @JsonKey(name: 'total_supply') double totalSupply,
      @JsonKey(name: 'max_supply') double? maxSupply,
      double ath,
      @JsonKey(name: 'ath_change_percentage') double athChangePercentage,
      @JsonKey(name: 'ath_date') DateTime athDate,
      double atl,
      @JsonKey(name: 'atl_change_percentage') double atlChangePercentage,
      @JsonKey(name: 'atl_date') DateTime atlDate,
      Roi? roi,
      @JsonKey(name: 'last_updated') DateTime lastUpdated});

  @override
  $RoiCopyWith<$Res>? get roi;
}

/// @nodoc
class __$$_MarketModelCopyWithImpl<$Res>
    extends _$MarketModelCopyWithImpl<$Res, _$_MarketModel>
    implements _$$_MarketModelCopyWith<$Res> {
  __$$_MarketModelCopyWithImpl(
      _$_MarketModel _value, $Res Function(_$_MarketModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
    Object? image = null,
    Object? currentPrice = null,
    Object? marketCap = null,
    Object? marketCapRank = null,
    Object? fullyDilutedValuation = null,
    Object? totalVolume = null,
    Object? high24H = null,
    Object? low24H = null,
    Object? priceChange24H = null,
    Object? priceChangePercentage24H = null,
    Object? marketCapChange24H = null,
    Object? marketCapChangePercentage24H = null,
    Object? circulatingSupply = null,
    Object? totalSupply = null,
    Object? maxSupply = freezed,
    Object? ath = null,
    Object? athChangePercentage = null,
    Object? athDate = null,
    Object? atl = null,
    Object? atlChangePercentage = null,
    Object? atlDate = null,
    Object? roi = freezed,
    Object? lastUpdated = null,
  }) {
    return _then(_$_MarketModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      marketCap: null == marketCap
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as double,
      marketCapRank: null == marketCapRank
          ? _value.marketCapRank
          : marketCapRank // ignore: cast_nullable_to_non_nullable
              as int,
      fullyDilutedValuation: null == fullyDilutedValuation
          ? _value.fullyDilutedValuation
          : fullyDilutedValuation // ignore: cast_nullable_to_non_nullable
              as double,
      totalVolume: null == totalVolume
          ? _value.totalVolume
          : totalVolume // ignore: cast_nullable_to_non_nullable
              as double,
      high24H: null == high24H
          ? _value.high24H
          : high24H // ignore: cast_nullable_to_non_nullable
              as double,
      low24H: null == low24H
          ? _value.low24H
          : low24H // ignore: cast_nullable_to_non_nullable
              as double,
      priceChange24H: null == priceChange24H
          ? _value.priceChange24H
          : priceChange24H // ignore: cast_nullable_to_non_nullable
              as double,
      priceChangePercentage24H: null == priceChangePercentage24H
          ? _value.priceChangePercentage24H
          : priceChangePercentage24H // ignore: cast_nullable_to_non_nullable
              as double,
      marketCapChange24H: null == marketCapChange24H
          ? _value.marketCapChange24H
          : marketCapChange24H // ignore: cast_nullable_to_non_nullable
              as double,
      marketCapChangePercentage24H: null == marketCapChangePercentage24H
          ? _value.marketCapChangePercentage24H
          : marketCapChangePercentage24H // ignore: cast_nullable_to_non_nullable
              as double,
      circulatingSupply: null == circulatingSupply
          ? _value.circulatingSupply
          : circulatingSupply // ignore: cast_nullable_to_non_nullable
              as double,
      totalSupply: null == totalSupply
          ? _value.totalSupply
          : totalSupply // ignore: cast_nullable_to_non_nullable
              as double,
      maxSupply: freezed == maxSupply
          ? _value.maxSupply
          : maxSupply // ignore: cast_nullable_to_non_nullable
              as double?,
      ath: null == ath
          ? _value.ath
          : ath // ignore: cast_nullable_to_non_nullable
              as double,
      athChangePercentage: null == athChangePercentage
          ? _value.athChangePercentage
          : athChangePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      athDate: null == athDate
          ? _value.athDate
          : athDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      atl: null == atl
          ? _value.atl
          : atl // ignore: cast_nullable_to_non_nullable
              as double,
      atlChangePercentage: null == atlChangePercentage
          ? _value.atlChangePercentage
          : atlChangePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      atlDate: null == atlDate
          ? _value.atlDate
          : atlDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      roi: freezed == roi
          ? _value.roi
          : roi // ignore: cast_nullable_to_non_nullable
              as Roi?,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MarketModel implements _MarketModel {
  const _$_MarketModel(
      {required this.id,
      required this.symbol,
      required this.name,
      required this.image,
      @JsonKey(name: 'current_price') required this.currentPrice,
      @JsonKey(name: 'market_cap') required this.marketCap,
      @JsonKey(name: 'market_cap_rank') required this.marketCapRank,
      @JsonKey(name: 'fully_diluted_valuation')
      required this.fullyDilutedValuation,
      @JsonKey(name: 'total_volume') required this.totalVolume,
      @JsonKey(name: 'high_24h') required this.high24H,
      @JsonKey(name: 'low_24h') required this.low24H,
      @JsonKey(name: 'price_change_24h') required this.priceChange24H,
      @JsonKey(name: 'price_change_percentage_24h')
      required this.priceChangePercentage24H,
      @JsonKey(name: 'market_cap_change_24h') required this.marketCapChange24H,
      @JsonKey(name: 'market_cap_change_percentage_24h')
      required this.marketCapChangePercentage24H,
      @JsonKey(name: 'circulating_supply') required this.circulatingSupply,
      @JsonKey(name: 'total_supply') required this.totalSupply,
      @JsonKey(name: 'max_supply') this.maxSupply,
      required this.ath,
      @JsonKey(name: 'ath_change_percentage') required this.athChangePercentage,
      @JsonKey(name: 'ath_date') required this.athDate,
      required this.atl,
      @JsonKey(name: 'atl_change_percentage') required this.atlChangePercentage,
      @JsonKey(name: 'atl_date') required this.atlDate,
      this.roi,
      @JsonKey(name: 'last_updated') required this.lastUpdated});

  factory _$_MarketModel.fromJson(Map<String, dynamic> json) =>
      _$$_MarketModelFromJson(json);

  @override
  final String id;
  @override
  final String symbol;
  @override
  final String name;
  @override
  final String image;
  @override
  @JsonKey(name: 'current_price')
  final double currentPrice;
  @override
  @JsonKey(name: 'market_cap')
  final double marketCap;
  @override
  @JsonKey(name: 'market_cap_rank')
  final int marketCapRank;
  @override
  @JsonKey(name: 'fully_diluted_valuation')
  final double fullyDilutedValuation;
  @override
  @JsonKey(name: 'total_volume')
  final double totalVolume;
  @override
  @JsonKey(name: 'high_24h')
  final double high24H;
  @override
  @JsonKey(name: 'low_24h')
  final double low24H;
  @override
  @JsonKey(name: 'price_change_24h')
  final double priceChange24H;
  @override
  @JsonKey(name: 'price_change_percentage_24h')
  final double priceChangePercentage24H;
  @override
  @JsonKey(name: 'market_cap_change_24h')
  final double marketCapChange24H;
  @override
  @JsonKey(name: 'market_cap_change_percentage_24h')
  final double marketCapChangePercentage24H;
  @override
  @JsonKey(name: 'circulating_supply')
  final double circulatingSupply;
  @override
  @JsonKey(name: 'total_supply')
  final double totalSupply;
  @override
  @JsonKey(name: 'max_supply')
  final double? maxSupply;
  @override
  final double ath;
  @override
  @JsonKey(name: 'ath_change_percentage')
  final double athChangePercentage;
  @override
  @JsonKey(name: 'ath_date')
  final DateTime athDate;
  @override
  final double atl;
  @override
  @JsonKey(name: 'atl_change_percentage')
  final double atlChangePercentage;
  @override
  @JsonKey(name: 'atl_date')
  final DateTime atlDate;
  @override
  final Roi? roi;
  @override
  @JsonKey(name: 'last_updated')
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'MarketModel(id: $id, symbol: $symbol, name: $name, image: $image, currentPrice: $currentPrice, marketCap: $marketCap, marketCapRank: $marketCapRank, fullyDilutedValuation: $fullyDilutedValuation, totalVolume: $totalVolume, high24H: $high24H, low24H: $low24H, priceChange24H: $priceChange24H, priceChangePercentage24H: $priceChangePercentage24H, marketCapChange24H: $marketCapChange24H, marketCapChangePercentage24H: $marketCapChangePercentage24H, circulatingSupply: $circulatingSupply, totalSupply: $totalSupply, maxSupply: $maxSupply, ath: $ath, athChangePercentage: $athChangePercentage, athDate: $athDate, atl: $atl, atlChangePercentage: $atlChangePercentage, atlDate: $atlDate, roi: $roi, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarketModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.marketCap, marketCap) ||
                other.marketCap == marketCap) &&
            (identical(other.marketCapRank, marketCapRank) ||
                other.marketCapRank == marketCapRank) &&
            (identical(other.fullyDilutedValuation, fullyDilutedValuation) ||
                other.fullyDilutedValuation == fullyDilutedValuation) &&
            (identical(other.totalVolume, totalVolume) ||
                other.totalVolume == totalVolume) &&
            (identical(other.high24H, high24H) || other.high24H == high24H) &&
            (identical(other.low24H, low24H) || other.low24H == low24H) &&
            (identical(other.priceChange24H, priceChange24H) ||
                other.priceChange24H == priceChange24H) &&
            (identical(
                    other.priceChangePercentage24H, priceChangePercentage24H) ||
                other.priceChangePercentage24H == priceChangePercentage24H) &&
            (identical(other.marketCapChange24H, marketCapChange24H) ||
                other.marketCapChange24H == marketCapChange24H) &&
            (identical(other.marketCapChangePercentage24H,
                    marketCapChangePercentage24H) ||
                other.marketCapChangePercentage24H ==
                    marketCapChangePercentage24H) &&
            (identical(other.circulatingSupply, circulatingSupply) ||
                other.circulatingSupply == circulatingSupply) &&
            (identical(other.totalSupply, totalSupply) ||
                other.totalSupply == totalSupply) &&
            (identical(other.maxSupply, maxSupply) ||
                other.maxSupply == maxSupply) &&
            (identical(other.ath, ath) || other.ath == ath) &&
            (identical(other.athChangePercentage, athChangePercentage) ||
                other.athChangePercentage == athChangePercentage) &&
            (identical(other.athDate, athDate) || other.athDate == athDate) &&
            (identical(other.atl, atl) || other.atl == atl) &&
            (identical(other.atlChangePercentage, atlChangePercentage) ||
                other.atlChangePercentage == atlChangePercentage) &&
            (identical(other.atlDate, atlDate) || other.atlDate == atlDate) &&
            (identical(other.roi, roi) || other.roi == roi) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        symbol,
        name,
        image,
        currentPrice,
        marketCap,
        marketCapRank,
        fullyDilutedValuation,
        totalVolume,
        high24H,
        low24H,
        priceChange24H,
        priceChangePercentage24H,
        marketCapChange24H,
        marketCapChangePercentage24H,
        circulatingSupply,
        totalSupply,
        maxSupply,
        ath,
        athChangePercentage,
        athDate,
        atl,
        atlChangePercentage,
        atlDate,
        roi,
        lastUpdated
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarketModelCopyWith<_$_MarketModel> get copyWith =>
      __$$_MarketModelCopyWithImpl<_$_MarketModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarketModelToJson(
      this,
    );
  }
}

abstract class _MarketModel implements MarketModel {
  const factory _MarketModel(
      {required final String id,
      required final String symbol,
      required final String name,
      required final String image,
      @JsonKey(name: 'current_price') required final double currentPrice,
      @JsonKey(name: 'market_cap') required final double marketCap,
      @JsonKey(name: 'market_cap_rank') required final int marketCapRank,
      @JsonKey(name: 'fully_diluted_valuation')
      required final double fullyDilutedValuation,
      @JsonKey(name: 'total_volume') required final double totalVolume,
      @JsonKey(name: 'high_24h') required final double high24H,
      @JsonKey(name: 'low_24h') required final double low24H,
      @JsonKey(name: 'price_change_24h') required final double priceChange24H,
      @JsonKey(name: 'price_change_percentage_24h')
      required final double priceChangePercentage24H,
      @JsonKey(name: 'market_cap_change_24h')
      required final double marketCapChange24H,
      @JsonKey(name: 'market_cap_change_percentage_24h')
      required final double marketCapChangePercentage24H,
      @JsonKey(name: 'circulating_supply')
      required final double circulatingSupply,
      @JsonKey(name: 'total_supply') required final double totalSupply,
      @JsonKey(name: 'max_supply') final double? maxSupply,
      required final double ath,
      @JsonKey(name: 'ath_change_percentage')
      required final double athChangePercentage,
      @JsonKey(name: 'ath_date') required final DateTime athDate,
      required final double atl,
      @JsonKey(name: 'atl_change_percentage')
      required final double atlChangePercentage,
      @JsonKey(name: 'atl_date') required final DateTime atlDate,
      final Roi? roi,
      @JsonKey(name: 'last_updated')
      required final DateTime lastUpdated}) = _$_MarketModel;

  factory _MarketModel.fromJson(Map<String, dynamic> json) =
      _$_MarketModel.fromJson;

  @override
  String get id;
  @override
  String get symbol;
  @override
  String get name;
  @override
  String get image;
  @override
  @JsonKey(name: 'current_price')
  double get currentPrice;
  @override
  @JsonKey(name: 'market_cap')
  double get marketCap;
  @override
  @JsonKey(name: 'market_cap_rank')
  int get marketCapRank;
  @override
  @JsonKey(name: 'fully_diluted_valuation')
  double get fullyDilutedValuation;
  @override
  @JsonKey(name: 'total_volume')
  double get totalVolume;
  @override
  @JsonKey(name: 'high_24h')
  double get high24H;
  @override
  @JsonKey(name: 'low_24h')
  double get low24H;
  @override
  @JsonKey(name: 'price_change_24h')
  double get priceChange24H;
  @override
  @JsonKey(name: 'price_change_percentage_24h')
  double get priceChangePercentage24H;
  @override
  @JsonKey(name: 'market_cap_change_24h')
  double get marketCapChange24H;
  @override
  @JsonKey(name: 'market_cap_change_percentage_24h')
  double get marketCapChangePercentage24H;
  @override
  @JsonKey(name: 'circulating_supply')
  double get circulatingSupply;
  @override
  @JsonKey(name: 'total_supply')
  double get totalSupply;
  @override
  @JsonKey(name: 'max_supply')
  double? get maxSupply;
  @override
  double get ath;
  @override
  @JsonKey(name: 'ath_change_percentage')
  double get athChangePercentage;
  @override
  @JsonKey(name: 'ath_date')
  DateTime get athDate;
  @override
  double get atl;
  @override
  @JsonKey(name: 'atl_change_percentage')
  double get atlChangePercentage;
  @override
  @JsonKey(name: 'atl_date')
  DateTime get atlDate;
  @override
  Roi? get roi;
  @override
  @JsonKey(name: 'last_updated')
  DateTime get lastUpdated;
  @override
  @JsonKey(ignore: true)
  _$$_MarketModelCopyWith<_$_MarketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Roi _$RoiFromJson(Map<String, dynamic> json) {
  return _Roi.fromJson(json);
}

/// @nodoc
mixin _$Roi {
  double? get times => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  double? get percentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoiCopyWith<Roi> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoiCopyWith<$Res> {
  factory $RoiCopyWith(Roi value, $Res Function(Roi) then) =
      _$RoiCopyWithImpl<$Res, Roi>;
  @useResult
  $Res call({double? times, String? currency, double? percentage});
}

/// @nodoc
class _$RoiCopyWithImpl<$Res, $Val extends Roi> implements $RoiCopyWith<$Res> {
  _$RoiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? times = freezed,
    Object? currency = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_value.copyWith(
      times: freezed == times
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoiCopyWith<$Res> implements $RoiCopyWith<$Res> {
  factory _$$_RoiCopyWith(_$_Roi value, $Res Function(_$_Roi) then) =
      __$$_RoiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? times, String? currency, double? percentage});
}

/// @nodoc
class __$$_RoiCopyWithImpl<$Res> extends _$RoiCopyWithImpl<$Res, _$_Roi>
    implements _$$_RoiCopyWith<$Res> {
  __$$_RoiCopyWithImpl(_$_Roi _value, $Res Function(_$_Roi) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? times = freezed,
    Object? currency = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_$_Roi(
      times: freezed == times
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Roi implements _Roi {
  const _$_Roi({this.times, this.currency, this.percentage});

  factory _$_Roi.fromJson(Map<String, dynamic> json) => _$$_RoiFromJson(json);

  @override
  final double? times;
  @override
  final String? currency;
  @override
  final double? percentage;

  @override
  String toString() {
    return 'Roi(times: $times, currency: $currency, percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Roi &&
            (identical(other.times, times) || other.times == times) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, times, currency, percentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoiCopyWith<_$_Roi> get copyWith =>
      __$$_RoiCopyWithImpl<_$_Roi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoiToJson(
      this,
    );
  }
}

abstract class _Roi implements Roi {
  const factory _Roi(
      {final double? times,
      final String? currency,
      final double? percentage}) = _$_Roi;

  factory _Roi.fromJson(Map<String, dynamic> json) = _$_Roi.fromJson;

  @override
  double? get times;
  @override
  String? get currency;
  @override
  double? get percentage;
  @override
  @JsonKey(ignore: true)
  _$$_RoiCopyWith<_$_Roi> get copyWith => throw _privateConstructorUsedError;
}
