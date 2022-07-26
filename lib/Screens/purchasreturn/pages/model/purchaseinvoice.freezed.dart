// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchaseinvoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseReturnGeneralRead _$PurchaseReturnGeneralReadFromJson(
    Map<String, dynamic> json) {
  return _PurchaseReturnGeneralRead.fromJson(json);
}

/// @nodoc
class _$PurchaseReturnGeneralReadTearOff {
  const _$PurchaseReturnGeneralReadTearOff();

  _PurchaseReturnGeneralRead call(
      {int? id,
      double? foc,
      double? discount,
      double? vat,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "vendor_id") String? vendorId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") String? vendorMailId,
      @JsonKey(name: "vendor_address") String? vendorAddress,
      @JsonKey(name: "lines") List<Liness>? lines}) {
    return _PurchaseReturnGeneralRead(
      id: id,
      foc: foc,
      discount: discount,
      vat: vat,
      invoiceCode: invoiceCode,
      orderType: orderType,
      inventoryId: inventoryId,
      vendorId: vendorId,
      unitCost: unitCost,
      grandTotal: grandTotal,
      vatableAmount: vatableAmount,
      excessTax: excessTax,
      actualCost: actualCost,
      vendorTrnNumber: vendorTrnNumber,
      vendorMailId: vendorMailId,
      vendorAddress: vendorAddress,
      lines: lines,
    );
  }

  PurchaseReturnGeneralRead fromJson(Map<String, Object> json) {
    return PurchaseReturnGeneralRead.fromJson(json);
  }
}

/// @nodoc
const $PurchaseReturnGeneralRead = _$PurchaseReturnGeneralReadTearOff();

/// @nodoc
mixin _$PurchaseReturnGeneralRead {
  int? get id => throw _privateConstructorUsedError;
  double? get foc => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_code")
  String? get invoiceCode => throw _privateConstructorUsedError;
  @JsonKey(name: "order_type")
  String? get orderType => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_id")
  String? get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_trn_number")
  String? get vendorTrnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_mail_id")
  String? get vendorMailId => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_address")
  String? get vendorAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "lines")
  List<Liness>? get lines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseReturnGeneralReadCopyWith<PurchaseReturnGeneralRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseReturnGeneralReadCopyWith<$Res> {
  factory $PurchaseReturnGeneralReadCopyWith(PurchaseReturnGeneralRead value,
          $Res Function(PurchaseReturnGeneralRead) then) =
      _$PurchaseReturnGeneralReadCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      double? foc,
      double? discount,
      double? vat,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "vendor_id") String? vendorId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") String? vendorMailId,
      @JsonKey(name: "vendor_address") String? vendorAddress,
      @JsonKey(name: "lines") List<Liness>? lines});
}

/// @nodoc
class _$PurchaseReturnGeneralReadCopyWithImpl<$Res>
    implements $PurchaseReturnGeneralReadCopyWith<$Res> {
  _$PurchaseReturnGeneralReadCopyWithImpl(this._value, this._then);

  final PurchaseReturnGeneralRead _value;
  // ignore: unused_field
  final $Res Function(PurchaseReturnGeneralRead) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? invoiceCode = freezed,
    Object? orderType = freezed,
    Object? inventoryId = freezed,
    Object? vendorId = freezed,
    Object? unitCost = freezed,
    Object? grandTotal = freezed,
    Object? vatableAmount = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? vendorTrnNumber = freezed,
    Object? vendorMailId = freezed,
    Object? vendorAddress = freezed,
    Object? lines = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceCode: invoiceCode == freezed
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: vendorId == freezed
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: vatableAmount == freezed
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      vendorTrnNumber: vendorTrnNumber == freezed
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: vendorMailId == freezed
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: vendorAddress == freezed
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: lines == freezed
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<Liness>?,
    ));
  }
}

/// @nodoc
abstract class _$PurchaseReturnGeneralReadCopyWith<$Res>
    implements $PurchaseReturnGeneralReadCopyWith<$Res> {
  factory _$PurchaseReturnGeneralReadCopyWith(_PurchaseReturnGeneralRead value,
          $Res Function(_PurchaseReturnGeneralRead) then) =
      __$PurchaseReturnGeneralReadCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      double? foc,
      double? discount,
      double? vat,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "vendor_id") String? vendorId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") String? vendorMailId,
      @JsonKey(name: "vendor_address") String? vendorAddress,
      @JsonKey(name: "lines") List<Liness>? lines});
}

/// @nodoc
class __$PurchaseReturnGeneralReadCopyWithImpl<$Res>
    extends _$PurchaseReturnGeneralReadCopyWithImpl<$Res>
    implements _$PurchaseReturnGeneralReadCopyWith<$Res> {
  __$PurchaseReturnGeneralReadCopyWithImpl(_PurchaseReturnGeneralRead _value,
      $Res Function(_PurchaseReturnGeneralRead) _then)
      : super(_value, (v) => _then(v as _PurchaseReturnGeneralRead));

  @override
  _PurchaseReturnGeneralRead get _value =>
      super._value as _PurchaseReturnGeneralRead;

  @override
  $Res call({
    Object? id = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? invoiceCode = freezed,
    Object? orderType = freezed,
    Object? inventoryId = freezed,
    Object? vendorId = freezed,
    Object? unitCost = freezed,
    Object? grandTotal = freezed,
    Object? vatableAmount = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? vendorTrnNumber = freezed,
    Object? vendorMailId = freezed,
    Object? vendorAddress = freezed,
    Object? lines = freezed,
  }) {
    return _then(_PurchaseReturnGeneralRead(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceCode: invoiceCode == freezed
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: vendorId == freezed
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: vatableAmount == freezed
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      vendorTrnNumber: vendorTrnNumber == freezed
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: vendorMailId == freezed
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: vendorAddress == freezed
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: lines == freezed
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<Liness>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseReturnGeneralRead implements _PurchaseReturnGeneralRead {
  const _$_PurchaseReturnGeneralRead(
      {this.id,
      this.foc,
      this.discount,
      this.vat,
      @JsonKey(name: "invoice_code") this.invoiceCode,
      @JsonKey(name: "order_type") this.orderType,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "vendor_id") this.vendorId,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "grand_total") this.grandTotal,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "vendor_trn_number") this.vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") this.vendorMailId,
      @JsonKey(name: "vendor_address") this.vendorAddress,
      @JsonKey(name: "lines") this.lines});

  factory _$_PurchaseReturnGeneralRead.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseReturnGeneralReadFromJson(json);

  @override
  final int? id;
  @override
  final double? foc;
  @override
  final double? discount;
  @override
  final double? vat;
  @override
  @JsonKey(name: "invoice_code")
  final String? invoiceCode;
  @override
  @JsonKey(name: "order_type")
  final String? orderType;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "vendor_id")
  final String? vendorId;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "grand_total")
  final double? grandTotal;
  @override
  @JsonKey(name: "vatable_amount")
  final double? vatableAmount;
  @override
  @JsonKey(name: "excess_tax")
  final double? excessTax;
  @override
  @JsonKey(name: "actual_cost")
  final double? actualCost;
  @override
  @JsonKey(name: "vendor_trn_number")
  final String? vendorTrnNumber;
  @override
  @JsonKey(name: "vendor_mail_id")
  final String? vendorMailId;
  @override
  @JsonKey(name: "vendor_address")
  final String? vendorAddress;
  @override
  @JsonKey(name: "lines")
  final List<Liness>? lines;

  @override
  String toString() {
    return 'PurchaseReturnGeneralRead(id: $id, foc: $foc, discount: $discount, vat: $vat, invoiceCode: $invoiceCode, orderType: $orderType, inventoryId: $inventoryId, vendorId: $vendorId, unitCost: $unitCost, grandTotal: $grandTotal, vatableAmount: $vatableAmount, excessTax: $excessTax, actualCost: $actualCost, vendorTrnNumber: $vendorTrnNumber, vendorMailId: $vendorMailId, vendorAddress: $vendorAddress, lines: $lines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PurchaseReturnGeneralRead &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.foc, foc) ||
                const DeepCollectionEquality().equals(other.foc, foc)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.invoiceCode, invoiceCode) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceCode, invoiceCode)) &&
            (identical(other.orderType, orderType) ||
                const DeepCollectionEquality()
                    .equals(other.orderType, orderType)) &&
            (identical(other.inventoryId, inventoryId) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryId, inventoryId)) &&
            (identical(other.vendorId, vendorId) ||
                const DeepCollectionEquality()
                    .equals(other.vendorId, vendorId)) &&
            (identical(other.unitCost, unitCost) ||
                const DeepCollectionEquality()
                    .equals(other.unitCost, unitCost)) &&
            (identical(other.grandTotal, grandTotal) ||
                const DeepCollectionEquality()
                    .equals(other.grandTotal, grandTotal)) &&
            (identical(other.vatableAmount, vatableAmount) ||
                const DeepCollectionEquality()
                    .equals(other.vatableAmount, vatableAmount)) &&
            (identical(other.excessTax, excessTax) ||
                const DeepCollectionEquality()
                    .equals(other.excessTax, excessTax)) &&
            (identical(other.actualCost, actualCost) ||
                const DeepCollectionEquality()
                    .equals(other.actualCost, actualCost)) &&
            (identical(other.vendorTrnNumber, vendorTrnNumber) ||
                const DeepCollectionEquality()
                    .equals(other.vendorTrnNumber, vendorTrnNumber)) &&
            (identical(other.vendorMailId, vendorMailId) ||
                const DeepCollectionEquality()
                    .equals(other.vendorMailId, vendorMailId)) &&
            (identical(other.vendorAddress, vendorAddress) ||
                const DeepCollectionEquality()
                    .equals(other.vendorAddress, vendorAddress)) &&
            (identical(other.lines, lines) ||
                const DeepCollectionEquality().equals(other.lines, lines)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(foc) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(invoiceCode) ^
      const DeepCollectionEquality().hash(orderType) ^
      const DeepCollectionEquality().hash(inventoryId) ^
      const DeepCollectionEquality().hash(vendorId) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(grandTotal) ^
      const DeepCollectionEquality().hash(vatableAmount) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(actualCost) ^
      const DeepCollectionEquality().hash(vendorTrnNumber) ^
      const DeepCollectionEquality().hash(vendorMailId) ^
      const DeepCollectionEquality().hash(vendorAddress) ^
      const DeepCollectionEquality().hash(lines);

  @JsonKey(ignore: true)
  @override
  _$PurchaseReturnGeneralReadCopyWith<_PurchaseReturnGeneralRead>
      get copyWith =>
          __$PurchaseReturnGeneralReadCopyWithImpl<_PurchaseReturnGeneralRead>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseReturnGeneralReadToJson(this);
  }
}

