// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'salesreturninvoiceread.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesReturnInvoiceReadModel2 _$SalesReturnInvoiceReadModel2FromJson(
    Map<String, dynamic> json) {
  return _SalesReturnInvoiceReadModel2.fromJson(json);
}

/// @nodoc
mixin _$SalesReturnInvoiceReadModel2 {
  int? get id => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_return_order_code")
  String? get salesReturnOrderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "returned_date")
  String? get returnedDate => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_id")
  String? get paymentId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id")
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "trn_number")
  String? get trnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "order_satus")
  String? get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus => throw _privateConstructorUsedError;
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
  @JsonKey(name: "return_order_lines")
  List<SalesReturnLinesOrderLines>? get returnOrrder =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_data")
  InvoicedDatasSalesReturn? get invoicedData =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesReturnInvoiceReadModel2CopyWith<SalesReturnInvoiceReadModel2>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesReturnInvoiceReadModel2CopyWith<$Res> {
  factory $SalesReturnInvoiceReadModel2CopyWith(
          SalesReturnInvoiceReadModel2 value,
          $Res Function(SalesReturnInvoiceReadModel2) then) =
      _$SalesReturnInvoiceReadModel2CopyWithImpl<$Res,
          SalesReturnInvoiceReadModel2>;
  @useResult
  $Res call(
      {int? id,
      double? discount,
      double? vat,
      @JsonKey(name: "sales_return_order_code")
          String? salesReturnOrderCode,
      @JsonKey(name: "returned_date")
          String? returnedDate,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "payment_id")
          String? paymentId,
      @JsonKey(name: "payment_status")
          String? paymentStatus,
      @JsonKey(name: "customer_id")
          String? customerId,
      @JsonKey(name: "trn_number")
          String? trnNumber,
      @JsonKey(name: "order_satus")
          String? orderStatus,
      @JsonKey(name: "invoice_status")
          String? invoiceStatus,
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
      @JsonKey(name: "return_order_lines")
          List<SalesReturnLinesOrderLines>? returnOrrder,
      @JsonKey(name: "invoice_data")
          InvoicedDatasSalesReturn? invoicedData});

  $InvoicedDatasSalesReturnCopyWith<$Res>? get invoicedData;
}

