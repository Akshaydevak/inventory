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

salesOrderTypeModel _$salesOrderTypeModelFromJson(Map<String, dynamic> json) {
  return _salesOrderTypeModel.fromJson(json);
}

/// @nodoc
class _$salesOrderTypeModelTearOff {
  const _$salesOrderTypeModelTearOff();

  _salesOrderTypeModel call(
      {int? id,
      @JsonKey(name: "sales_order_code") String? salesOrderCode,
      @JsonKey(name: "sales_return_order_code") String? salesReturnOrderCode}) {
    return _salesOrderTypeModel(
      id: id,
      salesOrderCode: salesOrderCode,
      salesReturnOrderCode: salesReturnOrderCode,
    );
  }

  salesOrderTypeModel fromJson(Map<String, Object> json) {
    return salesOrderTypeModel.fromJson(json);
  }
}

/// @nodoc
const $salesOrderTypeModel = _$salesOrderTypeModelTearOff();

/// @nodoc
mixin _$salesOrderTypeModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_order_code")
  String? get salesOrderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_return_order_code")
  String? get salesReturnOrderCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $salesOrderTypeModelCopyWith<salesOrderTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $salesOrderTypeModelCopyWith<$Res> {
  factory $salesOrderTypeModelCopyWith(
          salesOrderTypeModel value, $Res Function(salesOrderTypeModel) then) =
      _$salesOrderTypeModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: "sales_order_code") String? salesOrderCode,
      @JsonKey(name: "sales_return_order_code") String? salesReturnOrderCode});
}

/// @nodoc
class _$salesOrderTypeModelCopyWithImpl<$Res>
    implements $salesOrderTypeModelCopyWith<$Res> {
  _$salesOrderTypeModelCopyWithImpl(this._value, this._then);

  final salesOrderTypeModel _value;
  // ignore: unused_field
  final $Res Function(salesOrderTypeModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? salesOrderCode = freezed,
    Object? salesReturnOrderCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      salesOrderCode: salesOrderCode == freezed
          ? _value.salesOrderCode
          : salesOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesReturnOrderCode: salesReturnOrderCode == freezed
          ? _value.salesReturnOrderCode
          : salesReturnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$salesOrderTypeModelCopyWith<$Res>
    implements $salesOrderTypeModelCopyWith<$Res> {
  factory _$salesOrderTypeModelCopyWith(_salesOrderTypeModel value,
          $Res Function(_salesOrderTypeModel) then) =
      __$salesOrderTypeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: "sales_order_code") String? salesOrderCode,
      @JsonKey(name: "sales_return_order_code") String? salesReturnOrderCode});
}

/// @nodoc
class __$salesOrderTypeModelCopyWithImpl<$Res>
    extends _$salesOrderTypeModelCopyWithImpl<$Res>
    implements _$salesOrderTypeModelCopyWith<$Res> {
  __$salesOrderTypeModelCopyWithImpl(
      _salesOrderTypeModel _value, $Res Function(_salesOrderTypeModel) _then)
      : super(_value, (v) => _then(v as _salesOrderTypeModel));

  @override
  _salesOrderTypeModel get _value => super._value as _salesOrderTypeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? salesOrderCode = freezed,
    Object? salesReturnOrderCode = freezed,
  }) {
    return _then(_salesOrderTypeModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      salesOrderCode: salesOrderCode == freezed
          ? _value.salesOrderCode
          : salesOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesReturnOrderCode: salesReturnOrderCode == freezed
          ? _value.salesReturnOrderCode
          : salesReturnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_salesOrderTypeModel implements _salesOrderTypeModel {
  const _$_salesOrderTypeModel(
      {this.id,
      @JsonKey(name: "sales_order_code") this.salesOrderCode,
      @JsonKey(name: "sales_return_order_code") this.salesReturnOrderCode});

  factory _$_salesOrderTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_salesOrderTypeModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "sales_order_code")
  final String? salesOrderCode;
  @override
  @JsonKey(name: "sales_return_order_code")
  final String? salesReturnOrderCode;

  @override
  String toString() {
    return 'salesOrderTypeModel(id: $id, salesOrderCode: $salesOrderCode, salesReturnOrderCode: $salesReturnOrderCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _salesOrderTypeModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.salesOrderCode, salesOrderCode) ||
                const DeepCollectionEquality()
                    .equals(other.salesOrderCode, salesOrderCode)) &&
            (identical(other.salesReturnOrderCode, salesReturnOrderCode) ||
                const DeepCollectionEquality()
                    .equals(other.salesReturnOrderCode, salesReturnOrderCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(salesOrderCode) ^
      const DeepCollectionEquality().hash(salesReturnOrderCode);

  @JsonKey(ignore: true)
  @override
  _$salesOrderTypeModelCopyWith<_salesOrderTypeModel> get copyWith =>
      __$salesOrderTypeModelCopyWithImpl<_salesOrderTypeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_salesOrderTypeModelToJson(this);
  }
}

abstract class _salesOrderTypeModel implements salesOrderTypeModel {
  const factory _salesOrderTypeModel(
      {int? id,
      @JsonKey(name: "sales_order_code")
          String? salesOrderCode,
      @JsonKey(name: "sales_return_order_code")
          String? salesReturnOrderCode}) = _$_salesOrderTypeModel;

  factory _salesOrderTypeModel.fromJson(Map<String, dynamic> json) =
      _$_salesOrderTypeModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_order_code")
  String? get salesOrderCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_return_order_code")
  String? get salesReturnOrderCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$salesOrderTypeModelCopyWith<_salesOrderTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
