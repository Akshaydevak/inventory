// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'salesreturninvoiceread.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesReturnGeneralInvoiceReadModel _$SalesReturnGeneralInvoiceReadModelFromJson(
    Map<String, dynamic> json) {
  return _SalesReturnGeneralInvoiceReadModel.fromJson(json);
}

/// @nodoc
class _$SalesReturnGeneralInvoiceReadModelTearOff {
  const _$SalesReturnGeneralInvoiceReadModelTearOff();

  _SalesReturnGeneralInvoiceReadModel call(
      {int? id,
      double? discount,
      double? vat,
      @JsonKey(name: "sales_order_code") String? salesOrderCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "payment_id") String? paymentId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "order_lines") List<SalesReturnOrderLines>? lines,
      @JsonKey(name: "invoice_data") InvoicedDatas? invoicedData}) {
    return _SalesReturnGeneralInvoiceReadModel(
      id: id,
      discount: discount,
      vat: vat,
      salesOrderCode: salesOrderCode,
      inventoryId: inventoryId,
      customerId: customerId,
      trnNumber: trnNumber,
      paymentId: paymentId,
      paymentStatus: paymentStatus,
      orderStatus: orderStatus,
      unitCost: unitCost,
      excessTax: excessTax,
      taxableAmount: taxableAmount,
      sellingPriceTotal: sellingPriceTotal,
      totalPrice: totalPrice,
      lines: lines,
      invoicedData: invoicedData,
    );
  }

  SalesReturnGeneralInvoiceReadModel fromJson(Map<String, Object> json) {
    return SalesReturnGeneralInvoiceReadModel.fromJson(json);
  }
}

/// @nodoc
const $SalesReturnGeneralInvoiceReadModel =
    _$SalesReturnGeneralInvoiceReadModelTearOff();

/// @nodoc
mixin _$SalesReturnGeneralInvoiceReadModel {
  int? get id => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_order_code")
  String? get salesOrderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id")
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "trn_number")
  String? get trnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_id")
  String? get paymentId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "order_satus")
  String? get orderStatus => throw _privateConstructorUsedError;
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
  List<SalesReturnOrderLines>? get lines => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_data")
  InvoicedDatas? get invoicedData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesReturnGeneralInvoiceReadModelCopyWith<
          SalesReturnGeneralInvoiceReadModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesReturnGeneralInvoiceReadModelCopyWith<$Res> {
  factory $SalesReturnGeneralInvoiceReadModelCopyWith(
          SalesReturnGeneralInvoiceReadModel value,
          $Res Function(SalesReturnGeneralInvoiceReadModel) then) =
      _$SalesReturnGeneralInvoiceReadModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      double? discount,
      double? vat,
      @JsonKey(name: "sales_order_code") String? salesOrderCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "payment_id") String? paymentId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "order_lines") List<SalesReturnOrderLines>? lines,
      @JsonKey(name: "invoice_data") InvoicedDatas? invoicedData});

  $InvoicedDatasCopyWith<$Res>? get invoicedData;
}

/// @nodoc
class _$SalesReturnGeneralInvoiceReadModelCopyWithImpl<$Res>
    implements $SalesReturnGeneralInvoiceReadModelCopyWith<$Res> {
  _$SalesReturnGeneralInvoiceReadModelCopyWithImpl(this._value, this._then);

  final SalesReturnGeneralInvoiceReadModel _value;
  // ignore: unused_field
  final $Res Function(SalesReturnGeneralInvoiceReadModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? salesOrderCode = freezed,
    Object? inventoryId = freezed,
    Object? customerId = freezed,
    Object? trnNumber = freezed,
    Object? paymentId = freezed,
    Object? paymentStatus = freezed,
    Object? orderStatus = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? lines = freezed,
    Object? invoicedData = freezed,
  }) {
    return _then(_value.copyWith(
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
      salesOrderCode: salesOrderCode == freezed
          ? _value.salesOrderCode
          : salesOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: trnNumber == freezed
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: paymentId == freezed
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: orderStatus == freezed
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
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
      lines: lines == freezed
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<SalesReturnOrderLines>?,
      invoicedData: invoicedData == freezed
          ? _value.invoicedData
          : invoicedData // ignore: cast_nullable_to_non_nullable
              as InvoicedDatas?,
    ));
  }

  @override
  $InvoicedDatasCopyWith<$Res>? get invoicedData {
    if (_value.invoicedData == null) {
      return null;
    }

    return $InvoicedDatasCopyWith<$Res>(_value.invoicedData!, (value) {
      return _then(_value.copyWith(invoicedData: value));
    });
  }
}

