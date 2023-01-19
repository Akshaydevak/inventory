// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchaseinvoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseReturnGeneralRead _$PurchaseReturnGeneralReadFromJson(
    Map<String, dynamic> json) {
  return _PurchaseReturnGeneralRead.fromJson(json);
}

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
      _$PurchaseReturnGeneralReadCopyWithImpl<$Res, PurchaseReturnGeneralRead>;
  @useResult
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
class _$PurchaseReturnGeneralReadCopyWithImpl<$Res,
        $Val extends PurchaseReturnGeneralRead>
    implements $PurchaseReturnGeneralReadCopyWith<$Res> {
  _$PurchaseReturnGeneralReadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      vendorTrnNumber: freezed == vendorTrnNumber
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: freezed == vendorMailId
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: freezed == vendorAddress
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: freezed == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<Liness>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchaseReturnGeneralReadCopyWith<$Res>
    implements $PurchaseReturnGeneralReadCopyWith<$Res> {
  factory _$$_PurchaseReturnGeneralReadCopyWith(
          _$_PurchaseReturnGeneralRead value,
          $Res Function(_$_PurchaseReturnGeneralRead) then) =
      __$$_PurchaseReturnGeneralReadCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_PurchaseReturnGeneralReadCopyWithImpl<$Res>
    extends _$PurchaseReturnGeneralReadCopyWithImpl<$Res,
        _$_PurchaseReturnGeneralRead>
    implements _$$_PurchaseReturnGeneralReadCopyWith<$Res> {
  __$$_PurchaseReturnGeneralReadCopyWithImpl(
      _$_PurchaseReturnGeneralRead _value,
      $Res Function(_$_PurchaseReturnGeneralRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    return _then(_$_PurchaseReturnGeneralRead(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      vendorTrnNumber: freezed == vendorTrnNumber
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: freezed == vendorMailId
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: freezed == vendorAddress
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: freezed == lines
          ? _value._lines
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
      @JsonKey(name: "lines") final List<Liness>? lines})
      : _lines = lines;

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
  final List<Liness>? _lines;
  @override
  @JsonKey(name: "lines")
  List<Liness>? get lines {
    final value = _lines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PurchaseReturnGeneralRead(id: $id, foc: $foc, discount: $discount, vat: $vat, invoiceCode: $invoiceCode, orderType: $orderType, inventoryId: $inventoryId, vendorId: $vendorId, unitCost: $unitCost, grandTotal: $grandTotal, vatableAmount: $vatableAmount, excessTax: $excessTax, actualCost: $actualCost, vendorTrnNumber: $vendorTrnNumber, vendorMailId: $vendorMailId, vendorAddress: $vendorAddress, lines: $lines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseReturnGeneralRead &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.foc, foc) || other.foc == foc) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.invoiceCode, invoiceCode) ||
                other.invoiceCode == invoiceCode) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.vatableAmount, vatableAmount) ||
                other.vatableAmount == vatableAmount) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.vendorTrnNumber, vendorTrnNumber) ||
                other.vendorTrnNumber == vendorTrnNumber) &&
            (identical(other.vendorMailId, vendorMailId) ||
                other.vendorMailId == vendorMailId) &&
            (identical(other.vendorAddress, vendorAddress) ||
                other.vendorAddress == vendorAddress) &&
            const DeepCollectionEquality().equals(other._lines, _lines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      foc,
      discount,
      vat,
      invoiceCode,
      orderType,
      inventoryId,
      vendorId,
      unitCost,
      grandTotal,
      vatableAmount,
      excessTax,
      actualCost,
      vendorTrnNumber,
      vendorMailId,
      vendorAddress,
      const DeepCollectionEquality().hash(_lines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseReturnGeneralReadCopyWith<_$_PurchaseReturnGeneralRead>
      get copyWith => __$$_PurchaseReturnGeneralReadCopyWithImpl<
          _$_PurchaseReturnGeneralRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseReturnGeneralReadToJson(
      this,
    );
  }
}

abstract class _PurchaseReturnGeneralRead implements PurchaseReturnGeneralRead {
  const factory _PurchaseReturnGeneralRead(
          {final int? id,
          final double? foc,
          final double? discount,
          final double? vat,
          @JsonKey(name: "invoice_code") final String? invoiceCode,
          @JsonKey(name: "order_type") final String? orderType,
          @JsonKey(name: "inventory_id") final String? inventoryId,
          @JsonKey(name: "vendor_id") final String? vendorId,
          @JsonKey(name: "unit_cost") final double? unitCost,
          @JsonKey(name: "grand_total") final double? grandTotal,
          @JsonKey(name: "vatable_amount") final double? vatableAmount,
          @JsonKey(name: "excess_tax") final double? excessTax,
          @JsonKey(name: "actual_cost") final double? actualCost,
          @JsonKey(name: "vendor_trn_number") final String? vendorTrnNumber,
          @JsonKey(name: "vendor_mail_id") final String? vendorMailId,
          @JsonKey(name: "vendor_address") final String? vendorAddress,
          @JsonKey(name: "lines") final List<Liness>? lines}) =
      _$_PurchaseReturnGeneralRead;