abstract class _PurchaseReturnGeneralRead implements PurchaseReturnGeneralRead {
  const factory _PurchaseReturnGeneralRead(
          {int? id,
          double? foc,
          double? discount,
          double? vat,
          @JsonKey(name: "invoice_code") String? invoiceCode,
          @JsonKey(name: "order_type") String? orderType,
          @JsonKey(name: "inventory_id") String? inventoryId,
          @JsonKey(name: "vendor_id") String? vendorId,
          @JsonKey(name: "unit_cost") double? unitCost,
          @JsonKey(name: "grand_total") double? grandTotal,
          @JsonKey(name: "vatable_amount") double? vatableAmount,
          @JsonKey(name: "excess_tax") double? excessTax,
          @JsonKey(name: "actual_cost") double? actualCost,
          @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
          @JsonKey(name: "vendor_mail_id") String? vendorMailId,
          @JsonKey(name: "vendor_address") String? vendorAddress,
          @JsonKey(name: "lines") List<Liness>? lines}) =
      _$_PurchaseReturnGeneralRead;

  factory _PurchaseReturnGeneralRead.fromJson(Map<String, dynamic> json) =
      _$_PurchaseReturnGeneralRead.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  double? get foc => throw _privateConstructorUsedError;
  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_code")
  String? get invoiceCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_type")
  String? get orderType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_id")
  String? get vendorId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_trn_number")
  String? get vendorTrnNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_mail_id")
  String? get vendorMailId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_address")
  String? get vendorAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "lines")
  List<Liness>? get lines => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PurchaseReturnGeneralReadCopyWith<_PurchaseReturnGeneralRead>
      get copyWith => throw _privateConstructorUsedError;
}

Liness _$LinessFromJson(Map<String, dynamic> json) {
  return _Liness.fromJson(json);
}

/// @nodoc
class _$LinessTearOff {
  const _$LinessTearOff();

  _Liness call(
      {int? id,
      double? foc,
      double? discount,
      double? vat,
      @JsonKey(name: "invoice_line_code")
          String? invoiceLineCode,
      @JsonKey(name: "purchase_invoice_line_code")
          String? purchaseInvoiceLineCode,
      @JsonKey(name: "purchase_invoice_line_id")
          String? purchaseInvoiceLineId,
      @JsonKey(name: "purchase_invoice_id")
          String? purchaseInvoiceId,
      @JsonKey(name: "return_order_line_code")
          String? returnOrderLineCode,
      @JsonKey(name: "variant_id")
          String? variantId,
      @JsonKey(name: "variant_name")
          String? variantName,
      @JsonKey(name: "vendor_reference_code")
          String? vendorRefrencecode,
      @JsonKey(name: "quantity")
          int? totalQty,
      @JsonKey(name: "unit_cost")
          double? unitCost,
      @JsonKey(name: "vatable_amount")
          double? vatableAmount,
      @JsonKey(name: "excess_tax")
          double? excessTax,
      @JsonKey(name: "actual_cost")
          double? actualCost,
      @JsonKey(name: "grand_total")
          double? grandTotal,
      @JsonKey(name: "barcode")
          String? barcode,
      @JsonKey(name: "supplier_code")
          String? supplierCode,
      @JsonKey(name: "purchase_uom")
          String? purchaseUom,
      @JsonKey(name: "is_free", defaultValue: false)
          bool? isFree,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_invoiced", defaultValue: false)
          bool? isInvoiced}) {
    return _Liness(
      id: id,
      foc: foc,
      discount: discount,
      vat: vat,
      invoiceLineCode: invoiceLineCode,
      purchaseInvoiceLineCode: purchaseInvoiceLineCode,
      purchaseInvoiceLineId: purchaseInvoiceLineId,
      purchaseInvoiceId: purchaseInvoiceId,
      returnOrderLineCode: returnOrderLineCode,
      variantId: variantId,
      variantName: variantName,
      vendorRefrencecode: vendorRefrencecode,
      totalQty: totalQty,
      unitCost: unitCost,
      vatableAmount: vatableAmount,
      excessTax: excessTax,
      actualCost: actualCost,
      grandTotal: grandTotal,
      barcode: barcode,
      supplierCode: supplierCode,
      purchaseUom: purchaseUom,
      isFree: isFree,
      isActive: isActive,
      isInvoiced: isInvoiced,
    );
  }

  Liness fromJson(Map<String, Object> json) {
    return Liness.fromJson(json);
  }
}

/// @nodoc
const $Liness = _$LinessTearOff();

/// @nodoc
mixin _$Liness {
  int? get id => throw _privateConstructorUsedError;
  double? get foc => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_line_code")
  String? get invoiceLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_invoice_line_code")
  String? get purchaseInvoiceLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_invoice_line_id")
  String? get purchaseInvoiceLineId => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_invoice_id")
  String? get purchaseInvoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "return_order_line_code")
  String? get returnOrderLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  String? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_name")
  String? get variantName => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_reference_code")
  String? get vendorRefrencecode => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get totalQty => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "barcode")
  String? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "supplier_code")
  String? get supplierCode => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_uom")
  String? get purchaseUom => throw _privateConstructorUsedError;
  @JsonKey(name: "is_free", defaultValue: false)
  bool? get isFree => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_invoiced", defaultValue: false)
  bool? get isInvoiced => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinessCopyWith<Liness> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinessCopyWith<$Res> {
  factory $LinessCopyWith(Liness value, $Res Function(Liness) then) =
      _$LinessCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      double? foc,
      double? discount,
      double? vat,
      @JsonKey(name: "invoice_line_code")
          String? invoiceLineCode,
      @JsonKey(name: "purchase_invoice_line_code")
          String? purchaseInvoiceLineCode,
      @JsonKey(name: "purchase_invoice_line_id")
          String? purchaseInvoiceLineId,
      @JsonKey(name: "purchase_invoice_id")
          String? purchaseInvoiceId,
      @JsonKey(name: "return_order_line_code")
          String? returnOrderLineCode,
      @JsonKey(name: "variant_id")
          String? variantId,
      @JsonKey(name: "variant_name")
          String? variantName,
      @JsonKey(name: "vendor_reference_code")
          String? vendorRefrencecode,
      @JsonKey(name: "quantity")
          int? totalQty,
      @JsonKey(name: "unit_cost")
          double? unitCost,
      @JsonKey(name: "vatable_amount")
          double? vatableAmount,
      @JsonKey(name: "excess_tax")
          double? excessTax,
      @JsonKey(name: "actual_cost")
          double? actualCost,
      @JsonKey(name: "grand_total")
          double? grandTotal,
      @JsonKey(name: "barcode")
          String? barcode,
      @JsonKey(name: "supplier_code")
          String? supplierCode,
      @JsonKey(name: "purchase_uom")
          String? purchaseUom,
      @JsonKey(name: "is_free", defaultValue: false)
          bool? isFree,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_invoiced", defaultValue: false)
          bool? isInvoiced});
}

/// @nodoc
class _$LinessCopyWithImpl<$Res> implements $LinessCopyWith<$Res> {
  _$LinessCopyWithImpl(this._value, this._then);

  final Liness _value;
  // ignore: unused_field
  final $Res Function(Liness) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? invoiceLineCode = freezed,
    Object? purchaseInvoiceLineCode = freezed,
    Object? purchaseInvoiceLineId = freezed,
    Object? purchaseInvoiceId = freezed,
    Object? returnOrderLineCode = freezed,
    Object? variantId = freezed,
    Object? variantName = freezed,
    Object? vendorRefrencecode = freezed,
    Object? totalQty = freezed,
    Object? unitCost = freezed,
    Object? vatableAmount = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? grandTotal = freezed,
    Object? barcode = freezed,
    Object? supplierCode = freezed,
    Object? purchaseUom = freezed,
    Object? isFree = freezed,
    Object? isActive = freezed,
    Object? isInvoiced = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceLineCode: invoiceLineCode == freezed
          ? _value.invoiceLineCode
          : invoiceLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceLineCode: purchaseInvoiceLineCode == freezed
          ? _value.purchaseInvoiceLineCode
          : purchaseInvoiceLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceLineId: purchaseInvoiceLineId == freezed
          ? _value.purchaseInvoiceLineId
          : purchaseInvoiceLineId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: purchaseInvoiceId == freezed
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderLineCode: returnOrderLineCode == freezed
          ? _value.returnOrderLineCode
          : returnOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: variantId == freezed
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: variantName == freezed
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorRefrencecode: vendorRefrencecode == freezed
          ? _value.vendorRefrencecode
          : vendorRefrencecode // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQty: totalQty == freezed
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: vatableAmount == freezed
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierCode: supplierCode == freezed
          ? _value.supplierCode
          : supplierCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUom: purchaseUom == freezed
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as String?,
      isFree: isFree == freezed
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isInvoiced: isInvoiced == freezed
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$LinessCopyWith<$Res> implements $LinessCopyWith<$Res> {
  factory _$LinessCopyWith(_Liness value, $Res Function(_Liness) then) =
      __$LinessCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      double? foc,
      double? discount,
      double? vat,
      @JsonKey(name: "invoice_line_code")
          String? invoiceLineCode,
      @JsonKey(name: "purchase_invoice_line_code")
          String? purchaseInvoiceLineCode,
      @JsonKey(name: "purchase_invoice_line_id")
          String? purchaseInvoiceLineId,
      @JsonKey(name: "purchase_invoice_id")
          String? purchaseInvoiceId,
      @JsonKey(name: "return_order_line_code")
          String? returnOrderLineCode,
      @JsonKey(name: "variant_id")
          String? variantId,
      @JsonKey(name: "variant_name")
          String? variantName,
      @JsonKey(name: "vendor_reference_code")
          String? vendorRefrencecode,
      @JsonKey(name: "quantity")
          int? totalQty,
      @JsonKey(name: "unit_cost")
          double? unitCost,
      @JsonKey(name: "vatable_amount")
          double? vatableAmount,
      @JsonKey(name: "excess_tax")
          double? excessTax,
      @JsonKey(name: "actual_cost")
          double? actualCost,
      @JsonKey(name: "grand_total")
          double? grandTotal,
      @JsonKey(name: "barcode")
          String? barcode,
      @JsonKey(name: "supplier_code")
          String? supplierCode,
      @JsonKey(name: "purchase_uom")
          String? purchaseUom,
      @JsonKey(name: "is_free", defaultValue: false)
          bool? isFree,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_invoiced", defaultValue: false)
          bool? isInvoiced});
}