/// @nodoc
abstract class _$SalesReturnGeneralInvoiceReadModelCopyWith<$Res>
    implements $SalesReturnGeneralInvoiceReadModelCopyWith<$Res> {
  factory _$SalesReturnGeneralInvoiceReadModelCopyWith(
          _SalesReturnGeneralInvoiceReadModel value,
          $Res Function(_SalesReturnGeneralInvoiceReadModel) then) =
      __$SalesReturnGeneralInvoiceReadModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      double? discount,
      double? vat,
      @JsonKey(name: "sales_order_code") String? salesOrderCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "payment_id") String? paymentId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "order_lines") List<SalesReturnOrderLines>? lines,
      @JsonKey(name: "invoice_data") InvoicedDatas? invoicedData});

  @override
  $InvoicedDatasCopyWith<$Res>? get invoicedData;
}

/// @nodoc
class __$SalesReturnGeneralInvoiceReadModelCopyWithImpl<$Res>
    extends _$SalesReturnGeneralInvoiceReadModelCopyWithImpl<$Res>
    implements _$SalesReturnGeneralInvoiceReadModelCopyWith<$Res> {
  __$SalesReturnGeneralInvoiceReadModelCopyWithImpl(
      _SalesReturnGeneralInvoiceReadModel _value,
      $Res Function(_SalesReturnGeneralInvoiceReadModel) _then)
      : super(_value, (v) => _then(v as _SalesReturnGeneralInvoiceReadModel));

  @override
  _SalesReturnGeneralInvoiceReadModel get _value =>
      super._value as _SalesReturnGeneralInvoiceReadModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? salesOrderCode = freezed,
    Object? inventoryId = freezed,
    Object? customerId = freezed,
    Object? trnNumber = freezed,
    Object? paymentId = freezed,
    Object? paymentStatus = freezed,
    Object? orderStatus = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? lines = freezed,
    Object? invoicedData = freezed,
  }) {
    return _then(_SalesReturnGeneralInvoiceReadModel(
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
      salesOrderCode: salesOrderCode == freezed
          ? _value.salesOrderCode
          : salesOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: trnNumber == freezed
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: paymentId == freezed
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: orderStatus == freezed
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
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
      lines: lines == freezed
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<SalesReturnOrderLines>?,
      invoicedData: invoicedData == freezed
          ? _value.invoicedData
          : invoicedData // ignore: cast_nullable_to_non_nullable
              as InvoicedDatas?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesReturnGeneralInvoiceReadModel
    implements _SalesReturnGeneralInvoiceReadModel {
  const _$_SalesReturnGeneralInvoiceReadModel(
      {this.id,
      this.discount,
      this.vat,
      @JsonKey(name: "sales_order_code") this.salesOrderCode,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "customer_id") this.customerId,
      @JsonKey(name: "trn_number") this.trnNumber,
      @JsonKey(name: "payment_id") this.paymentId,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "order_satus") this.orderStatus,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "taxable_amount") this.taxableAmount,
      @JsonKey(name: "selling_price_total") this.sellingPriceTotal,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "order_lines") this.lines,
      @JsonKey(name: "invoice_data") this.invoicedData});

  factory _$_SalesReturnGeneralInvoiceReadModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_SalesReturnGeneralInvoiceReadModelFromJson(json);

  @override
  final int? id;
  @override
  final double? discount;
  @override
  final double? vat;
  @override
  @JsonKey(name: "sales_order_code")
  final String? salesOrderCode;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "customer_id")
  final String? customerId;
  @override
  @JsonKey(name: "trn_number")
  final String? trnNumber;
  @override
  @JsonKey(name: "payment_id")
  final String? paymentId;
  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  @override
  @JsonKey(name: "order_satus")
  final String? orderStatus;
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
  final List<SalesReturnOrderLines>? lines;
  @override
  @JsonKey(name: "invoice_data")
  final InvoicedDatas? invoicedData;

  @override
  String toString() {
    return 'SalesReturnGeneralInvoiceReadModel(id: $id, discount: $discount, vat: $vat, salesOrderCode: $salesOrderCode, inventoryId: $inventoryId, customerId: $customerId, trnNumber: $trnNumber, paymentId: $paymentId, paymentStatus: $paymentStatus, orderStatus: $orderStatus, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, sellingPriceTotal: $sellingPriceTotal, totalPrice: $totalPrice, lines: $lines, invoicedData: $invoicedData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SalesReturnGeneralInvoiceReadModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.salesOrderCode, salesOrderCode) ||
                const DeepCollectionEquality()
                    .equals(other.salesOrderCode, salesOrderCode)) &&
            (identical(other.inventoryId, inventoryId) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryId, inventoryId)) &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality()
                    .equals(other.customerId, customerId)) &&
            (identical(other.trnNumber, trnNumber) ||
                const DeepCollectionEquality()
                    .equals(other.trnNumber, trnNumber)) &&
            (identical(other.paymentId, paymentId) ||
                const DeepCollectionEquality()
                    .equals(other.paymentId, paymentId)) &&
            (identical(other.paymentStatus, paymentStatus) ||
                const DeepCollectionEquality()
                    .equals(other.paymentStatus, paymentStatus)) &&
            (identical(other.orderStatus, orderStatus) ||
                const DeepCollectionEquality()
                    .equals(other.orderStatus, orderStatus)) &&
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
                const DeepCollectionEquality()
                    .equals(other.totalPrice, totalPrice)) &&
            (identical(other.lines, lines) ||
                const DeepCollectionEquality().equals(other.lines, lines)) &&
            (identical(other.invoicedData, invoicedData) ||
                const DeepCollectionEquality()
                    .equals(other.invoicedData, invoicedData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(salesOrderCode) ^
      const DeepCollectionEquality().hash(inventoryId) ^
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(trnNumber) ^
      const DeepCollectionEquality().hash(paymentId) ^
      const DeepCollectionEquality().hash(paymentStatus) ^
      const DeepCollectionEquality().hash(orderStatus) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(taxableAmount) ^
      const DeepCollectionEquality().hash(sellingPriceTotal) ^
      const DeepCollectionEquality().hash(totalPrice) ^
      const DeepCollectionEquality().hash(lines) ^
      const DeepCollectionEquality().hash(invoicedData);

  @JsonKey(ignore: true)
  @override
  _$SalesReturnGeneralInvoiceReadModelCopyWith<
          _SalesReturnGeneralInvoiceReadModel>
      get copyWith => __$SalesReturnGeneralInvoiceReadModelCopyWithImpl<
          _SalesReturnGeneralInvoiceReadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesReturnGeneralInvoiceReadModelToJson(this);
  }
}

