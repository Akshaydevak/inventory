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

SalesReturnGeneralInvoiceReadModel _$SalesReturnGeneralInvoiceReadModelFromJson(
    Map<String, dynamic> json) {
  return _SalesReturnGeneralInvoiceReadModel.fromJson(json);
}

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
  @JsonKey(name: "invoice_lines")
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
      _$SalesReturnGeneralInvoiceReadModelCopyWithImpl<$Res,
          SalesReturnGeneralInvoiceReadModel>;
  @useResult
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
      @JsonKey(name: "invoice_lines") List<SalesReturnOrderLines>? lines,
      @JsonKey(name: "invoice_data") InvoicedDatas? invoicedData});

  $InvoicedDatasCopyWith<$Res>? get invoicedData;
}

/// @nodoc
class _$SalesReturnGeneralInvoiceReadModelCopyWithImpl<$Res,
        $Val extends SalesReturnGeneralInvoiceReadModel>
    implements $SalesReturnGeneralInvoiceReadModelCopyWith<$Res> {
  _$SalesReturnGeneralInvoiceReadModelCopyWithImpl(this._value, this._then);

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
      salesOrderCode: freezed == salesOrderCode
          ? _value.salesOrderCode
          : salesOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: freezed == trnNumber
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
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
      lines: freezed == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<SalesReturnOrderLines>?,
      invoicedData: freezed == invoicedData
          ? _value.invoicedData
          : invoicedData // ignore: cast_nullable_to_non_nullable
              as InvoicedDatas?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoicedDatasCopyWith<$Res>? get invoicedData {
    if (_value.invoicedData == null) {
      return null;
    }

    return $InvoicedDatasCopyWith<$Res>(_value.invoicedData!, (value) {
      return _then(_value.copyWith(invoicedData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SalesReturnGeneralInvoiceReadModelCopyWith<$Res>
    implements $SalesReturnGeneralInvoiceReadModelCopyWith<$Res> {
  factory _$$_SalesReturnGeneralInvoiceReadModelCopyWith(
          _$_SalesReturnGeneralInvoiceReadModel value,
          $Res Function(_$_SalesReturnGeneralInvoiceReadModel) then) =
      __$$_SalesReturnGeneralInvoiceReadModelCopyWithImpl<$Res>;
  @override
  @useResult
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
      @JsonKey(name: "invoice_lines") List<SalesReturnOrderLines>? lines,
      @JsonKey(name: "invoice_data") InvoicedDatas? invoicedData});

  @override
  $InvoicedDatasCopyWith<$Res>? get invoicedData;
}

/// @nodoc
class __$$_SalesReturnGeneralInvoiceReadModelCopyWithImpl<$Res>
    extends _$SalesReturnGeneralInvoiceReadModelCopyWithImpl<$Res,
        _$_SalesReturnGeneralInvoiceReadModel>
    implements _$$_SalesReturnGeneralInvoiceReadModelCopyWith<$Res> {
  __$$_SalesReturnGeneralInvoiceReadModelCopyWithImpl(
      _$_SalesReturnGeneralInvoiceReadModel _value,
      $Res Function(_$_SalesReturnGeneralInvoiceReadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    return _then(_$_SalesReturnGeneralInvoiceReadModel(
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
      salesOrderCode: freezed == salesOrderCode
          ? _value.salesOrderCode
          : salesOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: freezed == trnNumber
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
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
      lines: freezed == lines
          ? _value._lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<SalesReturnOrderLines>?,
      invoicedData: freezed == invoicedData
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
      @JsonKey(name: "invoice_lines") final List<SalesReturnOrderLines>? lines,
      @JsonKey(name: "invoice_data") this.invoicedData})
      : _lines = lines;

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
  final List<SalesReturnOrderLines>? _lines;
  @override
  @JsonKey(name: "invoice_lines")
  List<SalesReturnOrderLines>? get lines {
    final value = _lines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
        (other.runtimeType == runtimeType &&
            other is _$_SalesReturnGeneralInvoiceReadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.salesOrderCode, salesOrderCode) ||
                other.salesOrderCode == salesOrderCode) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.trnNumber, trnNumber) ||
                other.trnNumber == trnNumber) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
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
            const DeepCollectionEquality().equals(other._lines, _lines) &&
            (identical(other.invoicedData, invoicedData) ||
                other.invoicedData == invoicedData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      discount,
      vat,
      salesOrderCode,
      inventoryId,
      customerId,
      trnNumber,
      paymentId,
      paymentStatus,
      orderStatus,
      unitCost,
      excessTax,
      taxableAmount,
      sellingPriceTotal,
      totalPrice,
      const DeepCollectionEquality().hash(_lines),
      invoicedData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalesReturnGeneralInvoiceReadModelCopyWith<
          _$_SalesReturnGeneralInvoiceReadModel>
      get copyWith => __$$_SalesReturnGeneralInvoiceReadModelCopyWithImpl<
          _$_SalesReturnGeneralInvoiceReadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesReturnGeneralInvoiceReadModelToJson(
      this,
    );
  }
}

abstract class _SalesReturnGeneralInvoiceReadModel
    implements SalesReturnGeneralInvoiceReadModel {
  const factory _SalesReturnGeneralInvoiceReadModel(
          {final int? id,
          final double? discount,
          final double? vat,
          @JsonKey(name: "sales_order_code")
              final String? salesOrderCode,
          @JsonKey(name: "inventory_id")
              final String? inventoryId,
          @JsonKey(name: "customer_id")
              final String? customerId,
          @JsonKey(name: "trn_number")
              final String? trnNumber,
          @JsonKey(name: "payment_id")
              final String? paymentId,
          @JsonKey(name: "payment_status")
              final String? paymentStatus,
          @JsonKey(name: "order_satus")
              final String? orderStatus,
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
          @JsonKey(name: "invoice_lines")
              final List<SalesReturnOrderLines>? lines,
          @JsonKey(name: "invoice_data")
              final InvoicedDatas? invoicedData}) =
      _$_SalesReturnGeneralInvoiceReadModel;

  factory _SalesReturnGeneralInvoiceReadModel.fromJson(
          Map<String, dynamic> json) =
      _$_SalesReturnGeneralInvoiceReadModel.fromJson;

  @override
  int? get id;
  @override
  double? get discount;
  @override
  double? get vat;
  @override
  @JsonKey(name: "sales_order_code")
  String? get salesOrderCode;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "customer_id")
  String? get customerId;
  @override
  @JsonKey(name: "trn_number")
  String? get trnNumber;
  @override
  @JsonKey(name: "payment_id")
  String? get paymentId;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus;
  @override
  @JsonKey(name: "order_satus")
  String? get orderStatus;
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
  @JsonKey(name: "invoice_lines")
  List<SalesReturnOrderLines>? get lines;
  @override
  @JsonKey(name: "invoice_data")
  InvoicedDatas? get invoicedData;
  @override
  @JsonKey(ignore: true)
  _$$_SalesReturnGeneralInvoiceReadModelCopyWith<
          _$_SalesReturnGeneralInvoiceReadModel>
      get copyWith => throw _privateConstructorUsedError;
}

OrderReturnLinesInvoice _$OrderReturnLinesInvoiceFromJson(
    Map<String, dynamic> json) {
  return _OrderReturnLinesInvoice.fromJson(json);
}

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
      _$OrderReturnLinesInvoiceCopyWithImpl<$Res, OrderReturnLinesInvoice>;
  @useResult
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
class _$OrderReturnLinesInvoiceCopyWithImpl<$Res,
        $Val extends OrderReturnLinesInvoice>
    implements $OrderReturnLinesInvoiceCopyWith<$Res> {
  _$OrderReturnLinesInvoiceCopyWithImpl(this._value, this._then);

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
      salesOrderLineCode: freezed == salesOrderLineCode
          ? _value.salesOrderLineCode
          : salesOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUom: freezed == salesUom
          ? _value.salesUom
          : salesUom // ignore: cast_nullable_to_non_nullable
              as String?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
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
      warrentyPrice: freezed == warrentyPrice
          ? _value.warrentyPrice
          : warrentyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderReturnLinesInvoiceCopyWith<$Res>
    implements $OrderReturnLinesInvoiceCopyWith<$Res> {
  factory _$$_OrderReturnLinesInvoiceCopyWith(_$_OrderReturnLinesInvoice value,
          $Res Function(_$_OrderReturnLinesInvoice) then) =
      __$$_OrderReturnLinesInvoiceCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_OrderReturnLinesInvoiceCopyWithImpl<$Res>
    extends _$OrderReturnLinesInvoiceCopyWithImpl<$Res,
        _$_OrderReturnLinesInvoice>
    implements _$$_OrderReturnLinesInvoiceCopyWith<$Res> {
  __$$_OrderReturnLinesInvoiceCopyWithImpl(_$_OrderReturnLinesInvoice _value,
      $Res Function(_$_OrderReturnLinesInvoice) _then)
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
    return _then(_$_OrderReturnLinesInvoice(
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
      salesOrderLineCode: freezed == salesOrderLineCode
          ? _value.salesOrderLineCode
          : salesOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUom: freezed == salesUom
          ? _value.salesUom
          : salesUom // ignore: cast_nullable_to_non_nullable
              as String?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
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
      warrentyPrice: freezed == warrentyPrice
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
        (other.runtimeType == runtimeType &&
            other is _$_OrderReturnLinesInvoice &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.salesOrderLineCode, salesOrderLineCode) ||
                other.salesOrderLineCode == salesOrderLineCode) &&
            (identical(other.salesUom, salesUom) ||
                other.salesUom == salesUom) &&
            (identical(other.isInvoiced, isInvoiced) ||
                other.isInvoiced == isInvoiced) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      id,
      quantity,
      barcode,
      discount,
      vat,
      variantId,
      salesOrderLineCode,
      salesUom,
      isInvoiced,
      isActive,
      discountType,
      unitCost,
      excessTax,
      taxableAmount,
      sellingPriceTotal,
      totalPrice,
      warrentyPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderReturnLinesInvoiceCopyWith<_$_OrderReturnLinesInvoice>
      get copyWith =>
          __$$_OrderReturnLinesInvoiceCopyWithImpl<_$_OrderReturnLinesInvoice>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderReturnLinesInvoiceToJson(
      this,
    );
  }
}

abstract class _OrderReturnLinesInvoice implements OrderReturnLinesInvoice {
  const factory _OrderReturnLinesInvoice(
      {final int? id,
      final int? quantity,
      final String? barcode,
      final double? discount,
      final double? vat,
      @JsonKey(name: "variant_id")
          final String? variantId,
      @JsonKey(name: "sales_order_line_code")
          final String? salesOrderLineCode,
      @JsonKey(name: "sales_uom")
          final String? salesUom,
      @JsonKey(name: "is_invoiced", defaultValue: false)
          final bool? isInvoiced,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive,
      @JsonKey(name: "discount_type")
          final String? discountType,
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
          final double? warrentyPrice}) = _$_OrderReturnLinesInvoice;

  factory _OrderReturnLinesInvoice.fromJson(Map<String, dynamic> json) =
      _$_OrderReturnLinesInvoice.fromJson;

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
  @JsonKey(name: "sales_order_line_code")
  String? get salesOrderLineCode;
  @override
  @JsonKey(name: "sales_uom")
  String? get salesUom;
  @override
  @JsonKey(name: "is_invoiced", defaultValue: false)
  bool? get isInvoiced;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "discount_type")
  String? get discountType;
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
  _$$_OrderReturnLinesInvoiceCopyWith<_$_OrderReturnLinesInvoice>
      get copyWith => throw _privateConstructorUsedError;
}

InvoicedDatas _$InvoicedDatasFromJson(Map<String, dynamic> json) {
  return _InvoicedDatas.fromJson(json);
}

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
      _$InvoicedDatasCopyWithImpl<$Res, InvoicedDatas>;
  @useResult
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
class _$InvoicedDatasCopyWithImpl<$Res, $Val extends InvoicedDatas>
    implements $InvoicedDatasCopyWith<$Res> {
  _$InvoicedDatasCopyWithImpl(this._value, this._then);

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
      slaesOrderId: freezed == slaesOrderId
          ? _value.slaesOrderId
          : slaesOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: freezed == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedTo: freezed == assignedTo
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
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
      warrentyPrice: freezed == warrentyPrice
          ? _value.warrentyPrice
          : warrentyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      lines: freezed == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<SalesReturnOrderLines>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvoicedDatasCopyWith<$Res>
    implements $InvoicedDatasCopyWith<$Res> {
  factory _$$_InvoicedDatasCopyWith(
          _$_InvoicedDatas value, $Res Function(_$_InvoicedDatas) then) =
      __$$_InvoicedDatasCopyWithImpl<$Res>;
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
class __$$_InvoicedDatasCopyWithImpl<$Res>
    extends _$InvoicedDatasCopyWithImpl<$Res, _$_InvoicedDatas>
    implements _$$_InvoicedDatasCopyWith<$Res> {
  __$$_InvoicedDatasCopyWithImpl(
      _$_InvoicedDatas _value, $Res Function(_$_InvoicedDatas) _then)
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
    return _then(_$_InvoicedDatas(
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
      slaesOrderId: freezed == slaesOrderId
          ? _value.slaesOrderId
          : slaesOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: freezed == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedTo: freezed == assignedTo
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
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
      warrentyPrice: freezed == warrentyPrice
          ? _value.warrentyPrice
          : warrentyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      lines: freezed == lines
          ? _value._lines
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
      @JsonKey(name: "invoice_lines") final List<SalesReturnOrderLines>? lines})
      : _lines = lines;

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
  final List<SalesReturnOrderLines>? _lines;
  @override
  @JsonKey(name: "invoice_lines")
  List<SalesReturnOrderLines>? get lines {
    final value = _lines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InvoicedDatas(id: $id, quantity: $quantity, barcode: $barcode, notes: $notes, remarks: $remarks, discount: $discount, vat: $vat, slaesOrderId: $slaesOrderId, invoiceCode: $invoiceCode, inventoryId: $inventoryId, createdDate: $createdDate, invoiceStatus: $invoiceStatus, assignedTo: $assignedTo, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, sellingPriceTotal: $sellingPriceTotal, totalPrice: $totalPrice, warrentyPrice: $warrentyPrice, lines: $lines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoicedDatas &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.slaesOrderId, slaesOrderId) ||
                other.slaesOrderId == slaesOrderId) &&
            (identical(other.invoiceCode, invoiceCode) ||
                other.invoiceCode == invoiceCode) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.invoiceStatus, invoiceStatus) ||
                other.invoiceStatus == invoiceStatus) &&
            (identical(other.assignedTo, assignedTo) ||
                other.assignedTo == assignedTo) &&
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
        slaesOrderId,
        invoiceCode,
        inventoryId,
        createdDate,
        invoiceStatus,
        assignedTo,
        unitCost,
        excessTax,
        taxableAmount,
        sellingPriceTotal,
        totalPrice,
        warrentyPrice,
        const DeepCollectionEquality().hash(_lines)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoicedDatasCopyWith<_$_InvoicedDatas> get copyWith =>
      __$$_InvoicedDatasCopyWithImpl<_$_InvoicedDatas>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoicedDatasToJson(
      this,
    );
  }
}

abstract class _InvoicedDatas implements InvoicedDatas {
  const factory _InvoicedDatas(
      {final int? id,
      final int? quantity,
      final String? barcode,
      final String? notes,
      final String? remarks,
      final double? discount,
      final double? vat,
      @JsonKey(name: "sales_order_id")
          final int? slaesOrderId,
      @JsonKey(name: "invoice_code")
          final String? invoiceCode,
      @JsonKey(name: "inventory_id")
          final String? inventoryId,
      @JsonKey(name: "created_date")
          final String? createdDate,
      @JsonKey(name: "invoice_status")
          final String? invoiceStatus,
      @JsonKey(name: "assigned_to")
          final String? assignedTo,
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
      @JsonKey(name: "warranty_price")
          final double? warrentyPrice,
      @JsonKey(name: "invoice_lines")
          final List<SalesReturnOrderLines>? lines}) = _$_InvoicedDatas;

  factory _InvoicedDatas.fromJson(Map<String, dynamic> json) =
      _$_InvoicedDatas.fromJson;

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
  @JsonKey(name: "sales_order_id")
  int? get slaesOrderId;
  @override
  @JsonKey(name: "invoice_code")
  String? get invoiceCode;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "created_date")
  String? get createdDate;
  @override
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus;
  @override
  @JsonKey(name: "assigned_to")
  String? get assignedTo;
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
  @JsonKey(name: "warranty_price")
  double? get warrentyPrice;
  @override
  @JsonKey(name: "invoice_lines")
  List<SalesReturnOrderLines>? get lines;
  @override
  @JsonKey(ignore: true)
  _$$_InvoicedDatasCopyWith<_$_InvoicedDatas> get copyWith =>
      throw _privateConstructorUsedError;
}
