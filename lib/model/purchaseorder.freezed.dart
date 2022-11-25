// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchaseorder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseOrder _$PurchaseOrderFromJson(Map<String, dynamic> json) {
  return _PurchaseOrder.fromJson(json);
}

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
      _$PurchaseOrderCopyWithImpl<$Res, PurchaseOrder>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "return_order_code") String? returnOrderCode});
}

/// @nodoc
class _$PurchaseOrderCopyWithImpl<$Res, $Val extends PurchaseOrder>
    implements $PurchaseOrderCopyWith<$Res> {
  _$PurchaseOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderCode = freezed,
    Object? returnOrderCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderCode: freezed == orderCode
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderCode: freezed == returnOrderCode
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchaseOrderCopyWith<$Res>
    implements $PurchaseOrderCopyWith<$Res> {
  factory _$$_PurchaseOrderCopyWith(
          _$_PurchaseOrder value, $Res Function(_$_PurchaseOrder) then) =
      __$$_PurchaseOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "return_order_code") String? returnOrderCode});
}

/// @nodoc
class __$$_PurchaseOrderCopyWithImpl<$Res>
    extends _$PurchaseOrderCopyWithImpl<$Res, _$_PurchaseOrder>
    implements _$$_PurchaseOrderCopyWith<$Res> {
  __$$_PurchaseOrderCopyWithImpl(
      _$_PurchaseOrder _value, $Res Function(_$_PurchaseOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderCode = freezed,
    Object? returnOrderCode = freezed,
  }) {
    return _then(_$_PurchaseOrder(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderCode: freezed == orderCode
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderCode: freezed == returnOrderCode
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
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseOrder &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderCode, orderCode) ||
                other.orderCode == orderCode) &&
            (identical(other.returnOrderCode, returnOrderCode) ||
                other.returnOrderCode == returnOrderCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, orderCode, returnOrderCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseOrderCopyWith<_$_PurchaseOrder> get copyWith =>
      __$$_PurchaseOrderCopyWithImpl<_$_PurchaseOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseOrderToJson(
      this,
    );
  }
}

abstract class _PurchaseOrder implements PurchaseOrder {
  const factory _PurchaseOrder(
          {final int? id,
          @JsonKey(name: "order_code") final String? orderCode,
          @JsonKey(name: "return_order_code") final String? returnOrderCode}) =
      _$_PurchaseOrder;

  factory _PurchaseOrder.fromJson(Map<String, dynamic> json) =
      _$_PurchaseOrder.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "order_code")
  String? get orderCode;
  @override
  @JsonKey(name: "return_order_code")
  String? get returnOrderCode;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseOrderCopyWith<_$_PurchaseOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

salesOrderTypeModel _$salesOrderTypeModelFromJson(Map<String, dynamic> json) {
  return _salesOrderTypeModel.fromJson(json);
}

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
      _$salesOrderTypeModelCopyWithImpl<$Res, salesOrderTypeModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "sales_order_code") String? salesOrderCode,
      @JsonKey(name: "sales_return_order_code") String? salesReturnOrderCode});
}

/// @nodoc
class _$salesOrderTypeModelCopyWithImpl<$Res, $Val extends salesOrderTypeModel>
    implements $salesOrderTypeModelCopyWith<$Res> {
  _$salesOrderTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? salesOrderCode = freezed,
    Object? salesReturnOrderCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      salesOrderCode: freezed == salesOrderCode
          ? _value.salesOrderCode
          : salesOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesReturnOrderCode: freezed == salesReturnOrderCode
          ? _value.salesReturnOrderCode
          : salesReturnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_salesOrderTypeModelCopyWith<$Res>
    implements $salesOrderTypeModelCopyWith<$Res> {
  factory _$$_salesOrderTypeModelCopyWith(_$_salesOrderTypeModel value,
          $Res Function(_$_salesOrderTypeModel) then) =
      __$$_salesOrderTypeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "sales_order_code") String? salesOrderCode,
      @JsonKey(name: "sales_return_order_code") String? salesReturnOrderCode});
}

/// @nodoc
class __$$_salesOrderTypeModelCopyWithImpl<$Res>
    extends _$salesOrderTypeModelCopyWithImpl<$Res, _$_salesOrderTypeModel>
    implements _$$_salesOrderTypeModelCopyWith<$Res> {
  __$$_salesOrderTypeModelCopyWithImpl(_$_salesOrderTypeModel _value,
      $Res Function(_$_salesOrderTypeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? salesOrderCode = freezed,
    Object? salesReturnOrderCode = freezed,
  }) {
    return _then(_$_salesOrderTypeModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      salesOrderCode: freezed == salesOrderCode
          ? _value.salesOrderCode
          : salesOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesReturnOrderCode: freezed == salesReturnOrderCode
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
        (other.runtimeType == runtimeType &&
            other is _$_salesOrderTypeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.salesOrderCode, salesOrderCode) ||
                other.salesOrderCode == salesOrderCode) &&
            (identical(other.salesReturnOrderCode, salesReturnOrderCode) ||
                other.salesReturnOrderCode == salesReturnOrderCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, salesOrderCode, salesReturnOrderCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_salesOrderTypeModelCopyWith<_$_salesOrderTypeModel> get copyWith =>
      __$$_salesOrderTypeModelCopyWithImpl<_$_salesOrderTypeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_salesOrderTypeModelToJson(
      this,
    );
  }
}

abstract class _salesOrderTypeModel implements salesOrderTypeModel {
  const factory _salesOrderTypeModel(
      {final int? id,
      @JsonKey(name: "sales_order_code")
          final String? salesOrderCode,
      @JsonKey(name: "sales_return_order_code")
          final String? salesReturnOrderCode}) = _$_salesOrderTypeModel;

  factory _salesOrderTypeModel.fromJson(Map<String, dynamic> json) =
      _$_salesOrderTypeModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "sales_order_code")
  String? get salesOrderCode;
  @override
  @JsonKey(name: "sales_return_order_code")
  String? get salesReturnOrderCode;
  @override
  @JsonKey(ignore: true)
  _$$_salesOrderTypeModelCopyWith<_$_salesOrderTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