abstract class _SalesReturnGeneralInvoiceReadModel
    implements SalesReturnGeneralInvoiceReadModel {
  const factory _SalesReturnGeneralInvoiceReadModel(
          {int? id,
          double? discount,
          double? vat,
          @JsonKey(name: "sales_order_code") String? salesOrderCode,
          @JsonKey(name: "inventory_id") String? inventoryId,
          @JsonKey(name: "customer_id") String? customerId,
          @JsonKey(name: "trn_number") String? trnNumber,
          @JsonKey(name: "payment_id") String? paymentId,
          @JsonKey(name: "payment_status") String? paymentStatus,
          @JsonKey(name: "order_satus") String? orderStatus,
          @JsonKey(name: "unit_cost") double? unitCost,
          @JsonKey(name: "excess_tax") double? excessTax,
          @JsonKey(name: "taxable_amount") double? taxableAmount,
          @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
          @JsonKey(name: "total_price") double? totalPrice,
          @JsonKey(name: "order_lines") List<SalesReturnOrderLines>? lines,
          @JsonKey(name: "invoice_data") InvoicedDatas? invoicedData}) =
      _$_SalesReturnGeneralInvoiceReadModel;

  factory _SalesReturnGeneralInvoiceReadModel.fromJson(
          Map<String, dynamic> json) =
      _$_SalesReturnGeneralInvoiceReadModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_order_code")
  String? get salesOrderCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "customer_id")
  String? get customerId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "trn_number")
  String? get trnNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "payment_id")
  String? get paymentId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_satus")
  String? get orderStatus => throw _privateConstructorUsedError;
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
  List<SalesReturnOrderLines>? get lines => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_data")
  InvoicedDatas? get invoicedData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SalesReturnGeneralInvoiceReadModelCopyWith<
          _SalesReturnGeneralInvoiceReadModel>
      get copyWith => throw _privateConstructorUsedError;
}

OrderReturnLinesInvoice _$OrderReturnLinesInvoiceFromJson(
    Map<String, dynamic> json) {
  return _OrderReturnLinesInvoice.fromJson(json);
}

/// @nodoc
class _$OrderReturnLinesInvoiceTearOff {
  const _$OrderReturnLinesInvoiceTearOff();

