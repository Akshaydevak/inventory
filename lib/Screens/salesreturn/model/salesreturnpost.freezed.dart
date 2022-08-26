// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'salesreturnpost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesReturnGeneralPostModel _$SalesReturnGeneralPostModelFromJson(
    Map<String, dynamic> json) {
  return _SalesReturnGeneralPostModel.fromJson(json);
}

/// @nodoc
class _$SalesReturnGeneralPostModelTearOff {
  const _$SalesReturnGeneralPostModelTearOff();

  _SalesReturnGeneralPostModel call(
      {double? discount,
      double? vat,
      String? reason,
      String? remarks,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "order_mode") String? orderMode,
      @JsonKey(name: "sales_return_order_code") String? salesReturnOrderCode,
      @JsonKey(name: "returned_date") String? returnOrderDate,
      @JsonKey(name: "inventory_id") String? inventoryid,
      @JsonKey(name: "payment_id") String? payementId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "sales_invoice_id") String? salesInvoiceId,
      @JsonKey(name: "shipping_address_id") String? shippingAddressId,
      @JsonKey(name: "billing_address_id") String? billingAddressId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "order_lines") List<SalesReturnOrderLines>? orderLines}) {
    return _SalesReturnGeneralPostModel(
      discount: discount,
      vat: vat,
      reason: reason,
      remarks: remarks,
      orderType: orderType,
      orderMode: orderMode,
      salesReturnOrderCode: salesReturnOrderCode,
      returnOrderDate: returnOrderDate,
      inventoryid: inventoryid,
      payementId: payementId,
      paymentStatus: paymentStatus,
      orderStatus: orderStatus,
      invoiceStatus: invoiceStatus,
      customerId: customerId,
      trnNumber: trnNumber,
      salesInvoiceId: salesInvoiceId,
      shippingAddressId: shippingAddressId,
      billingAddressId: billingAddressId,
      unitCost: unitCost,
      excessTax: excessTax,
      taxableAmount: taxableAmount,
      sellingPriceTotal: sellingPriceTotal,
      totalPrice: totalPrice,
      createdBy: createdBy,
      orderLines: orderLines,
    );
  }

  SalesReturnGeneralPostModel fromJson(Map<String, Object> json) {
    return SalesReturnGeneralPostModel.fromJson(json);
  }
}

/// @nodoc
const $SalesReturnGeneralPostModel = _$SalesReturnGeneralPostModelTearOff();

/// @nodoc
mixin _$SalesReturnGeneralPostModel {
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "order_type")
  String? get orderType => throw _privateConstructorUsedError;
  @JsonKey(name: "order_mode")
  String? get orderMode => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_return_order_code")
  String? get salesReturnOrderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "returned_date")
  String? get returnOrderDate => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryid => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_id")
  String? get payementId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "order_satus")
  String? get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id")
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "trn_number")
  String? get trnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_invoice_id")
  String? get salesInvoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_address_id")
  String? get shippingAddressId => throw _privateConstructorUsedError;
  @JsonKey(name: "billing_address_id")
  String? get billingAddressId => throw _privateConstructorUsedError;
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
  @JsonKey(name: "created_by")
  String? get createdBy =>
      throw _privateConstructorUsedError; // @JsonKey(name: "edited_by") final String? editedBy,/
  @JsonKey(name: "order_lines")
  List<SalesReturnOrderLines>? get orderLines =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesReturnGeneralPostModelCopyWith<SalesReturnGeneralPostModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesReturnGeneralPostModelCopyWith<$Res> {
  factory $SalesReturnGeneralPostModelCopyWith(
          SalesReturnGeneralPostModel value,
          $Res Function(SalesReturnGeneralPostModel) then) =
      _$SalesReturnGeneralPostModelCopyWithImpl<$Res>;
  $Res call(
      {double? discount,
      double? vat,
      String? reason,
      String? remarks,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "order_mode") String? orderMode,
      @JsonKey(name: "sales_return_order_code") String? salesReturnOrderCode,
      @JsonKey(name: "returned_date") String? returnOrderDate,
      @JsonKey(name: "inventory_id") String? inventoryid,
      @JsonKey(name: "payment_id") String? payementId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "sales_invoice_id") String? salesInvoiceId,
      @JsonKey(name: "shipping_address_id") String? shippingAddressId,
      @JsonKey(name: "billing_address_id") String? billingAddressId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "order_lines") List<SalesReturnOrderLines>? orderLines});
}