  factory _PurchaseReturnGeneralRead.fromJson(Map<String, dynamic> json) =
      _$_PurchaseReturnGeneralRead.fromJson;

  @override
  int? get id;
  @override
  double? get foc;
  @override
  double? get discount;
  @override
  double? get vat;
  @override
  @JsonKey(name: "invoice_code")
  String? get invoiceCode;
  @override
  @JsonKey(name: "order_type")
  String? get orderType;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "vendor_id")
  String? get vendorId;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "grand_total")
  double? get grandTotal;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost;
  @override
  @JsonKey(name: "vendor_trn_number")
  String? get vendorTrnNumber;
  @override
  @JsonKey(name: "vendor_mail_id")
  String? get vendorMailId;
  @override
  @JsonKey(name: "vendor_address")
  String? get vendorAddress;
  @override
  @JsonKey(name: "lines")
  List<Liness>? get lines;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseReturnGeneralReadCopyWith<_$_PurchaseReturnGeneralRead>
      get copyWith => throw _privateConstructorUsedError;
}

Liness _$LinessFromJson(Map<String, dynamic> json) {
  return _Liness.fromJson(json);
}

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
  @JsonKey(name: "updateCheck", defaultValue: false)
  bool? get upDateCheck => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinessCopyWith<Liness> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinessCopyWith<$Res> {
  factory $LinessCopyWith(Liness value, $Res Function(Liness) then) =
      _$LinessCopyWithImpl<$Res, Liness>;
  @useResult
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
          bool? isInvoiced,
      @JsonKey(name: "updateCheck", defaultValue: false)
          bool? upDateCheck});
}

/// @nodoc
class _$LinessCopyWithImpl<$Res, $Val extends Liness>
    implements $LinessCopyWith<$Res> {
  _$LinessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
    Object? upDateCheck = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceLineCode: freezed == invoiceLineCode
          ? _value.invoiceLineCode
          : invoiceLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceLineCode: freezed == purchaseInvoiceLineCode
          ? _value.purchaseInvoiceLineCode
          : purchaseInvoiceLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceLineId: freezed == purchaseInvoiceLineId
          ? _value.purchaseInvoiceLineId
          : purchaseInvoiceLineId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: freezed == purchaseInvoiceId
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderLineCode: freezed == returnOrderLineCode
          ? _value.returnOrderLineCode
          : returnOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorRefrencecode: freezed == vendorRefrencecode
          ? _value.vendorRefrencecode
          : vendorRefrencecode // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierCode: freezed == supplierCode
          ? _value.supplierCode
          : supplierCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUom: freezed == purchaseUom
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as String?,
      isFree: freezed == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      upDateCheck: freezed == upDateCheck
          ? _value.upDateCheck
          : upDateCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LinessCopyWith<$Res> implements $LinessCopyWith<$Res> {
  factory _$$_LinessCopyWith(_$_Liness value, $Res Function(_$_Liness) then) =
      __$$_LinessCopyWithImpl<$Res>;
  @override
  @useResult
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
          bool? isInvoiced,
      @JsonKey(name: "updateCheck", defaultValue: false)
          bool? upDateCheck});
}

