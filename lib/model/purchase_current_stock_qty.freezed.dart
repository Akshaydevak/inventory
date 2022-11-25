// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchase_current_stock_qty.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseCureentStockQty _$PurchaseCureentStockQtyFromJson(
    Map<String, dynamic> json) {
  return _PurchaseCureentStockQty.fromJson(json);
}

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
      _$PurchaseCureentStockQtyCopyWithImpl<$Res, PurchaseCureentStockQty>;
  @useResult
  $Res call(
      {@JsonKey(name: "stock_qty") int? StockQty,
      @JsonKey(name: "stock_code") String? Stockcode,
      @JsonKey(name: "stock_id") int? StockId});
}

/// @nodoc
class _$PurchaseCureentStockQtyCopyWithImpl<$Res,
        $Val extends PurchaseCureentStockQty>
    implements $PurchaseCureentStockQtyCopyWith<$Res> {
  _$PurchaseCureentStockQtyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? StockQty = freezed,
    Object? Stockcode = freezed,
    Object? StockId = freezed,
  }) {
    return _then(_value.copyWith(
      StockQty: freezed == StockQty
          ? _value.StockQty
          : StockQty // ignore: cast_nullable_to_non_nullable
              as int?,
      Stockcode: freezed == Stockcode
          ? _value.Stockcode
          : Stockcode // ignore: cast_nullable_to_non_nullable
              as String?,
      StockId: freezed == StockId
          ? _value.StockId
          : StockId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchaseCureentStockQtyCopyWith<$Res>
    implements $PurchaseCureentStockQtyCopyWith<$Res> {
  factory _$$_PurchaseCureentStockQtyCopyWith(_$_PurchaseCureentStockQty value,
          $Res Function(_$_PurchaseCureentStockQty) then) =
      __$$_PurchaseCureentStockQtyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "stock_qty") int? StockQty,
      @JsonKey(name: "stock_code") String? Stockcode,
      @JsonKey(name: "stock_id") int? StockId});
}

/// @nodoc
class __$$_PurchaseCureentStockQtyCopyWithImpl<$Res>
    extends _$PurchaseCureentStockQtyCopyWithImpl<$Res,
        _$_PurchaseCureentStockQty>
    implements _$$_PurchaseCureentStockQtyCopyWith<$Res> {
  __$$_PurchaseCureentStockQtyCopyWithImpl(_$_PurchaseCureentStockQty _value,
      $Res Function(_$_PurchaseCureentStockQty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? StockQty = freezed,
    Object? Stockcode = freezed,
    Object? StockId = freezed,
  }) {
    return _then(_$_PurchaseCureentStockQty(
      StockQty: freezed == StockQty
          ? _value.StockQty
          : StockQty // ignore: cast_nullable_to_non_nullable
              as int?,
      Stockcode: freezed == Stockcode
          ? _value.Stockcode
          : Stockcode // ignore: cast_nullable_to_non_nullable
              as String?,
      StockId: freezed == StockId
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
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseCureentStockQty &&
            (identical(other.StockQty, StockQty) ||
                other.StockQty == StockQty) &&
            (identical(other.Stockcode, Stockcode) ||
                other.Stockcode == Stockcode) &&
            (identical(other.StockId, StockId) || other.StockId == StockId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, StockQty, Stockcode, StockId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseCureentStockQtyCopyWith<_$_PurchaseCureentStockQty>
      get copyWith =>
          __$$_PurchaseCureentStockQtyCopyWithImpl<_$_PurchaseCureentStockQty>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseCureentStockQtyToJson(
      this,
    );
  }
}

abstract class _PurchaseCureentStockQty implements PurchaseCureentStockQty {
  const factory _PurchaseCureentStockQty(
          {@JsonKey(name: "stock_qty") final int? StockQty,
          @JsonKey(name: "stock_code") final String? Stockcode,
          @JsonKey(name: "stock_id") final int? StockId}) =
      _$_PurchaseCureentStockQty;

  factory _PurchaseCureentStockQty.fromJson(Map<String, dynamic> json) =
      _$_PurchaseCureentStockQty.fromJson;

  @override
  @JsonKey(name: "stock_qty")
  int? get StockQty;
  @override
  @JsonKey(name: "stock_code")
  String? get Stockcode;
  @override
  @JsonKey(name: "stock_id")
  int? get StockId;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseCureentStockQtyCopyWith<_$_PurchaseCureentStockQty>
      get copyWith => throw _privateConstructorUsedError;
}
