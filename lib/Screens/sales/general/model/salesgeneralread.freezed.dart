// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'salesgeneralread.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesGeneralReadModel _$SalesGeneralReadModelFromJson(
    Map<String, dynamic> json) {
  return _SalesGeneralReadModel.fromJson(json);
}

/// @nodoc
class _$SalesGeneralReadModelTearOff {
  const _$SalesGeneralReadModelTearOff();

  _SalesGeneralReadModel call(
      {@JsonKey(name: "sales_order_data") SalesOrderData? salesOrderData,
      @JsonKey(name: "order_types") List<String>? orderTypes,
      @JsonKey(name: "discount_type") List<String>? discountType}) {
    return _SalesGeneralReadModel(
      salesOrderData: salesOrderData,
      orderTypes: orderTypes,
      discountType: discountType,
    );
  }

  SalesGeneralReadModel fromJson(Map<String, Object> json) {
    return SalesGeneralReadModel.fromJson(json);
  }
}

/// @nodoc
const $SalesGeneralReadModel = _$SalesGeneralReadModelTearOff();

/// @nodoc
mixin _$SalesGeneralReadModel {
  @JsonKey(name: "sales_order_data")
  SalesOrderData? get salesOrderData => throw _privateConstructorUsedError;
  @JsonKey(name: "order_types")
  List<String>? get orderTypes => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_type")
  List<String>? get discountType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesGeneralReadModelCopyWith<SalesGeneralReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesGeneralReadModelCopyWith<$Res> {
  factory $SalesGeneralReadModelCopyWith(SalesGeneralReadModel value,
          $Res Function(SalesGeneralReadModel) then) =
      _$SalesGeneralReadModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "sales_order_data") SalesOrderData? salesOrderData,
      @JsonKey(name: "order_types") List<String>? orderTypes,
      @JsonKey(name: "discount_type") List<String>? discountType});

  $SalesOrderDataCopyWith<$Res>? get salesOrderData;
}

/// @nodoc
class _$SalesGeneralReadModelCopyWithImpl<$Res>
    implements $SalesGeneralReadModelCopyWith<$Res> {
  _$SalesGeneralReadModelCopyWithImpl(this._value, this._then);

  final SalesGeneralReadModel _value;
  // ignore: unused_field
  final $Res Function(SalesGeneralReadModel) _then;

  @override
  $Res call({
    Object? salesOrderData = freezed,
    Object? orderTypes = freezed,
    Object? discountType = freezed,
  }) {
    return _then(_value.copyWith(
      salesOrderData: salesOrderData == freezed
          ? _value.salesOrderData
          : salesOrderData // ignore: cast_nullable_to_non_nullable
              as SalesOrderData?,
      orderTypes: orderTypes == freezed
          ? _value.orderTypes
          : orderTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      discountType: discountType == freezed
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  @override
  $SalesOrderDataCopyWith<$Res>? get salesOrderData {
    if (_value.salesOrderData == null) {
      return null;
    }

    return $SalesOrderDataCopyWith<$Res>(_value.salesOrderData!, (value) {
      return _then(_value.copyWith(salesOrderData: value));
    });
  }
}

/// @nodoc
abstract class _$SalesGeneralReadModelCopyWith<$Res>
    implements $SalesGeneralReadModelCopyWith<$Res> {
  factory _$SalesGeneralReadModelCopyWith(_SalesGeneralReadModel value,
          $Res Function(_SalesGeneralReadModel) then) =
      __$SalesGeneralReadModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "sales_order_data") SalesOrderData? salesOrderData,
      @JsonKey(name: "order_types") List<String>? orderTypes,
      @JsonKey(name: "discount_type") List<String>? discountType});

  @override
  $SalesOrderDataCopyWith<$Res>? get salesOrderData;
}