/// @nodoc
class __$$_LinessCopyWithImpl<$Res>
    extends _$LinessCopyWithImpl<$Res, _$_Liness>
    implements _$$_LinessCopyWith<$Res> {
  __$$_LinessCopyWithImpl(_$_Liness _value, $Res Function(_$_Liness) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    Object? upDateCheck = freezed,
  }) {
    return _then(_$_Liness(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceLineCode: freezed == invoiceLineCode
          ? _value.invoiceLineCode
          : invoiceLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceLineCode: freezed == purchaseInvoiceLineCode
          ? _value.purchaseInvoiceLineCode
          : purchaseInvoiceLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceLineId: freezed == purchaseInvoiceLineId
          ? _value.purchaseInvoiceLineId
          : purchaseInvoiceLineId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: freezed == purchaseInvoiceId
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderLineCode: freezed == returnOrderLineCode
          ? _value.returnOrderLineCode
          : returnOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorRefrencecode: freezed == vendorRefrencecode
          ? _value.vendorRefrencecode
          : vendorRefrencecode // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierCode: freezed == supplierCode
          ? _value.supplierCode
          : supplierCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUom: freezed == purchaseUom
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as String?,
      isFree: freezed == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      upDateCheck: freezed == upDateCheck
          ? _value.upDateCheck
          : upDateCheck // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: "is_invoiced", defaultValue: false) this.isInvoiced,
      @JsonKey(name: "updateCheck", defaultValue: false) this.upDateCheck});

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
  @JsonKey(name: "updateCheck", defaultValue: false)
  final bool? upDateCheck;

  @override
  String toString() {
    return 'Liness(id: $id, foc: $foc, discount: $discount, vat: $vat, invoiceLineCode: $invoiceLineCode, purchaseInvoiceLineCode: $purchaseInvoiceLineCode, purchaseInvoiceLineId: $purchaseInvoiceLineId, purchaseInvoiceId: $purchaseInvoiceId, returnOrderLineCode: $returnOrderLineCode, variantId: $variantId, variantName: $variantName, vendorRefrencecode: $vendorRefrencecode, totalQty: $totalQty, unitCost: $unitCost, vatableAmount: $vatableAmount, excessTax: $excessTax, actualCost: $actualCost, grandTotal: $grandTotal, barcode: $barcode, supplierCode: $supplierCode, purchaseUom: $purchaseUom, isFree: $isFree, isActive: $isActive, isInvoiced: $isInvoiced, upDateCheck: $upDateCheck)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Liness &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.foc, foc) || other.foc == foc) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.invoiceLineCode, invoiceLineCode) ||
                other.invoiceLineCode == invoiceLineCode) &&
            (identical(
                    other.purchaseInvoiceLineCode, purchaseInvoiceLineCode) ||
                other.purchaseInvoiceLineCode == purchaseInvoiceLineCode) &&
            (identical(other.purchaseInvoiceLineId, purchaseInvoiceLineId) ||
                other.purchaseInvoiceLineId == purchaseInvoiceLineId) &&
            (identical(other.purchaseInvoiceId, purchaseInvoiceId) ||
                other.purchaseInvoiceId == purchaseInvoiceId) &&
            (identical(other.returnOrderLineCode, returnOrderLineCode) ||
                other.returnOrderLineCode == returnOrderLineCode) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.variantName, variantName) ||
                other.variantName == variantName) &&
            (identical(other.vendorRefrencecode, vendorRefrencecode) ||
                other.vendorRefrencecode == vendorRefrencecode) &&
            (identical(other.totalQty, totalQty) ||
                other.totalQty == totalQty) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.vatableAmount, vatableAmount) ||
                other.vatableAmount == vatableAmount) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.supplierCode, supplierCode) ||
                other.supplierCode == supplierCode) &&
            (identical(other.purchaseUom, purchaseUom) ||
                other.purchaseUom == purchaseUom) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isInvoiced, isInvoiced) ||
                other.isInvoiced == isInvoiced) &&
            (identical(other.upDateCheck, upDateCheck) ||
                other.upDateCheck == upDateCheck));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        foc,
        discount,
        vat,
        invoiceLineCode,
        purchaseInvoiceLineCode,
        purchaseInvoiceLineId,
        purchaseInvoiceId,
        returnOrderLineCode,
        variantId,
        variantName,
        vendorRefrencecode,
        totalQty,
        unitCost,
        vatableAmount,
        excessTax,
        actualCost,
        grandTotal,
        barcode,
        supplierCode,
        purchaseUom,
        isFree,
        isActive,
        isInvoiced,
        upDateCheck
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinessCopyWith<_$_Liness> get copyWith =>
      __$$_LinessCopyWithImpl<_$_Liness>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinessToJson(
      this,
    );
  }
}

abstract class _Liness implements Liness {
  const factory _Liness(
      {final int? id,
      final double? foc,
      final double? discount,
      final double? vat,
      @JsonKey(name: "invoice_line_code")
          final String? invoiceLineCode,
      @JsonKey(name: "purchase_invoice_line_code")
          final String? purchaseInvoiceLineCode,
      @JsonKey(name: "purchase_invoice_line_id")
          final String? purchaseInvoiceLineId,
      @JsonKey(name: "purchase_invoice_id")
          final String? purchaseInvoiceId,
      @JsonKey(name: "return_order_line_code")
          final String? returnOrderLineCode,
      @JsonKey(name: "variant_id")
          final String? variantId,
      @JsonKey(name: "variant_name")
          final String? variantName,
      @JsonKey(name: "vendor_reference_code")
          final String? vendorRefrencecode,
      @JsonKey(name: "quantity")
          final int? totalQty,
      @JsonKey(name: "unit_cost")
          final double? unitCost,
      @JsonKey(name: "vatable_amount")
          final double? vatableAmount,
      @JsonKey(name: "excess_tax")
          final double? excessTax,
      @JsonKey(name: "actual_cost")
          final double? actualCost,
      @JsonKey(name: "grand_total")
          final double? grandTotal,
      @JsonKey(name: "barcode")
          final String? barcode,
      @JsonKey(name: "supplier_code")
          final String? supplierCode,
      @JsonKey(name: "purchase_uom")
          final String? purchaseUom,
      @JsonKey(name: "is_free", defaultValue: false)
          final bool? isFree,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive,
      @JsonKey(name: "is_invoiced", defaultValue: false)
          final bool? isInvoiced,
      @JsonKey(name: "updateCheck", defaultValue: false)
          final bool? upDateCheck}) = _$_Liness;

  factory _Liness.fromJson(Map<String, dynamic> json) = _$_Liness.fromJson;

