// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchaseorder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseOrder _$PurchaseOrderFromJson(Map<String, dynamic> json) {
  return _PurchaseOrder.fromJson(json);
}

/// @nodoc
class _$PurchaseOrderTearOff {
  const _$PurchaseOrderTearOff();

  _PurchaseOrder call(
      {int? id,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "return_order_code") String? returnOrderCode}) {
    return _PurchaseOrder(
      id: id,
      orderCode: orderCode,
      returnOrderCode: returnOrderCode,
    );
  }

  PurchaseOrder fromJson(Map<String, Object> json) {
    return PurchaseOrder.fromJson(json);
  }
}

/// @nodoc
const $PurchaseOrder = _$PurchaseOrderTearOff();

/// @nodoc
mixin _$PurchaseOrder {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "order_code")
  String? get orderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "return_order_code")
  String? get returnOrderCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseOrderCopyWith<PurchaseOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseOrderCopyWith<$Res> {
  factory $PurchaseOrderCopyWith(
          PurchaseOrder value, $Res Function(PurchaseOrder) then) =
      _$PurchaseOrderCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "return_order_code") String? returnOrderCode});
}

/// @nodoc
class _$PurchaseOrderCopyWithImpl<$Res>
    implements $PurchaseOrderCopyWith<$Res> {
  _$PurchaseOrderCopyWithImpl(this._value, this._then);

  final PurchaseOrder _value;
  // ignore: unused_field
  final $Res Function(PurchaseOrder) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? orderCode = freezed,
    Object? returnOrderCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderCode: orderCode == freezed
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderCode: returnOrderCode == freezed
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PurchaseOrderCopyWith<$Res>
    implements $PurchaseOrderCopyWith<$Res> {
  factory _$PurchaseOrderCopyWith(
          _PurchaseOrder value, $Res Function(_PurchaseOrder) then) =
      __$PurchaseOrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "return_order_code") String? returnOrderCode});
}

/// @nodoc
class __$PurchaseOrderCopyWithImpl<$Res>
    extends _$PurchaseOrderCopyWithImpl<$Res>
    implements _$PurchaseOrderCopyWith<$Res> {
  __$PurchaseOrderCopyWithImpl(
      _PurchaseOrder _value, $Res Function(_PurchaseOrder) _then)
      : super(_value, (v) => _then(v as _PurchaseOrder));

  @override
  _PurchaseOrder get _value => super._value as _PurchaseOrder;

  @override
  $Res call({
    Object? id = freezed,
    Object? orderCode = freezed,
    Object? returnOrderCode = freezed,
  }) {
    return _then(_PurchaseOrder(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderCode: orderCode == freezed
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderCode: returnOrderCode == freezed
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseOrder implements _PurchaseOrder {
  const _$_PurchaseOrder(
      {this.id,
      @JsonKey(name: "order_code") this.orderCode,
      @JsonKey(name: "return_order_code") this.returnOrderCode});

  factory _$_PurchaseOrder.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseOrderFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "order_code")
  final String? orderCode;
  @override
  @JsonKey(name: "return_order_code")
  final String? returnOrderCode;

  @override
  String toString() {
    return 'PurchaseOrder(id: $id, orderCode: $orderCode, returnOrderCode: $returnOrderCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PurchaseOrder &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.orderCode, orderCode) ||
                const DeepCollectionEquality()
                    .equals(other.orderCode, orderCode)) &&
            (identical(other.returnOrderCode, returnOrderCode) ||
                const DeepCollectionEquality()
                    .equals(other.returnOrderCode, returnOrderCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(orderCode) ^
      const DeepCollectionEquality().hash(returnOrderCode);

  @JsonKey(ignore: true)
  @override
  _$PurchaseOrderCopyWith<_PurchaseOrder> get copyWith =>
      __$PurchaseOrderCopyWithImpl<_PurchaseOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseOrderToJson(this);
  }
}

abstract class _PurchaseOrder implements PurchaseOrder {
  const factory _PurchaseOrder(
          {int? id,
          @JsonKey(name: "order_code") String? orderCode,
          @JsonKey(name: "return_order_code") String? returnOrderCode}) =
      _$_PurchaseOrder;

  factory _PurchaseOrder.fromJson(Map<String, dynamic> json) =
      _$_PurchaseOrder.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_code")
  String? get orderCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_order_code")
  String? get returnOrderCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PurchaseOrderCopyWith<_PurchaseOrder> get copyWith =>
      throw _privateConstructorUsedError;
}