/// @nodoc
class _$SalesReturnInvoiceReadModel2CopyWithImpl<$Res,
        $Val extends SalesReturnInvoiceReadModel2>
    implements $SalesReturnInvoiceReadModel2CopyWith<$Res> {
  _$SalesReturnInvoiceReadModel2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? salesReturnOrderCode = freezed,
    Object? returnedDate = freezed,
    Object? inventoryId = freezed,
    Object? paymentId = freezed,
    Object? paymentStatus = freezed,
    Object? customerId = freezed,
    Object? trnNumber = freezed,
    Object? orderStatus = freezed,
    Object? invoiceStatus = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? returnOrrder = freezed,
    Object? invoicedData = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      salesReturnOrderCode: freezed == salesReturnOrderCode
          ? _value.salesReturnOrderCode
          : salesReturnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnedDate: freezed == returnedDate
          ? _value.returnedDate
          : returnedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: freezed == trnNumber
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: freezed == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      taxableAmount: freezed == taxableAmount
          ? _value.taxableAmount
          : taxableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPriceTotal: freezed == sellingPriceTotal
          ? _value.sellingPriceTotal
          : sellingPriceTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      returnOrrder: freezed == returnOrrder
          ? _value.returnOrrder
          : returnOrrder // ignore: cast_nullable_to_non_nullable
              as List<SalesReturnLinesOrderLines>?,
      invoicedData: freezed == invoicedData
          ? _value.invoicedData
          : invoicedData // ignore: cast_nullable_to_non_nullable
              as InvoicedDatasSalesReturn?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoicedDatasSalesReturnCopyWith<$Res>? get invoicedData {
    if (_value.invoicedData == null) {
      return null;
    }

    return $InvoicedDatasSalesReturnCopyWith<$Res>(_value.invoicedData!,
        (value) {
      return _then(_value.copyWith(invoicedData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SalesReturnInvoiceReadModel2CopyWith<$Res>
    implements $SalesReturnInvoiceReadModel2CopyWith<$Res> {
  factory _$$_SalesReturnInvoiceReadModel2CopyWith(
          _$_SalesReturnInvoiceReadModel2 value,
          $Res Function(_$_SalesReturnInvoiceReadModel2) then) =
      __$$_SalesReturnInvoiceReadModel2CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      double? discount,
      double? vat,
      @JsonKey(name: "sales_return_order_code")
          String? salesReturnOrderCode,
      @JsonKey(name: "returned_date")
          String? returnedDate,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "payment_id")
          String? paymentId,
      @JsonKey(name: "payment_status")
          String? paymentStatus,
      @JsonKey(name: "customer_id")
          String? customerId,
      @JsonKey(name: "trn_number")
          String? trnNumber,
      @JsonKey(name: "order_satus")
          String? orderStatus,
      @JsonKey(name: "invoice_status")
          String? invoiceStatus,
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
      @JsonKey(name: "return_order_lines")
          List<SalesReturnLinesOrderLines>? returnOrrder,
      @JsonKey(name: "invoice_data")
          InvoicedDatasSalesReturn? invoicedData});

  @override
  $InvoicedDatasSalesReturnCopyWith<$Res>? get invoicedData;
}

/// @nodoc
class __$$_SalesReturnInvoiceReadModel2CopyWithImpl<$Res>
    extends _$SalesReturnInvoiceReadModel2CopyWithImpl<$Res,
        _$_SalesReturnInvoiceReadModel2>
    implements _$$_SalesReturnInvoiceReadModel2CopyWith<$Res> {
  __$$_SalesReturnInvoiceReadModel2CopyWithImpl(
      _$_SalesReturnInvoiceReadModel2 _value,
      $Res Function(_$_SalesReturnInvoiceReadModel2) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? salesReturnOrderCode = freezed,
    Object? returnedDate = freezed,
    Object? inventoryId = freezed,
    Object? paymentId = freezed,
    Object? paymentStatus = freezed,
    Object? customerId = freezed,
    Object? trnNumber = freezed,
    Object? orderStatus = freezed,
    Object? invoiceStatus = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? returnOrrder = freezed,
    Object? invoicedData = freezed,
  }) {
    return _then(_$_SalesReturnInvoiceReadModel2(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      salesReturnOrderCode: freezed == salesReturnOrderCode
          ? _value.salesReturnOrderCode
          : salesReturnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnedDate: freezed == returnedDate
          ? _value.returnedDate
          : returnedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: freezed == trnNumber
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: freezed == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      taxableAmount: freezed == taxableAmount
          ? _value.taxableAmount
          : taxableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPriceTotal: freezed == sellingPriceTotal
          ? _value.sellingPriceTotal
          : sellingPriceTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      returnOrrder: freezed == returnOrrder
          ? _value._returnOrrder
          : returnOrrder // ignore: cast_nullable_to_non_nullable
              as List<SalesReturnLinesOrderLines>?,
      invoicedData: freezed == invoicedData
          ? _value.invoicedData
          : invoicedData // ignore: cast_nullable_to_non_nullable
              as InvoicedDatasSalesReturn?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesReturnInvoiceReadModel2 implements _SalesReturnInvoiceReadModel2 {
  const _$_SalesReturnInvoiceReadModel2(
      {this.id,
      this.discount,
      this.vat,
      @JsonKey(name: "sales_return_order_code")
          this.salesReturnOrderCode,
      @JsonKey(name: "returned_date")
          this.returnedDate,
      @JsonKey(name: "inventory_id")
          this.inventoryId,
      @JsonKey(name: "payment_id")
          this.paymentId,
      @JsonKey(name: "payment_status")
          this.paymentStatus,
      @JsonKey(name: "customer_id")
          this.customerId,
      @JsonKey(name: "trn_number")
          this.trnNumber,
      @JsonKey(name: "order_satus")
          this.orderStatus,
      @JsonKey(name: "invoice_status")
          this.invoiceStatus,
      @JsonKey(name: "unit_cost")
          this.unitCost,
      @JsonKey(name: "excess_tax")
          this.excessTax,
      @JsonKey(name: "taxable_amount")
          this.taxableAmount,
      @JsonKey(name: "selling_price_total")
          this.sellingPriceTotal,
      @JsonKey(name: "total_price")
          this.totalPrice,
      @JsonKey(name: "return_order_lines")
          final List<SalesReturnLinesOrderLines>? returnOrrder,
      @JsonKey(name: "invoice_data")
          this.invoicedData})
      : _returnOrrder = returnOrrder;

  factory _$_SalesReturnInvoiceReadModel2.fromJson(Map<String, dynamic> json) =>
      _$$_SalesReturnInvoiceReadModel2FromJson(json);

  @override
  final int? id;
  @override
  final double? discount;
  @override
  final double? vat;
  @override
  @JsonKey(name: "sales_return_order_code")
  final String? salesReturnOrderCode;
  @override
  @JsonKey(name: "returned_date")
  final String? returnedDate;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "payment_id")
  final String? paymentId;
  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  @override
  @JsonKey(name: "customer_id")
  final String? customerId;
  @override
  @JsonKey(name: "trn_number")
  final String? trnNumber;
  @override
  @JsonKey(name: "order_satus")
  final String? orderStatus;
  @override
  @JsonKey(name: "invoice_status")
  final String? invoiceStatus;
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
  final List<SalesReturnLinesOrderLines>? _returnOrrder;
  @override
  @JsonKey(name: "return_order_lines")
  List<SalesReturnLinesOrderLines>? get returnOrrder {
    final value = _returnOrrder;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "invoice_data")
  final InvoicedDatasSalesReturn? invoicedData;

  @override
  String toString() {
    return 'SalesReturnInvoiceReadModel2(id: $id, discount: $discount, vat: $vat, salesReturnOrderCode: $salesReturnOrderCode, returnedDate: $returnedDate, inventoryId: $inventoryId, paymentId: $paymentId, paymentStatus: $paymentStatus, customerId: $customerId, trnNumber: $trnNumber, orderStatus: $orderStatus, invoiceStatus: $invoiceStatus, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, sellingPriceTotal: $sellingPriceTotal, totalPrice: $totalPrice, returnOrrder: $returnOrrder, invoicedData: $invoicedData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesReturnInvoiceReadModel2 &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.salesReturnOrderCode, salesReturnOrderCode) ||
                other.salesReturnOrderCode == salesReturnOrderCode) &&
            (identical(other.returnedDate, returnedDate) ||
                other.returnedDate == returnedDate) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.trnNumber, trnNumber) ||
                other.trnNumber == trnNumber) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.invoiceStatus, invoiceStatus) ||
                other.invoiceStatus == invoiceStatus) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.taxableAmount, taxableAmount) ||
                other.taxableAmount == taxableAmount) &&
            (identical(other.sellingPriceTotal, sellingPriceTotal) ||
                other.sellingPriceTotal == sellingPriceTotal) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            const DeepCollectionEquality()
                .equals(other._returnOrrder, _returnOrrder) &&
            (identical(other.invoicedData, invoicedData) ||
                other.invoicedData == invoicedData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        discount,
        vat,
        salesReturnOrderCode,
        returnedDate,
        inventoryId,
        paymentId,
        paymentStatus,
        customerId,
        trnNumber,
        orderStatus,
        invoiceStatus,
        unitCost,
        excessTax,
        taxableAmount,
        sellingPriceTotal,
        totalPrice,
        const DeepCollectionEquality().hash(_returnOrrder),
        invoicedData
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalesReturnInvoiceReadModel2CopyWith<_$_SalesReturnInvoiceReadModel2>
      get copyWith => __$$_SalesReturnInvoiceReadModel2CopyWithImpl<
          _$_SalesReturnInvoiceReadModel2>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesReturnInvoiceReadModel2ToJson(
      this,
    );
  }
}