  _OrderReturnLinesInvoice call(
      {int? id,
      int? quantity,
      String? barcode,
      double? discount,
      double? vat,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "sales_order_line_code") String? salesOrderLineCode,
      @JsonKey(name: "sales_uom") String? salesUom,
      @JsonKey(name: "is_invoiced", defaultValue: false) bool? isInvoiced,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "discount_type") String? discountType,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "warranty_price") double? warrentyPrice}) {
    return _OrderReturnLinesInvoice(
      id: id,
      quantity: quantity,
      barcode: barcode,
      discount: discount,
      vat: vat,
      variantId: variantId,
      salesOrderLineCode: salesOrderLineCode,
      salesUom: salesUom,
      isInvoiced: isInvoiced,
      isActive: isActive,
      discountType: discountType,
      unitCost: unitCost,
      excessTax: excessTax,
      taxableAmount: taxableAmount,
      sellingPriceTotal: sellingPriceTotal,
      totalPrice: totalPrice,
      warrentyPrice: warrentyPrice,
    );
  }

  OrderReturnLinesInvoice fromJson(Map<String, Object> json) {
    return OrderReturnLinesInvoice.fromJson(json);
  }
}

/// @nodoc
const $OrderReturnLinesInvoice = _$OrderReturnLinesInvoiceTearOff();

/// @nodoc
mixin _$OrderReturnLinesInvoice {
  int? get id => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  String? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_order_line_code")
  String? get salesOrderLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_uom")
  String? get salesUom => throw _privateConstructorUsedError;
  @JsonKey(name: "is_invoiced", defaultValue: false)
  bool? get isInvoiced => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_type")
  String? get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "taxable_amount")
  double? get taxableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price")
  double? get sellingPriceTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  double? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_price")
  double? get warrentyPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderReturnLinesInvoiceCopyWith<OrderReturnLinesInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderReturnLinesInvoiceCopyWith<$Res> {
  factory $OrderReturnLinesInvoiceCopyWith(OrderReturnLinesInvoice value,
          $Res Function(OrderReturnLinesInvoice) then) =
      _$OrderReturnLinesInvoiceCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? quantity,
      String? barcode,
      double? discount,
      double? vat,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "sales_order_line_code") String? salesOrderLineCode,
      @JsonKey(name: "sales_uom") String? salesUom,
      @JsonKey(name: "is_invoiced", defaultValue: false) bool? isInvoiced,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "discount_type") String? discountType,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "warranty_price") double? warrentyPrice});
}

/// @nodoc
class _$OrderReturnLinesInvoiceCopyWithImpl<$Res>
    implements $OrderReturnLinesInvoiceCopyWith<$Res> {
  _$OrderReturnLinesInvoiceCopyWithImpl(this._value, this._then);

  final OrderReturnLinesInvoice _value;
  // ignore: unused_field
  final $Res Function(OrderReturnLinesInvoice) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? barcode = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? variantId = freezed,
    Object? salesOrderLineCode = freezed,
    Object? salesUom = freezed,
    Object? isInvoiced = freezed,
    Object? isActive = freezed,
    Object? discountType = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? warrentyPrice = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      variantId: variantId == freezed
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      salesOrderLineCode: salesOrderLineCode == freezed
          ? _value.salesOrderLineCode
          : salesOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUom: salesUom == freezed
          ? _value.salesUom
          : salesUom // ignore: cast_nullable_to_non_nullable
              as String?,
      isInvoiced: isInvoiced == freezed
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      sellingPriceTotal: sellingPriceTotal == freezed
          ? _value.sellingPriceTotal
          : sellingPriceTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      warrentyPrice: warrentyPrice == freezed
          ? _value.warrentyPrice
          : warrentyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$OrderReturnLinesInvoiceCopyWith<$Res>
    implements $OrderReturnLinesInvoiceCopyWith<$Res> {
  factory _$OrderReturnLinesInvoiceCopyWith(_OrderReturnLinesInvoice value,
          $Res Function(_OrderReturnLinesInvoice) then) =
      __$OrderReturnLinesInvoiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? quantity,
      String? barcode,
      double? discount,
      double? vat,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "sales_order_line_code") String? salesOrderLineCode,
      @JsonKey(name: "sales_uom") String? salesUom,
      @JsonKey(name: "is_invoiced", defaultValue: false) bool? isInvoiced,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "discount_type") String? discountType,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "warranty_price") double? warrentyPrice});
}

