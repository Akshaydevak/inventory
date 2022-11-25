// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchaseordertype.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseOrdertype _$PurchaseOrdertypeFromJson(Map<String, dynamic> json) {
  return _PurchaseOrdertype.fromJson(json);
}

/// @nodoc
mixin _$PurchaseOrdertype {
  @JsonKey(name: "order_types")
  List<String>? get orderTypes => throw _privateConstructorUsedError;
  @JsonKey(name: "pricing_pg_type")
  List<String>? get pricingPgT => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_type")
  List<String>? get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: "order_modes")
  List<String>? get orderMode => throw _privateConstructorUsedError;
  @JsonKey(name: "virtual_stock_type")
  List<String>? get virtualStockType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseOrdertypeCopyWith<PurchaseOrdertype> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseOrdertypeCopyWith<$Res> {
  factory $PurchaseOrdertypeCopyWith(
          PurchaseOrdertype value, $Res Function(PurchaseOrdertype) then) =
      _$PurchaseOrdertypeCopyWithImpl<$Res, PurchaseOrdertype>;
  @useResult
  $Res call(
      {@JsonKey(name: "order_types") List<String>? orderTypes,
      @JsonKey(name: "pricing_pg_type") List<String>? pricingPgT,
      @JsonKey(name: "discount_type") List<String>? discountType,
      @JsonKey(name: "order_modes") List<String>? orderMode,
      @JsonKey(name: "virtual_stock_type") List<String>? virtualStockType});
}

/// @nodoc
class _$PurchaseOrdertypeCopyWithImpl<$Res, $Val extends PurchaseOrdertype>
    implements $PurchaseOrdertypeCopyWith<$Res> {
  _$PurchaseOrdertypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderTypes = freezed,
    Object? pricingPgT = freezed,
    Object? discountType = freezed,
    Object? orderMode = freezed,
    Object? virtualStockType = freezed,
  }) {
    return _then(_value.copyWith(
      orderTypes: freezed == orderTypes
          ? _value.orderTypes
          : orderTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pricingPgT: freezed == pricingPgT
          ? _value.pricingPgT
          : pricingPgT // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      orderMode: freezed == orderMode
          ? _value.orderMode
          : orderMode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      virtualStockType: freezed == virtualStockType
          ? _value.virtualStockType
          : virtualStockType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchaseOrdertypeCopyWith<$Res>
    implements $PurchaseOrdertypeCopyWith<$Res> {
  factory _$$_PurchaseOrdertypeCopyWith(_$_PurchaseOrdertype value,
          $Res Function(_$_PurchaseOrdertype) then) =
      __$$_PurchaseOrdertypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "order_types") List<String>? orderTypes,
      @JsonKey(name: "pricing_pg_type") List<String>? pricingPgT,
      @JsonKey(name: "discount_type") List<String>? discountType,
      @JsonKey(name: "order_modes") List<String>? orderMode,
      @JsonKey(name: "virtual_stock_type") List<String>? virtualStockType});
}