/// @nodoc
class __$SalesGeneralReadModelCopyWithImpl<$Res>
    extends _$SalesGeneralReadModelCopyWithImpl<$Res>
    implements _$SalesGeneralReadModelCopyWith<$Res> {
  __$SalesGeneralReadModelCopyWithImpl(_SalesGeneralReadModel _value,
      $Res Function(_SalesGeneralReadModel) _then)
      : super(_value, (v) => _then(v as _SalesGeneralReadModel));

  @override
  _SalesGeneralReadModel get _value => super._value as _SalesGeneralReadModel;

  @override
  $Res call({
    Object? salesOrderData = freezed,
    Object? orderTypes = freezed,
    Object? discountType = freezed,
  }) {
    return _then(_SalesGeneralReadModel(
      salesOrderData: salesOrderData == freezed
          ? _value.salesOrderData
          : salesOrderData // ignore: cast_nullable_to_non_nullable
              as SalesOrderData?,
      orderTypes: orderTypes == freezed
          ? _value.orderTypes
          : orderTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      discountType: discountType == freezed
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesGeneralReadModel implements _SalesGeneralReadModel {
  const _$_SalesGeneralReadModel(
      {@JsonKey(name: "sales_order_data") this.salesOrderData,
      @JsonKey(name: "order_types") this.orderTypes,
      @JsonKey(name: "discount_type") this.discountType});

  factory _$_SalesGeneralReadModel.fromJson(Map<String, dynamic> json) =>
      _$$_SalesGeneralReadModelFromJson(json);

  @override
  @JsonKey(name: "sales_order_data")
  final SalesOrderData? salesOrderData;
  @override
  @JsonKey(name: "order_types")
  final List<String>? orderTypes;
  @override
  @JsonKey(name: "discount_type")
  final List<String>? discountType;

  @override
  String toString() {
    return 'SalesGeneralReadModel(salesOrderData: $salesOrderData, orderTypes: $orderTypes, discountType: $discountType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SalesGeneralReadModel &&
            (identical(other.salesOrderData, salesOrderData) ||
                const DeepCollectionEquality()
                    .equals(other.salesOrderData, salesOrderData)) &&
            (identical(other.orderTypes, orderTypes) ||
                const DeepCollectionEquality()
                    .equals(other.orderTypes, orderTypes)) &&
            (identical(other.discountType, discountType) ||
                const DeepCollectionEquality()
                    .equals(other.discountType, discountType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(salesOrderData) ^
      const DeepCollectionEquality().hash(orderTypes) ^
      const DeepCollectionEquality().hash(discountType);

  @JsonKey(ignore: true)
  @override
  _$SalesGeneralReadModelCopyWith<_SalesGeneralReadModel> get copyWith =>
      __$SalesGeneralReadModelCopyWithImpl<_SalesGeneralReadModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesGeneralReadModelToJson(this);
  }
}

abstract class _SalesGeneralReadModel implements SalesGeneralReadModel {
  const factory _SalesGeneralReadModel(
          {@JsonKey(name: "sales_order_data") SalesOrderData? salesOrderData,
          @JsonKey(name: "order_types") List<String>? orderTypes,
          @JsonKey(name: "discount_type") List<String>? discountType}) =
      _$_SalesGeneralReadModel;

  factory _SalesGeneralReadModel.fromJson(Map<String, dynamic> json) =
      _$_SalesGeneralReadModel.fromJson;

  @override
  @JsonKey(name: "sales_order_data")
  SalesOrderData? get salesOrderData => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_types")
  List<String>? get orderTypes => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "discount_type")
  List<String>? get discountType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SalesGeneralReadModelCopyWith<_SalesGeneralReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SalesOrderData _$SalesOrderDataFromJson(Map<String, dynamic> json) {
  return _SalesOrderData.fromJson(json);
}

/// @nodoc
class _$SalesOrderDataTearOff {
  const _$SalesOrderDataTearOff();

  _SalesOrderData call(
      {double? foc,
      int? id,
      double? discount,
      double? vat,
      String? note,
      String? remarks,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "order_mode") String? orderMode,
      @JsonKey(name: "inventory_id") String? inventoryid,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "shipping_address_id") String? shippingAddressId,
      @JsonKey(name: "billing_address_id") String? billingAddressId,
      @JsonKey(name: "ordered_date") String? orderedDate,
      @JsonKey(name: "payment_id") String? paymentId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "sales_order_code") String? salesOrderCode,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "sales_quotes_id") String? salesQuotesId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "order_lines") List<SalesOrderLines>? orderLines}) {
    return _SalesOrderData(
      foc: foc,
      id: id,
      discount: discount,
      vat: vat,
      note: note,
      remarks: remarks,
      orderType: orderType,
      orderMode: orderMode,
      inventoryid: inventoryid,
      customerId: customerId,
      trnNumber: trnNumber,
      shippingAddressId: shippingAddressId,
      billingAddressId: billingAddressId,
      orderedDate: orderedDate,
      paymentId: paymentId,
      paymentStatus: paymentStatus,
      salesOrderCode: salesOrderCode,
      orderStatus: orderStatus,
      invoiceStatus: invoiceStatus,
      salesQuotesId: salesQuotesId,
      unitCost: unitCost,
      excessTax: excessTax,
      taxableAmount: taxableAmount,
      sellingPriceTotal: sellingPriceTotal,
      totalPrice: totalPrice,
      orderLines: orderLines,
    );
  }

  SalesOrderData fromJson(Map<String, Object> json) {
    return SalesOrderData.fromJson(json);
  }
}

/// @nodoc
const $SalesOrderData = _$SalesOrderDataTearOff();

/// @nodoc
mixin _$SalesOrderData {
  double? get foc => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "order_type")
  String? get orderType => throw _privateConstructorUsedError;
  @JsonKey(name: "order_mode")
  String? get orderMode => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryid => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id")
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "trn_number")
  String? get trnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_address_id")
  String? get shippingAddressId => throw _privateConstructorUsedError;
  @JsonKey(name: "billing_address_id")
  String? get billingAddressId => throw _privateConstructorUsedError;
  @JsonKey(name: "ordered_date")
  String? get orderedDate => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_id")
  String? get paymentId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_order_code")
  String? get salesOrderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "order_satus")
  String? get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_quotes_id")
  String? get salesQuotesId => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "taxable_amount")
  double? get taxableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price_total")
  double? get sellingPriceTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  double? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "order_lines")
  List<SalesOrderLines>? get orderLines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesOrderDataCopyWith<SalesOrderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderDataCopyWith<$Res> {
  factory $SalesOrderDataCopyWith(
          SalesOrderData value, $Res Function(SalesOrderData) then) =
      _$SalesOrderDataCopyWithImpl<$Res>;
  $Res call(
      {double? foc,
      int? id,
      double? discount,
      double? vat,
      String? note,
      String? remarks,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "order_mode") String? orderMode,
      @JsonKey(name: "inventory_id") String? inventoryid,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "shipping_address_id") String? shippingAddressId,
      @JsonKey(name: "billing_address_id") String? billingAddressId,
      @JsonKey(name: "ordered_date") String? orderedDate,
      @JsonKey(name: "payment_id") String? paymentId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "sales_order_code") String? salesOrderCode,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "sales_quotes_id") String? salesQuotesId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "order_lines") List<SalesOrderLines>? orderLines});
}