  @override
  int? get id;
  @override
  double? get foc;
  @override
  double? get discount;
  @override
  double? get vat;
  @override
  @JsonKey(name: "invoice_line_code")
  String? get invoiceLineCode;
  @override
  @JsonKey(name: "purchase_invoice_line_code")
  String? get purchaseInvoiceLineCode;
  @override
  @JsonKey(name: "purchase_invoice_line_id")
  String? get purchaseInvoiceLineId;
  @override
  @JsonKey(name: "purchase_invoice_id")
  String? get purchaseInvoiceId;
  @override
  @JsonKey(name: "return_order_line_code")
  String? get returnOrderLineCode;
  @override
  @JsonKey(name: "variant_id")
  String? get variantId;
  @override
  @JsonKey(name: "variant_name")
  String? get variantName;
  @override
  @JsonKey(name: "vendor_reference_code")
  String? get vendorRefrencecode;
  @override
  @JsonKey(name: "quantity")
  int? get totalQty;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost;
  @override
  @JsonKey(name: "grand_total")
  double? get grandTotal;
  @override
  @JsonKey(name: "barcode")
  String? get barcode;
  @override
  @JsonKey(name: "supplier_code")
  String? get supplierCode;
  @override
  @JsonKey(name: "purchase_uom")
  String? get purchaseUom;
  @override
  @JsonKey(name: "is_free", defaultValue: false)
  bool? get isFree;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "is_invoiced", defaultValue: false)
  bool? get isInvoiced;
  @override
  @JsonKey(name: "updateCheck", defaultValue: false)
  bool? get upDateCheck;
  @override
  @JsonKey(ignore: true)
  _$$_LinessCopyWith<_$_Liness> get copyWith =>
      throw _privateConstructorUsedError;
}

ReturnGeneralRead _$ReturnGeneralReadFromJson(Map<String, dynamic> json) {
  return _ReturnGeneralRead.fromJson(json);
}

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
      _$ReturnGeneralReadCopyWithImpl<$Res, ReturnGeneralRead>;
  @useResult
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
class _$ReturnGeneralReadCopyWithImpl<$Res, $Val extends ReturnGeneralRead>
    implements $ReturnGeneralReadCopyWith<$Res> {
  _$ReturnGeneralReadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderCode: freezed == returnOrderCode
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderDate: freezed == returnOrderDate
          ? _value.returnOrderDate
          : returnOrderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: freezed == purchaseInvoiceId
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCode: freezed == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderStatus: freezed == returnOrderStatus
          ? _value.returnOrderStatus
          : returnOrderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      returnInvoiceStatus: freezed == returnInvoiceStatus
          ? _value.returnInvoiceStatus
          : returnInvoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorCode: freezed == vendorCode
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      vendorTrnNumber: freezed == vendorTrnNumber
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: freezed == vendorMailId
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: freezed == vendorAddress
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      editedBy: freezed == editedBy
          ? _value.editedBy
          : editedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: freezed == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<Liness>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReturnGeneralReadCopyWith<$Res>
    implements $ReturnGeneralReadCopyWith<$Res> {
  factory _$$_ReturnGeneralReadCopyWith(_$_ReturnGeneralRead value,
          $Res Function(_$_ReturnGeneralRead) then) =
      __$$_ReturnGeneralReadCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_ReturnGeneralReadCopyWithImpl<$Res>
    extends _$ReturnGeneralReadCopyWithImpl<$Res, _$_ReturnGeneralRead>
    implements _$$_ReturnGeneralReadCopyWith<$Res> {
  __$$_ReturnGeneralReadCopyWithImpl(
      _$_ReturnGeneralRead _value, $Res Function(_$_ReturnGeneralRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    return _then(_$_ReturnGeneralRead(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderCode: freezed == returnOrderCode
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderDate: freezed == returnOrderDate
          ? _value.returnOrderDate
          : returnOrderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: freezed == purchaseInvoiceId
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCode: freezed == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderStatus: freezed == returnOrderStatus
          ? _value.returnOrderStatus
          : returnOrderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      returnInvoiceStatus: freezed == returnInvoiceStatus
          ? _value.returnInvoiceStatus
          : returnInvoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorCode: freezed == vendorCode
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      vendorTrnNumber: freezed == vendorTrnNumber
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: freezed == vendorMailId
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: freezed == vendorAddress
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      editedBy: freezed == editedBy
          ? _value.editedBy
          : editedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: freezed == lines
          ? _value._lines
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
      @JsonKey(name: "order_lines") final List<Liness>? lines})
      : _lines = lines;

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
  final List<Liness>? _lines;
  @override
  @JsonKey(name: "order_lines")
  List<Liness>? get lines {
    final value = _lines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReturnGeneralRead(id: $id, note: $note, remarks: $remarks, foc: $foc, discount: $discount, vat: $vat, invoiceCode: $invoiceCode, orderType: $orderType, inventoryId: $inventoryId, returnOrderCode: $returnOrderCode, returnOrderDate: $returnOrderDate, purchaseInvoiceId: $purchaseInvoiceId, paymentStatus: $paymentStatus, paymentCode: $paymentCode, returnOrderStatus: $returnOrderStatus, returnInvoiceStatus: $returnInvoiceStatus, vendorCode: $vendorCode, unitCost: $unitCost, grandTotal: $grandTotal, vatableAmount: $vatableAmount, excessTax: $excessTax, actualCost: $actualCost, vendorTrnNumber: $vendorTrnNumber, vendorMailId: $vendorMailId, vendorAddress: $vendorAddress, editedBy: $editedBy, lines: $lines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReturnGeneralRead &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.foc, foc) || other.foc == foc) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.invoiceCode, invoiceCode) ||
                other.invoiceCode == invoiceCode) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.returnOrderCode, returnOrderCode) ||
                other.returnOrderCode == returnOrderCode) &&
            (identical(other.returnOrderDate, returnOrderDate) ||
                other.returnOrderDate == returnOrderDate) &&
            (identical(other.purchaseInvoiceId, purchaseInvoiceId) ||
                other.purchaseInvoiceId == purchaseInvoiceId) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.paymentCode, paymentCode) ||
                other.paymentCode == paymentCode) &&
            (identical(other.returnOrderStatus, returnOrderStatus) ||
                other.returnOrderStatus == returnOrderStatus) &&
            (identical(other.returnInvoiceStatus, returnInvoiceStatus) ||
                other.returnInvoiceStatus == returnInvoiceStatus) &&
            (identical(other.vendorCode, vendorCode) ||
                other.vendorCode == vendorCode) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.vatableAmount, vatableAmount) ||
                other.vatableAmount == vatableAmount) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.vendorTrnNumber, vendorTrnNumber) ||
                other.vendorTrnNumber == vendorTrnNumber) &&
            (identical(other.vendorMailId, vendorMailId) ||
                other.vendorMailId == vendorMailId) &&
            (identical(other.vendorAddress, vendorAddress) ||
                other.vendorAddress == vendorAddress) &&
            (identical(other.editedBy, editedBy) ||
                other.editedBy == editedBy) &&
            const DeepCollectionEquality().equals(other._lines, _lines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        note,
        remarks,
        foc,
        discount,
        vat,
        invoiceCode,
        orderType,
        inventoryId,
        returnOrderCode,
        returnOrderDate,
        purchaseInvoiceId,
        paymentStatus,
        paymentCode,
        returnOrderStatus,
        returnInvoiceStatus,
        vendorCode,
        unitCost,
        grandTotal,
        vatableAmount,
        excessTax,
        actualCost,
        vendorTrnNumber,
        vendorMailId,
        vendorAddress,
        editedBy,
        const DeepCollectionEquality().hash(_lines)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReturnGeneralReadCopyWith<_$_ReturnGeneralRead> get copyWith =>
      __$$_ReturnGeneralReadCopyWithImpl<_$_ReturnGeneralRead>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReturnGeneralReadToJson(
      this,
    );
  }
}

