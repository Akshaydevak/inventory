// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchase_current_stock_qty.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseCureentStockQty _$PurchaseCureentStockQtyFromJson(
    Map<String, dynamic> json) {
  return _PurchaseCureentStockQty.fromJson(json);
}

/// @nodoc
class _$PurchaseCureentStockQtyTearOff {
  const _$PurchaseCureentStockQtyTearOff();

  _PurchaseCureentStockQty call(
      {@JsonKey(name: "stock_qty") int? StockQty,
      @JsonKey(name: "stock_code") String? Stockcode,
      @JsonKey(name: "stock_id") int? StockId}) {
    return _PurchaseCureentStockQty(
      StockQty: StockQty,
      Stockcode: Stockcode,
      StockId: StockId,
    );
  }

  PurchaseCureentStockQty fromJson(Map<String, Object> json) {
    return PurchaseCureentStockQty.fromJson(json);
  }
}

/// @nodoc
const $PurchaseCureentStockQty = _$PurchaseCureentStockQtyTearOff();

/// @nodoc
mixin _$PurchaseCureentStockQty {
  @JsonKey(name: "stock_qty")
  int? get StockQty => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_code")
  String? get Stockcode => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_id")
  int? get StockId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseCureentStockQtyCopyWith<PurchaseCureentStockQty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseCureentStockQtyCopyWith<$Res> {
  factory $PurchaseCureentStockQtyCopyWith(PurchaseCureentStockQty value,
          $Res Function(PurchaseCureentStockQty) then) =
      _$PurchaseCureentStockQtyCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "stock_qty") int? StockQty,
      @JsonKey(name: "stock_code") String? Stockcode,
      @JsonKey(name: "stock_id") int? StockId});
}

/// @nodoc
class _$PurchaseCureentStockQtyCopyWithImpl<$Res>
    implements $PurchaseCureentStockQtyCopyWith<$Res> {
  _$PurchaseCureentStockQtyCopyWithImpl(this._value, this._then);

  final PurchaseCureentStockQty _value;
  // ignore: unused_field
  final $Res Function(PurchaseCureentStockQty) _then;

  @override
  $Res call({
    Object? StockQty = freezed,
    Object? Stockcode = freezed,
    Object? StockId = freezed,
  }) {
    return _then(_value.copyWith(
      StockQty: StockQty == freezed
          ? _value.StockQty
          : StockQty // ignore: cast_nullable_to_non_nullable
              as int?,
      Stockcode: Stockcode == freezed
          ? _value.Stockcode
          : Stockcode // ignore: cast_nullable_to_non_nullable
              as String?,
      StockId: StockId == freezed
          ? _value.StockId
          : StockId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PurchaseCureentStockQtyCopyWith<$Res>
    implements $PurchaseCureentStockQtyCopyWith<$Res> {
  factory _$PurchaseCureentStockQtyCopyWith(_PurchaseCureentStockQty value,
          $Res Function(_PurchaseCureentStockQty) then) =
      __$PurchaseCureentStockQtyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "stock_qty") int? StockQty,
      @JsonKey(name: "stock_code") String? Stockcode,
      @JsonKey(name: "stock_id") int? StockId});
}

/// @nodoc
class __$PurchaseCureentStockQtyCopyWithImpl<$Res>
    extends _$PurchaseCureentStockQtyCopyWithImpl<$Res>
    implements _$PurchaseCureentStockQtyCopyWith<$Res> {
  __$PurchaseCureentStockQtyCopyWithImpl(_PurchaseCureentStockQty _value,
      $Res Function(_PurchaseCureentStockQty) _then)
      : super(_value, (v) => _then(v as _PurchaseCureentStockQty));

  @override
  _PurchaseCureentStockQty get _value =>
      super._value as _PurchaseCureentStockQty;

  @override
  $Res call({
    Object? StockQty = freezed,
    Object? Stockcode = freezed,
    Object? StockId = freezed,
  }) {
    return _then(_PurchaseCureentStockQty(
      StockQty: StockQty == freezed
          ? _value.StockQty
          : StockQty // ignore: cast_nullable_to_non_nullable
              as int?,
      Stockcode: Stockcode == freezed
          ? _value.Stockcode
          : Stockcode // ignore: cast_nullable_to_non_nullable
              as String?,
      StockId: StockId == freezed
          ? _value.StockId
          : StockId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseCureentStockQty implements _PurchaseCureentStockQty {
  const _$_PurchaseCureentStockQty(
      {@JsonKey(name: "stock_qty") this.StockQty,
      @JsonKey(name: "stock_code") this.Stockcode,
      @JsonKey(name: "stock_id") this.StockId});

  factory _$_PurchaseCureentStockQty.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseCureentStockQtyFromJson(json);

  @override
  @JsonKey(name: "stock_qty")
  final int? StockQty;
  @override
  @JsonKey(name: "stock_code")
  final String? Stockcode;
  @override
  @JsonKey(name: "stock_id")
  final int? StockId;

  @override
  String toString() {
    return 'PurchaseCureentStockQty(StockQty: $StockQty, Stockcode: $Stockcode, StockId: $StockId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PurchaseCureentStockQty &&
            (identical(other.StockQty, StockQty) ||
                const DeepCollectionEquality()
                    .equals(other.StockQty, StockQty)) &&
            (identical(other.Stockcode, Stockcode) ||
                const DeepCollectionEquality()
                    .equals(other.Stockcode, Stockcode)) &&
            (identical(other.StockId, StockId) ||
                const DeepCollectionEquality().equals(other.StockId, StockId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(StockQty) ^
      const DeepCollectionEquality().hash(Stockcode) ^
      const DeepCollectionEquality().hash(StockId);

  @JsonKey(ignore: true)
  @override
  _$PurchaseCureentStockQtyCopyWith<_PurchaseCureentStockQty> get copyWith =>
      __$PurchaseCureentStockQtyCopyWithImpl<_PurchaseCureentStockQty>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseCureentStockQtyToJson(this);
  }
}

abstract class _PurchaseCureentStockQty implements PurchaseCureentStockQty {
  const factory _PurchaseCureentStockQty(
      {@JsonKey(name: "stock_qty") int? StockQty,
      @JsonKey(name: "stock_code") String? Stockcode,
      @JsonKey(name: "stock_id") int? StockId}) = _$_PurchaseCureentStockQty;

  factory _PurchaseCureentStockQty.fromJson(Map<String, dynamic> json) =
      _$_PurchaseCureentStockQty.fromJson;

  @override
  @JsonKey(name: "stock_qty")
  int? get StockQty => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "stock_code")
  String? get Stockcode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "stock_id")
  int? get StockId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PurchaseCureentStockQtyCopyWith<_PurchaseCureentStockQty> get copyWith =>
      throw _privateConstructorUsedError;
}