abstract class _SalesReturnInvoiceReadModel2
    implements SalesReturnInvoiceReadModel2 {
  const factory _SalesReturnInvoiceReadModel2(
          {final int? id,
          final double? discount,
          final double? vat,
          @JsonKey(name: "sales_return_order_code")
              final String? salesReturnOrderCode,
          @JsonKey(name: "returned_date")
              final String? returnedDate,
          @JsonKey(name: "inventory_id")
              final String? inventoryId,
          @JsonKey(name: "payment_id")
              final String? paymentId,
          @JsonKey(name: "payment_status")
              final String? paymentStatus,
          @JsonKey(name: "customer_id")
              final String? customerId,
          @JsonKey(name: "trn_number")
              final String? trnNumber,
          @JsonKey(name: "order_satus")
              final String? orderStatus,
          @JsonKey(name: "invoice_status")
              final String? invoiceStatus,
          @JsonKey(name: "unit_cost")
              final double? unitCost,
          @JsonKey(name: "excess_tax")
              final double? excessTax,
          @JsonKey(name: "taxable_amount")
              final double? taxableAmount,
          @JsonKey(name: "selling_price_total")
              final double? sellingPriceTotal,
          @JsonKey(name: "total_price")
              final double? totalPrice,
          @JsonKey(name: "return_order_lines")
              final List<SalesReturnLinesOrderLines>? returnOrrder,
          @JsonKey(name: "invoice_data")
              final InvoicedDatasSalesReturn? invoicedData}) =
      _$_SalesReturnInvoiceReadModel2;

  factory _SalesReturnInvoiceReadModel2.fromJson(Map<String, dynamic> json) =
      _$_SalesReturnInvoiceReadModel2.fromJson;

  @override
  int? get id;
  @override
  double? get discount;
  @override
  double? get vat;
  @override
  @JsonKey(name: "sales_return_order_code")
  String? get salesReturnOrderCode;
  @override
  @JsonKey(name: "returned_date")
  String? get returnedDate;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "payment_id")
  String? get paymentId;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus;
  @override
  @JsonKey(name: "customer_id")
  String? get customerId;
  @override
  @JsonKey(name: "trn_number")
  String? get trnNumber;
  @override
  @JsonKey(name: "order_satus")
  String? get orderStatus;
  @override
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax;
  @override
  @JsonKey(name: "taxable_amount")
  double? get taxableAmount;
  @override
  @JsonKey(name: "selling_price_total")
  double? get sellingPriceTotal;
  @override
  @JsonKey(name: "total_price")
  double? get totalPrice;
  @override
  @JsonKey(name: "return_order_lines")
  List<SalesReturnLinesOrderLines>? get returnOrrder;
  @override
  @JsonKey(name: "invoice_data")
  InvoicedDatasSalesReturn? get invoicedData;
  @override
  @JsonKey(ignore: true)
  _$$_SalesReturnInvoiceReadModel2CopyWith<_$_SalesReturnInvoiceReadModel2>
      get copyWith => throw _privateConstructorUsedError;
}

SalesReturnLinesOrderLines _$SalesReturnLinesOrderLinesFromJson(
    Map<String, dynamic> json) {
  return _SalesReturnLinesOrderLines.fromJson(json);
}

/// @nodoc
mixin _$SalesReturnLinesOrderLines {
  int? get id => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  String? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_line_id")
  String? get invoiceLineId => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_return_order_line_code")
  String? get salesReturnOrderLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_return_line_code")
  String? get invoiceReturnLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_id")
  String? get stockId => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_id")
  String? get warrantyId => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_uom")
  String? get salesUOM => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_type")
  String? get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: "return_type")
  String? get returnType => throw _privateConstructorUsedError;
  @JsonKey(name: "return_time")
  String? get returnTime => throw _privateConstructorUsedError;
  @JsonKey(name: "total_qty")
  int? get totalQty => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_return_order_id")
  int? get salesReturnOrderLineId => throw _privateConstructorUsedError;
  @JsonKey(name: "is_invoiced", defaultValue: false)
  bool? get isInvoiced => throw _privateConstructorUsedError;
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
  $SalesReturnLinesOrderLinesCopyWith<SalesReturnLinesOrderLines>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesReturnLinesOrderLinesCopyWith<$Res> {
  factory $SalesReturnLinesOrderLinesCopyWith(SalesReturnLinesOrderLines value,
          $Res Function(SalesReturnLinesOrderLines) then) =
      _$SalesReturnLinesOrderLinesCopyWithImpl<$Res,
          SalesReturnLinesOrderLines>;
  @useResult
  $Res call(
      {int? id,
      int? quantity,
      String? barcode,
      double? discount,
      double? vat,
      @JsonKey(name: "variant_id")
          String? variantId,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "invoice_line_id")
          String? invoiceLineId,
      @JsonKey(name: "sales_return_order_line_code")
          String? salesReturnOrderLineCode,
      @JsonKey(name: "invoice_return_line_code")
          String? invoiceReturnLineCode,
      @JsonKey(name: "stock_id")
          String? stockId,
      @JsonKey(name: "warranty_id")
          String? warrantyId,
      @JsonKey(name: "sales_uom")
          String? salesUOM,
      @JsonKey(name: "discount_type")
          String? discountType,
      @JsonKey(name: "return_type")
          String? returnType,
      @JsonKey(name: "return_time")
          String? returnTime,
      @JsonKey(name: "total_qty")
          int? totalQty,
      @JsonKey(name: "sales_return_order_id")
          int? salesReturnOrderLineId,
      @JsonKey(name: "is_invoiced", defaultValue: false)
          bool? isInvoiced,
      @JsonKey(name: "unit_cost")
          double? unitCost,
      @JsonKey(name: "excess_tax")
          double? excessTax,
      @JsonKey(name: "taxable_amount")
          double? taxableAmount,
      @JsonKey(name: "selling_price")
          double? sellingPriceTotal,
      @JsonKey(name: "total_price")
          double? totalPrice,
      @JsonKey(name: "warranty_price")
          double? warrentyPrice});
}