/// @nodoc
class __$OrderReturnLinesInvoiceCopyWithImpl<$Res>
    extends _$OrderReturnLinesInvoiceCopyWithImpl<$Res>
    implements _$OrderReturnLinesInvoiceCopyWith<$Res> {
  __$OrderReturnLinesInvoiceCopyWithImpl(_OrderReturnLinesInvoice _value,
      $Res Function(_OrderReturnLinesInvoice) _then)
      : super(_value, (v) => _then(v as _OrderReturnLinesInvoice));

  @override
  _OrderReturnLinesInvoice get _value =>
      super._value as _OrderReturnLinesInvoice;

  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? barcode = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? variantId = freezed,
    Object? salesOrderLineCode = freezed,
    Object? salesUom = freezed,
    Object? isInvoiced = freezed,
    Object? isActive = freezed,
    Object? discountType = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? warrentyPrice = freezed,
  }) {
    return _then(_OrderReturnLinesInvoice(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      variantId: variantId == freezed
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      salesOrderLineCode: salesOrderLineCode == freezed
          ? _value.salesOrderLineCode
          : salesOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUom: salesUom == freezed
          ? _value.salesUom
          : salesUom // ignore: cast_nullable_to_non_nullable
              as String?,
      isInvoiced: isInvoiced == freezed
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      sellingPriceTotal: sellingPriceTotal == freezed
          ? _value.sellingPriceTotal
          : sellingPriceTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      warrentyPrice: warrentyPrice == freezed
          ? _value.warrentyPrice
          : warrentyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderReturnLinesInvoice implements _OrderReturnLinesInvoice {
  const _$_OrderReturnLinesInvoice(
      {this.id,
      this.quantity,
      this.barcode,
      this.discount,
      this.vat,
      @JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "sales_order_line_code") this.salesOrderLineCode,
      @JsonKey(name: "sales_uom") this.salesUom,
      @JsonKey(name: "is_invoiced", defaultValue: false) this.isInvoiced,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive,
      @JsonKey(name: "discount_type") this.discountType,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "taxable_amount") this.taxableAmount,
      @JsonKey(name: "selling_price") this.sellingPriceTotal,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "warranty_price") this.warrentyPrice});

  factory _$_OrderReturnLinesInvoice.fromJson(Map<String, dynamic> json) =>
      _$$_OrderReturnLinesInvoiceFromJson(json);

  @override
  final int? id;
  @override
  final int? quantity;
  @override
  final String? barcode;
  @override
  final double? discount;
  @override
  final double? vat;
  @override
  @JsonKey(name: "variant_id")
  final String? variantId;
  @override
  @JsonKey(name: "sales_order_line_code")
  final String? salesOrderLineCode;
  @override
  @JsonKey(name: "sales_uom")
  final String? salesUom;
  @override
  @JsonKey(name: "is_invoiced", defaultValue: false)
  final bool? isInvoiced;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
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
  @JsonKey(name: "selling_price")
  final double? sellingPriceTotal;
  @override
  @JsonKey(name: "total_price")
  final double? totalPrice;
  @override
  @JsonKey(name: "warranty_price")
  final double? warrentyPrice;

  @override
  String toString() {
    return 'OrderReturnLinesInvoice(id: $id, quantity: $quantity, barcode: $barcode, discount: $discount, vat: $vat, variantId: $variantId, salesOrderLineCode: $salesOrderLineCode, salesUom: $salesUom, isInvoiced: $isInvoiced, isActive: $isActive, discountType: $discountType, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, sellingPriceTotal: $sellingPriceTotal, totalPrice: $totalPrice, warrentyPrice: $warrentyPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderReturnLinesInvoice &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.variantId, variantId) ||
                const DeepCollectionEquality()
                    .equals(other.variantId, variantId)) &&
            (identical(other.salesOrderLineCode, salesOrderLineCode) ||
                const DeepCollectionEquality()
                    .equals(other.salesOrderLineCode, salesOrderLineCode)) &&
            (identical(other.salesUom, salesUom) ||
                const DeepCollectionEquality()
                    .equals(other.salesUom, salesUom)) &&
            (identical(other.isInvoiced, isInvoiced) ||
                const DeepCollectionEquality()
                    .equals(other.isInvoiced, isInvoiced)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
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
            (identical(other.sellingPriceTotal, sellingPriceTotal) ||
                const DeepCollectionEquality()
                    .equals(other.sellingPriceTotal, sellingPriceTotal)) &&
            (identical(other.totalPrice, totalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.totalPrice, totalPrice)) &&
            (identical(other.warrentyPrice, warrentyPrice) ||
                const DeepCollectionEquality()
                    .equals(other.warrentyPrice, warrentyPrice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(variantId) ^
      const DeepCollectionEquality().hash(salesOrderLineCode) ^
      const DeepCollectionEquality().hash(salesUom) ^
      const DeepCollectionEquality().hash(isInvoiced) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(discountType) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(taxableAmount) ^
      const DeepCollectionEquality().hash(sellingPriceTotal) ^
      const DeepCollectionEquality().hash(totalPrice) ^
      const DeepCollectionEquality().hash(warrentyPrice);

  @JsonKey(ignore: true)
  @override
  _$OrderReturnLinesInvoiceCopyWith<_OrderReturnLinesInvoice> get copyWith =>
      __$OrderReturnLinesInvoiceCopyWithImpl<_OrderReturnLinesInvoice>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderReturnLinesInvoiceToJson(this);
  }
}

abstract class _OrderReturnLinesInvoice implements OrderReturnLinesInvoice {
  const factory _OrderReturnLinesInvoice(
          {int? id,
          int? quantity,
          String? barcode,
          double? discount,
          double? vat,
          @JsonKey(name: "variant_id") String? variantId,
          @JsonKey(name: "sales_order_line_code") String? salesOrderLineCode,
          @JsonKey(name: "sales_uom") String? salesUom,
          @JsonKey(name: "is_invoiced", defaultValue: false) bool? isInvoiced,
          @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
          @JsonKey(name: "discount_type") String? discountType,
          @JsonKey(name: "unit_cost") double? unitCost,
          @JsonKey(name: "excess_tax") double? excessTax,
          @JsonKey(name: "taxable_amount") double? taxableAmount,
          @JsonKey(name: "selling_price") double? sellingPriceTotal,
          @JsonKey(name: "total_price") double? totalPrice,
          @JsonKey(name: "warranty_price") double? warrentyPrice}) =
      _$_OrderReturnLinesInvoice;

  factory _OrderReturnLinesInvoice.fromJson(Map<String, dynamic> json) =
      _$_OrderReturnLinesInvoice.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  int? get quantity => throw _privateConstructorUsedError;
  @override
  String? get barcode => throw _privateConstructorUsedError;
  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_id")
  String? get variantId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_order_line_code")
  String? get salesOrderLineCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_uom")
  String? get salesUom => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_invoiced", defaultValue: false)
  bool? get isInvoiced => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
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
  @JsonKey(name: "selling_price")
  double? get sellingPriceTotal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "total_price")
  double? get totalPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "warranty_price")
  double? get warrentyPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderReturnLinesInvoiceCopyWith<_OrderReturnLinesInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoicedDatas _$InvoicedDatasFromJson(Map<String, dynamic> json) {
  return _InvoicedDatas.fromJson(json);
}

/// @nodoc
class _$InvoicedDatasTearOff {
  const _$InvoicedDatasTearOff();

  _InvoicedDatas call(
      {int? id,
      int? quantity,
      String? barcode,
      String? notes,
      String? remarks,
      double? discount,
      double? vat,
      @JsonKey(name: "sales_order_id") int? slaesOrderId,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "created_date") String? createdDate,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "assigned_to") String? assignedTo,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "warranty_price") double? warrentyPrice,
      @JsonKey(name: "invoice_lines") List<SalesReturnOrderLines>? lines}) {
    return _InvoicedDatas(
      id: id,
      quantity: quantity,
      barcode: barcode,
      notes: notes,
      remarks: remarks,
      discount: discount,
      vat: vat,
      slaesOrderId: slaesOrderId,
      invoiceCode: invoiceCode,
      inventoryId: inventoryId,
      createdDate: createdDate,
      invoiceStatus: invoiceStatus,
      assignedTo: assignedTo,
      unitCost: unitCost,
      excessTax: excessTax,
      taxableAmount: taxableAmount,
      sellingPriceTotal: sellingPriceTotal,
      totalPrice: totalPrice,
      warrentyPrice: warrentyPrice,
      lines: lines,
    );
  }

  InvoicedDatas fromJson(Map<String, Object> json) {
    return InvoicedDatas.fromJson(json);
  }
}

