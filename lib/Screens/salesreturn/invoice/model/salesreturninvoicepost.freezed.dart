// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'salesreturninvoicepost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesReturnInvoicePostModel2 _$SalesReturnInvoicePostModel2FromJson(
    Map<String, dynamic> json) {
  return _SalesReturnInvoicePostModel2.fromJson(json);
}

/// @nodoc
class _$SalesReturnInvoicePostModel2TearOff {
  const _$SalesReturnInvoicePostModel2TearOff();

  _SalesReturnInvoicePostModel2 call(
      {double? discount,
      double? vat,
      String? reason,
      String? remarks,
      String? notes,
      @JsonKey(name: "sales_return_order_code")
          String? salesReturnOrderCode,
      @JsonKey(name: "inventory_id")
          String? inventoryid,
      @JsonKey(name: "customer_id")
          String? customerId,
      @JsonKey(name: "customer_trn_number")
          String? customerTrnNumber,
      @JsonKey(name: "invoiced_by")
          String? inVoicedBy,
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
      @JsonKey(name: "assigned_to")
          String? assignTo,
      @JsonKey(name: "invoice_lines")
          List<SalesReturnLinesOrderLines>? orderLines}) {
    return _SalesReturnInvoicePostModel2(
      discount: discount,
      vat: vat,
      reason: reason,
      remarks: remarks,
      notes: notes,
      salesReturnOrderCode: salesReturnOrderCode,
      inventoryid: inventoryid,
      customerId: customerId,
      customerTrnNumber: customerTrnNumber,
      inVoicedBy: inVoicedBy,
      unitCost: unitCost,
      excessTax: excessTax,
      taxableAmount: taxableAmount,
      sellingPriceTotal: sellingPriceTotal,
      totalPrice: totalPrice,
      assignTo: assignTo,
      orderLines: orderLines,
    );
  }

  SalesReturnInvoicePostModel2 fromJson(Map<String, Object> json) {
    return SalesReturnInvoicePostModel2.fromJson(json);
  }
}

/// @nodoc
const $SalesReturnInvoicePostModel2 = _$SalesReturnInvoicePostModel2TearOff();

/// @nodoc
mixin _$SalesReturnInvoicePostModel2 {
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_return_order_code")
  String? get salesReturnOrderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryid => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id")
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_trn_number")
  String? get customerTrnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiced_by")
  String? get inVoicedBy => throw _privateConstructorUsedError;
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
  @JsonKey(name: "assigned_to")
  String? get assignTo => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_lines")
  List<SalesReturnLinesOrderLines>? get orderLines =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesReturnInvoicePostModel2CopyWith<SalesReturnInvoicePostModel2>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesReturnInvoicePostModel2CopyWith<$Res> {
  factory $SalesReturnInvoicePostModel2CopyWith(
          SalesReturnInvoicePostModel2 value,
          $Res Function(SalesReturnInvoicePostModel2) then) =
      _$SalesReturnInvoicePostModel2CopyWithImpl<$Res>;
  $Res call(
      {double? discount,
      double? vat,
      String? reason,
      String? remarks,
      String? notes,
      @JsonKey(name: "sales_return_order_code")
          String? salesReturnOrderCode,
      @JsonKey(name: "inventory_id")
          String? inventoryid,
      @JsonKey(name: "customer_id")
          String? customerId,
      @JsonKey(name: "customer_trn_number")
          String? customerTrnNumber,
      @JsonKey(name: "invoiced_by")
          String? inVoicedBy,
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
      @JsonKey(name: "assigned_to")
          String? assignTo,
      @JsonKey(name: "invoice_lines")
          List<SalesReturnLinesOrderLines>? orderLines});
}

/// @nodoc
class _$SalesReturnInvoicePostModel2CopyWithImpl<$Res>
    implements $SalesReturnInvoicePostModel2CopyWith<$Res> {
  _$SalesReturnInvoicePostModel2CopyWithImpl(this._value, this._then);

  final SalesReturnInvoicePostModel2 _value;
  // ignore: unused_field
  final $Res Function(SalesReturnInvoicePostModel2) _then;

  @override
  $Res call({
    Object? discount = freezed,
    Object? vat = freezed,
    Object? reason = freezed,
    Object? remarks = freezed,
    Object? notes = freezed,
    Object? salesReturnOrderCode = freezed,
    Object? inventoryid = freezed,
    Object? customerId = freezed,
    Object? customerTrnNumber = freezed,
    Object? inVoicedBy = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? assignTo = freezed,
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
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      salesReturnOrderCode: salesReturnOrderCode == freezed
          ? _value.salesReturnOrderCode
          : salesReturnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryid: inventoryid == freezed
          ? _value.inventoryid
          : inventoryid // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerTrnNumber: customerTrnNumber == freezed
          ? _value.customerTrnNumber
          : customerTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      inVoicedBy: inVoicedBy == freezed
          ? _value.inVoicedBy
          : inVoicedBy // ignore: cast_nullable_to_non_nullable
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
      assignTo: assignTo == freezed
          ? _value.assignTo
          : assignTo // ignore: cast_nullable_to_non_nullable
              as String?,
      orderLines: orderLines == freezed
          ? _value.orderLines
          : orderLines // ignore: cast_nullable_to_non_nullable
              as List<SalesReturnLinesOrderLines>?,
    ));
  }
}