/// @nodoc
class _$SalesReturnLinesOrderLinesCopyWithImpl<$Res,
        $Val extends SalesReturnLinesOrderLines>
    implements $SalesReturnLinesOrderLinesCopyWith<$Res> {
  _$SalesReturnLinesOrderLinesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? barcode = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? variantId = freezed,
    Object? inventoryId = freezed,
    Object? invoiceLineId = freezed,
    Object? salesReturnOrderLineCode = freezed,
    Object? invoiceReturnLineCode = freezed,
    Object? stockId = freezed,
    Object? warrantyId = freezed,
    Object? salesUOM = freezed,
    Object? discountType = freezed,
    Object? returnType = freezed,
    Object? returnTime = freezed,
    Object? totalQty = freezed,
    Object? salesReturnOrderLineId = freezed,
    Object? isInvoiced = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? warrentyPrice = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceLineId: freezed == invoiceLineId
          ? _value.invoiceLineId
          : invoiceLineId // ignore: cast_nullable_to_non_nullable
              as String?,
      salesReturnOrderLineCode: freezed == salesReturnOrderLineCode
          ? _value.salesReturnOrderLineCode
          : salesReturnOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceReturnLineCode: freezed == invoiceReturnLineCode
          ? _value.invoiceReturnLineCode
          : invoiceReturnLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      stockId: freezed == stockId
          ? _value.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as String?,
      warrantyId: freezed == warrantyId
          ? _value.warrantyId
          : warrantyId // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUOM: freezed == salesUOM
          ? _value.salesUOM
          : salesUOM // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      returnType: freezed == returnType
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String?,
      returnTime: freezed == returnTime
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      salesReturnOrderLineId: freezed == salesReturnOrderLineId
          ? _value.salesReturnOrderLineId
          : salesReturnOrderLineId // ignore: cast_nullable_to_non_nullable
              as int?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      taxableAmount: freezed == taxableAmount
          ? _value.taxableAmount
          : taxableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPriceTotal: freezed == sellingPriceTotal
          ? _value.sellingPriceTotal
          : sellingPriceTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      warrentyPrice: freezed == warrentyPrice
          ? _value.warrentyPrice
          : warrentyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SalesReturnLinesOrderLinesCopyWith<$Res>
    implements $SalesReturnLinesOrderLinesCopyWith<$Res> {
  factory _$$_SalesReturnLinesOrderLinesCopyWith(
          _$_SalesReturnLinesOrderLines value,
          $Res Function(_$_SalesReturnLinesOrderLines) then) =
      __$$_SalesReturnLinesOrderLinesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? quantity,
      String? barcode,
      double? discount,
      double? vat,
      @JsonKey(name: "variant_id")
          String? variantId,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "invoice_line_id")
          String? invoiceLineId,
      @JsonKey(name: "sales_return_order_line_code")
          String? salesReturnOrderLineCode,
      @JsonKey(name: "invoice_return_line_code")
          String? invoiceReturnLineCode,
      @JsonKey(name: "stock_id")
          String? stockId,
      @JsonKey(name: "warranty_id")
          String? warrantyId,
      @JsonKey(name: "sales_uom")
          String? salesUOM,
      @JsonKey(name: "discount_type")
          String? discountType,
      @JsonKey(name: "return_type")
          String? returnType,
      @JsonKey(name: "return_time")
          String? returnTime,
      @JsonKey(name: "total_qty")
          int? totalQty,
      @JsonKey(name: "sales_return_order_id")
          int? salesReturnOrderLineId,
      @JsonKey(name: "is_invoiced", defaultValue: false)
          bool? isInvoiced,
      @JsonKey(name: "unit_cost")
          double? unitCost,
      @JsonKey(name: "excess_tax")
          double? excessTax,
      @JsonKey(name: "taxable_amount")
          double? taxableAmount,
      @JsonKey(name: "selling_price")
          double? sellingPriceTotal,
      @JsonKey(name: "total_price")
          double? totalPrice,
      @JsonKey(name: "warranty_price")
          double? warrentyPrice});
}