/// @nodoc
class _$SalesReturnGeneralPostModelCopyWithImpl<$Res>
    implements $SalesReturnGeneralPostModelCopyWith<$Res> {
  _$SalesReturnGeneralPostModelCopyWithImpl(this._value, this._then);

  final SalesReturnGeneralPostModel _value;
  // ignore: unused_field
  final $Res Function(SalesReturnGeneralPostModel) _then;

  @override
  $Res call({
    Object? discount = freezed,
    Object? vat = freezed,
    Object? reason = freezed,
    Object? remarks = freezed,
    Object? orderType = freezed,
    Object? orderMode = freezed,
    Object? salesReturnOrderCode = freezed,
    Object? returnOrderDate = freezed,
    Object? inventoryid = freezed,
    Object? payementId = freezed,
    Object? paymentStatus = freezed,
    Object? orderStatus = freezed,
    Object? invoiceStatus = freezed,
    Object? customerId = freezed,
    Object? trnNumber = freezed,
    Object? salesInvoiceId = freezed,
    Object? shippingAddressId = freezed,
    Object? billingAddressId = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? createdBy = freezed,
    Object? orderLines = freezed,
  }) {
    return _then(_value.copyWith(
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
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
      salesReturnOrderCode: salesReturnOrderCode == freezed
          ? _value.salesReturnOrderCode
          : salesReturnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderDate: returnOrderDate == freezed
          ? _value.returnOrderDate
          : returnOrderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryid: inventoryid == freezed
          ? _value.inventoryid
          : inventoryid // ignore: cast_nullable_to_non_nullable
              as String?,
      payementId: payementId == freezed
          ? _value.payementId
          : payementId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: orderStatus == freezed
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: invoiceStatus == freezed
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: trnNumber == freezed
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      salesInvoiceId: salesInvoiceId == freezed
          ? _value.salesInvoiceId
          : salesInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddressId: shippingAddressId == freezed
          ? _value.shippingAddressId
          : shippingAddressId // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddressId: billingAddressId == freezed
          ? _value.billingAddressId
          : billingAddressId // ignore: cast_nullable_to_non_nullable
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
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      orderLines: orderLines == freezed
          ? _value.orderLines
          : orderLines // ignore: cast_nullable_to_non_nullable
              as List<SalesReturnOrderLines>?,
    ));
  }
}

/// @nodoc
abstract class _$SalesReturnGeneralPostModelCopyWith<$Res>
    implements $SalesReturnGeneralPostModelCopyWith<$Res> {
  factory _$SalesReturnGeneralPostModelCopyWith(
          _SalesReturnGeneralPostModel value,
          $Res Function(_SalesReturnGeneralPostModel) then) =
      __$SalesReturnGeneralPostModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? discount,
      double? vat,
      String? reason,
      String? remarks,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "order_mode") String? orderMode,
      @JsonKey(name: "sales_return_order_code") String? salesReturnOrderCode,
      @JsonKey(name: "returned_date") String? returnOrderDate,
      @JsonKey(name: "inventory_id") String? inventoryid,
      @JsonKey(name: "payment_id") String? payementId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "sales_invoice_id") String? salesInvoiceId,
      @JsonKey(name: "shipping_address_id") String? shippingAddressId,
      @JsonKey(name: "billing_address_id") String? billingAddressId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "order_lines") List<SalesReturnOrderLines>? orderLines});
}