abstract class _ReturnGeneralRead implements ReturnGeneralRead {
  const factory _ReturnGeneralRead(
      {final int? id,
      final String? note,
      final String? remarks,
      final double? foc,
      final double? discount,
      final double? vat,
      @JsonKey(name: "invoice_code")
          final String? invoiceCode,
      @JsonKey(name: "order_type")
          final String? orderType,
      @JsonKey(name: "inventory_id")
          final String? inventoryId,
      @JsonKey(name: "return_order_code")
          final String? returnOrderCode,
      @JsonKey(name: "return_order_date")
          final String? returnOrderDate,
      @JsonKey(name: "purchase_invoice_id")
          final String? purchaseInvoiceId,
      @JsonKey(name: "payment_status")
          final String? paymentStatus,
      @JsonKey(name: "payment_code")
          final String? paymentCode,
      @JsonKey(name: "return_order_status")
          final String? returnOrderStatus,
      @JsonKey(name: "return_invoice_status")
          final String? returnInvoiceStatus,
      @JsonKey(name: "vendor_code")
          final String? vendorCode,
      @JsonKey(name: "unit_cost")
          final double? unitCost,
      @JsonKey(name: "grand_total")
          final double? grandTotal,
      @JsonKey(name: "vatable_amount")
          final double? vatableAmount,
      @JsonKey(name: "excess_tax")
          final double? excessTax,
      @JsonKey(name: "actual_cost")
          final double? actualCost,
      @JsonKey(name: "vendor_trn_number")
          final String? vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id")
          final String? vendorMailId,
      @JsonKey(name: "vendor_address")
          final String? vendorAddress,
      @JsonKey(name: "edited_by")
          final String? editedBy,
      @JsonKey(name: "order_lines")
          final List<Liness>? lines}) = _$_ReturnGeneralRead;

  factory _ReturnGeneralRead.fromJson(Map<String, dynamic> json) =
      _$_ReturnGeneralRead.fromJson;