/// @nodoc
class __$$_SalesReturnLinesOrderLinesCopyWithImpl<$Res>
    extends _$SalesReturnLinesOrderLinesCopyWithImpl<$Res,
        _$_SalesReturnLinesOrderLines>
    implements _$$_SalesReturnLinesOrderLinesCopyWith<$Res> {
  __$$_SalesReturnLinesOrderLinesCopyWithImpl(
      _$_SalesReturnLinesOrderLines _value,
      $Res Function(_$_SalesReturnLinesOrderLines) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? barcode = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? variantId = freezed,
    Object? inventoryId = freezed,
    Object? invoiceLineId = freezed,
    Object? salesReturnOrderLineCode = freezed,
    Object? invoiceReturnLineCode = freezed,
    Object? stockId = freezed,
    Object? warrantyId = freezed,
    Object? salesUOM = freezed,
    Object? discountType = freezed,
    Object? returnType = freezed,
    Object? returnTime = freezed,
    Object? totalQty = freezed,
    Object? salesReturnOrderLineId = freezed,
    Object? isInvoiced = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? warrentyPrice = freezed,
  }) {
    return _then(_$_SalesReturnLinesOrderLines(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceLineId: freezed == invoiceLineId
          ? _value.invoiceLineId
          : invoiceLineId // ignore: cast_nullable_to_non_nullable
              as String?,
      salesReturnOrderLineCode: freezed == salesReturnOrderLineCode
          ? _value.salesReturnOrderLineCode
          : salesReturnOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceReturnLineCode: freezed == invoiceReturnLineCode
          ? _value.invoiceReturnLineCode
          : invoiceReturnLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      stockId: freezed == stockId
          ? _value.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as String?,
      warrantyId: freezed == warrantyId
          ? _value.warrantyId
          : warrantyId // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUOM: freezed == salesUOM
          ? _value.salesUOM
          : salesUOM // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      returnType: freezed == returnType
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String?,
      returnTime: freezed == returnTime
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      salesReturnOrderLineId: freezed == salesReturnOrderLineId
          ? _value.salesReturnOrderLineId
          : salesReturnOrderLineId // ignore: cast_nullable_to_non_nullable
              as int?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      taxableAmount: freezed == taxableAmount
          ? _value.taxableAmount
          : taxableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPriceTotal: freezed == sellingPriceTotal
          ? _value.sellingPriceTotal
          : sellingPriceTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      warrentyPrice: freezed == warrentyPrice
          ? _value.warrentyPrice
          : warrentyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesReturnLinesOrderLines implements _SalesReturnLinesOrderLines {
  const _$_SalesReturnLinesOrderLines(
      {this.id,
      this.quantity,
      this.barcode,
      this.discount,
      this.vat,
      @JsonKey(name: "variant_id")
          this.variantId,
      @JsonKey(name: "inventory_id")
          this.inventoryId,
      @JsonKey(name: "invoice_line_id")
          this.invoiceLineId,
      @JsonKey(name: "sales_return_order_line_code")
          this.salesReturnOrderLineCode,
      @JsonKey(name: "invoice_return_line_code")
          this.invoiceReturnLineCode,
      @JsonKey(name: "stock_id")
          this.stockId,
      @JsonKey(name: "warranty_id")
          this.warrantyId,
      @JsonKey(name: "sales_uom")
          this.salesUOM,
      @JsonKey(name: "discount_type")
          this.discountType,
      @JsonKey(name: "return_type")
          this.returnType,
      @JsonKey(name: "return_time")
          this.returnTime,
      @JsonKey(name: "total_qty")
          this.totalQty,
      @JsonKey(name: "sales_return_order_id")
          this.salesReturnOrderLineId,
      @JsonKey(name: "is_invoiced", defaultValue: false)
          this.isInvoiced,
      @JsonKey(name: "unit_cost")
          this.unitCost,
      @JsonKey(name: "excess_tax")
          this.excessTax,
      @JsonKey(name: "taxable_amount")
          this.taxableAmount,
      @JsonKey(name: "selling_price")
          this.sellingPriceTotal,
      @JsonKey(name: "total_price")
          this.totalPrice,
      @JsonKey(name: "warranty_price")
          this.warrentyPrice});

  factory _$_SalesReturnLinesOrderLines.fromJson(Map<String, dynamic> json) =>
      _$$_SalesReturnLinesOrderLinesFromJson(json);

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
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "invoice_line_id")
  final String? invoiceLineId;
  @override
  @JsonKey(name: "sales_return_order_line_code")
  final String? salesReturnOrderLineCode;
  @override
  @JsonKey(name: "invoice_return_line_code")
  final String? invoiceReturnLineCode;
  @override
  @JsonKey(name: "stock_id")
  final String? stockId;
  @override
  @JsonKey(name: "warranty_id")
  final String? warrantyId;
  @override
  @JsonKey(name: "sales_uom")
  final String? salesUOM;
  @override
  @JsonKey(name: "discount_type")
  final String? discountType;
  @override
  @JsonKey(name: "return_type")
  final String? returnType;
  @override
  @JsonKey(name: "return_time")
  final String? returnTime;
  @override
  @JsonKey(name: "total_qty")
  final int? totalQty;
  @override
  @JsonKey(name: "sales_return_order_id")
  final int? salesReturnOrderLineId;
  @override
  @JsonKey(name: "is_invoiced", defaultValue: false)
  final bool? isInvoiced;
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
    return 'SalesReturnLinesOrderLines(id: $id, quantity: $quantity, barcode: $barcode, discount: $discount, vat: $vat, variantId: $variantId, inventoryId: $inventoryId, invoiceLineId: $invoiceLineId, salesReturnOrderLineCode: $salesReturnOrderLineCode, invoiceReturnLineCode: $invoiceReturnLineCode, stockId: $stockId, warrantyId: $warrantyId, salesUOM: $salesUOM, discountType: $discountType, returnType: $returnType, returnTime: $returnTime, totalQty: $totalQty, salesReturnOrderLineId: $salesReturnOrderLineId, isInvoiced: $isInvoiced, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, sellingPriceTotal: $sellingPriceTotal, totalPrice: $totalPrice, warrentyPrice: $warrentyPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesReturnLinesOrderLines &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.invoiceLineId, invoiceLineId) ||
                other.invoiceLineId == invoiceLineId) &&
            (identical(
                    other.salesReturnOrderLineCode, salesReturnOrderLineCode) ||
                other.salesReturnOrderLineCode == salesReturnOrderLineCode) &&
            (identical(other.invoiceReturnLineCode, invoiceReturnLineCode) ||
                other.invoiceReturnLineCode == invoiceReturnLineCode) &&
            (identical(other.stockId, stockId) || other.stockId == stockId) &&
            (identical(other.warrantyId, warrantyId) ||
                other.warrantyId == warrantyId) &&
            (identical(other.salesUOM, salesUOM) ||
                other.salesUOM == salesUOM) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.returnType, returnType) ||
                other.returnType == returnType) &&
            (identical(other.returnTime, returnTime) ||
                other.returnTime == returnTime) &&
            (identical(other.totalQty, totalQty) ||
                other.totalQty == totalQty) &&
            (identical(other.salesReturnOrderLineId, salesReturnOrderLineId) ||
                other.salesReturnOrderLineId == salesReturnOrderLineId) &&
            (identical(other.isInvoiced, isInvoiced) ||
                other.isInvoiced == isInvoiced) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.taxableAmount, taxableAmount) ||
                other.taxableAmount == taxableAmount) &&
            (identical(other.sellingPriceTotal, sellingPriceTotal) ||
                other.sellingPriceTotal == sellingPriceTotal) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.warrentyPrice, warrentyPrice) ||
                other.warrentyPrice == warrentyPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        quantity,
        barcode,
        discount,
        vat,
        variantId,
        inventoryId,
        invoiceLineId,
        salesReturnOrderLineCode,
        invoiceReturnLineCode,
        stockId,
        warrantyId,
        salesUOM,
        discountType,
        returnType,
        returnTime,
        totalQty,
        salesReturnOrderLineId,
        isInvoiced,
        unitCost,
        excessTax,
        taxableAmount,
        sellingPriceTotal,
        totalPrice,
        warrentyPrice
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalesReturnLinesOrderLinesCopyWith<_$_SalesReturnLinesOrderLines>
      get copyWith => __$$_SalesReturnLinesOrderLinesCopyWithImpl<
          _$_SalesReturnLinesOrderLines>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesReturnLinesOrderLinesToJson(
      this,
    );
  }
}

abstract class _SalesReturnLinesOrderLines
    implements SalesReturnLinesOrderLines {
  const factory _SalesReturnLinesOrderLines(
      {final int? id,
      final int? quantity,
      final String? barcode,
      final double? discount,
      final double? vat,
      @JsonKey(name: "variant_id")
          final String? variantId,
      @JsonKey(name: "inventory_id")
          final String? inventoryId,
      @JsonKey(name: "invoice_line_id")
          final String? invoiceLineId,
      @JsonKey(name: "sales_return_order_line_code")
          final String? salesReturnOrderLineCode,
      @JsonKey(name: "invoice_return_line_code")
          final String? invoiceReturnLineCode,
      @JsonKey(name: "stock_id")
          final String? stockId,
      @JsonKey(name: "warranty_id")
          final String? warrantyId,
      @JsonKey(name: "sales_uom")
          final String? salesUOM,
      @JsonKey(name: "discount_type")
          final String? discountType,
      @JsonKey(name: "return_type")
          final String? returnType,
      @JsonKey(name: "return_time")
          final String? returnTime,
      @JsonKey(name: "total_qty")
          final int? totalQty,
      @JsonKey(name: "sales_return_order_id")
          final int? salesReturnOrderLineId,
      @JsonKey(name: "is_invoiced", defaultValue: false)
          final bool? isInvoiced,
      @JsonKey(name: "unit_cost")
          final double? unitCost,
      @JsonKey(name: "excess_tax")
          final double? excessTax,
      @JsonKey(name: "taxable_amount")
          final double? taxableAmount,
      @JsonKey(name: "selling_price")
          final double? sellingPriceTotal,
      @JsonKey(name: "total_price")
          final double? totalPrice,
      @JsonKey(name: "warranty_price")
          final double? warrentyPrice}) = _$_SalesReturnLinesOrderLines;

  factory _SalesReturnLinesOrderLines.fromJson(Map<String, dynamic> json) =
      _$_SalesReturnLinesOrderLines.fromJson;

  @override
  int? get id;
  @override
  int? get quantity;
  @override
  String? get barcode;
  @override
  double? get discount;
  @override
  double? get vat;
  @override
  @JsonKey(name: "variant_id")
  String? get variantId;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "invoice_line_id")
  String? get invoiceLineId;
  @override
  @JsonKey(name: "sales_return_order_line_code")
  String? get salesReturnOrderLineCode;
  @override
  @JsonKey(name: "invoice_return_line_code")
  String? get invoiceReturnLineCode;
  @override
  @JsonKey(name: "stock_id")
  String? get stockId;
  @override
  @JsonKey(name: "warranty_id")
  String? get warrantyId;
  @override
  @JsonKey(name: "sales_uom")
  String? get salesUOM;
  @override
  @JsonKey(name: "discount_type")
  String? get discountType;
  @override
  @JsonKey(name: "return_type")
  String? get returnType;
  @override
  @JsonKey(name: "return_time")
  String? get returnTime;
  @override
  @JsonKey(name: "total_qty")
  int? get totalQty;
  @override
  @JsonKey(name: "sales_return_order_id")
  int? get salesReturnOrderLineId;
  @override
  @JsonKey(name: "is_invoiced", defaultValue: false)
  bool? get isInvoiced;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax;
  @override
  @JsonKey(name: "taxable_amount")
  double? get taxableAmount;
  @override
  @JsonKey(name: "selling_price")
  double? get sellingPriceTotal;
  @override
  @JsonKey(name: "total_price")
  double? get totalPrice;
  @override
  @JsonKey(name: "warranty_price")
  double? get warrentyPrice;
  @override
  @JsonKey(ignore: true)
  _$$_SalesReturnLinesOrderLinesCopyWith<_$_SalesReturnLinesOrderLines>
      get copyWith => throw _privateConstructorUsedError;
}