/// @nodoc
abstract class _$SalesReturnInvoicePostModel2CopyWith<$Res>
    implements $SalesReturnInvoicePostModel2CopyWith<$Res> {
  factory _$SalesReturnInvoicePostModel2CopyWith(
          _SalesReturnInvoicePostModel2 value,
          $Res Function(_SalesReturnInvoicePostModel2) then) =
      __$SalesReturnInvoicePostModel2CopyWithImpl<$Res>;
  @override
  $Res call(
      {double? discount,
      double? vat,
      String? reason,
      String? remarks,
      String? notes,
      @JsonKey(name: "sales_return_order_code")
          String? salesReturnOrderCode,
      @JsonKey(name: "inventory_id")
          String? inventoryid,
      @JsonKey(name: "customer_id")
          String? customerId,
      @JsonKey(name: "customer_trn_number")
          String? customerTrnNumber,
      @JsonKey(name: "invoiced_by")
          String? inVoicedBy,
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
      @JsonKey(name: "assigned_to")
          String? assignTo,
      @JsonKey(name: "invoice_lines")
          List<SalesReturnLinesOrderLines>? orderLines});
}

/// @nodoc
class __$SalesReturnInvoicePostModel2CopyWithImpl<$Res>
    extends _$SalesReturnInvoicePostModel2CopyWithImpl<$Res>
    implements _$SalesReturnInvoicePostModel2CopyWith<$Res> {
  __$SalesReturnInvoicePostModel2CopyWithImpl(
      _SalesReturnInvoicePostModel2 _value,
      $Res Function(_SalesReturnInvoicePostModel2) _then)
      : super(_value, (v) => _then(v as _SalesReturnInvoicePostModel2));

  @override
  _SalesReturnInvoicePostModel2 get _value =>
      super._value as _SalesReturnInvoicePostModel2;

  @override
  $Res call({
    Object? discount = freezed,
    Object? vat = freezed,
    Object? reason = freezed,
    Object? remarks = freezed,
    Object? notes = freezed,
    Object? salesReturnOrderCode = freezed,
    Object? inventoryid = freezed,
    Object? customerId = freezed,
    Object? customerTrnNumber = freezed,
    Object? inVoicedBy = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? assignTo = freezed,
    Object? orderLines = freezed,
  }) {
    return _then(_SalesReturnInvoicePostModel2(
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
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      salesReturnOrderCode: salesReturnOrderCode == freezed
          ? _value.salesReturnOrderCode
          : salesReturnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryid: inventoryid == freezed
          ? _value.inventoryid
          : inventoryid // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerTrnNumber: customerTrnNumber == freezed
          ? _value.customerTrnNumber
          : customerTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      inVoicedBy: inVoicedBy == freezed
          ? _value.inVoicedBy
          : inVoicedBy // ignore: cast_nullable_to_non_nullable
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
      assignTo: assignTo == freezed
          ? _value.assignTo
          : assignTo // ignore: cast_nullable_to_non_nullable
              as String?,
      orderLines: orderLines == freezed
          ? _value.orderLines
          : orderLines // ignore: cast_nullable_to_non_nullable
              as List<SalesReturnLinesOrderLines>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesReturnInvoicePostModel2 implements _SalesReturnInvoicePostModel2 {
  const _$_SalesReturnInvoicePostModel2(
      {this.discount,
      this.vat,
      this.reason,
      this.remarks,
      this.notes,
      @JsonKey(name: "sales_return_order_code") this.salesReturnOrderCode,
      @JsonKey(name: "inventory_id") this.inventoryid,
      @JsonKey(name: "customer_id") this.customerId,
      @JsonKey(name: "customer_trn_number") this.customerTrnNumber,
      @JsonKey(name: "invoiced_by") this.inVoicedBy,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "taxable_amount") this.taxableAmount,
      @JsonKey(name: "selling_price_total") this.sellingPriceTotal,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "assigned_to") this.assignTo,
      @JsonKey(name: "invoice_lines") this.orderLines});

  factory _$_SalesReturnInvoicePostModel2.fromJson(Map<String, dynamic> json) =>
      _$$_SalesReturnInvoicePostModel2FromJson(json);

  @override
  final double? discount;
  @override
  final double? vat;
  @override
  final String? reason;
  @override
  final String? remarks;
  @override
  final String? notes;
  @override
  @JsonKey(name: "sales_return_order_code")
  final String? salesReturnOrderCode;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryid;
  @override
  @JsonKey(name: "customer_id")
  final String? customerId;
  @override
  @JsonKey(name: "customer_trn_number")
  final String? customerTrnNumber;
  @override
  @JsonKey(name: "invoiced_by")
  final String? inVoicedBy;
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
  @JsonKey(name: "assigned_to")
  final String? assignTo;
  @override
  @JsonKey(name: "invoice_lines")
  final List<SalesReturnLinesOrderLines>? orderLines;

  @override
  String toString() {
    return 'SalesReturnInvoicePostModel2(discount: $discount, vat: $vat, reason: $reason, remarks: $remarks, notes: $notes, salesReturnOrderCode: $salesReturnOrderCode, inventoryid: $inventoryid, customerId: $customerId, customerTrnNumber: $customerTrnNumber, inVoicedBy: $inVoicedBy, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, sellingPriceTotal: $sellingPriceTotal, totalPrice: $totalPrice, assignTo: $assignTo, orderLines: $orderLines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SalesReturnInvoicePostModel2 &&
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
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.salesReturnOrderCode, salesReturnOrderCode) ||
                const DeepCollectionEquality().equals(
                    other.salesReturnOrderCode, salesReturnOrderCode)) &&
            (identical(other.inventoryid, inventoryid) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryid, inventoryid)) &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality()
                    .equals(other.customerId, customerId)) &&
            (identical(other.customerTrnNumber, customerTrnNumber) ||
                const DeepCollectionEquality()
                    .equals(other.customerTrnNumber, customerTrnNumber)) &&
            (identical(other.inVoicedBy, inVoicedBy) ||
                const DeepCollectionEquality()
                    .equals(other.inVoicedBy, inVoicedBy)) &&
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
            (identical(other.assignTo, assignTo) ||
                const DeepCollectionEquality()
                    .equals(other.assignTo, assignTo)) &&
            (identical(other.orderLines, orderLines) ||
                const DeepCollectionEquality()
                    .equals(other.orderLines, orderLines)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(reason) ^
      const DeepCollectionEquality().hash(remarks) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(salesReturnOrderCode) ^
      const DeepCollectionEquality().hash(inventoryid) ^
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(customerTrnNumber) ^
      const DeepCollectionEquality().hash(inVoicedBy) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(taxableAmount) ^
      const DeepCollectionEquality().hash(sellingPriceTotal) ^
      const DeepCollectionEquality().hash(totalPrice) ^
      const DeepCollectionEquality().hash(assignTo) ^
      const DeepCollectionEquality().hash(orderLines);

  @JsonKey(ignore: true)
  @override
  _$SalesReturnInvoicePostModel2CopyWith<_SalesReturnInvoicePostModel2>
      get copyWith => __$SalesReturnInvoicePostModel2CopyWithImpl<
          _SalesReturnInvoicePostModel2>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesReturnInvoicePostModel2ToJson(this);
  }
}