/// @nodoc
class __$LinessCopyWithImpl<$Res> extends _$LinessCopyWithImpl<$Res>
    implements _$LinessCopyWith<$Res> {
  __$LinessCopyWithImpl(_Liness _value, $Res Function(_Liness) _then)
      : super(_value, (v) => _then(v as _Liness));

  @override
  _Liness get _value => super._value as _Liness;

  @override
  $Res call({
    Object? id = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? invoiceLineCode = freezed,
    Object? purchaseInvoiceLineCode = freezed,
    Object? purchaseInvoiceLineId = freezed,
    Object? purchaseInvoiceId = freezed,
    Object? returnOrderLineCode = freezed,
    Object? variantId = freezed,
    Object? variantName = freezed,
    Object? vendorRefrencecode = freezed,
    Object? totalQty = freezed,
    Object? unitCost = freezed,
    Object? vatableAmount = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? grandTotal = freezed,
    Object? barcode = freezed,
    Object? supplierCode = freezed,
    Object? purchaseUom = freezed,
    Object? isFree = freezed,
    Object? isActive = freezed,
    Object? isInvoiced = freezed,
  }) {
    return _then(_Liness(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceLineCode: invoiceLineCode == freezed
          ? _value.invoiceLineCode
          : invoiceLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceLineCode: purchaseInvoiceLineCode == freezed
          ? _value.purchaseInvoiceLineCode
          : purchaseInvoiceLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceLineId: purchaseInvoiceLineId == freezed
          ? _value.purchaseInvoiceLineId
          : purchaseInvoiceLineId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: purchaseInvoiceId == freezed
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderLineCode: returnOrderLineCode == freezed
          ? _value.returnOrderLineCode
          : returnOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: variantId == freezed
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: variantName == freezed
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorRefrencecode: vendorRefrencecode == freezed
          ? _value.vendorRefrencecode
          : vendorRefrencecode // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQty: totalQty == freezed
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: vatableAmount == freezed
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierCode: supplierCode == freezed
          ? _value.supplierCode
          : supplierCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUom: purchaseUom == freezed
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as String?,
      isFree: isFree == freezed
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isInvoiced: isInvoiced == freezed
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Liness implements _Liness {
  const _$_Liness(
      {this.id,
      this.foc,
      this.discount,
      this.vat,
      @JsonKey(name: "invoice_line_code") this.invoiceLineCode,
      @JsonKey(name: "purchase_invoice_line_code") this.purchaseInvoiceLineCode,
      @JsonKey(name: "purchase_invoice_line_id") this.purchaseInvoiceLineId,
      @JsonKey(name: "purchase_invoice_id") this.purchaseInvoiceId,
      @JsonKey(name: "return_order_line_code") this.returnOrderLineCode,
      @JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "variant_name") this.variantName,
      @JsonKey(name: "vendor_reference_code") this.vendorRefrencecode,
      @JsonKey(name: "quantity") this.totalQty,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "grand_total") this.grandTotal,
      @JsonKey(name: "barcode") this.barcode,
      @JsonKey(name: "supplier_code") this.supplierCode,
      @JsonKey(name: "purchase_uom") this.purchaseUom,
      @JsonKey(name: "is_free", defaultValue: false) this.isFree,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive,
      @JsonKey(name: "is_invoiced", defaultValue: false) this.isInvoiced});

  factory _$_Liness.fromJson(Map<String, dynamic> json) =>
      _$$_LinessFromJson(json);

  @override
  final int? id;
  @override
  final double? foc;
  @override
  final double? discount;
  @override
  final double? vat;
  @override
  @JsonKey(name: "invoice_line_code")
  final String? invoiceLineCode;
  @override
  @JsonKey(name: "purchase_invoice_line_code")
  final String? purchaseInvoiceLineCode;
  @override
  @JsonKey(name: "purchase_invoice_line_id")
  final String? purchaseInvoiceLineId;
  @override
  @JsonKey(name: "purchase_invoice_id")
  final String? purchaseInvoiceId;
  @override
  @JsonKey(name: "return_order_line_code")
  final String? returnOrderLineCode;
  @override
  @JsonKey(name: "variant_id")
  final String? variantId;
  @override
  @JsonKey(name: "variant_name")
  final String? variantName;
  @override
  @JsonKey(name: "vendor_reference_code")
  final String? vendorRefrencecode;
  @override
  @JsonKey(name: "quantity")
  final int? totalQty;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "vatable_amount")
  final double? vatableAmount;
  @override
  @JsonKey(name: "excess_tax")
  final double? excessTax;
  @override
  @JsonKey(name: "actual_cost")
  final double? actualCost;
  @override
  @JsonKey(name: "grand_total")
  final double? grandTotal;
  @override
  @JsonKey(name: "barcode")
  final String? barcode;
  @override
  @JsonKey(name: "supplier_code")
  final String? supplierCode;
  @override
  @JsonKey(name: "purchase_uom")
  final String? purchaseUom;
  @override
  @JsonKey(name: "is_free", defaultValue: false)
  final bool? isFree;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "is_invoiced", defaultValue: false)
  final bool? isInvoiced;

  @override
  String toString() {
    return 'Liness(id: $id, foc: $foc, discount: $discount, vat: $vat, invoiceLineCode: $invoiceLineCode, purchaseInvoiceLineCode: $purchaseInvoiceLineCode, purchaseInvoiceLineId: $purchaseInvoiceLineId, purchaseInvoiceId: $purchaseInvoiceId, returnOrderLineCode: $returnOrderLineCode, variantId: $variantId, variantName: $variantName, vendorRefrencecode: $vendorRefrencecode, totalQty: $totalQty, unitCost: $unitCost, vatableAmount: $vatableAmount, excessTax: $excessTax, actualCost: $actualCost, grandTotal: $grandTotal, barcode: $barcode, supplierCode: $supplierCode, purchaseUom: $purchaseUom, isFree: $isFree, isActive: $isActive, isInvoiced: $isInvoiced)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Liness &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.foc, foc) ||
                const DeepCollectionEquality().equals(other.foc, foc)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.invoiceLineCode, invoiceLineCode) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceLineCode, invoiceLineCode)) &&
            (identical(other.purchaseInvoiceLineCode, purchaseInvoiceLineCode) ||
                const DeepCollectionEquality().equals(
                    other.purchaseInvoiceLineCode, purchaseInvoiceLineCode)) &&
            (identical(other.purchaseInvoiceLineId, purchaseInvoiceLineId) ||
                const DeepCollectionEquality().equals(
                    other.purchaseInvoiceLineId, purchaseInvoiceLineId)) &&
            (identical(other.purchaseInvoiceId, purchaseInvoiceId) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseInvoiceId, purchaseInvoiceId)) &&
            (identical(other.returnOrderLineCode, returnOrderLineCode) ||
                const DeepCollectionEquality()
                    .equals(other.returnOrderLineCode, returnOrderLineCode)) &&
            (identical(other.variantId, variantId) ||
                const DeepCollectionEquality()
                    .equals(other.variantId, variantId)) &&
            (identical(other.variantName, variantName) ||
                const DeepCollectionEquality()
                    .equals(other.variantName, variantName)) &&
            (identical(other.vendorRefrencecode, vendorRefrencecode) ||
                const DeepCollectionEquality()
                    .equals(other.vendorRefrencecode, vendorRefrencecode)) &&
            (identical(other.totalQty, totalQty) ||
                const DeepCollectionEquality()
                    .equals(other.totalQty, totalQty)) &&
            (identical(other.unitCost, unitCost) ||
                const DeepCollectionEquality()
                    .equals(other.unitCost, unitCost)) &&
            (identical(other.vatableAmount, vatableAmount) ||
                const DeepCollectionEquality()
                    .equals(other.vatableAmount, vatableAmount)) &&
            (identical(other.excessTax, excessTax) ||
                const DeepCollectionEquality()
                    .equals(other.excessTax, excessTax)) &&
            (identical(other.actualCost, actualCost) ||
                const DeepCollectionEquality()
                    .equals(other.actualCost, actualCost)) &&
            (identical(other.grandTotal, grandTotal) ||
                const DeepCollectionEquality()
                    .equals(other.grandTotal, grandTotal)) &&
            (identical(other.barcode, barcode) || const DeepCollectionEquality().equals(other.barcode, barcode)) &&
            (identical(other.supplierCode, supplierCode) || const DeepCollectionEquality().equals(other.supplierCode, supplierCode)) &&
            (identical(other.purchaseUom, purchaseUom) || const DeepCollectionEquality().equals(other.purchaseUom, purchaseUom)) &&
            (identical(other.isFree, isFree) || const DeepCollectionEquality().equals(other.isFree, isFree)) &&
            (identical(other.isActive, isActive) || const DeepCollectionEquality().equals(other.isActive, isActive)) &&
            (identical(other.isInvoiced, isInvoiced) || const DeepCollectionEquality().equals(other.isInvoiced, isInvoiced)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(foc) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(invoiceLineCode) ^
      const DeepCollectionEquality().hash(purchaseInvoiceLineCode) ^
      const DeepCollectionEquality().hash(purchaseInvoiceLineId) ^
      const DeepCollectionEquality().hash(purchaseInvoiceId) ^
      const DeepCollectionEquality().hash(returnOrderLineCode) ^
      const DeepCollectionEquality().hash(variantId) ^
      const DeepCollectionEquality().hash(variantName) ^
      const DeepCollectionEquality().hash(vendorRefrencecode) ^
      const DeepCollectionEquality().hash(totalQty) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(vatableAmount) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(actualCost) ^
      const DeepCollectionEquality().hash(grandTotal) ^
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(supplierCode) ^
      const DeepCollectionEquality().hash(purchaseUom) ^
      const DeepCollectionEquality().hash(isFree) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(isInvoiced);

  @JsonKey(ignore: true)
  @override
  _$LinessCopyWith<_Liness> get copyWith =>
      __$LinessCopyWithImpl<_Liness>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinessToJson(this);
  }
}