/// @nodoc
const $InvoicedDatas = _$InvoicedDatasTearOff();

/// @nodoc
mixin _$InvoicedDatas {
  int? get id => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_order_id")
  int? get slaesOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_code")
  String? get invoiceCode => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_date")
  String? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "assigned_to")
  String? get assignedTo => throw _privateConstructorUsedError;
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
  @JsonKey(name: "warranty_price")
  double? get warrentyPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_lines")
  List<SalesReturnOrderLines>? get lines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoicedDatasCopyWith<InvoicedDatas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoicedDatasCopyWith<$Res> {
  factory $InvoicedDatasCopyWith(
          InvoicedDatas value, $Res Function(InvoicedDatas) then) =
      _$InvoicedDatasCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? quantity,
      String? barcode,
      String? notes,
      String? remarks,
      double? discount,
      double? vat,
      @JsonKey(name: "sales_order_id") int? slaesOrderId,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "created_date") String? createdDate,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "assigned_to") String? assignedTo,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "warranty_price") double? warrentyPrice,
      @JsonKey(name: "invoice_lines") List<SalesReturnOrderLines>? lines});
}

/// @nodoc
class _$InvoicedDatasCopyWithImpl<$Res>
    implements $InvoicedDatasCopyWith<$Res> {
  _$InvoicedDatasCopyWithImpl(this._value, this._then);

  final InvoicedDatas _value;
  // ignore: unused_field
  final $Res Function(InvoicedDatas) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? barcode = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? slaesOrderId = freezed,
    Object? invoiceCode = freezed,
    Object? inventoryId = freezed,
    Object? createdDate = freezed,
    Object? invoiceStatus = freezed,
    Object? assignedTo = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? warrentyPrice = freezed,
    Object? lines = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      slaesOrderId: slaesOrderId == freezed
          ? _value.slaesOrderId
          : slaesOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceCode: invoiceCode == freezed
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: createdDate == freezed
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: invoiceStatus == freezed
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedTo: assignedTo == freezed
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
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
      warrentyPrice: warrentyPrice == freezed
          ? _value.warrentyPrice
          : warrentyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      lines: lines == freezed
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<SalesReturnOrderLines>?,
    ));
  }
}