  @override
  int? get id;
  @override
  String? get note;
  @override
  String? get remarks;
  @override
  double? get foc;
  @override
  double? get discount;
  @override
  double? get vat;
  @override
  @JsonKey(name: "invoice_code")
  String? get invoiceCode;
  @override
  @JsonKey(name: "order_type")
  String? get orderType;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "return_order_code")
  String? get returnOrderCode;
  @override
  @JsonKey(name: "return_order_date")
  String? get returnOrderDate;
  @override
  @JsonKey(name: "purchase_invoice_id")
  String? get purchaseInvoiceId;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus;
  @override
  @JsonKey(name: "payment_code")
  String? get paymentCode;
  @override
  @JsonKey(name: "return_order_status")
  String? get returnOrderStatus;
  @override
  @JsonKey(name: "return_invoice_status")
  String? get returnInvoiceStatus;
  @override
  @JsonKey(name: "vendor_code")
  String? get vendorCode;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "grand_total")
  double? get grandTotal;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost;
  @override
  @JsonKey(name: "vendor_trn_number")
  String? get vendorTrnNumber;
  @override
  @JsonKey(name: "vendor_mail_id")
  String? get vendorMailId;
  @override
  @JsonKey(name: "vendor_address")
  String? get vendorAddress;
  @override
  @JsonKey(name: "edited_by")
  String? get editedBy;
  @override
  @JsonKey(name: "order_lines")
  List<Liness>? get lines;
  @override
  @JsonKey(ignore: true)
  _$$_ReturnGeneralReadCopyWith<_$_ReturnGeneralRead> get copyWith =>
      throw _privateConstructorUsedError;
}

ReturnGeneralPatchModel _$ReturnGeneralPatchModelFromJson(
    Map<String, dynamic> json) {
  return _ReturnGeneralPatchModel.fromJson(json);
}

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
      _$ReturnGeneralPatchModelCopyWithImpl<$Res, ReturnGeneralPatchModel>;
  @useResult
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
class _$ReturnGeneralPatchModelCopyWithImpl<$Res,
        $Val extends ReturnGeneralPatchModel>
    implements $ReturnGeneralPatchModelCopyWith<$Res> {
  _$ReturnGeneralPatchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderCode: freezed == returnOrderCode
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderDate: freezed == returnOrderDate
          ? _value.returnOrderDate
          : returnOrderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: freezed == purchaseInvoiceId
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCode: freezed == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderStatus: freezed == returnOrderStatus
          ? _value.returnOrderStatus
          : returnOrderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      returnInvoiceStatus: freezed == returnInvoiceStatus
          ? _value.returnInvoiceStatus
          : returnInvoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorCode: freezed == vendorCode
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      vendorTrnNumber: freezed == vendorTrnNumber
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: freezed == vendorMailId
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: freezed == vendorAddress
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      editedBy: freezed == editedBy
          ? _value.editedBy
          : editedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: freezed == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<PatchLiness>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReturnGeneralPatchModelCopyWith<$Res>
    implements $ReturnGeneralPatchModelCopyWith<$Res> {
  factory _$$_ReturnGeneralPatchModelCopyWith(_$_ReturnGeneralPatchModel value,
          $Res Function(_$_ReturnGeneralPatchModel) then) =
      __$$_ReturnGeneralPatchModelCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_ReturnGeneralPatchModelCopyWithImpl<$Res>
    extends _$ReturnGeneralPatchModelCopyWithImpl<$Res,
        _$_ReturnGeneralPatchModel>
    implements _$$_ReturnGeneralPatchModelCopyWith<$Res> {
  __$$_ReturnGeneralPatchModelCopyWithImpl(_$_ReturnGeneralPatchModel _value,
      $Res Function(_$_ReturnGeneralPatchModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    return _then(_$_ReturnGeneralPatchModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderCode: freezed == returnOrderCode
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderDate: freezed == returnOrderDate
          ? _value.returnOrderDate
          : returnOrderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: freezed == purchaseInvoiceId
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCode: freezed == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderStatus: freezed == returnOrderStatus
          ? _value.returnOrderStatus
          : returnOrderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      returnInvoiceStatus: freezed == returnInvoiceStatus
          ? _value.returnInvoiceStatus
          : returnInvoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorCode: freezed == vendorCode
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      vendorTrnNumber: freezed == vendorTrnNumber
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: freezed == vendorMailId
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: freezed == vendorAddress
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      editedBy: freezed == editedBy
          ? _value.editedBy
          : editedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: freezed == lines
          ? _value._lines
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
      @JsonKey(name: "order_lines") final List<PatchLiness>? lines})
      : _lines = lines;

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
  final List<PatchLiness>? _lines;
  @override
  @JsonKey(name: "order_lines")
  List<PatchLiness>? get lines {
    final value = _lines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReturnGeneralPatchModel(id: $id, note: $note, remarks: $remarks, foc: $foc, discount: $discount, vat: $vat, invoiceCode: $invoiceCode, orderType: $orderType, inventoryId: $inventoryId, returnOrderCode: $returnOrderCode, returnOrderDate: $returnOrderDate, purchaseInvoiceId: $purchaseInvoiceId, paymentStatus: $paymentStatus, paymentCode: $paymentCode, returnOrderStatus: $returnOrderStatus, returnInvoiceStatus: $returnInvoiceStatus, vendorCode: $vendorCode, unitCost: $unitCost, grandTotal: $grandTotal, vatableAmount: $vatableAmount, excessTax: $excessTax, actualCost: $actualCost, vendorTrnNumber: $vendorTrnNumber, vendorMailId: $vendorMailId, vendorAddress: $vendorAddress, editedBy: $editedBy, lines: $lines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReturnGeneralPatchModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.foc, foc) || other.foc == foc) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.invoiceCode, invoiceCode) ||
                other.invoiceCode == invoiceCode) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.returnOrderCode, returnOrderCode) ||
                other.returnOrderCode == returnOrderCode) &&
            (identical(other.returnOrderDate, returnOrderDate) ||
                other.returnOrderDate == returnOrderDate) &&
            (identical(other.purchaseInvoiceId, purchaseInvoiceId) ||
                other.purchaseInvoiceId == purchaseInvoiceId) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.paymentCode, paymentCode) ||
                other.paymentCode == paymentCode) &&
            (identical(other.returnOrderStatus, returnOrderStatus) ||
                other.returnOrderStatus == returnOrderStatus) &&
            (identical(other.returnInvoiceStatus, returnInvoiceStatus) ||
                other.returnInvoiceStatus == returnInvoiceStatus) &&
            (identical(other.vendorCode, vendorCode) ||
                other.vendorCode == vendorCode) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.vatableAmount, vatableAmount) ||
                other.vatableAmount == vatableAmount) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.vendorTrnNumber, vendorTrnNumber) ||
                other.vendorTrnNumber == vendorTrnNumber) &&
            (identical(other.vendorMailId, vendorMailId) ||
                other.vendorMailId == vendorMailId) &&
            (identical(other.vendorAddress, vendorAddress) ||
                other.vendorAddress == vendorAddress) &&
            (identical(other.editedBy, editedBy) ||
                other.editedBy == editedBy) &&
            const DeepCollectionEquality().equals(other._lines, _lines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        note,
        remarks,
        foc,
        discount,
        vat,
        invoiceCode,
        orderType,
        inventoryId,
        returnOrderCode,
        returnOrderDate,
        purchaseInvoiceId,
        paymentStatus,
        paymentCode,
        returnOrderStatus,
        returnInvoiceStatus,
        vendorCode,
        unitCost,
        grandTotal,
        vatableAmount,
        excessTax,
        actualCost,
        vendorTrnNumber,
        vendorMailId,
        vendorAddress,
        editedBy,
        const DeepCollectionEquality().hash(_lines)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReturnGeneralPatchModelCopyWith<_$_ReturnGeneralPatchModel>
      get copyWith =>
          __$$_ReturnGeneralPatchModelCopyWithImpl<_$_ReturnGeneralPatchModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReturnGeneralPatchModelToJson(
      this,
    );
  }
}