abstract class _Liness implements Liness {
  const factory _Liness(
      {int? id,
      double? foc,
      double? discount,
      double? vat,
      @JsonKey(name: "invoice_line_code")
          String? invoiceLineCode,
      @JsonKey(name: "purchase_invoice_line_code")
          String? purchaseInvoiceLineCode,
      @JsonKey(name: "purchase_invoice_line_id")
          String? purchaseInvoiceLineId,
      @JsonKey(name: "purchase_invoice_id")
          String? purchaseInvoiceId,
      @JsonKey(name: "return_order_line_code")
          String? returnOrderLineCode,
      @JsonKey(name: "variant_id")
          String? variantId,
      @JsonKey(name: "variant_name")
          String? variantName,
      @JsonKey(name: "vendor_reference_code")
          String? vendorRefrencecode,
      @JsonKey(name: "quantity")
          int? totalQty,
      @JsonKey(name: "unit_cost")
          double? unitCost,
      @JsonKey(name: "vatable_amount")
          double? vatableAmount,
      @JsonKey(name: "excess_tax")
          double? excessTax,
      @JsonKey(name: "actual_cost")
          double? actualCost,
      @JsonKey(name: "grand_total")
          double? grandTotal,
      @JsonKey(name: "barcode")
          String? barcode,
      @JsonKey(name: "supplier_code")
          String? supplierCode,
      @JsonKey(name: "purchase_uom")
          String? purchaseUom,
      @JsonKey(name: "is_free", defaultValue: false)
          bool? isFree,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_invoiced", defaultValue: false)
          bool? isInvoiced}) = _$_Liness;

  factory _Liness.fromJson(Map<String, dynamic> json) = _$_Liness.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  double? get foc => throw _privateConstructorUsedError;
  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_line_code")
  String? get invoiceLineCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_invoice_line_code")
  String? get purchaseInvoiceLineCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_invoice_line_id")
  String? get purchaseInvoiceLineId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_invoice_id")
  String? get purchaseInvoiceId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_order_line_code")
  String? get returnOrderLineCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_id")
  String? get variantId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_name")
  String? get variantName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_reference_code")
  String? get vendorRefrencecode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "quantity")
  int? get totalQty => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "barcode")
  String? get barcode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "supplier_code")
  String? get supplierCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_uom")
  String? get purchaseUom => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_free", defaultValue: false)
  bool? get isFree => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_invoiced", defaultValue: false)
  bool? get isInvoiced => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LinessCopyWith<_Liness> get copyWith => throw _privateConstructorUsedError;
}

ReturnGeneralRead _$ReturnGeneralReadFromJson(Map<String, dynamic> json) {
  return _ReturnGeneralRead.fromJson(json);
}

/// @nodoc
class _$ReturnGeneralReadTearOff {
  const _$ReturnGeneralReadTearOff();

  _ReturnGeneralRead call(
      {int? id,
      String? note,
      String? remarks,
      double? foc,
      double? discount,
      double? vat,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "return_order_code") String? returnOrderCode,
      @JsonKey(name: "return_order_date") String? returnOrderDate,
      @JsonKey(name: "purchase_invoice_id") String? purchaseInvoiceId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "payment_code") String? paymentCode,
      @JsonKey(name: "return_order_status") String? returnOrderStatus,
      @JsonKey(name: "return_invoice_status") String? returnInvoiceStatus,
      @JsonKey(name: "vendor_code") String? vendorCode,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") String? vendorMailId,
      @JsonKey(name: "vendor_address") String? vendorAddress,
      @JsonKey(name: "edited_by") String? editedBy,
      @JsonKey(name: "order_lines") List<Liness>? lines}) {
    return _ReturnGeneralRead(
      id: id,
      note: note,
      remarks: remarks,
      foc: foc,
      discount: discount,
      vat: vat,
      invoiceCode: invoiceCode,
      orderType: orderType,
      inventoryId: inventoryId,
      returnOrderCode: returnOrderCode,
      returnOrderDate: returnOrderDate,
      purchaseInvoiceId: purchaseInvoiceId,
      paymentStatus: paymentStatus,
      paymentCode: paymentCode,
      returnOrderStatus: returnOrderStatus,
      returnInvoiceStatus: returnInvoiceStatus,
      vendorCode: vendorCode,
      unitCost: unitCost,
      grandTotal: grandTotal,
      vatableAmount: vatableAmount,
      excessTax: excessTax,
      actualCost: actualCost,
      vendorTrnNumber: vendorTrnNumber,
      vendorMailId: vendorMailId,
      vendorAddress: vendorAddress,
      editedBy: editedBy,
      lines: lines,
    );
  }

  ReturnGeneralRead fromJson(Map<String, Object> json) {
    return ReturnGeneralRead.fromJson(json);
  }
}

/// @nodoc
const $ReturnGeneralRead = _$ReturnGeneralReadTearOff();

/// @nodoc
mixin _$ReturnGeneralRead {
  int? get id => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  double? get foc => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_code")
  String? get invoiceCode => throw _privateConstructorUsedError;
  @JsonKey(name: "order_type")
  String? get orderType => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "return_order_code")
  String? get returnOrderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "return_order_date")
  String? get returnOrderDate => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_invoice_id")
  String? get purchaseInvoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_code")
  String? get paymentCode => throw _privateConstructorUsedError;
  @JsonKey(name: "return_order_status")
  String? get returnOrderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "return_invoice_status")
  String? get returnInvoiceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_code")
  String? get vendorCode => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_trn_number")
  String? get vendorTrnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_mail_id")
  String? get vendorMailId => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_address")
  String? get vendorAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "edited_by")
  String? get editedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "order_lines")
  List<Liness>? get lines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReturnGeneralReadCopyWith<ReturnGeneralRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnGeneralReadCopyWith<$Res> {
  factory $ReturnGeneralReadCopyWith(
          ReturnGeneralRead value, $Res Function(ReturnGeneralRead) then) =
      _$ReturnGeneralReadCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? note,
      String? remarks,
      double? foc,
      double? discount,
      double? vat,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "return_order_code") String? returnOrderCode,
      @JsonKey(name: "return_order_date") String? returnOrderDate,
      @JsonKey(name: "purchase_invoice_id") String? purchaseInvoiceId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "payment_code") String? paymentCode,
      @JsonKey(name: "return_order_status") String? returnOrderStatus,
      @JsonKey(name: "return_invoice_status") String? returnInvoiceStatus,
      @JsonKey(name: "vendor_code") String? vendorCode,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") String? vendorMailId,
      @JsonKey(name: "vendor_address") String? vendorAddress,
      @JsonKey(name: "edited_by") String? editedBy,
      @JsonKey(name: "order_lines") List<Liness>? lines});
}

/// @nodoc
class _$ReturnGeneralReadCopyWithImpl<$Res>
    implements $ReturnGeneralReadCopyWith<$Res> {
  _$ReturnGeneralReadCopyWithImpl(this._value, this._then);

  final ReturnGeneralRead _value;
  // ignore: unused_field
  final $Res Function(ReturnGeneralRead) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? note = freezed,
    Object? remarks = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? invoiceCode = freezed,
    Object? orderType = freezed,
    Object? inventoryId = freezed,
    Object? returnOrderCode = freezed,
    Object? returnOrderDate = freezed,
    Object? purchaseInvoiceId = freezed,
    Object? paymentStatus = freezed,
    Object? paymentCode = freezed,
    Object? returnOrderStatus = freezed,
    Object? returnInvoiceStatus = freezed,
    Object? vendorCode = freezed,
    Object? unitCost = freezed,
    Object? grandTotal = freezed,
    Object? vatableAmount = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? vendorTrnNumber = freezed,
    Object? vendorMailId = freezed,
    Object? vendorAddress = freezed,
    Object? editedBy = freezed,
    Object? lines = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceCode: invoiceCode == freezed
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderCode: returnOrderCode == freezed
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderDate: returnOrderDate == freezed
          ? _value.returnOrderDate
          : returnOrderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: purchaseInvoiceId == freezed
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCode: paymentCode == freezed
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderStatus: returnOrderStatus == freezed
          ? _value.returnOrderStatus
          : returnOrderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      returnInvoiceStatus: returnInvoiceStatus == freezed
          ? _value.returnInvoiceStatus
          : returnInvoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorCode: vendorCode == freezed
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: vatableAmount == freezed
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      vendorTrnNumber: vendorTrnNumber == freezed
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: vendorMailId == freezed
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: vendorAddress == freezed
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      editedBy: editedBy == freezed
          ? _value.editedBy
          : editedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: lines == freezed
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<Liness>?,
    ));
  }
}

/// @nodoc
abstract class _$ReturnGeneralReadCopyWith<$Res>
    implements $ReturnGeneralReadCopyWith<$Res> {
  factory _$ReturnGeneralReadCopyWith(
          _ReturnGeneralRead value, $Res Function(_ReturnGeneralRead) then) =
      __$ReturnGeneralReadCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? note,
      String? remarks,
      double? foc,
      double? discount,
      double? vat,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "return_order_code") String? returnOrderCode,
      @JsonKey(name: "return_order_date") String? returnOrderDate,
      @JsonKey(name: "purchase_invoice_id") String? purchaseInvoiceId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "payment_code") String? paymentCode,
      @JsonKey(name: "return_order_status") String? returnOrderStatus,
      @JsonKey(name: "return_invoice_status") String? returnInvoiceStatus,
      @JsonKey(name: "vendor_code") String? vendorCode,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") String? vendorMailId,
      @JsonKey(name: "vendor_address") String? vendorAddress,
      @JsonKey(name: "edited_by") String? editedBy,
      @JsonKey(name: "order_lines") List<Liness>? lines});
}

