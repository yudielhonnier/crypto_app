// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoinModel _$CoinModelFromJson(Map<String, dynamic> json) {
  return _CoinModel.fromJson(json);
}

/// @nodoc
mixin _$CoinModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'market_data')
  Map<String, dynamic> get marketData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinModelCopyWith<CoinModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinModelCopyWith<$Res> {
  factory $CoinModelCopyWith(CoinModel value, $Res Function(CoinModel) then) =
      _$CoinModelCopyWithImpl<$Res, CoinModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String symbol,
      @JsonKey(name: 'market_data') Map<String, dynamic> marketData});
}

/// @nodoc
class _$CoinModelCopyWithImpl<$Res, $Val extends CoinModel>
    implements $CoinModelCopyWith<$Res> {
  _$CoinModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? symbol = null,
    Object? marketData = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      marketData: null == marketData
          ? _value.marketData
          : marketData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoinModelCopyWith<$Res> implements $CoinModelCopyWith<$Res> {
  factory _$$_CoinModelCopyWith(
          _$_CoinModel value, $Res Function(_$_CoinModel) then) =
      __$$_CoinModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String symbol,
      @JsonKey(name: 'market_data') Map<String, dynamic> marketData});
}

/// @nodoc
class __$$_CoinModelCopyWithImpl<$Res>
    extends _$CoinModelCopyWithImpl<$Res, _$_CoinModel>
    implements _$$_CoinModelCopyWith<$Res> {
  __$$_CoinModelCopyWithImpl(
      _$_CoinModel _value, $Res Function(_$_CoinModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? symbol = null,
    Object? marketData = null,
  }) {
    return _then(_$_CoinModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      marketData: null == marketData
          ? _value._marketData
          : marketData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoinModel implements _CoinModel {
  const _$_CoinModel(
      {required this.id,
      required this.name,
      required this.symbol,
      @JsonKey(name: 'market_data')
      required final Map<String, dynamic> marketData})
      : _marketData = marketData;

  factory _$_CoinModel.fromJson(Map<String, dynamic> json) =>
      _$$_CoinModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String symbol;
  final Map<String, dynamic> _marketData;
  @override
  @JsonKey(name: 'market_data')
  Map<String, dynamic> get marketData {
    if (_marketData is EqualUnmodifiableMapView) return _marketData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_marketData);
  }

  @override
  String toString() {
    return 'CoinModel(id: $id, name: $name, symbol: $symbol, marketData: $marketData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoinModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            const DeepCollectionEquality()
                .equals(other._marketData, _marketData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, symbol,
      const DeepCollectionEquality().hash(_marketData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoinModelCopyWith<_$_CoinModel> get copyWith =>
      __$$_CoinModelCopyWithImpl<_$_CoinModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoinModelToJson(
      this,
    );
  }
}

abstract class _CoinModel implements CoinModel {
  const factory _CoinModel(
      {required final String id,
      required final String name,
      required final String symbol,
      @JsonKey(name: 'market_data')
      required final Map<String, dynamic> marketData}) = _$_CoinModel;

  factory _CoinModel.fromJson(Map<String, dynamic> json) =
      _$_CoinModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get symbol;
  @override
  @JsonKey(name: 'market_data')
  Map<String, dynamic> get marketData;
  @override
  @JsonKey(ignore: true)
  _$$_CoinModelCopyWith<_$_CoinModel> get copyWith =>
      throw _privateConstructorUsedError;
}