abstract class _ReturnGeneralPatchModel implements ReturnGeneralPatchModel {
  const factory _ReturnGeneralPatchModel(
      {final int? id,
      final String? note,
      final String? remarks,
      final double? foc,
      final double? discount,
      final double? vat,
      @JsonKey(name: "invoice_code")
          final String? invoiceCode,
      @JsonKey(name: "order_type")
          final String? orderType,
      @JsonKey(name: "inventory_id")
          final String? inventoryId,
      @JsonKey(name: "return_order_code")
          final String? returnOrderCode,
      @JsonKey(name: "return_order_date")
          final String? returnOrderDate,
      @JsonKey(name: "purchase_invoice_id")
          final String? purchaseInvoiceId,
      @JsonKey(name: "payment_status")
          final String? paymentStatus,
      @JsonKey(name: "payment_code")
          final String? paymentCode,
      @JsonKey(name: "return_order_status")
          final String? returnOrderStatus,
      @JsonKey(name: "return_invoice_status")
          final String? returnInvoiceStatus,
      @JsonKey(name: "vendor_code")
          final String? vendorCode,
      @JsonKey(name: "unit_cost")
          final double? unitCost,
      @JsonKey(name: "grand_total")
          final double? grandTotal,
      @JsonKey(name: "vatable_amount")
          final double? vatableAmount,
      @JsonKey(name: "excess_tax")
          final double? excessTax,
      @JsonKey(name: "actual_cost")
          final double? actualCost,
      @JsonKey(name: "vendor_trn_number")
          final String? vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id")
          final String? vendorMailId,
      @JsonKey(name: "vendor_address")
          final String? vendorAddress,
      @JsonKey(name: "edited_by")
          final String? editedBy,
      @JsonKey(name: "order_lines")
          final List<PatchLiness>? lines}) = _$_ReturnGeneralPatchModel;

  factory _ReturnGeneralPatchModel.fromJson(Map<String, dynamic> json) =
      _$_ReturnGeneralPatchModel.fromJson;

  @override
  int? get id;
  @override
  String? get note;
  @override
  String? get remarks;
  @override
  double? get foc;
  @override
  double? get discount;
  @override
  double? get vat;
  @override
  @JsonKey(name: "invoice_code")
  String? get invoiceCode;
  @override
  @JsonKey(name: "order_type")
  String? get orderType;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "return_order_code")
  String? get returnOrderCode;
  @override
  @JsonKey(name: "return_order_date")
  String? get returnOrderDate;
  @override
  @JsonKey(name: "purchase_invoice_id")
  String? get purchaseInvoiceId;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus;
  @override
  @JsonKey(name: "payment_code")
  String? get paymentCode;
  @override
  @JsonKey(name: "return_order_status")
  String? get returnOrderStatus;
  @override
  @JsonKey(name: "return_invoice_status")
  String? get returnInvoiceStatus;
  @override
  @JsonKey(name: "vendor_code")
  String? get vendorCode;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "grand_total")
  double? get grandTotal;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost;
  @override
  @JsonKey(name: "vendor_trn_number")
  String? get vendorTrnNumber;
  @override
  @JsonKey(name: "vendor_mail_id")
  String? get vendorMailId;
  @override
  @JsonKey(name: "vendor_address")
  String? get vendorAddress;
  @override
  @JsonKey(name: "edited_by")
  String? get editedBy;
  @override
  @JsonKey(name: "order_lines")
  List<PatchLiness>? get lines;
  @override
  @JsonKey(ignore: true)
  _$$_ReturnGeneralPatchModelCopyWith<_$_ReturnGeneralPatchModel>
      get copyWith => throw _privateConstructorUsedError;
}