/// @nodoc
class __$ReturnGeneralReadCopyWithImpl<$Res>
    extends _$ReturnGeneralReadCopyWithImpl<$Res>
    implements _$ReturnGeneralReadCopyWith<$Res> {
  __$ReturnGeneralReadCopyWithImpl(
      _ReturnGeneralRead _value, $Res Function(_ReturnGeneralRead) _then)
      : super(_value, (v) => _then(v as _ReturnGeneralRead));

  @override
  _ReturnGeneralRead get _value => super._value as _ReturnGeneralRead;

  @override
  $Res call({
    Object? id = freezed,
    Object? note = freezed,
    Object? remarks = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? invoiceCode = freezed,
    Object? orderType = freezed,
    Object? inventoryId = freezed,
    Object? returnOrderCode = freezed,
    Object? returnOrderDate = freezed,
    Object? purchaseInvoiceId = freezed,
    Object? paymentStatus = freezed,
    Object? paymentCode = freezed,
    Object? returnOrderStatus = freezed,
    Object? returnInvoiceStatus = freezed,
    Object? vendorCode = freezed,
    Object? unitCost = freezed,
    Object? grandTotal = freezed,
    Object? vatableAmount = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? vendorTrnNumber = freezed,
    Object? vendorMailId = freezed,
    Object? vendorAddress = freezed,
    Object? editedBy = freezed,
    Object? lines = freezed,
  }) {
    return _then(_ReturnGeneralRead(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceCode: invoiceCode == freezed
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderCode: returnOrderCode == freezed
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderDate: returnOrderDate == freezed
          ? _value.returnOrderDate
          : returnOrderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: purchaseInvoiceId == freezed
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCode: paymentCode == freezed
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderStatus: returnOrderStatus == freezed
          ? _value.returnOrderStatus
          : returnOrderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      returnInvoiceStatus: returnInvoiceStatus == freezed
          ? _value.returnInvoiceStatus
          : returnInvoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorCode: vendorCode == freezed
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: vatableAmount == freezed
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      vendorTrnNumber: vendorTrnNumber == freezed
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: vendorMailId == freezed
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: vendorAddress == freezed
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      editedBy: editedBy == freezed
          ? _value.editedBy
          : editedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: lines == freezed
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<Liness>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReturnGeneralRead implements _ReturnGeneralRead {
  const _$_ReturnGeneralRead(
      {this.id,
      this.note,
      this.remarks,
      this.foc,
      this.discount,
      this.vat,
      @JsonKey(name: "invoice_code") this.invoiceCode,
      @JsonKey(name: "order_type") this.orderType,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "return_order_code") this.returnOrderCode,
      @JsonKey(name: "return_order_date") this.returnOrderDate,
      @JsonKey(name: "purchase_invoice_id") this.purchaseInvoiceId,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "payment_code") this.paymentCode,
      @JsonKey(name: "return_order_status") this.returnOrderStatus,
      @JsonKey(name: "return_invoice_status") this.returnInvoiceStatus,
      @JsonKey(name: "vendor_code") this.vendorCode,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "grand_total") this.grandTotal,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "vendor_trn_number") this.vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") this.vendorMailId,
      @JsonKey(name: "vendor_address") this.vendorAddress,
      @JsonKey(name: "edited_by") this.editedBy,
      @JsonKey(name: "order_lines") this.lines});

  factory _$_ReturnGeneralRead.fromJson(Map<String, dynamic> json) =>
      _$$_ReturnGeneralReadFromJson(json);

  @override
  final int? id;
  @override
  final String? note;
  @override
  final String? remarks;
  @override
  final double? foc;
  @override
  final double? discount;
  @override
  final double? vat;
  @override
  @JsonKey(name: "invoice_code")
  final String? invoiceCode;
  @override
  @JsonKey(name: "order_type")
  final String? orderType;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "return_order_code")
  final String? returnOrderCode;
  @override
  @JsonKey(name: "return_order_date")
  final String? returnOrderDate;
  @override
  @JsonKey(name: "purchase_invoice_id")
  final String? purchaseInvoiceId;
  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  @override
  @JsonKey(name: "payment_code")
  final String? paymentCode;
  @override
  @JsonKey(name: "return_order_status")
  final String? returnOrderStatus;
  @override
  @JsonKey(name: "return_invoice_status")
  final String? returnInvoiceStatus;
  @override
  @JsonKey(name: "vendor_code")
  final String? vendorCode;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "grand_total")
  final double? grandTotal;
  @override
  @JsonKey(name: "vatable_amount")
  final double? vatableAmount;
  @override
  @JsonKey(name: "excess_tax")
  final double? excessTax;
  @override
  @JsonKey(name: "actual_cost")
  final double? actualCost;
  @override
  @JsonKey(name: "vendor_trn_number")
  final String? vendorTrnNumber;
  @override
  @JsonKey(name: "vendor_mail_id")
  final String? vendorMailId;
  @override
  @JsonKey(name: "vendor_address")
  final String? vendorAddress;
  @override
  @JsonKey(name: "edited_by")
  final String? editedBy;
  @override
  @JsonKey(name: "order_lines")
  final List<Liness>? lines;

  @override
  String toString() {
    return 'ReturnGeneralRead(id: $id, note: $note, remarks: $remarks, foc: $foc, discount: $discount, vat: $vat, invoiceCode: $invoiceCode, orderType: $orderType, inventoryId: $inventoryId, returnOrderCode: $returnOrderCode, returnOrderDate: $returnOrderDate, purchaseInvoiceId: $purchaseInvoiceId, paymentStatus: $paymentStatus, paymentCode: $paymentCode, returnOrderStatus: $returnOrderStatus, returnInvoiceStatus: $returnInvoiceStatus, vendorCode: $vendorCode, unitCost: $unitCost, grandTotal: $grandTotal, vatableAmount: $vatableAmount, excessTax: $excessTax, actualCost: $actualCost, vendorTrnNumber: $vendorTrnNumber, vendorMailId: $vendorMailId, vendorAddress: $vendorAddress, editedBy: $editedBy, lines: $lines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReturnGeneralRead &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.remarks, remarks) ||
                const DeepCollectionEquality()
                    .equals(other.remarks, remarks)) &&
            (identical(other.foc, foc) ||
                const DeepCollectionEquality().equals(other.foc, foc)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.invoiceCode, invoiceCode) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceCode, invoiceCode)) &&
            (identical(other.orderType, orderType) ||
                const DeepCollectionEquality()
                    .equals(other.orderType, orderType)) &&
            (identical(other.inventoryId, inventoryId) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryId, inventoryId)) &&
            (identical(other.returnOrderCode, returnOrderCode) ||
                const DeepCollectionEquality()
                    .equals(other.returnOrderCode, returnOrderCode)) &&
            (identical(other.returnOrderDate, returnOrderDate) ||
                const DeepCollectionEquality()
                    .equals(other.returnOrderDate, returnOrderDate)) &&
            (identical(other.purchaseInvoiceId, purchaseInvoiceId) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseInvoiceId, purchaseInvoiceId)) &&
            (identical(other.paymentStatus, paymentStatus) ||
                const DeepCollectionEquality()
                    .equals(other.paymentStatus, paymentStatus)) &&
            (identical(other.paymentCode, paymentCode) ||
                const DeepCollectionEquality()
                    .equals(other.paymentCode, paymentCode)) &&
            (identical(other.returnOrderStatus, returnOrderStatus) ||
                const DeepCollectionEquality()
                    .equals(other.returnOrderStatus, returnOrderStatus)) &&
            (identical(other.returnInvoiceStatus, returnInvoiceStatus) ||
                const DeepCollectionEquality()
                    .equals(other.returnInvoiceStatus, returnInvoiceStatus)) &&
            (identical(other.vendorCode, vendorCode) ||
                const DeepCollectionEquality()
                    .equals(other.vendorCode, vendorCode)) &&
            (identical(other.unitCost, unitCost) ||
                const DeepCollectionEquality()
                    .equals(other.unitCost, unitCost)) &&
            (identical(other.grandTotal, grandTotal) ||
                const DeepCollectionEquality()
                    .equals(other.grandTotal, grandTotal)) &&
            (identical(other.vatableAmount, vatableAmount) ||
                const DeepCollectionEquality()
                    .equals(other.vatableAmount, vatableAmount)) &&
            (identical(other.excessTax, excessTax) ||
                const DeepCollectionEquality()
                    .equals(other.excessTax, excessTax)) &&
            (identical(other.actualCost, actualCost) ||
                const DeepCollectionEquality()
                    .equals(other.actualCost, actualCost)) &&
            (identical(other.vendorTrnNumber, vendorTrnNumber) ||
                const DeepCollectionEquality()
                    .equals(other.vendorTrnNumber, vendorTrnNumber)) &&
            (identical(other.vendorMailId, vendorMailId) ||
                const DeepCollectionEquality().equals(other.vendorMailId, vendorMailId)) &&
            (identical(other.vendorAddress, vendorAddress) || const DeepCollectionEquality().equals(other.vendorAddress, vendorAddress)) &&
            (identical(other.editedBy, editedBy) || const DeepCollectionEquality().equals(other.editedBy, editedBy)) &&
            (identical(other.lines, lines) || const DeepCollectionEquality().equals(other.lines, lines)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(remarks) ^
      const DeepCollectionEquality().hash(foc) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(invoiceCode) ^
      const DeepCollectionEquality().hash(orderType) ^
      const DeepCollectionEquality().hash(inventoryId) ^
      const DeepCollectionEquality().hash(returnOrderCode) ^
      const DeepCollectionEquality().hash(returnOrderDate) ^
      const DeepCollectionEquality().hash(purchaseInvoiceId) ^
      const DeepCollectionEquality().hash(paymentStatus) ^
      const DeepCollectionEquality().hash(paymentCode) ^
      const DeepCollectionEquality().hash(returnOrderStatus) ^
      const DeepCollectionEquality().hash(returnInvoiceStatus) ^
      const DeepCollectionEquality().hash(vendorCode) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(grandTotal) ^
      const DeepCollectionEquality().hash(vatableAmount) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(actualCost) ^
      const DeepCollectionEquality().hash(vendorTrnNumber) ^
      const DeepCollectionEquality().hash(vendorMailId) ^
      const DeepCollectionEquality().hash(vendorAddress) ^
      const DeepCollectionEquality().hash(editedBy) ^
      const DeepCollectionEquality().hash(lines);

  @JsonKey(ignore: true)
  @override
  _$ReturnGeneralReadCopyWith<_ReturnGeneralRead> get copyWith =>
      __$ReturnGeneralReadCopyWithImpl<_ReturnGeneralRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReturnGeneralReadToJson(this);
  }
}

abstract class _ReturnGeneralRead implements ReturnGeneralRead {
  const factory _ReturnGeneralRead(
          {int? id,
          String? note,
          String? remarks,
          double? foc,
          double? discount,
          double? vat,
          @JsonKey(name: "invoice_code") String? invoiceCode,
          @JsonKey(name: "order_type") String? orderType,
          @JsonKey(name: "inventory_id") String? inventoryId,
          @JsonKey(name: "return_order_code") String? returnOrderCode,
          @JsonKey(name: "return_order_date") String? returnOrderDate,
          @JsonKey(name: "purchase_invoice_id") String? purchaseInvoiceId,
          @JsonKey(name: "payment_status") String? paymentStatus,
          @JsonKey(name: "payment_code") String? paymentCode,
          @JsonKey(name: "return_order_status") String? returnOrderStatus,
          @JsonKey(name: "return_invoice_status") String? returnInvoiceStatus,
          @JsonKey(name: "vendor_code") String? vendorCode,
          @JsonKey(name: "unit_cost") double? unitCost,
          @JsonKey(name: "grand_total") double? grandTotal,
          @JsonKey(name: "vatable_amount") double? vatableAmount,
          @JsonKey(name: "excess_tax") double? excessTax,
          @JsonKey(name: "actual_cost") double? actualCost,
          @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
          @JsonKey(name: "vendor_mail_id") String? vendorMailId,
          @JsonKey(name: "vendor_address") String? vendorAddress,
          @JsonKey(name: "edited_by") String? editedBy,
          @JsonKey(name: "order_lines") List<Liness>? lines}) =
      _$_ReturnGeneralRead;