/// @nodoc
class __$SalesReturnGeneralPostModelCopyWithImpl<$Res>
    extends _$SalesReturnGeneralPostModelCopyWithImpl<$Res>
    implements _$SalesReturnGeneralPostModelCopyWith<$Res> {
  __$SalesReturnGeneralPostModelCopyWithImpl(
      _SalesReturnGeneralPostModel _value,
      $Res Function(_SalesReturnGeneralPostModel) _then)
      : super(_value, (v) => _then(v as _SalesReturnGeneralPostModel));

  @override
  _SalesReturnGeneralPostModel get _value =>
      super._value as _SalesReturnGeneralPostModel;

  @override
  $Res call({
    Object? discount = freezed,
    Object? vat = freezed,
    Object? reason = freezed,
    Object? remarks = freezed,
    Object? orderType = freezed,
    Object? orderMode = freezed,
    Object? salesReturnOrderCode = freezed,
    Object? returnOrderDate = freezed,
    Object? inventoryid = freezed,
    Object? payementId = freezed,
    Object? paymentStatus = freezed,
    Object? orderStatus = freezed,
    Object? invoiceStatus = freezed,
    Object? customerId = freezed,
    Object? trnNumber = freezed,
    Object? salesInvoiceId = freezed,
    Object? shippingAddressId = freezed,
    Object? billingAddressId = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? createdBy = freezed,
    Object? orderLines = freezed,
  }) {
    return _then(_SalesReturnGeneralPostModel(
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
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
      salesReturnOrderCode: salesReturnOrderCode == freezed
          ? _value.salesReturnOrderCode
          : salesReturnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderDate: returnOrderDate == freezed
          ? _value.returnOrderDate
          : returnOrderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryid: inventoryid == freezed
          ? _value.inventoryid
          : inventoryid // ignore: cast_nullable_to_non_nullable
              as String?,
      payementId: payementId == freezed
          ? _value.payementId
          : payementId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: orderStatus == freezed
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: invoiceStatus == freezed
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: trnNumber == freezed
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      salesInvoiceId: salesInvoiceId == freezed
          ? _value.salesInvoiceId
          : salesInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddressId: shippingAddressId == freezed
          ? _value.shippingAddressId
          : shippingAddressId // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddressId: billingAddressId == freezed
          ? _value.billingAddressId
          : billingAddressId // ignore: cast_nullable_to_non_nullable
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
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      orderLines: orderLines == freezed
          ? _value.orderLines
          : orderLines // ignore: cast_nullable_to_non_nullable
              as List<SalesReturnOrderLines>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesReturnGeneralPostModel implements _SalesReturnGeneralPostModel {
  const _$_SalesReturnGeneralPostModel(
      {this.discount,
      this.vat,
      this.reason,
      this.remarks,
      @JsonKey(name: "order_type") this.orderType,
      @JsonKey(name: "order_mode") this.orderMode,
      @JsonKey(name: "sales_return_order_code") this.salesReturnOrderCode,
      @JsonKey(name: "returned_date") this.returnOrderDate,
      @JsonKey(name: "inventory_id") this.inventoryid,
      @JsonKey(name: "payment_id") this.payementId,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "order_satus") this.orderStatus,
      @JsonKey(name: "invoice_status") this.invoiceStatus,
      @JsonKey(name: "customer_id") this.customerId,
      @JsonKey(name: "trn_number") this.trnNumber,
      @JsonKey(name: "sales_invoice_id") this.salesInvoiceId,
      @JsonKey(name: "shipping_address_id") this.shippingAddressId,
      @JsonKey(name: "billing_address_id") this.billingAddressId,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "taxable_amount") this.taxableAmount,
      @JsonKey(name: "selling_price_total") this.sellingPriceTotal,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "created_by") this.createdBy,
      @JsonKey(name: "order_lines") this.orderLines});

  factory _$_SalesReturnGeneralPostModel.fromJson(Map<String, dynamic> json) =>
      _$$_SalesReturnGeneralPostModelFromJson(json);

  @override
  final double? discount;
  @override
  final double? vat;
  @override
  final String? reason;
  @override
  final String? remarks;
  @override
  @JsonKey(name: "order_type")
  final String? orderType;
  @override
  @JsonKey(name: "order_mode")
  final String? orderMode;
  @override
  @JsonKey(name: "sales_return_order_code")
  final String? salesReturnOrderCode;
  @override
  @JsonKey(name: "returned_date")
  final String? returnOrderDate;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryid;
  @override
  @JsonKey(name: "payment_id")
  final String? payementId;
  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  @override
  @JsonKey(name: "order_satus")
  final String? orderStatus;
  @override
  @JsonKey(name: "invoice_status")
  final String? invoiceStatus;
  @override
  @JsonKey(name: "customer_id")
  final String? customerId;
  @override
  @JsonKey(name: "trn_number")
  final String? trnNumber;
  @override
  @JsonKey(name: "sales_invoice_id")
  final String? salesInvoiceId;
  @override
  @JsonKey(name: "shipping_address_id")
  final String? shippingAddressId;
  @override
  @JsonKey(name: "billing_address_id")
  final String? billingAddressId;
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
  @JsonKey(name: "created_by")
  final String? createdBy;
  @override // @JsonKey(name: "edited_by") final String? editedBy,/
  @JsonKey(name: "order_lines")
  final List<SalesReturnOrderLines>? orderLines;

  @override
  String toString() {
    return 'SalesReturnGeneralPostModel(discount: $discount, vat: $vat, reason: $reason, remarks: $remarks, orderType: $orderType, orderMode: $orderMode, salesReturnOrderCode: $salesReturnOrderCode, returnOrderDate: $returnOrderDate, inventoryid: $inventoryid, payementId: $payementId, paymentStatus: $paymentStatus, orderStatus: $orderStatus, invoiceStatus: $invoiceStatus, customerId: $customerId, trnNumber: $trnNumber, salesInvoiceId: $salesInvoiceId, shippingAddressId: $shippingAddressId, billingAddressId: $billingAddressId, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, sellingPriceTotal: $sellingPriceTotal, totalPrice: $totalPrice, createdBy: $createdBy, orderLines: $orderLines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SalesReturnGeneralPostModel &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.remarks, remarks) ||
                const DeepCollectionEquality()
                    .equals(other.remarks, remarks)) &&
            (identical(other.orderType, orderType) ||
                const DeepCollectionEquality()
                    .equals(other.orderType, orderType)) &&
            (identical(other.orderMode, orderMode) ||
                const DeepCollectionEquality()
                    .equals(other.orderMode, orderMode)) &&
            (identical(other.salesReturnOrderCode, salesReturnOrderCode) ||
                const DeepCollectionEquality().equals(
                    other.salesReturnOrderCode, salesReturnOrderCode)) &&
            (identical(other.returnOrderDate, returnOrderDate) ||
                const DeepCollectionEquality()
                    .equals(other.returnOrderDate, returnOrderDate)) &&
            (identical(other.inventoryid, inventoryid) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryid, inventoryid)) &&
            (identical(other.payementId, payementId) ||
                const DeepCollectionEquality()
                    .equals(other.payementId, payementId)) &&
            (identical(other.paymentStatus, paymentStatus) ||
                const DeepCollectionEquality()
                    .equals(other.paymentStatus, paymentStatus)) &&
            (identical(other.orderStatus, orderStatus) ||
                const DeepCollectionEquality()
                    .equals(other.orderStatus, orderStatus)) &&
            (identical(other.invoiceStatus, invoiceStatus) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceStatus, invoiceStatus)) &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality()
                    .equals(other.customerId, customerId)) &&
            (identical(other.trnNumber, trnNumber) ||
                const DeepCollectionEquality()
                    .equals(other.trnNumber, trnNumber)) &&
            (identical(other.salesInvoiceId, salesInvoiceId) ||
                const DeepCollectionEquality()
                    .equals(other.salesInvoiceId, salesInvoiceId)) &&
            (identical(other.shippingAddressId, shippingAddressId) ||
                const DeepCollectionEquality()
                    .equals(other.shippingAddressId, shippingAddressId)) &&
            (identical(other.billingAddressId, billingAddressId) ||
                const DeepCollectionEquality()
                    .equals(other.billingAddressId, billingAddressId)) &&
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
                const DeepCollectionEquality()
                    .equals(other.sellingPriceTotal, sellingPriceTotal)) &&
            (identical(other.totalPrice, totalPrice) ||
                const DeepCollectionEquality().equals(other.totalPrice, totalPrice)) &&
            (identical(other.createdBy, createdBy) || const DeepCollectionEquality().equals(other.createdBy, createdBy)) &&
            (identical(other.orderLines, orderLines) || const DeepCollectionEquality().equals(other.orderLines, orderLines)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(reason) ^
      const DeepCollectionEquality().hash(remarks) ^
      const DeepCollectionEquality().hash(orderType) ^
      const DeepCollectionEquality().hash(orderMode) ^
      const DeepCollectionEquality().hash(salesReturnOrderCode) ^
      const DeepCollectionEquality().hash(returnOrderDate) ^
      const DeepCollectionEquality().hash(inventoryid) ^
      const DeepCollectionEquality().hash(payementId) ^
      const DeepCollectionEquality().hash(paymentStatus) ^
      const DeepCollectionEquality().hash(orderStatus) ^
      const DeepCollectionEquality().hash(invoiceStatus) ^
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(trnNumber) ^
      const DeepCollectionEquality().hash(salesInvoiceId) ^
      const DeepCollectionEquality().hash(shippingAddressId) ^
      const DeepCollectionEquality().hash(billingAddressId) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(taxableAmount) ^
      const DeepCollectionEquality().hash(sellingPriceTotal) ^
      const DeepCollectionEquality().hash(totalPrice) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(orderLines);

  @JsonKey(ignore: true)
  @override
  _$SalesReturnGeneralPostModelCopyWith<_SalesReturnGeneralPostModel>
      get copyWith => __$SalesReturnGeneralPostModelCopyWithImpl<
          _SalesReturnGeneralPostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesReturnGeneralPostModelToJson(this);
  }
}