InvoicedDatasSalesReturn _$InvoicedDatasSalesReturnFromJson(
    Map<String, dynamic> json) {
  return _InvoicedDatasSalesReturn.fromJson(json);
}

/// @nodoc
mixin _$InvoicedDatasSalesReturn {
  int? get id => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_return_order_code")
  String? get salesReturnOrderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_return_invoice_code")
  String? get salesReturnInvoiceCode => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id")
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_trn_number")
  String? get customerTrnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiced_by")
  String? get invoicedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "created_date")
  String? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method")
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_code")
  String? get paymentCode => throw _privateConstructorUsedError;
  @JsonKey(name: "assigned_to")
  String? get assignedTo => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "taxable_amount")
  double? get taxableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price_total")
  double? get sellingPriceTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  double? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_price")
  double? get warrentyPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_lines")
  List<SalesReturnLinesOrderLines>? get lines =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoicedDatasSalesReturnCopyWith<InvoicedDatasSalesReturn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoicedDatasSalesReturnCopyWith<$Res> {
  factory $InvoicedDatasSalesReturnCopyWith(InvoicedDatasSalesReturn value,
          $Res Function(InvoicedDatasSalesReturn) then) =
      _$InvoicedDatasSalesReturnCopyWithImpl<$Res, InvoicedDatasSalesReturn>;
  @useResult
  $Res call(
      {int? id,
      int? quantity,
      String? barcode,
      String? notes,
      String? remarks,
      double? discount,
      double? vat,
      @JsonKey(name: "sales_return_order_code")
          String? salesReturnOrderCode,
      @JsonKey(name: "sales_return_invoice_code")
          String? salesReturnInvoiceCode,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "customer_id")
          String? customerId,
      @JsonKey(name: "customer_trn_number")
          String? customerTrnNumber,
      @JsonKey(name: "invoiced_by")
          String? invoicedBy,
      @JsonKey(name: "created_date")
          String? createdDate,
      @JsonKey(name: "invoice_status")
          String? invoiceStatus,
      @JsonKey(name: "payment_method")
          String? paymentMethod,
      @JsonKey(name: "payment_status")
          String? paymentStatus,
      @JsonKey(name: "payment_code")
          String? paymentCode,
      @JsonKey(name: "assigned_to")
          String? assignedTo,
      @JsonKey(name: "excess_tax")
          double? excessTax,
      @JsonKey(name: "unit_cost")
          double? unitCost,
      @JsonKey(name: "taxable_amount")
          double? taxableAmount,
      @JsonKey(name: "selling_price_total")
          double? sellingPriceTotal,
      @JsonKey(name: "total_price")
          double? totalPrice,
      @JsonKey(name: "warranty_price")
          double? warrentyPrice,
      @JsonKey(name: "invoice_lines")
          List<SalesReturnLinesOrderLines>? lines});
}

/// @nodoc
class _$InvoicedDatasSalesReturnCopyWithImpl<$Res,
        $Val extends InvoicedDatasSalesReturn>
    implements $InvoicedDatasSalesReturnCopyWith<$Res> {
  _$InvoicedDatasSalesReturnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? barcode = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? salesReturnOrderCode = freezed,
    Object? salesReturnInvoiceCode = freezed,
    Object? inventoryId = freezed,
    Object? customerId = freezed,
    Object? customerTrnNumber = freezed,
    Object? invoicedBy = freezed,
    Object? createdDate = freezed,
    Object? invoiceStatus = freezed,
    Object? paymentMethod = freezed,
    Object? paymentStatus = freezed,
    Object? paymentCode = freezed,
    Object? assignedTo = freezed,
    Object? excessTax = freezed,
    Object? unitCost = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? warrentyPrice = freezed,
    Object? lines = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      salesReturnOrderCode: freezed == salesReturnOrderCode
          ? _value.salesReturnOrderCode
          : salesReturnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesReturnInvoiceCode: freezed == salesReturnInvoiceCode
          ? _value.salesReturnInvoiceCode
          : salesReturnInvoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerTrnNumber: freezed == customerTrnNumber
          ? _value.customerTrnNumber
          : customerTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: freezed == invoicedBy
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: freezed == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCode: freezed == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedTo: freezed == assignedTo
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as String?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      taxableAmount: freezed == taxableAmount
          ? _value.taxableAmount
          : taxableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPriceTotal: freezed == sellingPriceTotal
          ? _value.sellingPriceTotal
          : sellingPriceTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      warrentyPrice: freezed == warrentyPrice
          ? _value.warrentyPrice
          : warrentyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      lines: freezed == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<SalesReturnLinesOrderLines>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvoicedDatasSalesReturnCopyWith<$Res>
    implements $InvoicedDatasSalesReturnCopyWith<$Res> {
  factory _$$_InvoicedDatasSalesReturnCopyWith(
          _$_InvoicedDatasSalesReturn value,
          $Res Function(_$_InvoicedDatasSalesReturn) then) =
      __$$_InvoicedDatasSalesReturnCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? quantity,
      String? barcode,
      String? notes,
      String? remarks,
      double? discount,
      double? vat,
      @JsonKey(name: "sales_return_order_code")
          String? salesReturnOrderCode,
      @JsonKey(name: "sales_return_invoice_code")
          String? salesReturnInvoiceCode,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "customer_id")
          String? customerId,
      @JsonKey(name: "customer_trn_number")
          String? customerTrnNumber,
      @JsonKey(name: "invoiced_by")
          String? invoicedBy,
      @JsonKey(name: "created_date")
          String? createdDate,
      @JsonKey(name: "invoice_status")
          String? invoiceStatus,
      @JsonKey(name: "payment_method")
          String? paymentMethod,
      @JsonKey(name: "payment_status")
          String? paymentStatus,
      @JsonKey(name: "payment_code")
          String? paymentCode,
      @JsonKey(name: "assigned_to")
          String? assignedTo,
      @JsonKey(name: "excess_tax")
          double? excessTax,
      @JsonKey(name: "unit_cost")
          double? unitCost,
      @JsonKey(name: "taxable_amount")
          double? taxableAmount,
      @JsonKey(name: "selling_price_total")
          double? sellingPriceTotal,
      @JsonKey(name: "total_price")
          double? totalPrice,
      @JsonKey(name: "warranty_price")
          double? warrentyPrice,
      @JsonKey(name: "invoice_lines")
          List<SalesReturnLinesOrderLines>? lines});
}