/// @nodoc
class _$SalesOrderDataCopyWithImpl<$Res>
    implements $SalesOrderDataCopyWith<$Res> {
  _$SalesOrderDataCopyWithImpl(this._value, this._then);

  final SalesOrderData _value;
  // ignore: unused_field
  final $Res Function(SalesOrderData) _then;

  @override
  $Res call({
    Object? foc = freezed,
    Object? id = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? note = freezed,
    Object? remarks = freezed,
    Object? orderType = freezed,
    Object? orderMode = freezed,
    Object? inventoryid = freezed,
    Object? customerId = freezed,
    Object? trnNumber = freezed,
    Object? shippingAddressId = freezed,
    Object? billingAddressId = freezed,
    Object? orderedDate = freezed,
    Object? paymentId = freezed,
    Object? paymentStatus = freezed,
    Object? salesOrderCode = freezed,
    Object? orderStatus = freezed,
    Object? invoiceStatus = freezed,
    Object? salesQuotesId = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? orderLines = freezed,
  }) {
    return _then(_value.copyWith(
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      orderMode: orderMode == freezed
          ? _value.orderMode
          : orderMode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryid: inventoryid == freezed
          ? _value.inventoryid
          : inventoryid // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: trnNumber == freezed
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddressId: shippingAddressId == freezed
          ? _value.shippingAddressId
          : shippingAddressId // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddressId: billingAddressId == freezed
          ? _value.billingAddressId
          : billingAddressId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderedDate: orderedDate == freezed
          ? _value.orderedDate
          : orderedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: paymentId == freezed
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      salesOrderCode: salesOrderCode == freezed
          ? _value.salesOrderCode
          : salesOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: orderStatus == freezed
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: invoiceStatus == freezed
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      salesQuotesId: salesQuotesId == freezed
          ? _value.salesQuotesId
          : salesQuotesId // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      taxableAmount: taxableAmount == freezed
          ? _value.taxableAmount
          : taxableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPriceTotal: sellingPriceTotal == freezed
          ? _value.sellingPriceTotal
          : sellingPriceTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      orderLines: orderLines == freezed
          ? _value.orderLines
          : orderLines // ignore: cast_nullable_to_non_nullable
              as List<SalesOrderLines>?,
    ));
  }
}