abstract class _SalesReturnGeneralPostModel
    implements SalesReturnGeneralPostModel {
  const factory _SalesReturnGeneralPostModel(
          {double? discount,
          double? vat,
          String? reason,
          String? remarks,
          @JsonKey(name: "order_type")
              String? orderType,
          @JsonKey(name: "order_mode")
              String? orderMode,
          @JsonKey(name: "sales_return_order_code")
              String? salesReturnOrderCode,
          @JsonKey(name: "returned_date")
              String? returnOrderDate,
          @JsonKey(name: "inventory_id")
              String? inventoryid,
          @JsonKey(name: "payment_id")
              String? payementId,
          @JsonKey(name: "payment_status")
              String? paymentStatus,
          @JsonKey(name: "order_satus")
              String? orderStatus,
          @JsonKey(name: "invoice_status")
              String? invoiceStatus,
          @JsonKey(name: "customer_id")
              String? customerId,
          @JsonKey(name: "trn_number")
              String? trnNumber,
          @JsonKey(name: "sales_invoice_id")
              String? salesInvoiceId,
          @JsonKey(name: "shipping_address_id")
              String? shippingAddressId,
          @JsonKey(name: "billing_address_id")
              String? billingAddressId,
          @JsonKey(name: "unit_cost")
              double? unitCost,
          @JsonKey(name: "excess_tax")
              double? excessTax,
          @JsonKey(name: "taxable_amount")
              double? taxableAmount,
          @JsonKey(name: "selling_price_total")
              double? sellingPriceTotal,
          @JsonKey(name: "total_price")
              double? totalPrice,
          @JsonKey(name: "created_by")
              String? createdBy,
          @JsonKey(name: "order_lines")
              List<SalesReturnOrderLines>? orderLines}) =
      _$_SalesReturnGeneralPostModel;

  factory _SalesReturnGeneralPostModel.fromJson(Map<String, dynamic> json) =
      _$_SalesReturnGeneralPostModel.fromJson;

  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  String? get reason => throw _privateConstructorUsedError;
  @override
  String? get remarks => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_type")
  String? get orderType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_mode")
  String? get orderMode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_return_order_code")
  String? get salesReturnOrderCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "returned_date")
  String? get returnOrderDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "payment_id")
  String? get payementId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_satus")
  String? get orderStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "customer_id")
  String? get customerId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "trn_number")
  String? get trnNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_invoice_id")
  String? get salesInvoiceId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "shipping_address_id")
  String? get shippingAddressId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "billing_address_id")
  String? get billingAddressId => throw _privateConstructorUsedError;
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
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @override // @JsonKey(name: "edited_by") final String? editedBy,/
  @JsonKey(name: "order_lines")
  List<SalesReturnOrderLines>? get orderLines =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SalesReturnGeneralPostModelCopyWith<_SalesReturnGeneralPostModel>
      get copyWith => throw _privateConstructorUsedError;
}

SalesReturnOrderLines _$SalesReturnOrderLinesFromJson(
    Map<String, dynamic> json) {
  return _SalesReturnOrderLines.fromJson(json);
}

/// @nodoc
class _$SalesReturnOrderLinesTearOff {
  const _$SalesReturnOrderLinesTearOff();