/// @nodoc
class __$$_InvoicedDatasSalesReturnCopyWithImpl<$Res>
    extends _$InvoicedDatasSalesReturnCopyWithImpl<$Res,
        _$_InvoicedDatasSalesReturn>
    implements _$$_InvoicedDatasSalesReturnCopyWith<$Res> {
  __$$_InvoicedDatasSalesReturnCopyWithImpl(_$_InvoicedDatasSalesReturn _value,
      $Res Function(_$_InvoicedDatasSalesReturn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? barcode = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? salesReturnOrderCode = freezed,
    Object? salesReturnInvoiceCode = freezed,
    Object? inventoryId = freezed,
    Object? customerId = freezed,
    Object? customerTrnNumber = freezed,
    Object? invoicedBy = freezed,
    Object? createdDate = freezed,
    Object? invoiceStatus = freezed,
    Object? paymentMethod = freezed,
    Object? paymentStatus = freezed,
    Object? paymentCode = freezed,
    Object? assignedTo = freezed,
    Object? excessTax = freezed,
    Object? unitCost = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? warrentyPrice = freezed,
    Object? lines = freezed,
  }) {
    return _then(_$_InvoicedDatasSalesReturn(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      salesReturnOrderCode: freezed == salesReturnOrderCode
          ? _value.salesReturnOrderCode
          : salesReturnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesReturnInvoiceCode: freezed == salesReturnInvoiceCode
          ? _value.salesReturnInvoiceCode
          : salesReturnInvoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerTrnNumber: freezed == customerTrnNumber
          ? _value.customerTrnNumber
          : customerTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: freezed == invoicedBy
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: freezed == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCode: freezed == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedTo: freezed == assignedTo
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as String?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      taxableAmount: freezed == taxableAmount
          ? _value.taxableAmount
          : taxableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPriceTotal: freezed == sellingPriceTotal
          ? _value.sellingPriceTotal
          : sellingPriceTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      warrentyPrice: freezed == warrentyPrice
          ? _value.warrentyPrice
          : warrentyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      lines: freezed == lines
          ? _value._lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<SalesReturnLinesOrderLines>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvoicedDatasSalesReturn implements _InvoicedDatasSalesReturn {
  const _$_InvoicedDatasSalesReturn(
      {this.id,
      this.quantity,
      this.barcode,
      this.notes,
      this.remarks,
      this.discount,
      this.vat,
      @JsonKey(name: "sales_return_order_code")
          this.salesReturnOrderCode,
      @JsonKey(name: "sales_return_invoice_code")
          this.salesReturnInvoiceCode,
      @JsonKey(name: "inventory_id")
          this.inventoryId,
      @JsonKey(name: "customer_id")
          this.customerId,
      @JsonKey(name: "customer_trn_number")
          this.customerTrnNumber,
      @JsonKey(name: "invoiced_by")
          this.invoicedBy,
      @JsonKey(name: "created_date")
          this.createdDate,
      @JsonKey(name: "invoice_status")
          this.invoiceStatus,
      @JsonKey(name: "payment_method")
          this.paymentMethod,
      @JsonKey(name: "payment_status")
          this.paymentStatus,
      @JsonKey(name: "payment_code")
          this.paymentCode,
      @JsonKey(name: "assigned_to")
          this.assignedTo,
      @JsonKey(name: "excess_tax")
          this.excessTax,
      @JsonKey(name: "unit_cost")
          this.unitCost,
      @JsonKey(name: "taxable_amount")
          this.taxableAmount,
      @JsonKey(name: "selling_price_total")
          this.sellingPriceTotal,
      @JsonKey(name: "total_price")
          this.totalPrice,
      @JsonKey(name: "warranty_price")
          this.warrentyPrice,
      @JsonKey(name: "invoice_lines")
          final List<SalesReturnLinesOrderLines>? lines})
      : _lines = lines;

  factory _$_InvoicedDatasSalesReturn.fromJson(Map<String, dynamic> json) =>
      _$$_InvoicedDatasSalesReturnFromJson(json);

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
  @JsonKey(name: "sales_return_order_code")
  final String? salesReturnOrderCode;
  @override
  @JsonKey(name: "sales_return_invoice_code")
  final String? salesReturnInvoiceCode;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "customer_id")
  final String? customerId;
  @override
  @JsonKey(name: "customer_trn_number")
  final String? customerTrnNumber;
  @override
  @JsonKey(name: "invoiced_by")
  final String? invoicedBy;
  @override
  @JsonKey(name: "created_date")
  final String? createdDate;
  @override
  @JsonKey(name: "invoice_status")
  final String? invoiceStatus;
  @override
  @JsonKey(name: "payment_method")
  final String? paymentMethod;
  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  @override
  @JsonKey(name: "payment_code")
  final String? paymentCode;
  @override
  @JsonKey(name: "assigned_to")
  final String? assignedTo;
  @override
  @JsonKey(name: "excess_tax")
  final double? excessTax;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
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
  final List<SalesReturnLinesOrderLines>? _lines;
  @override
  @JsonKey(name: "invoice_lines")
  List<SalesReturnLinesOrderLines>? get lines {
    final value = _lines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InvoicedDatasSalesReturn(id: $id, quantity: $quantity, barcode: $barcode, notes: $notes, remarks: $remarks, discount: $discount, vat: $vat, salesReturnOrderCode: $salesReturnOrderCode, salesReturnInvoiceCode: $salesReturnInvoiceCode, inventoryId: $inventoryId, customerId: $customerId, customerTrnNumber: $customerTrnNumber, invoicedBy: $invoicedBy, createdDate: $createdDate, invoiceStatus: $invoiceStatus, paymentMethod: $paymentMethod, paymentStatus: $paymentStatus, paymentCode: $paymentCode, assignedTo: $assignedTo, excessTax: $excessTax, unitCost: $unitCost, taxableAmount: $taxableAmount, sellingPriceTotal: $sellingPriceTotal, totalPrice: $totalPrice, warrentyPrice: $warrentyPrice, lines: $lines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoicedDatasSalesReturn &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.salesReturnOrderCode, salesReturnOrderCode) ||
                other.salesReturnOrderCode == salesReturnOrderCode) &&
            (identical(other.salesReturnInvoiceCode, salesReturnInvoiceCode) ||
                other.salesReturnInvoiceCode == salesReturnInvoiceCode) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.customerTrnNumber, customerTrnNumber) ||
                other.customerTrnNumber == customerTrnNumber) &&
            (identical(other.invoicedBy, invoicedBy) ||
                other.invoicedBy == invoicedBy) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.invoiceStatus, invoiceStatus) ||
                other.invoiceStatus == invoiceStatus) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.paymentCode, paymentCode) ||
                other.paymentCode == paymentCode) &&
            (identical(other.assignedTo, assignedTo) ||
                other.assignedTo == assignedTo) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.taxableAmount, taxableAmount) ||
                other.taxableAmount == taxableAmount) &&
            (identical(other.sellingPriceTotal, sellingPriceTotal) ||
                other.sellingPriceTotal == sellingPriceTotal) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.warrentyPrice, warrentyPrice) ||
                other.warrentyPrice == warrentyPrice) &&
            const DeepCollectionEquality().equals(other._lines, _lines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        quantity,
        barcode,
        notes,
        remarks,
        discount,
        vat,
        salesReturnOrderCode,
        salesReturnInvoiceCode,
        inventoryId,
        customerId,
        customerTrnNumber,
        invoicedBy,
        createdDate,
        invoiceStatus,
        paymentMethod,
        paymentStatus,
        paymentCode,
        assignedTo,
        excessTax,
        unitCost,
        taxableAmount,
        sellingPriceTotal,
        totalPrice,
        warrentyPrice,
        const DeepCollectionEquality().hash(_lines)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoicedDatasSalesReturnCopyWith<_$_InvoicedDatasSalesReturn>
      get copyWith => __$$_InvoicedDatasSalesReturnCopyWithImpl<
          _$_InvoicedDatasSalesReturn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoicedDatasSalesReturnToJson(
      this,
    );
  }
}