/// @nodoc
abstract class _$SalesOrderDataCopyWith<$Res>
    implements $SalesOrderDataCopyWith<$Res> {
  factory _$SalesOrderDataCopyWith(
          _SalesOrderData value, $Res Function(_SalesOrderData) then) =
      __$SalesOrderDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? foc,
      int? id,
      double? discount,
      double? vat,
      String? note,
      String? remarks,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "order_mode") String? orderMode,
      @JsonKey(name: "inventory_id") String? inventoryid,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "shipping_address_id") String? shippingAddressId,
      @JsonKey(name: "billing_address_id") String? billingAddressId,
      @JsonKey(name: "ordered_date") String? orderedDate,
      @JsonKey(name: "payment_id") String? paymentId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "sales_order_code") String? salesOrderCode,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "sales_quotes_id") String? salesQuotesId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "order_lines") List<SalesOrderLines>? orderLines});
}

/// @nodoc
class __$SalesOrderDataCopyWithImpl<$Res>
    extends _$SalesOrderDataCopyWithImpl<$Res>
    implements _$SalesOrderDataCopyWith<$Res> {
  __$SalesOrderDataCopyWithImpl(
      _SalesOrderData _value, $Res Function(_SalesOrderData) _then)
      : super(_value, (v) => _then(v as _SalesOrderData));

  @override
  _SalesOrderData get _value => super._value as _SalesOrderData;

  @override
  $Res call({
    Object? foc = freezed,
    Object? id = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? note = freezed,
    Object? remarks = freezed,
    Object? orderType = freezed,
    Object? orderMode = freezed,
    Object? inventoryid = freezed,
    Object? customerId = freezed,
    Object? trnNumber = freezed,
    Object? shippingAddressId = freezed,
    Object? billingAddressId = freezed,
    Object? orderedDate = freezed,
    Object? paymentId = freezed,
    Object? paymentStatus = freezed,
    Object? salesOrderCode = freezed,
    Object? orderStatus = freezed,
    Object? invoiceStatus = freezed,
    Object? salesQuotesId = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? orderLines = freezed,
  }) {
    return _then(_SalesOrderData(
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      orderMode: orderMode == freezed
          ? _value.orderMode
          : orderMode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryid: inventoryid == freezed
          ? _value.inventoryid
          : inventoryid // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: trnNumber == freezed
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddressId: shippingAddressId == freezed
          ? _value.shippingAddressId
          : shippingAddressId // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddressId: billingAddressId == freezed
          ? _value.billingAddressId
          : billingAddressId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderedDate: orderedDate == freezed
          ? _value.orderedDate
          : orderedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: paymentId == freezed
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      salesOrderCode: salesOrderCode == freezed
          ? _value.salesOrderCode
          : salesOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: orderStatus == freezed
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: invoiceStatus == freezed
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      salesQuotesId: salesQuotesId == freezed
          ? _value.salesQuotesId
          : salesQuotesId // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      taxableAmount: taxableAmount == freezed
          ? _value.taxableAmount
          : taxableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPriceTotal: sellingPriceTotal == freezed
          ? _value.sellingPriceTotal
          : sellingPriceTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      orderLines: orderLines == freezed
          ? _value.orderLines
          : orderLines // ignore: cast_nullable_to_non_nullable
              as List<SalesOrderLines>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesOrderData implements _SalesOrderData {
  const _$_SalesOrderData(
      {this.foc,
      this.id,
      this.discount,
      this.vat,
      this.note,
      this.remarks,
      @JsonKey(name: "order_type") this.orderType,
      @JsonKey(name: "order_mode") this.orderMode,
      @JsonKey(name: "inventory_id") this.inventoryid,
      @JsonKey(name: "customer_id") this.customerId,
      @JsonKey(name: "trn_number") this.trnNumber,
      @JsonKey(name: "shipping_address_id") this.shippingAddressId,
      @JsonKey(name: "billing_address_id") this.billingAddressId,
      @JsonKey(name: "ordered_date") this.orderedDate,
      @JsonKey(name: "payment_id") this.paymentId,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "sales_order_code") this.salesOrderCode,
      @JsonKey(name: "order_satus") this.orderStatus,
      @JsonKey(name: "invoice_status") this.invoiceStatus,
      @JsonKey(name: "sales_quotes_id") this.salesQuotesId,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "taxable_amount") this.taxableAmount,
      @JsonKey(name: "selling_price_total") this.sellingPriceTotal,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "order_lines") this.orderLines});

  factory _$_SalesOrderData.fromJson(Map<String, dynamic> json) =>
      _$$_SalesOrderDataFromJson(json);

  @override
  final double? foc;
  @override
  final int? id;
  @override
  final double? discount;
  @override
  final double? vat;
  @override
  final String? note;
  @override
  final String? remarks;
  @override
  @JsonKey(name: "order_type")
  final String? orderType;
  @override
  @JsonKey(name: "order_mode")
  final String? orderMode;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryid;
  @override
  @JsonKey(name: "customer_id")
  final String? customerId;
  @override
  @JsonKey(name: "trn_number")
  final String? trnNumber;
  @override
  @JsonKey(name: "shipping_address_id")
  final String? shippingAddressId;
  @override
  @JsonKey(name: "billing_address_id")
  final String? billingAddressId;
  @override
  @JsonKey(name: "ordered_date")
  final String? orderedDate;
  @override
  @JsonKey(name: "payment_id")
  final String? paymentId;
  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  @override
  @JsonKey(name: "sales_order_code")
  final String? salesOrderCode;
  @override
  @JsonKey(name: "order_satus")
  final String? orderStatus;
  @override
  @JsonKey(name: "invoice_status")
  final String? invoiceStatus;
  @override
  @JsonKey(name: "sales_quotes_id")
  final String? salesQuotesId;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "excess_tax")
  final double? excessTax;
  @override
  @JsonKey(name: "taxable_amount")
  final double? taxableAmount;
  @override
  @JsonKey(name: "selling_price_total")
  final double? sellingPriceTotal;
  @override
  @JsonKey(name: "total_price")
  final double? totalPrice;
  @override
  @JsonKey(name: "order_lines")
  final List<SalesOrderLines>? orderLines;

  @override
  String toString() {
    return 'SalesOrderData(foc: $foc, id: $id, discount: $discount, vat: $vat, note: $note, remarks: $remarks, orderType: $orderType, orderMode: $orderMode, inventoryid: $inventoryid, customerId: $customerId, trnNumber: $trnNumber, shippingAddressId: $shippingAddressId, billingAddressId: $billingAddressId, orderedDate: $orderedDate, paymentId: $paymentId, paymentStatus: $paymentStatus, salesOrderCode: $salesOrderCode, orderStatus: $orderStatus, invoiceStatus: $invoiceStatus, salesQuotesId: $salesQuotesId, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, sellingPriceTotal: $sellingPriceTotal, totalPrice: $totalPrice, orderLines: $orderLines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SalesOrderData &&
            (identical(other.foc, foc) ||
                const DeepCollectionEquality().equals(other.foc, foc)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.remarks, remarks) ||
                const DeepCollectionEquality()
                    .equals(other.remarks, remarks)) &&
            (identical(other.orderType, orderType) ||
                const DeepCollectionEquality()
                    .equals(other.orderType, orderType)) &&
            (identical(other.orderMode, orderMode) ||
                const DeepCollectionEquality()
                    .equals(other.orderMode, orderMode)) &&
            (identical(other.inventoryid, inventoryid) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryid, inventoryid)) &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality()
                    .equals(other.customerId, customerId)) &&
            (identical(other.trnNumber, trnNumber) ||
                const DeepCollectionEquality()
                    .equals(other.trnNumber, trnNumber)) &&
            (identical(other.shippingAddressId, shippingAddressId) ||
                const DeepCollectionEquality()
                    .equals(other.shippingAddressId, shippingAddressId)) &&
            (identical(other.billingAddressId, billingAddressId) ||
                const DeepCollectionEquality()
                    .equals(other.billingAddressId, billingAddressId)) &&
            (identical(other.orderedDate, orderedDate) ||
                const DeepCollectionEquality()
                    .equals(other.orderedDate, orderedDate)) &&
            (identical(other.paymentId, paymentId) ||
                const DeepCollectionEquality()
                    .equals(other.paymentId, paymentId)) &&
            (identical(other.paymentStatus, paymentStatus) ||
                const DeepCollectionEquality()
                    .equals(other.paymentStatus, paymentStatus)) &&
            (identical(other.salesOrderCode, salesOrderCode) ||
                const DeepCollectionEquality()
                    .equals(other.salesOrderCode, salesOrderCode)) &&
            (identical(other.orderStatus, orderStatus) ||
                const DeepCollectionEquality()
                    .equals(other.orderStatus, orderStatus)) &&
            (identical(other.invoiceStatus, invoiceStatus) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceStatus, invoiceStatus)) &&
            (identical(other.salesQuotesId, salesQuotesId) ||
                const DeepCollectionEquality()
                    .equals(other.salesQuotesId, salesQuotesId)) &&
            (identical(other.unitCost, unitCost) ||
                const DeepCollectionEquality()
                    .equals(other.unitCost, unitCost)) &&
            (identical(other.excessTax, excessTax) ||
                const DeepCollectionEquality()
                    .equals(other.excessTax, excessTax)) &&
            (identical(other.taxableAmount, taxableAmount) ||
                const DeepCollectionEquality()
                    .equals(other.taxableAmount, taxableAmount)) &&
            (identical(other.sellingPriceTotal, sellingPriceTotal) ||
                const DeepCollectionEquality().equals(other.sellingPriceTotal, sellingPriceTotal)) &&
            (identical(other.totalPrice, totalPrice) || const DeepCollectionEquality().equals(other.totalPrice, totalPrice)) &&
            (identical(other.orderLines, orderLines) || const DeepCollectionEquality().equals(other.orderLines, orderLines)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(foc) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(remarks) ^
      const DeepCollectionEquality().hash(orderType) ^
      const DeepCollectionEquality().hash(orderMode) ^
      const DeepCollectionEquality().hash(inventoryid) ^
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(trnNumber) ^
      const DeepCollectionEquality().hash(shippingAddressId) ^
      const DeepCollectionEquality().hash(billingAddressId) ^
      const DeepCollectionEquality().hash(orderedDate) ^
      const DeepCollectionEquality().hash(paymentId) ^
      const DeepCollectionEquality().hash(paymentStatus) ^
      const DeepCollectionEquality().hash(salesOrderCode) ^
      const DeepCollectionEquality().hash(orderStatus) ^
      const DeepCollectionEquality().hash(invoiceStatus) ^
      const DeepCollectionEquality().hash(salesQuotesId) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(taxableAmount) ^
      const DeepCollectionEquality().hash(sellingPriceTotal) ^
      const DeepCollectionEquality().hash(totalPrice) ^
      const DeepCollectionEquality().hash(orderLines);

  @JsonKey(ignore: true)
  @override
  _$SalesOrderDataCopyWith<_SalesOrderData> get copyWith =>
      __$SalesOrderDataCopyWithImpl<_SalesOrderData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesOrderDataToJson(this);
  }
}