/// @nodoc
abstract class _$InvoicedDatasCopyWith<$Res>
    implements $InvoicedDatasCopyWith<$Res> {
  factory _$InvoicedDatasCopyWith(
          _InvoicedDatas value, $Res Function(_InvoicedDatas) then) =
      __$InvoicedDatasCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? quantity,
      String? barcode,
      String? notes,
      String? remarks,
      double? discount,
      double? vat,
      @JsonKey(name: "sales_order_id") int? slaesOrderId,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "created_date") String? createdDate,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "assigned_to") String? assignedTo,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "warranty_price") double? warrentyPrice,
      @JsonKey(name: "invoice_lines") List<SalesReturnOrderLines>? lines});
}

/// @nodoc
class __$InvoicedDatasCopyWithImpl<$Res>
    extends _$InvoicedDatasCopyWithImpl<$Res>
    implements _$InvoicedDatasCopyWith<$Res> {
  __$InvoicedDatasCopyWithImpl(
      _InvoicedDatas _value, $Res Function(_InvoicedDatas) _then)
      : super(_value, (v) => _then(v as _InvoicedDatas));

  @override
  _InvoicedDatas get _value => super._value as _InvoicedDatas;

  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? barcode = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? slaesOrderId = freezed,
    Object? invoiceCode = freezed,
    Object? inventoryId = freezed,
    Object? createdDate = freezed,
    Object? invoiceStatus = freezed,
    Object? assignedTo = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? warrentyPrice = freezed,
    Object? lines = freezed,
  }) {
    return _then(_InvoicedDatas(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      slaesOrderId: slaesOrderId == freezed
          ? _value.slaesOrderId
          : slaesOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceCode: invoiceCode == freezed
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: createdDate == freezed
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: invoiceStatus == freezed
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedTo: assignedTo == freezed
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
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
      warrentyPrice: warrentyPrice == freezed
          ? _value.warrentyPrice
          : warrentyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      lines: lines == freezed
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<SalesReturnOrderLines>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvoicedDatas implements _InvoicedDatas {
  const _$_InvoicedDatas(
      {this.id,
      this.quantity,
      this.barcode,
      this.notes,
      this.remarks,
      this.discount,
      this.vat,
      @JsonKey(name: "sales_order_id") this.slaesOrderId,
      @JsonKey(name: "invoice_code") this.invoiceCode,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "created_date") this.createdDate,
      @JsonKey(name: "invoice_status") this.invoiceStatus,
      @JsonKey(name: "assigned_to") this.assignedTo,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "taxable_amount") this.taxableAmount,
      @JsonKey(name: "selling_price_total") this.sellingPriceTotal,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "warranty_price") this.warrentyPrice,
      @JsonKey(name: "invoice_lines") this.lines});

  factory _$_InvoicedDatas.fromJson(Map<String, dynamic> json) =>
      _$$_InvoicedDatasFromJson(json);

  @override
  final int? id;
  @override
  final int? quantity;
  @override
  final String? barcode;
  @override
  final String? notes;
  @override
  final String? remarks;
  @override
  final double? discount;
  @override
  final double? vat;
  @override
  @JsonKey(name: "sales_order_id")
  final int? slaesOrderId;
  @override
  @JsonKey(name: "invoice_code")
  final String? invoiceCode;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "created_date")
  final String? createdDate;
  @override
  @JsonKey(name: "invoice_status")
  final String? invoiceStatus;
  @override
  @JsonKey(name: "assigned_to")
  final String? assignedTo;
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
  @JsonKey(name: "warranty_price")
  final double? warrentyPrice;
  @override
  @JsonKey(name: "invoice_lines")
  final List<SalesReturnOrderLines>? lines;

  @override
  String toString() {
    return 'InvoicedDatas(id: $id, quantity: $quantity, barcode: $barcode, notes: $notes, remarks: $remarks, discount: $discount, vat: $vat, slaesOrderId: $slaesOrderId, invoiceCode: $invoiceCode, inventoryId: $inventoryId, createdDate: $createdDate, invoiceStatus: $invoiceStatus, assignedTo: $assignedTo, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, sellingPriceTotal: $sellingPriceTotal, totalPrice: $totalPrice, warrentyPrice: $warrentyPrice, lines: $lines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvoicedDatas &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.remarks, remarks) ||
                const DeepCollectionEquality()
                    .equals(other.remarks, remarks)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.slaesOrderId, slaesOrderId) ||
                const DeepCollectionEquality()
                    .equals(other.slaesOrderId, slaesOrderId)) &&
            (identical(other.invoiceCode, invoiceCode) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceCode, invoiceCode)) &&
            (identical(other.inventoryId, inventoryId) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryId, inventoryId)) &&
            (identical(other.createdDate, createdDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdDate, createdDate)) &&
            (identical(other.invoiceStatus, invoiceStatus) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceStatus, invoiceStatus)) &&
            (identical(other.assignedTo, assignedTo) ||
                const DeepCollectionEquality()
                    .equals(other.assignedTo, assignedTo)) &&
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
                const DeepCollectionEquality()
                    .equals(other.totalPrice, totalPrice)) &&
            (identical(other.warrentyPrice, warrentyPrice) ||
                const DeepCollectionEquality()
                    .equals(other.warrentyPrice, warrentyPrice)) &&
            (identical(other.lines, lines) ||
                const DeepCollectionEquality().equals(other.lines, lines)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(remarks) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(slaesOrderId) ^
      const DeepCollectionEquality().hash(invoiceCode) ^
      const DeepCollectionEquality().hash(inventoryId) ^
      const DeepCollectionEquality().hash(createdDate) ^
      const DeepCollectionEquality().hash(invoiceStatus) ^
      const DeepCollectionEquality().hash(assignedTo) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(taxableAmount) ^
      const DeepCollectionEquality().hash(sellingPriceTotal) ^
      const DeepCollectionEquality().hash(totalPrice) ^
      const DeepCollectionEquality().hash(warrentyPrice) ^
      const DeepCollectionEquality().hash(lines);

  @JsonKey(ignore: true)
  @override
  _$InvoicedDatasCopyWith<_InvoicedDatas> get copyWith =>
      __$InvoicedDatasCopyWithImpl<_InvoicedDatas>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoicedDatasToJson(this);
  }
}