  _SalesReturnOrderLines call(
      {int? id,
      int? qty,
      int? quantity,
      double? discount,
      double? vat,
      String? barcode,
      String? remarks,
      @JsonKey(name: "sales_order_line_code") String? salesOrderLineCode,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "stock_id") String? stockId,
      @JsonKey(name: "warranty_id") String? warrentyId,
      @JsonKey(name: "sales_uom") String? salesUom,
      @JsonKey(name: "discount_type") String? discountType,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "warranty_price") double? warrentyPrice,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "return_type") String? returnType,
      @JsonKey(name: "return_time") int? returnTime,
      @JsonKey(name: "invoiced_date") String? invoicedDate,
      @JsonKey(name: "invoiced_time") String? invoicedTime,
      @JsonKey(name: "invoice_line_code") String? invoicedLineCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "is_invoiced", defaultValue: false) bool? isInvoiced,
      @JsonKey(name: "updatecheck", defaultValue: false) bool? updatecheck}) {
    return _SalesReturnOrderLines(
      id: id,
      qty: qty,
      quantity: quantity,
      discount: discount,
      vat: vat,
      barcode: barcode,
      remarks: remarks,
      salesOrderLineCode: salesOrderLineCode,
      variantId: variantId,
      stockId: stockId,
      warrentyId: warrentyId,
      salesUom: salesUom,
      discountType: discountType,
      unitCost: unitCost,
      excessTax: excessTax,
      taxableAmount: taxableAmount,
      warrentyPrice: warrentyPrice,
      sellingPrice: sellingPrice,
      totalPrice: totalPrice,
      returnType: returnType,
      returnTime: returnTime,
      invoicedDate: invoicedDate,
      invoicedTime: invoicedTime,
      invoicedLineCode: invoicedLineCode,
      isActive: isActive,
      isInvoiced: isInvoiced,
      updatecheck: updatecheck,
    );
  }

  SalesReturnOrderLines fromJson(Map<String, Object> json) {
    return SalesReturnOrderLines.fromJson(json);
  }
}

/// @nodoc
const $SalesReturnOrderLines = _$SalesReturnOrderLinesTearOff();

/// @nodoc
mixin _$SalesReturnOrderLines {
  int? get id => throw _privateConstructorUsedError;
  int? get qty => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_order_line_code")
  String? get salesOrderLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  String? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_id")
  String? get stockId => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_id")
  String? get warrentyId => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_uom")
  String? get salesUom => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_type")
  String? get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "taxable_amount")
  double? get taxableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_price")
  double? get warrentyPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  double? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "return_type")
  String? get returnType => throw _privateConstructorUsedError;
  @JsonKey(name: "return_time")
  int? get returnTime => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiced_date")
  String? get invoicedDate => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiced_time")
  String? get invoicedTime => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_line_code")
  String? get invoicedLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_invoiced", defaultValue: false)
  bool? get isInvoiced => throw _privateConstructorUsedError;
  @JsonKey(name: "updatecheck", defaultValue: false)
  bool? get updatecheck => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesReturnOrderLinesCopyWith<SalesReturnOrderLines> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesReturnOrderLinesCopyWith<$Res> {
  factory $SalesReturnOrderLinesCopyWith(SalesReturnOrderLines value,
          $Res Function(SalesReturnOrderLines) then) =
      _$SalesReturnOrderLinesCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? qty,
      int? quantity,
      double? discount,
      double? vat,
      String? barcode,
      String? remarks,
      @JsonKey(name: "sales_order_line_code") String? salesOrderLineCode,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "stock_id") String? stockId,
      @JsonKey(name: "warranty_id") String? warrentyId,
      @JsonKey(name: "sales_uom") String? salesUom,
      @JsonKey(name: "discount_type") String? discountType,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "warranty_price") double? warrentyPrice,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "return_type") String? returnType,
      @JsonKey(name: "return_time") int? returnTime,
      @JsonKey(name: "invoiced_date") String? invoicedDate,
      @JsonKey(name: "invoiced_time") String? invoicedTime,
      @JsonKey(name: "invoice_line_code") String? invoicedLineCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "is_invoiced", defaultValue: false) bool? isInvoiced,
      @JsonKey(name: "updatecheck", defaultValue: false) bool? updatecheck});
}