  factory _ReturnGeneralRead.fromJson(Map<String, dynamic> json) =
      _$_ReturnGeneralRead.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get note => throw _privateConstructorUsedError;
  @override
  String? get remarks => throw _privateConstructorUsedError;
  @override
  double? get foc => throw _privateConstructorUsedError;
  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_code")
  String? get invoiceCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_type")
  String? get orderType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_order_code")
  String? get returnOrderCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_order_date")
  String? get returnOrderDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_invoice_id")
  String? get purchaseInvoiceId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "payment_code")
  String? get paymentCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_order_status")
  String? get returnOrderStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_invoice_status")
  String? get returnInvoiceStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_code")
  String? get vendorCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_trn_number")
  String? get vendorTrnNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_mail_id")
  String? get vendorMailId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_address")
  String? get vendorAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "edited_by")
  String? get editedBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_lines")
  List<Liness>? get lines => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReturnGeneralReadCopyWith<_ReturnGeneralRead> get copyWith =>
      throw _privateConstructorUsedError;
}

ReturnGeneralPatchModel _$ReturnGeneralPatchModelFromJson(
    Map<String, dynamic> json) {
  return _ReturnGeneralPatchModel.fromJson(json);
}

/// @nodoc
class _$ReturnGeneralPatchModelTearOff {
  const _$ReturnGeneralPatchModelTearOff();

  _ReturnGeneralPatchModel call(
      {int? id,
      String? note,
      String? remarks,
      double? foc,
      double? discount,
      double? vat,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "return_order_code") String? returnOrderCode,
      @JsonKey(name: "return_order_date") String? returnOrderDate,
      @JsonKey(name: "purchase_invoice_id") String? purchaseInvoiceId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "payment_code") String? paymentCode,
      @JsonKey(name: "return_order_status") String? returnOrderStatus,
      @JsonKey(name: "return_invoice_status") String? returnInvoiceStatus,
      @JsonKey(name: "vendor_code") String? vendorCode,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") String? vendorMailId,
      @JsonKey(name: "vendor_address") String? vendorAddress,
      @JsonKey(name: "edited_by") String? editedBy,
      @JsonKey(name: "order_lines") List<PatchLiness>? lines}) {
    return _ReturnGeneralPatchModel(
      id: id,
      note: note,
      remarks: remarks,
      foc: foc,
      discount: discount,
      vat: vat,
      invoiceCode: invoiceCode,
      orderType: orderType,
      inventoryId: inventoryId,
      returnOrderCode: returnOrderCode,
      returnOrderDate: returnOrderDate,
      purchaseInvoiceId: purchaseInvoiceId,
      paymentStatus: paymentStatus,
      paymentCode: paymentCode,
      returnOrderStatus: returnOrderStatus,
      returnInvoiceStatus: returnInvoiceStatus,
      vendorCode: vendorCode,
      unitCost: unitCost,
      grandTotal: grandTotal,
      vatableAmount: vatableAmount,
      excessTax: excessTax,
      actualCost: actualCost,
      vendorTrnNumber: vendorTrnNumber,
      vendorMailId: vendorMailId,
      vendorAddress: vendorAddress,
      editedBy: editedBy,
      lines: lines,
    );
  }

  ReturnGeneralPatchModel fromJson(Map<String, Object> json) {
    return ReturnGeneralPatchModel.fromJson(json);
  }
}

/// @nodoc
const $ReturnGeneralPatchModel = _$ReturnGeneralPatchModelTearOff();

/// @nodoc
mixin _$ReturnGeneralPatchModel {
  int? get id => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  double? get foc => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_code")
  String? get invoiceCode => throw _privateConstructorUsedError;
  @JsonKey(name: "order_type")
  String? get orderType => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "return_order_code")
  String? get returnOrderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "return_order_date")
  String? get returnOrderDate => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_invoice_id")
  String? get purchaseInvoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_code")
  String? get paymentCode => throw _privateConstructorUsedError;
  @JsonKey(name: "return_order_status")
  String? get returnOrderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "return_invoice_status")
  String? get returnInvoiceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_code")
  String? get vendorCode => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_trn_number")
  String? get vendorTrnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_mail_id")
  String? get vendorMailId => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_address")
  String? get vendorAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "edited_by")
  String? get editedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "order_lines")
  List<PatchLiness>? get lines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReturnGeneralPatchModelCopyWith<ReturnGeneralPatchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnGeneralPatchModelCopyWith<$Res> {
  factory $ReturnGeneralPatchModelCopyWith(ReturnGeneralPatchModel value,
          $Res Function(ReturnGeneralPatchModel) then) =
      _$ReturnGeneralPatchModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? note,
      String? remarks,
      double? foc,
      double? discount,
      double? vat,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "return_order_code") String? returnOrderCode,
      @JsonKey(name: "return_order_date") String? returnOrderDate,
      @JsonKey(name: "purchase_invoice_id") String? purchaseInvoiceId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "payment_code") String? paymentCode,
      @JsonKey(name: "return_order_status") String? returnOrderStatus,
      @JsonKey(name: "return_invoice_status") String? returnInvoiceStatus,
      @JsonKey(name: "vendor_code") String? vendorCode,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") String? vendorMailId,
      @JsonKey(name: "vendor_address") String? vendorAddress,
      @JsonKey(name: "edited_by") String? editedBy,
      @JsonKey(name: "order_lines") List<PatchLiness>? lines});
}

/// @nodoc
class _$ReturnGeneralPatchModelCopyWithImpl<$Res>
    implements $ReturnGeneralPatchModelCopyWith<$Res> {
  _$ReturnGeneralPatchModelCopyWithImpl(this._value, this._then);

  final ReturnGeneralPatchModel _value;
  // ignore: unused_field
  final $Res Function(ReturnGeneralPatchModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? note = freezed,
    Object? remarks = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? invoiceCode = freezed,
    Object? orderType = freezed,
    Object? inventoryId = freezed,
    Object? returnOrderCode = freezed,
    Object? returnOrderDate = freezed,
    Object? purchaseInvoiceId = freezed,
    Object? paymentStatus = freezed,
    Object? paymentCode = freezed,
    Object? returnOrderStatus = freezed,
    Object? returnInvoiceStatus = freezed,
    Object? vendorCode = freezed,
    Object? unitCost = freezed,
    Object? grandTotal = freezed,
    Object? vatableAmount = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? vendorTrnNumber = freezed,
    Object? vendorMailId = freezed,
    Object? vendorAddress = freezed,
    Object? editedBy = freezed,
    Object? lines = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceCode: invoiceCode == freezed
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderCode: returnOrderCode == freezed
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderDate: returnOrderDate == freezed
          ? _value.returnOrderDate
          : returnOrderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: purchaseInvoiceId == freezed
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCode: paymentCode == freezed
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderStatus: returnOrderStatus == freezed
          ? _value.returnOrderStatus
          : returnOrderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      returnInvoiceStatus: returnInvoiceStatus == freezed
          ? _value.returnInvoiceStatus
          : returnInvoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorCode: vendorCode == freezed
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: vatableAmount == freezed
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      vendorTrnNumber: vendorTrnNumber == freezed
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: vendorMailId == freezed
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: vendorAddress == freezed
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      editedBy: editedBy == freezed
          ? _value.editedBy
          : editedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: lines == freezed
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<PatchLiness>?,
    ));
  }
}

/// @nodoc
abstract class _$ReturnGeneralPatchModelCopyWith<$Res>
    implements $ReturnGeneralPatchModelCopyWith<$Res> {
  factory _$ReturnGeneralPatchModelCopyWith(_ReturnGeneralPatchModel value,
          $Res Function(_ReturnGeneralPatchModel) then) =
      __$ReturnGeneralPatchModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? note,
      String? remarks,
      double? foc,
      double? discount,
      double? vat,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "return_order_code") String? returnOrderCode,
      @JsonKey(name: "return_order_date") String? returnOrderDate,
      @JsonKey(name: "purchase_invoice_id") String? purchaseInvoiceId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "payment_code") String? paymentCode,
      @JsonKey(name: "return_order_status") String? returnOrderStatus,
      @JsonKey(name: "return_invoice_status") String? returnInvoiceStatus,
      @JsonKey(name: "vendor_code") String? vendorCode,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") String? vendorMailId,
      @JsonKey(name: "vendor_address") String? vendorAddress,
      @JsonKey(name: "edited_by") String? editedBy,
      @JsonKey(name: "order_lines") List<PatchLiness>? lines});
}