PatchLiness _$PatchLinessFromJson(Map<String, dynamic> json) {
  return _PatchLiness.fromJson(json);
}

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
      _$PatchLinessCopyWithImpl<$Res, PatchLiness>;
  @useResult
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
class _$PatchLinessCopyWithImpl<$Res, $Val extends PatchLiness>
    implements $PatchLinessCopyWith<$Res> {
  _$PatchLinessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      returnOrderLineCode: freezed == returnOrderLineCode
          ? _value.returnOrderLineCode
          : returnOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseInvoiceLineId: freezed == purchaseInvoiceLineId
          ? _value.purchaseInvoiceLineId
          : purchaseInvoiceLineId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatchLinessCopyWith<$Res>
    implements $PatchLinessCopyWith<$Res> {
  factory _$$_PatchLinessCopyWith(
          _$_PatchLiness value, $Res Function(_$_PatchLiness) then) =
      __$$_PatchLinessCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_PatchLinessCopyWithImpl<$Res>
    extends _$PatchLinessCopyWithImpl<$Res, _$_PatchLiness>
    implements _$$_PatchLinessCopyWith<$Res> {
  __$$_PatchLinessCopyWithImpl(
      _$_PatchLiness _value, $Res Function(_$_PatchLiness) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    return _then(_$_PatchLiness(
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      returnOrderLineCode: freezed == returnOrderLineCode
          ? _value.returnOrderLineCode
          : returnOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseInvoiceLineId: freezed == purchaseInvoiceLineId
          ? _value.purchaseInvoiceLineId
          : purchaseInvoiceLineId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
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

// final int? id,
  @override
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
        (other.runtimeType == runtimeType &&
            other is _$_PatchLiness &&
            (identical(other.foc, foc) || other.foc == foc) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.returnOrderLineCode, returnOrderLineCode) ||
                other.returnOrderLineCode == returnOrderLineCode) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.totalQty, totalQty) ||
                other.totalQty == totalQty) &&
            (identical(other.purchaseInvoiceLineId, purchaseInvoiceLineId) ||
                other.purchaseInvoiceLineId == purchaseInvoiceLineId) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.vatableAmount, vatableAmount) ||
                other.vatableAmount == vatableAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      foc,
      discount,
      vat,
      returnOrderLineCode,
      isActive,
      totalQty,
      purchaseInvoiceLineId,
      variantId,
      unitCost,
      actualCost,
      excessTax,
      grandTotal,
      vatableAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatchLinessCopyWith<_$_PatchLiness> get copyWith =>
      __$$_PatchLinessCopyWithImpl<_$_PatchLiness>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatchLinessToJson(
      this,
    );
  }
}

abstract class _PatchLiness implements PatchLiness {
  const factory _PatchLiness(
      {final double? foc,
      final double? discount,
      final double? vat,
      @JsonKey(name: "return_order_line_code")
          final String? returnOrderLineCode,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive,
      @JsonKey(name: "quantity")
          final int? totalQty,
      @JsonKey(name: "purchase_invoice_line_id")
          final String? purchaseInvoiceLineId,
      @JsonKey(name: "variant_id")
          final String? variantId,
      @JsonKey(name: "unit_cost")
          final double? unitCost,
      @JsonKey(name: "actual_cost")
          final double? actualCost,
      @JsonKey(name: "excess_tax")
          final double? excessTax,
      @JsonKey(name: "grand_total")
          final double? grandTotal,
      @JsonKey(name: "vatable_amount")
          final double? vatableAmount}) = _$_PatchLiness;

  factory _PatchLiness.fromJson(Map<String, dynamic> json) =
      _$_PatchLiness.fromJson;

  @override // final int? id,
  double? get foc;
  @override
  double? get discount;
  @override
  double? get vat;
  @override
  @JsonKey(name: "return_order_line_code")
  String? get returnOrderLineCode;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "quantity")
  int? get totalQty;
  @override
  @JsonKey(name: "purchase_invoice_line_id")
  String? get purchaseInvoiceLineId;
  @override
  @JsonKey(name: "variant_id")
  String? get variantId;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax;
  @override
  @JsonKey(name: "grand_total")
  double? get grandTotal;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount;
  @override
  @JsonKey(ignore: true)
  _$$_PatchLinessCopyWith<_$_PatchLiness> get copyWith =>
      throw _privateConstructorUsedError;
}