/// @nodoc
class _$SalesReturnOrderLinesCopyWithImpl<$Res>
    implements $SalesReturnOrderLinesCopyWith<$Res> {
  _$SalesReturnOrderLinesCopyWithImpl(this._value, this._then);

  final SalesReturnOrderLines _value;
  // ignore: unused_field
  final $Res Function(SalesReturnOrderLines) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? qty = freezed,
    Object? quantity = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? barcode = freezed,
    Object? remarks = freezed,
    Object? salesOrderLineCode = freezed,
    Object? variantId = freezed,
    Object? stockId = freezed,
    Object? warrentyId = freezed,
    Object? salesUom = freezed,
    Object? discountType = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? warrentyPrice = freezed,
    Object? sellingPrice = freezed,
    Object? totalPrice = freezed,
    Object? returnType = freezed,
    Object? returnTime = freezed,
    Object? invoicedDate = freezed,
    Object? invoicedTime = freezed,
    Object? invoicedLineCode = freezed,
    Object? isActive = freezed,
    Object? isInvoiced = freezed,
    Object? updatecheck = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      salesOrderLineCode: salesOrderLineCode == freezed
          ? _value.salesOrderLineCode
          : salesOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: variantId == freezed
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      stockId: stockId == freezed
          ? _value.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as String?,
      warrentyId: warrentyId == freezed
          ? _value.warrentyId
          : warrentyId // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUom: salesUom == freezed
          ? _value.salesUom
          : salesUom // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: discountType == freezed
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
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
      warrentyPrice: warrentyPrice == freezed
          ? _value.warrentyPrice
          : warrentyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPrice: sellingPrice == freezed
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      returnType: returnType == freezed
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String?,
      returnTime: returnTime == freezed
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as int?,
      invoicedDate: invoicedDate == freezed
          ? _value.invoicedDate
          : invoicedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedTime: invoicedTime == freezed
          ? _value.invoicedTime
          : invoicedTime // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedLineCode: invoicedLineCode == freezed
          ? _value.invoicedLineCode
          : invoicedLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isInvoiced: isInvoiced == freezed
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      updatecheck: updatecheck == freezed
          ? _value.updatecheck
          : updatecheck // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$SalesReturnOrderLinesCopyWith<$Res>
    implements $SalesReturnOrderLinesCopyWith<$Res> {
  factory _$SalesReturnOrderLinesCopyWith(_SalesReturnOrderLines value,
          $Res Function(_SalesReturnOrderLines) then) =
      __$SalesReturnOrderLinesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? qty,
      int? quantity,
      double? discount,
      double? vat,
      String? barcode,
      String? remarks,
      @JsonKey(name: "sales_order_line_code") String? salesOrderLineCode,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "stock_id") String? stockId,
      @JsonKey(name: "warranty_id") String? warrentyId,
      @JsonKey(name: "sales_uom") String? salesUom,
      @JsonKey(name: "discount_type") String? discountType,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "warranty_price") double? warrentyPrice,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "return_type") String? returnType,
      @JsonKey(name: "return_time") int? returnTime,
      @JsonKey(name: "invoiced_date") String? invoicedDate,
      @JsonKey(name: "invoiced_time") String? invoicedTime,
      @JsonKey(name: "invoice_line_code") String? invoicedLineCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "is_invoiced", defaultValue: false) bool? isInvoiced,
      @JsonKey(name: "updatecheck", defaultValue: false) bool? updatecheck});
}