/// @nodoc
class __$$_PurchaseOrdertypeCopyWithImpl<$Res>
    extends _$PurchaseOrdertypeCopyWithImpl<$Res, _$_PurchaseOrdertype>
    implements _$$_PurchaseOrdertypeCopyWith<$Res> {
  __$$_PurchaseOrdertypeCopyWithImpl(
      _$_PurchaseOrdertype _value, $Res Function(_$_PurchaseOrdertype) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderTypes = freezed,
    Object? pricingPgT = freezed,
    Object? discountType = freezed,
    Object? orderMode = freezed,
    Object? virtualStockType = freezed,
  }) {
    return _then(_$_PurchaseOrdertype(
      orderTypes: freezed == orderTypes
          ? _value._orderTypes
          : orderTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pricingPgT: freezed == pricingPgT
          ? _value._pricingPgT
          : pricingPgT // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      discountType: freezed == discountType
          ? _value._discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      orderMode: freezed == orderMode
          ? _value._orderMode
          : orderMode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      virtualStockType: freezed == virtualStockType
          ? _value._virtualStockType
          : virtualStockType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseOrdertype implements _PurchaseOrdertype {
  const _$_PurchaseOrdertype(
      {@JsonKey(name: "order_types")
          final List<String>? orderTypes,
      @JsonKey(name: "pricing_pg_type")
          final List<String>? pricingPgT,
      @JsonKey(name: "discount_type")
          final List<String>? discountType,
      @JsonKey(name: "order_modes")
          final List<String>? orderMode,
      @JsonKey(name: "virtual_stock_type")
          final List<String>? virtualStockType})
      : _orderTypes = orderTypes,
        _pricingPgT = pricingPgT,
        _discountType = discountType,
        _orderMode = orderMode,
        _virtualStockType = virtualStockType;

  factory _$_PurchaseOrdertype.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseOrdertypeFromJson(json);

  final List<String>? _orderTypes;
  @override
  @JsonKey(name: "order_types")
  List<String>? get orderTypes {
    final value = _orderTypes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _pricingPgT;
  @override
  @JsonKey(name: "pricing_pg_type")
  List<String>? get pricingPgT {
    final value = _pricingPgT;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _discountType;
  @override
  @JsonKey(name: "discount_type")
  List<String>? get discountType {
    final value = _discountType;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _orderMode;
  @override
  @JsonKey(name: "order_modes")
  List<String>? get orderMode {
    final value = _orderMode;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _virtualStockType;
  @override
  @JsonKey(name: "virtual_stock_type")
  List<String>? get virtualStockType {
    final value = _virtualStockType;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PurchaseOrdertype(orderTypes: $orderTypes, pricingPgT: $pricingPgT, discountType: $discountType, orderMode: $orderMode, virtualStockType: $virtualStockType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseOrdertype &&
            const DeepCollectionEquality()
                .equals(other._orderTypes, _orderTypes) &&
            const DeepCollectionEquality()
                .equals(other._pricingPgT, _pricingPgT) &&
            const DeepCollectionEquality()
                .equals(other._discountType, _discountType) &&
            const DeepCollectionEquality()
                .equals(other._orderMode, _orderMode) &&
            const DeepCollectionEquality()
                .equals(other._virtualStockType, _virtualStockType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_orderTypes),
      const DeepCollectionEquality().hash(_pricingPgT),
      const DeepCollectionEquality().hash(_discountType),
      const DeepCollectionEquality().hash(_orderMode),
      const DeepCollectionEquality().hash(_virtualStockType));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseOrdertypeCopyWith<_$_PurchaseOrdertype> get copyWith =>
      __$$_PurchaseOrdertypeCopyWithImpl<_$_PurchaseOrdertype>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseOrdertypeToJson(
      this,
    );
  }
}

abstract class _PurchaseOrdertype implements PurchaseOrdertype {
  const factory _PurchaseOrdertype(
      {@JsonKey(name: "order_types")
          final List<String>? orderTypes,
      @JsonKey(name: "pricing_pg_type")
          final List<String>? pricingPgT,
      @JsonKey(name: "discount_type")
          final List<String>? discountType,
      @JsonKey(name: "order_modes")
          final List<String>? orderMode,
      @JsonKey(name: "virtual_stock_type")
          final List<String>? virtualStockType}) = _$_PurchaseOrdertype;

  factory _PurchaseOrdertype.fromJson(Map<String, dynamic> json) =
      _$_PurchaseOrdertype.fromJson;

  @override
  @JsonKey(name: "order_types")
  List<String>? get orderTypes;
  @override
  @JsonKey(name: "pricing_pg_type")
  List<String>? get pricingPgT;
  @override
  @JsonKey(name: "discount_type")
  List<String>? get discountType;
  @override
  @JsonKey(name: "order_modes")
  List<String>? get orderMode;
  @override
  @JsonKey(name: "virtual_stock_type")
  List<String>? get virtualStockType;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseOrdertypeCopyWith<_$_PurchaseOrdertype> get copyWith =>
      throw _privateConstructorUsedError;
}