abstract class _InvoicedDatasSalesReturn implements InvoicedDatasSalesReturn {
  const factory _InvoicedDatasSalesReturn(
          {final int? id,
          final int? quantity,
          final String? barcode,
          final String? notes,
          final String? remarks,
          final double? discount,
          final double? vat,
          @JsonKey(name: "sales_return_order_code")
              final String? salesReturnOrderCode,
          @JsonKey(name: "sales_return_invoice_code")
              final String? salesReturnInvoiceCode,
          @JsonKey(name: "inventory_id")
              final String? inventoryId,
          @JsonKey(name: "customer_id")
              final String? customerId,
          @JsonKey(name: "customer_trn_number")
              final String? customerTrnNumber,
          @JsonKey(name: "invoiced_by")
              final String? invoicedBy,
          @JsonKey(name: "created_date")
              final String? createdDate,
          @JsonKey(name: "invoice_status")
              final String? invoiceStatus,
          @JsonKey(name: "payment_method")
              final String? paymentMethod,
          @JsonKey(name: "payment_status")
              final String? paymentStatus,
          @JsonKey(name: "payment_code")
              final String? paymentCode,
          @JsonKey(name: "assigned_to")
              final String? assignedTo,
          @JsonKey(name: "excess_tax")
              final double? excessTax,
          @JsonKey(name: "unit_cost")
              final double? unitCost,
          @JsonKey(name: "taxable_amount")
              final double? taxableAmount,
          @JsonKey(name: "selling_price_total")
              final double? sellingPriceTotal,
          @JsonKey(name: "total_price")
              final double? totalPrice,
          @JsonKey(name: "warranty_price")
              final double? warrentyPrice,
          @JsonKey(name: "invoice_lines")
              final List<SalesReturnLinesOrderLines>? lines}) =
      _$_InvoicedDatasSalesReturn;

  factory _InvoicedDatasSalesReturn.fromJson(Map<String, dynamic> json) =
      _$_InvoicedDatasSalesReturn.fromJson;

  @override
  int? get id;
  @override
  int? get quantity;
  @override
  String? get barcode;
  @override
  String? get notes;
  @override
  String? get remarks;
  @override
  double? get discount;
  @override
  double? get vat;
  @override
  @JsonKey(name: "sales_return_order_code")
  String? get salesReturnOrderCode;
  @override
  @JsonKey(name: "sales_return_invoice_code")
  String? get salesReturnInvoiceCode;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "customer_id")
  String? get customerId;
  @override
  @JsonKey(name: "customer_trn_number")
  String? get customerTrnNumber;
  @override
  @JsonKey(name: "invoiced_by")
  String? get invoicedBy;
  @override
  @JsonKey(name: "created_date")
  String? get createdDate;
  @override
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus;
  @override
  @JsonKey(name: "payment_method")
  String? get paymentMethod;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus;
  @override
  @JsonKey(name: "payment_code")
  String? get paymentCode;
  @override
  @JsonKey(name: "assigned_to")
  String? get assignedTo;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "taxable_amount")
  double? get taxableAmount;
  @override
  @JsonKey(name: "selling_price_total")
  double? get sellingPriceTotal;
  @override
  @JsonKey(name: "total_price")
  double? get totalPrice;
  @override
  @JsonKey(name: "warranty_price")
  double? get warrentyPrice;
  @override
  @JsonKey(name: "invoice_lines")
  List<SalesReturnLinesOrderLines>? get lines;
  @override
  @JsonKey(ignore: true)
  _$$_InvoicedDatasSalesReturnCopyWith<_$_InvoicedDatasSalesReturn>
      get copyWith => throw _privateConstructorUsedError;
}