/// @nodoc
class __$SalesReturnOrderLinesCopyWithImpl<$Res>
    extends _$SalesReturnOrderLinesCopyWithImpl<$Res>
    implements _$SalesReturnOrderLinesCopyWith<$Res> {
  __$SalesReturnOrderLinesCopyWithImpl(_SalesReturnOrderLines _value,
      $Res Function(_SalesReturnOrderLines) _then)
      : super(_value, (v) => _then(v as _SalesReturnOrderLines));

  @override
  _SalesReturnOrderLines get _value => super._value as _SalesReturnOrderLines;

  @override
  $Res call({
    Object? id = freezed,
    Object? qty = freezed,
    Object? quantity = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? barcode = freezed,
    Object? remarks = freezed,
    Object? salesOrderLineCode = freezed,
    Object? variantId = freezed,
    Object? stockId = freezed,
    Object? warrentyId = freezed,
    Object? salesUom = freezed,
    Object? discountType = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? warrentyPrice = freezed,
    Object? sellingPrice = freezed,
    Object? totalPrice = freezed,
    Object? returnType = freezed,
    Object? returnTime = freezed,
    Object? invoicedDate = freezed,
    Object? invoicedTime = freezed,
    Object? invoicedLineCode = freezed,
    Object? isActive = freezed,
    Object? isInvoiced = freezed,
    Object? updatecheck = freezed,
  }) {
    return _then(_SalesReturnOrderLines(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      salesOrderLineCode: salesOrderLineCode == freezed
          ? _value.salesOrderLineCode
          : salesOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: variantId == freezed
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      stockId: stockId == freezed
          ? _value.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as String?,
      warrentyId: warrentyId == freezed
          ? _value.warrentyId
          : warrentyId // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUom: salesUom == freezed
          ? _value.salesUom
          : salesUom // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: discountType == freezed
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
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
      warrentyPrice: warrentyPrice == freezed
          ? _value.warrentyPrice
          : warrentyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPrice: sellingPrice == freezed
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      returnType: returnType == freezed
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String?,
      returnTime: returnTime == freezed
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as int?,
      invoicedDate: invoicedDate == freezed
          ? _value.invoicedDate
          : invoicedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedTime: invoicedTime == freezed
          ? _value.invoicedTime
          : invoicedTime // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedLineCode: invoicedLineCode == freezed
          ? _value.invoicedLineCode
          : invoicedLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isInvoiced: isInvoiced == freezed
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      updatecheck: updatecheck == freezed
          ? _value.updatecheck
          : updatecheck // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesReturnOrderLines implements _SalesReturnOrderLines {
  const _$_SalesReturnOrderLines(
      {this.id,
      this.qty,
      this.quantity,
      this.discount,
      this.vat,
      this.barcode,
      this.remarks,
      @JsonKey(name: "sales_order_line_code") this.salesOrderLineCode,
      @JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "stock_id") this.stockId,
      @JsonKey(name: "warranty_id") this.warrentyId,
      @JsonKey(name: "sales_uom") this.salesUom,
      @JsonKey(name: "discount_type") this.discountType,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "taxable_amount") this.taxableAmount,
      @JsonKey(name: "warranty_price") this.warrentyPrice,
      @JsonKey(name: "selling_price") this.sellingPrice,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "return_type") this.returnType,
      @JsonKey(name: "return_time") this.returnTime,
      @JsonKey(name: "invoiced_date") this.invoicedDate,
      @JsonKey(name: "invoiced_time") this.invoicedTime,
      @JsonKey(name: "invoice_line_code") this.invoicedLineCode,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive,
      @JsonKey(name: "is_invoiced", defaultValue: false) this.isInvoiced,
      @JsonKey(name: "updatecheck", defaultValue: false) this.updatecheck});

  factory _$_SalesReturnOrderLines.fromJson(Map<String, dynamic> json) =>
      _$$_SalesReturnOrderLinesFromJson(json);

  @override
  final int? id;
  @override
  final int? qty;
  @override
  final int? quantity;
  @override
  final double? discount;
  @override
  final double? vat;
  @override
  final String? barcode;
  @override
  final String? remarks;
  @override
  @JsonKey(name: "sales_order_line_code")
  final String? salesOrderLineCode;
  @override
  @JsonKey(name: "variant_id")
  final String? variantId;
  @override
  @JsonKey(name: "stock_id")
  final String? stockId;
  @override
  @JsonKey(name: "warranty_id")
  final String? warrentyId;
  @override
  @JsonKey(name: "sales_uom")
  final String? salesUom;
  @override
  @JsonKey(name: "discount_type")
  final String? discountType;
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
  @JsonKey(name: "warranty_price")
  final double? warrentyPrice;
  @override
  @JsonKey(name: "selling_price")
  final double? sellingPrice;
  @override
  @JsonKey(name: "total_price")
  final double? totalPrice;
  @override
  @JsonKey(name: "return_type")
  final String? returnType;
  @override
  @JsonKey(name: "return_time")
  final int? returnTime;
  @override
  @JsonKey(name: "invoiced_date")
  final String? invoicedDate;
  @override
  @JsonKey(name: "invoiced_time")
  final String? invoicedTime;
  @override
  @JsonKey(name: "invoice_line_code")
  final String? invoicedLineCode;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "is_invoiced", defaultValue: false)
  final bool? isInvoiced;
  @override
  @JsonKey(name: "updatecheck", defaultValue: false)
  final bool? updatecheck;

  @override
  String toString() {
    return 'SalesReturnOrderLines(id: $id, qty: $qty, quantity: $quantity, discount: $discount, vat: $vat, barcode: $barcode, remarks: $remarks, salesOrderLineCode: $salesOrderLineCode, variantId: $variantId, stockId: $stockId, warrentyId: $warrentyId, salesUom: $salesUom, discountType: $discountType, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, warrentyPrice: $warrentyPrice, sellingPrice: $sellingPrice, totalPrice: $totalPrice, returnType: $returnType, returnTime: $returnTime, invoicedDate: $invoicedDate, invoicedTime: $invoicedTime, invoicedLineCode: $invoicedLineCode, isActive: $isActive, isInvoiced: $isInvoiced, updatecheck: $updatecheck)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SalesReturnOrderLines &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.qty, qty) ||
                const DeepCollectionEquality().equals(other.qty, qty)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.remarks, remarks) ||
                const DeepCollectionEquality()
                    .equals(other.remarks, remarks)) &&
            (identical(other.salesOrderLineCode, salesOrderLineCode) ||
                const DeepCollectionEquality()
                    .equals(other.salesOrderLineCode, salesOrderLineCode)) &&
            (identical(other.variantId, variantId) ||
                const DeepCollectionEquality()
                    .equals(other.variantId, variantId)) &&
            (identical(other.stockId, stockId) ||
                const DeepCollectionEquality()
                    .equals(other.stockId, stockId)) &&
            (identical(other.warrentyId, warrentyId) ||
                const DeepCollectionEquality()
                    .equals(other.warrentyId, warrentyId)) &&
            (identical(other.salesUom, salesUom) ||
                const DeepCollectionEquality()
                    .equals(other.salesUom, salesUom)) &&
            (identical(other.discountType, discountType) ||
                const DeepCollectionEquality()
                    .equals(other.discountType, discountType)) &&
            (identical(other.unitCost, unitCost) ||
                const DeepCollectionEquality()
                    .equals(other.unitCost, unitCost)) &&
            (identical(other.excessTax, excessTax) ||
                const DeepCollectionEquality()
                    .equals(other.excessTax, excessTax)) &&
            (identical(other.taxableAmount, taxableAmount) ||
                const DeepCollectionEquality()
                    .equals(other.taxableAmount, taxableAmount)) &&
            (identical(other.warrentyPrice, warrentyPrice) ||
                const DeepCollectionEquality()
                    .equals(other.warrentyPrice, warrentyPrice)) &&
            (identical(other.sellingPrice, sellingPrice) ||
                const DeepCollectionEquality()
                    .equals(other.sellingPrice, sellingPrice)) &&
            (identical(other.totalPrice, totalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.totalPrice, totalPrice)) &&
            (identical(other.returnType, returnType) ||
                const DeepCollectionEquality()
                    .equals(other.returnType, returnType)) &&
            (identical(other.returnTime, returnTime) ||
                const DeepCollectionEquality()
                    .equals(other.returnTime, returnTime)) &&
            (identical(other.invoicedDate, invoicedDate) ||
                const DeepCollectionEquality()
                    .equals(other.invoicedDate, invoicedDate)) &&
            (identical(other.invoicedTime, invoicedTime) ||
                const DeepCollectionEquality()
                    .equals(other.invoicedTime, invoicedTime)) &&
            (identical(other.invoicedLineCode, invoicedLineCode) || const DeepCollectionEquality().equals(other.invoicedLineCode, invoicedLineCode)) &&
            (identical(other.isActive, isActive) || const DeepCollectionEquality().equals(other.isActive, isActive)) &&
            (identical(other.isInvoiced, isInvoiced) || const DeepCollectionEquality().equals(other.isInvoiced, isInvoiced)) &&
            (identical(other.updatecheck, updatecheck) || const DeepCollectionEquality().equals(other.updatecheck, updatecheck)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(qty) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(remarks) ^
      const DeepCollectionEquality().hash(salesOrderLineCode) ^
      const DeepCollectionEquality().hash(variantId) ^
      const DeepCollectionEquality().hash(stockId) ^
      const DeepCollectionEquality().hash(warrentyId) ^
      const DeepCollectionEquality().hash(salesUom) ^
      const DeepCollectionEquality().hash(discountType) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(taxableAmount) ^
      const DeepCollectionEquality().hash(warrentyPrice) ^
      const DeepCollectionEquality().hash(sellingPrice) ^
      const DeepCollectionEquality().hash(totalPrice) ^
      const DeepCollectionEquality().hash(returnType) ^
      const DeepCollectionEquality().hash(returnTime) ^
      const DeepCollectionEquality().hash(invoicedDate) ^
      const DeepCollectionEquality().hash(invoicedTime) ^
      const DeepCollectionEquality().hash(invoicedLineCode) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(isInvoiced) ^
      const DeepCollectionEquality().hash(updatecheck);

  @JsonKey(ignore: true)
  @override
  _$SalesReturnOrderLinesCopyWith<_SalesReturnOrderLines> get copyWith =>
      __$SalesReturnOrderLinesCopyWithImpl<_SalesReturnOrderLines>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesReturnOrderLinesToJson(this);
  }
}