abstract class _InvoicedDatas implements InvoicedDatas {
  const factory _InvoicedDatas(
          {int? id,
          int? quantity,
          String? barcode,
          String? notes,
          String? remarks,
          double? discount,
          double? vat,
          @JsonKey(name: "sales_order_id") int? slaesOrderId,
          @JsonKey(name: "invoice_code") String? invoiceCode,
          @JsonKey(name: "inventory_id") String? inventoryId,
          @JsonKey(name: "created_date") String? createdDate,
          @JsonKey(name: "invoice_status") String? invoiceStatus,
          @JsonKey(name: "assigned_to") String? assignedTo,
          @JsonKey(name: "unit_cost") double? unitCost,
          @JsonKey(name: "excess_tax") double? excessTax,
          @JsonKey(name: "taxable_amount") double? taxableAmount,
          @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
          @JsonKey(name: "total_price") double? totalPrice,
          @JsonKey(name: "warranty_price") double? warrentyPrice,
          @JsonKey(name: "invoice_lines") List<SalesReturnOrderLines>? lines}) =
      _$_InvoicedDatas;

  factory _InvoicedDatas.fromJson(Map<String, dynamic> json) =
      _$_InvoicedDatas.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  int? get quantity => throw _privateConstructorUsedError;
  @override
  String? get barcode => throw _privateConstructorUsedError;
  @override
  String? get notes => throw _privateConstructorUsedError;
  @override
  String? get remarks => throw _privateConstructorUsedError;
  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_order_id")
  int? get slaesOrderId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_code")
  String? get invoiceCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "created_date")
  String? get createdDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "assigned_to")
  String? get assignedTo => throw _privateConstructorUsedError;
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
  @JsonKey(name: "warranty_price")
  double? get warrentyPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_lines")
  List<SalesReturnOrderLines>? get lines => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvoicedDatasCopyWith<_InvoicedDatas> get copyWith =>
      throw _privateConstructorUsedError;
}