/// @nodoc
class __$ReturnGeneralPatchModelCopyWithImpl<$Res>
    extends _$ReturnGeneralPatchModelCopyWithImpl<$Res>
    implements _$ReturnGeneralPatchModelCopyWith<$Res> {
  __$ReturnGeneralPatchModelCopyWithImpl(_ReturnGeneralPatchModel _value,
      $Res Function(_ReturnGeneralPatchModel) _then)
      : super(_value, (v) => _then(v as _ReturnGeneralPatchModel));

  @override
  _ReturnGeneralPatchModel get _value =>
      super._value as _ReturnGeneralPatchModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? note = freezed,
    Object? remarks = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? invoiceCode = freezed,
    Object? orderType = freezed,
    Object? inventoryId = freezed,
    Object? returnOrderCode = freezed,
    Object? returnOrderDate = freezed,
    Object? purchaseInvoiceId = freezed,
    Object? paymentStatus = freezed,
    Object? paymentCode = freezed,
    Object? returnOrderStatus = freezed,
    Object? returnInvoiceStatus = freezed,
    Object? vendorCode = freezed,
    Object? unitCost = freezed,
    Object? grandTotal = freezed,
    Object? vatableAmount = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? vendorTrnNumber = freezed,
    Object? vendorMailId = freezed,
    Object? vendorAddress = freezed,
    Object? editedBy = freezed,
    Object? lines = freezed,
  }) {
    return _then(_ReturnGeneralPatchModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceCode: invoiceCode == freezed
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderCode: returnOrderCode == freezed
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderDate: returnOrderDate == freezed
          ? _value.returnOrderDate
          : returnOrderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: purchaseInvoiceId == freezed
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCode: paymentCode == freezed
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderStatus: returnOrderStatus == freezed
          ? _value.returnOrderStatus
          : returnOrderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      returnInvoiceStatus: returnInvoiceStatus == freezed
          ? _value.returnInvoiceStatus
          : returnInvoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorCode: vendorCode == freezed
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: vatableAmount == freezed
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      vendorTrnNumber: vendorTrnNumber == freezed
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: vendorMailId == freezed
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: vendorAddress == freezed
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      editedBy: editedBy == freezed
          ? _value.editedBy
          : editedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: lines == freezed
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<PatchLiness>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReturnGeneralPatchModel implements _ReturnGeneralPatchModel {
  const _$_ReturnGeneralPatchModel(
      {this.id,
      this.note,
      this.remarks,
      this.foc,
      this.discount,
      this.vat,
      @JsonKey(name: "invoice_code") this.invoiceCode,
      @JsonKey(name: "order_type") this.orderType,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "return_order_code") this.returnOrderCode,
      @JsonKey(name: "return_order_date") this.returnOrderDate,
      @JsonKey(name: "purchase_invoice_id") this.purchaseInvoiceId,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "payment_code") this.paymentCode,
      @JsonKey(name: "return_order_status") this.returnOrderStatus,
      @JsonKey(name: "return_invoice_status") this.returnInvoiceStatus,
      @JsonKey(name: "vendor_code") this.vendorCode,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "grand_total") this.grandTotal,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "vendor_trn_number") this.vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") this.vendorMailId,
      @JsonKey(name: "vendor_address") this.vendorAddress,
      @JsonKey(name: "edited_by") this.editedBy,
      @JsonKey(name: "order_lines") this.lines});

  factory _$_ReturnGeneralPatchModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReturnGeneralPatchModelFromJson(json);

  @override
  final int? id;
  @override
  final String? note;
  @override
  final String? remarks;
  @override
  final double? foc;
  @override
  final double? discount;
  @override
  final double? vat;
  @override
  @JsonKey(name: "invoice_code")
  final String? invoiceCode;
  @override
  @JsonKey(name: "order_type")
  final String? orderType;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "return_order_code")
  final String? returnOrderCode;
  @override
  @JsonKey(name: "return_order_date")
  final String? returnOrderDate;
  @override
  @JsonKey(name: "purchase_invoice_id")
  final String? purchaseInvoiceId;
  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  @override
  @JsonKey(name: "payment_code")
  final String? paymentCode;
  @override
  @JsonKey(name: "return_order_status")
  final String? returnOrderStatus;
  @override
  @JsonKey(name: "return_invoice_status")
  final String? returnInvoiceStatus;
  @override
  @JsonKey(name: "vendor_code")
  final String? vendorCode;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "grand_total")
  final double? grandTotal;
  @override
  @JsonKey(name: "vatable_amount")
  final double? vatableAmount;
  @override
  @JsonKey(name: "excess_tax")
  final double? excessTax;
  @override
  @JsonKey(name: "actual_cost")
  final double? actualCost;
  @override
  @JsonKey(name: "vendor_trn_number")
  final String? vendorTrnNumber;
  @override
  @JsonKey(name: "vendor_mail_id")
  final String? vendorMailId;
  @override
  @JsonKey(name: "vendor_address")
  final String? vendorAddress;
  @override
  @JsonKey(name: "edited_by")
  final String? editedBy;
  @override
  @JsonKey(name: "order_lines")
  final List<PatchLiness>? lines;

  @override
  String toString() {
    return 'ReturnGeneralPatchModel(id: $id, note: $note, remarks: $remarks, foc: $foc, discount: $discount, vat: $vat, invoiceCode: $invoiceCode, orderType: $orderType, inventoryId: $inventoryId, returnOrderCode: $returnOrderCode, returnOrderDate: $returnOrderDate, purchaseInvoiceId: $purchaseInvoiceId, paymentStatus: $paymentStatus, paymentCode: $paymentCode, returnOrderStatus: $returnOrderStatus, returnInvoiceStatus: $returnInvoiceStatus, vendorCode: $vendorCode, unitCost: $unitCost, grandTotal: $grandTotal, vatableAmount: $vatableAmount, excessTax: $excessTax, actualCost: $actualCost, vendorTrnNumber: $vendorTrnNumber, vendorMailId: $vendorMailId, vendorAddress: $vendorAddress, editedBy: $editedBy, lines: $lines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReturnGeneralPatchModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.remarks, remarks) ||
                const DeepCollectionEquality()
                    .equals(other.remarks, remarks)) &&
            (identical(other.foc, foc) ||
                const DeepCollectionEquality().equals(other.foc, foc)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.invoiceCode, invoiceCode) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceCode, invoiceCode)) &&
            (identical(other.orderType, orderType) ||
                const DeepCollectionEquality()
                    .equals(other.orderType, orderType)) &&
            (identical(other.inventoryId, inventoryId) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryId, inventoryId)) &&
            (identical(other.returnOrderCode, returnOrderCode) ||
                const DeepCollectionEquality()
                    .equals(other.returnOrderCode, returnOrderCode)) &&
            (identical(other.returnOrderDate, returnOrderDate) ||
                const DeepCollectionEquality()
                    .equals(other.returnOrderDate, returnOrderDate)) &&
            (identical(other.purchaseInvoiceId, purchaseInvoiceId) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseInvoiceId, purchaseInvoiceId)) &&
            (identical(other.paymentStatus, paymentStatus) ||
                const DeepCollectionEquality()
                    .equals(other.paymentStatus, paymentStatus)) &&
            (identical(other.paymentCode, paymentCode) ||
                const DeepCollectionEquality()
                    .equals(other.paymentCode, paymentCode)) &&
            (identical(other.returnOrderStatus, returnOrderStatus) ||
                const DeepCollectionEquality()
                    .equals(other.returnOrderStatus, returnOrderStatus)) &&
            (identical(other.returnInvoiceStatus, returnInvoiceStatus) ||
                const DeepCollectionEquality()
                    .equals(other.returnInvoiceStatus, returnInvoiceStatus)) &&
            (identical(other.vendorCode, vendorCode) ||
                const DeepCollectionEquality()
                    .equals(other.vendorCode, vendorCode)) &&
            (identical(other.unitCost, unitCost) ||
                const DeepCollectionEquality()
                    .equals(other.unitCost, unitCost)) &&
            (identical(other.grandTotal, grandTotal) ||
                const DeepCollectionEquality()
                    .equals(other.grandTotal, grandTotal)) &&
            (identical(other.vatableAmount, vatableAmount) ||
                const DeepCollectionEquality()
                    .equals(other.vatableAmount, vatableAmount)) &&
            (identical(other.excessTax, excessTax) ||
                const DeepCollectionEquality()
                    .equals(other.excessTax, excessTax)) &&
            (identical(other.actualCost, actualCost) ||
                const DeepCollectionEquality()
                    .equals(other.actualCost, actualCost)) &&
            (identical(other.vendorTrnNumber, vendorTrnNumber) ||
                const DeepCollectionEquality()
                    .equals(other.vendorTrnNumber, vendorTrnNumber)) &&
            (identical(other.vendorMailId, vendorMailId) ||
                const DeepCollectionEquality().equals(other.vendorMailId, vendorMailId)) &&
            (identical(other.vendorAddress, vendorAddress) || const DeepCollectionEquality().equals(other.vendorAddress, vendorAddress)) &&
            (identical(other.editedBy, editedBy) || const DeepCollectionEquality().equals(other.editedBy, editedBy)) &&
            (identical(other.lines, lines) || const DeepCollectionEquality().equals(other.lines, lines)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(remarks) ^
      const DeepCollectionEquality().hash(foc) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(invoiceCode) ^
      const DeepCollectionEquality().hash(orderType) ^
      const DeepCollectionEquality().hash(inventoryId) ^
      const DeepCollectionEquality().hash(returnOrderCode) ^
      const DeepCollectionEquality().hash(returnOrderDate) ^
      const DeepCollectionEquality().hash(purchaseInvoiceId) ^
      const DeepCollectionEquality().hash(paymentStatus) ^
      const DeepCollectionEquality().hash(paymentCode) ^
      const DeepCollectionEquality().hash(returnOrderStatus) ^
      const DeepCollectionEquality().hash(returnInvoiceStatus) ^
      const DeepCollectionEquality().hash(vendorCode) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(grandTotal) ^
      const DeepCollectionEquality().hash(vatableAmount) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(actualCost) ^
      const DeepCollectionEquality().hash(vendorTrnNumber) ^
      const DeepCollectionEquality().hash(vendorMailId) ^
      const DeepCollectionEquality().hash(vendorAddress) ^
      const DeepCollectionEquality().hash(editedBy) ^
      const DeepCollectionEquality().hash(lines);

  @JsonKey(ignore: true)
  @override
  _$ReturnGeneralPatchModelCopyWith<_ReturnGeneralPatchModel> get copyWith =>
      __$ReturnGeneralPatchModelCopyWithImpl<_ReturnGeneralPatchModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReturnGeneralPatchModelToJson(this);
  }
}

abstract class _ReturnGeneralPatchModel implements ReturnGeneralPatchModel {
  const factory _ReturnGeneralPatchModel(
          {int? id,
          String? note,
          String? remarks,
          double? foc,
          double? discount,
          double? vat,
          @JsonKey(name: "invoice_code") String? invoiceCode,
          @JsonKey(name: "order_type") String? orderType,
          @JsonKey(name: "inventory_id") String? inventoryId,
          @JsonKey(name: "return_order_code") String? returnOrderCode,
          @JsonKey(name: "return_order_date") String? returnOrderDate,
          @JsonKey(name: "purchase_invoice_id") String? purchaseInvoiceId,
          @JsonKey(name: "payment_status") String? paymentStatus,
          @JsonKey(name: "payment_code") String? paymentCode,
          @JsonKey(name: "return_order_status") String? returnOrderStatus,
          @JsonKey(name: "return_invoice_status") String? returnInvoiceStatus,
          @JsonKey(name: "vendor_code") String? vendorCode,
          @JsonKey(name: "unit_cost") double? unitCost,
          @JsonKey(name: "grand_total") double? grandTotal,
          @JsonKey(name: "vatable_amount") double? vatableAmount,
          @JsonKey(name: "excess_tax") double? excessTax,
          @JsonKey(name: "actual_cost") double? actualCost,
          @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
          @JsonKey(name: "vendor_mail_id") String? vendorMailId,
          @JsonKey(name: "vendor_address") String? vendorAddress,
          @JsonKey(name: "edited_by") String? editedBy,
          @JsonKey(name: "order_lines") List<PatchLiness>? lines}) =
      _$_ReturnGeneralPatchModel;