abstract class _SalesReturnOrderLines implements SalesReturnOrderLines {
  const factory _SalesReturnOrderLines(
      {int? id,
      int? qty,
      int? quantity,
      double? discount,
      double? vat,
      String? barcode,
      String? remarks,
      @JsonKey(name: "sales_order_line_code")
          String? salesOrderLineCode,
      @JsonKey(name: "variant_id")
          String? variantId,
      @JsonKey(name: "stock_id")
          String? stockId,
      @JsonKey(name: "warranty_id")
          String? warrentyId,
      @JsonKey(name: "sales_uom")
          String? salesUom,
      @JsonKey(name: "discount_type")
          String? discountType,
      @JsonKey(name: "unit_cost")
          double? unitCost,
      @JsonKey(name: "excess_tax")
          double? excessTax,
      @JsonKey(name: "taxable_amount")
          double? taxableAmount,
      @JsonKey(name: "warranty_price")
          double? warrentyPrice,
      @JsonKey(name: "selling_price")
          double? sellingPrice,
      @JsonKey(name: "total_price")
          double? totalPrice,
      @JsonKey(name: "return_type")
          String? returnType,
      @JsonKey(name: "return_time")
          int? returnTime,
      @JsonKey(name: "invoiced_date")
          String? invoicedDate,
      @JsonKey(name: "invoiced_time")
          String? invoicedTime,
      @JsonKey(name: "invoice_line_code")
          String? invoicedLineCode,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_invoiced", defaultValue: false)
          bool? isInvoiced,
      @JsonKey(name: "updatecheck", defaultValue: false)
          bool? updatecheck}) = _$_SalesReturnOrderLines;

  factory _SalesReturnOrderLines.fromJson(Map<String, dynamic> json) =
      _$_SalesReturnOrderLines.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  int? get qty => throw _privateConstructorUsedError;
  @override
  int? get quantity => throw _privateConstructorUsedError;
  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  String? get barcode => throw _privateConstructorUsedError;
  @override
  String? get remarks => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_order_line_code")
  String? get salesOrderLineCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_id")
  String? get variantId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "stock_id")
  String? get stockId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "warranty_id")
  String? get warrentyId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_uom")
  String? get salesUom => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "discount_type")
  String? get discountType => throw _privateConstructorUsedError;
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
  @JsonKey(name: "warranty_price")
  double? get warrentyPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "total_price")
  double? get totalPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_type")
  String? get returnType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_time")
  int? get returnTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoiced_date")
  String? get invoicedDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoiced_time")
  String? get invoicedTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_line_code")
  String? get invoicedLineCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_invoiced", defaultValue: false)
  bool? get isInvoiced => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "updatecheck", defaultValue: false)
  bool? get updatecheck => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SalesReturnOrderLinesCopyWith<_SalesReturnOrderLines> get copyWith =>
      throw _privateConstructorUsedError;
}