abstract class _SalesReturnInvoicePostModel2
    implements SalesReturnInvoicePostModel2 {
  const factory _SalesReturnInvoicePostModel2(
          {double? discount,
          double? vat,
          String? reason,
          String? remarks,
          String? notes,
          @JsonKey(name: "sales_return_order_code")
              String? salesReturnOrderCode,
          @JsonKey(name: "inventory_id")
              String? inventoryid,
          @JsonKey(name: "customer_id")
              String? customerId,
          @JsonKey(name: "customer_trn_number")
              String? customerTrnNumber,
          @JsonKey(name: "invoiced_by")
              String? inVoicedBy,
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
          @JsonKey(name: "assigned_to")
              String? assignTo,
          @JsonKey(name: "invoice_lines")
              List<SalesReturnLinesOrderLines>? orderLines}) =
      _$_SalesReturnInvoicePostModel2;

  factory _SalesReturnInvoicePostModel2.fromJson(Map<String, dynamic> json) =
      _$_SalesReturnInvoicePostModel2.fromJson;

  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  String? get reason => throw _privateConstructorUsedError;
  @override
  String? get remarks => throw _privateConstructorUsedError;
  @override
  String? get notes => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_return_order_code")
  String? get salesReturnOrderCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "customer_id")
  String? get customerId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "customer_trn_number")
  String? get customerTrnNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoiced_by")
  String? get inVoicedBy => throw _privateConstructorUsedError;
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
  @JsonKey(name: "assigned_to")
  String? get assignTo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_lines")
  List<SalesReturnLinesOrderLines>? get orderLines =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SalesReturnInvoicePostModel2CopyWith<_SalesReturnInvoicePostModel2>
      get copyWith => throw _privateConstructorUsedError;
}