  factory _ReturnGeneralPatchModel.fromJson(Map<String, dynamic> json) =
      _$_ReturnGeneralPatchModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get note => throw _privateConstructorUsedError;
  @override
  String? get remarks => throw _privateConstructorUsedError;
  @override
  double? get foc => throw _privateConstructorUsedError;
  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_code")
  String? get invoiceCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_type")
  String? get orderType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_order_code")
  String? get returnOrderCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_order_date")
  String? get returnOrderDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_invoice_id")
  String? get purchaseInvoiceId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "payment_code")
  String? get paymentCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_order_status")
  String? get returnOrderStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_invoice_status")
  String? get returnInvoiceStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_code")
  String? get vendorCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_trn_number")
  String? get vendorTrnNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_mail_id")
  String? get vendorMailId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_address")
  String? get vendorAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "edited_by")
  String? get editedBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_lines")
  List<PatchLiness>? get lines => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReturnGeneralPatchModelCopyWith<_ReturnGeneralPatchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PatchLiness _$PatchLinessFromJson(Map<String, dynamic> json) {
  return _PatchLiness.fromJson(json);
}

/// @nodoc
class _$PatchLinessTearOff {
  const _$PatchLinessTearOff();

  _PatchLiness call(
      {double? foc,
      double? discount,
      double? vat,
      @JsonKey(name: "return_order_line_code") String? returnOrderLineCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "quantity") int? totalQty,
      @JsonKey(name: "purchase_invoice_line_id") String? purchaseInvoiceLineId,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount}) {
    return _PatchLiness(
      foc: foc,
      discount: discount,
      vat: vat,
      returnOrderLineCode: returnOrderLineCode,
      isActive: isActive,
      totalQty: totalQty,
      purchaseInvoiceLineId: purchaseInvoiceLineId,
      variantId: variantId,
      unitCost: unitCost,
      actualCost: actualCost,
      excessTax: excessTax,
      grandTotal: grandTotal,
      vatableAmount: vatableAmount,
    );
  }

  PatchLiness fromJson(Map<String, Object> json) {
    return PatchLiness.fromJson(json);
  }
}

/// @nodoc
const $PatchLiness = _$PatchLinessTearOff();

/// @nodoc
mixin _$PatchLiness {
// final int? id,
  double? get foc => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "return_order_line_code")
  String? get returnOrderLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get totalQty => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_invoice_line_id")
  String? get purchaseInvoiceLineId => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  String? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatchLinessCopyWith<PatchLiness> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchLinessCopyWith<$Res> {
  factory $PatchLinessCopyWith(
          PatchLiness value, $Res Function(PatchLiness) then) =
      _$PatchLinessCopyWithImpl<$Res>;
  $Res call(
      {double? foc,
      double? discount,
      double? vat,
      @JsonKey(name: "return_order_line_code") String? returnOrderLineCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "quantity") int? totalQty,
      @JsonKey(name: "purchase_invoice_line_id") String? purchaseInvoiceLineId,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount});
}

/// @nodoc
class _$PatchLinessCopyWithImpl<$Res> implements $PatchLinessCopyWith<$Res> {
  _$PatchLinessCopyWithImpl(this._value, this._then);

  final PatchLiness _value;
  // ignore: unused_field
  final $Res Function(PatchLiness) _then;

  @override
  $Res call({
    Object? foc = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? returnOrderLineCode = freezed,
    Object? isActive = freezed,
    Object? totalQty = freezed,
    Object? purchaseInvoiceLineId = freezed,
    Object? variantId = freezed,
    Object? unitCost = freezed,
    Object? actualCost = freezed,
    Object? excessTax = freezed,
    Object? grandTotal = freezed,
    Object? vatableAmount = freezed,
  }) {
    return _then(_value.copyWith(
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      returnOrderLineCode: returnOrderLineCode == freezed
          ? _value.returnOrderLineCode
          : returnOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalQty: totalQty == freezed
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseInvoiceLineId: purchaseInvoiceLineId == freezed
          ? _value.purchaseInvoiceLineId
          : purchaseInvoiceLineId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: variantId == freezed
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: vatableAmount == freezed
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$PatchLinessCopyWith<$Res>
    implements $PatchLinessCopyWith<$Res> {
  factory _$PatchLinessCopyWith(
          _PatchLiness value, $Res Function(_PatchLiness) then) =
      __$PatchLinessCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? foc,
      double? discount,
      double? vat,
      @JsonKey(name: "return_order_line_code") String? returnOrderLineCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "quantity") int? totalQty,
      @JsonKey(name: "purchase_invoice_line_id") String? purchaseInvoiceLineId,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount});
}

/// @nodoc
class __$PatchLinessCopyWithImpl<$Res> extends _$PatchLinessCopyWithImpl<$Res>
    implements _$PatchLinessCopyWith<$Res> {
  __$PatchLinessCopyWithImpl(
      _PatchLiness _value, $Res Function(_PatchLiness) _then)
      : super(_value, (v) => _then(v as _PatchLiness));

  @override
  _PatchLiness get _value => super._value as _PatchLiness;

  @override
  $Res call({
    Object? foc = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? returnOrderLineCode = freezed,
    Object? isActive = freezed,
    Object? totalQty = freezed,
    Object? purchaseInvoiceLineId = freezed,
    Object? variantId = freezed,
    Object? unitCost = freezed,
    Object? actualCost = freezed,
    Object? excessTax = freezed,
    Object? grandTotal = freezed,
    Object? vatableAmount = freezed,
  }) {
    return _then(_PatchLiness(
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      returnOrderLineCode: returnOrderLineCode == freezed
          ? _value.returnOrderLineCode
          : returnOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalQty: totalQty == freezed
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseInvoiceLineId: purchaseInvoiceLineId == freezed
          ? _value.purchaseInvoiceLineId
          : purchaseInvoiceLineId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: variantId == freezed
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: vatableAmount == freezed
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatchLiness implements _PatchLiness {
  const _$_PatchLiness(
      {this.foc,
      this.discount,
      this.vat,
      @JsonKey(name: "return_order_line_code") this.returnOrderLineCode,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive,
      @JsonKey(name: "quantity") this.totalQty,
      @JsonKey(name: "purchase_invoice_line_id") this.purchaseInvoiceLineId,
      @JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "grand_total") this.grandTotal,
      @JsonKey(name: "vatable_amount") this.vatableAmount});

  factory _$_PatchLiness.fromJson(Map<String, dynamic> json) =>
      _$$_PatchLinessFromJson(json);

  @override // final int? id,
  final double? foc;
  @override
  final double? discount;
  @override
  final double? vat;
  @override
  @JsonKey(name: "return_order_line_code")
  final String? returnOrderLineCode;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "quantity")
  final int? totalQty;
  @override
  @JsonKey(name: "purchase_invoice_line_id")
  final String? purchaseInvoiceLineId;
  @override
  @JsonKey(name: "variant_id")
  final String? variantId;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "actual_cost")
  final double? actualCost;
  @override
  @JsonKey(name: "excess_tax")
  final double? excessTax;
  @override
  @JsonKey(name: "grand_total")
  final double? grandTotal;
  @override
  @JsonKey(name: "vatable_amount")
  final double? vatableAmount;

  @override
  String toString() {
    return 'PatchLiness(foc: $foc, discount: $discount, vat: $vat, returnOrderLineCode: $returnOrderLineCode, isActive: $isActive, totalQty: $totalQty, purchaseInvoiceLineId: $purchaseInvoiceLineId, variantId: $variantId, unitCost: $unitCost, actualCost: $actualCost, excessTax: $excessTax, grandTotal: $grandTotal, vatableAmount: $vatableAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PatchLiness &&
            (identical(other.foc, foc) ||
                const DeepCollectionEquality().equals(other.foc, foc)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.returnOrderLineCode, returnOrderLineCode) ||
                const DeepCollectionEquality()
                    .equals(other.returnOrderLineCode, returnOrderLineCode)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.totalQty, totalQty) ||
                const DeepCollectionEquality()
                    .equals(other.totalQty, totalQty)) &&
            (identical(other.purchaseInvoiceLineId, purchaseInvoiceLineId) ||
                const DeepCollectionEquality().equals(
                    other.purchaseInvoiceLineId, purchaseInvoiceLineId)) &&
            (identical(other.variantId, variantId) ||
                const DeepCollectionEquality()
                    .equals(other.variantId, variantId)) &&
            (identical(other.unitCost, unitCost) ||
                const DeepCollectionEquality()
                    .equals(other.unitCost, unitCost)) &&
            (identical(other.actualCost, actualCost) ||
                const DeepCollectionEquality()
                    .equals(other.actualCost, actualCost)) &&
            (identical(other.excessTax, excessTax) ||
                const DeepCollectionEquality()
                    .equals(other.excessTax, excessTax)) &&
            (identical(other.grandTotal, grandTotal) ||
                const DeepCollectionEquality()
                    .equals(other.grandTotal, grandTotal)) &&
            (identical(other.vatableAmount, vatableAmount) ||
                const DeepCollectionEquality()
                    .equals(other.vatableAmount, vatableAmount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(foc) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(returnOrderLineCode) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(totalQty) ^
      const DeepCollectionEquality().hash(purchaseInvoiceLineId) ^
      const DeepCollectionEquality().hash(variantId) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(actualCost) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(grandTotal) ^
      const DeepCollectionEquality().hash(vatableAmount);

  @JsonKey(ignore: true)
  @override
  _$PatchLinessCopyWith<_PatchLiness> get copyWith =>
      __$PatchLinessCopyWithImpl<_PatchLiness>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatchLinessToJson(this);
  }
}

abstract class _PatchLiness implements PatchLiness {
  const factory _PatchLiness(
      {double? foc,
      double? discount,
      double? vat,
      @JsonKey(name: "return_order_line_code") String? returnOrderLineCode,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "quantity") int? totalQty,
      @JsonKey(name: "purchase_invoice_line_id") String? purchaseInvoiceLineId,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount}) = _$_PatchLiness;

  factory _PatchLiness.fromJson(Map<String, dynamic> json) =
      _$_PatchLiness.fromJson;

  @override // final int? id,
  double? get foc => throw _privateConstructorUsedError;
  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_order_line_code")
  String? get returnOrderLineCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "quantity")
  int? get totalQty => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_invoice_line_id")
  String? get purchaseInvoiceLineId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_id")
  String? get variantId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PatchLinessCopyWith<_PatchLiness> get copyWith =>
      throw _privateConstructorUsedError;
}