abstract class _SalesOrderData implements SalesOrderData {
  const factory _SalesOrderData(
          {double? foc,
          int? id,
          double? discount,
          double? vat,
          String? note,
          String? remarks,
          @JsonKey(name: "order_type") String? orderType,
          @JsonKey(name: "order_mode") String? orderMode,
          @JsonKey(name: "inventory_id") String? inventoryid,
          @JsonKey(name: "customer_id") String? customerId,
          @JsonKey(name: "trn_number") String? trnNumber,
          @JsonKey(name: "shipping_address_id") String? shippingAddressId,
          @JsonKey(name: "billing_address_id") String? billingAddressId,
          @JsonKey(name: "ordered_date") String? orderedDate,
          @JsonKey(name: "payment_id") String? paymentId,
          @JsonKey(name: "payment_status") String? paymentStatus,
          @JsonKey(name: "sales_order_code") String? salesOrderCode,
          @JsonKey(name: "order_satus") String? orderStatus,
          @JsonKey(name: "invoice_status") String? invoiceStatus,
          @JsonKey(name: "sales_quotes_id") String? salesQuotesId,
          @JsonKey(name: "unit_cost") double? unitCost,
          @JsonKey(name: "excess_tax") double? excessTax,
          @JsonKey(name: "taxable_amount") double? taxableAmount,
          @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
          @JsonKey(name: "total_price") double? totalPrice,
          @JsonKey(name: "order_lines") List<SalesOrderLines>? orderLines}) =
      _$_SalesOrderData;

  factory _SalesOrderData.fromJson(Map<String, dynamic> json) =
      _$_SalesOrderData.fromJson;

  @override
  double? get foc => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  String? get note => throw _privateConstructorUsedError;
  @override
  String? get remarks => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_type")
  String? get orderType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_mode")
  String? get orderMode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "customer_id")
  String? get customerId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "trn_number")
  String? get trnNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "shipping_address_id")
  String? get shippingAddressId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "billing_address_id")
  String? get billingAddressId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "ordered_date")
  String? get orderedDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "payment_id")
  String? get paymentId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_order_code")
  String? get salesOrderCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_satus")
  String? get orderStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_quotes_id")
  String? get salesQuotesId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "taxable_amount")
  double? get taxableAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "selling_price_total")
  double? get sellingPriceTotal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "total_price")
  double? get totalPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_lines")
  List<SalesOrderLines>? get orderLines => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SalesOrderDataCopyWith<_SalesOrderData> get copyWith =>
      throw _privateConstructorUsedError;
}
