// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invoicepost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseReturnInvoicePostModel _$PurchaseReturnInvoicePostModelFromJson(
    Map<String, dynamic> json) {
  return _PurchaseReturnInvoicePostModel.fromJson(json);
}

/// @nodoc
class _$PurchaseReturnInvoicePostModelTearOff {
  const _$PurchaseReturnInvoicePostModelTearOff();

  _PurchaseReturnInvoicePostModel call(
      {double? foc,
      double? discount,
      double? vat,
      String? notes,
      String? remarks,
      @JsonKey(name: "purchase_invoice_id") String? purchaseInvoiceId,
      @JsonKey(name: "return_order_code") String? returnOrderCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "invoiced_by") String? invoicedBy,
      @JsonKey(name: "vendor_id") String? venderId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "invoice_lines") List<Order>? lines}) {
    return _PurchaseReturnInvoicePostModel(
      foc: foc,
      discount: discount,
      vat: vat,
      notes: notes,
      remarks: remarks,
      purchaseInvoiceId: purchaseInvoiceId,
      returnOrderCode: returnOrderCode,
      inventoryId: inventoryId,
      invoicedBy: invoicedBy,
      venderId: venderId,
      unitCost: unitCost,
      grandTotal: grandTotal,
      vatableAmount: vatableAmount,
      excessTax: excessTax,
      actualCost: actualCost,
      vendorTrnNumber: vendorTrnNumber,
      lines: lines,
    );
  }

  PurchaseReturnInvoicePostModel fromJson(Map<String, Object> json) {
    return PurchaseReturnInvoicePostModel.fromJson(json);
  }
}

/// @nodoc
const $PurchaseReturnInvoicePostModel =
    _$PurchaseReturnInvoicePostModelTearOff();

/// @nodoc
mixin _$PurchaseReturnInvoicePostModel {
  double? get foc => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_invoice_id")
  String? get purchaseInvoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "return_order_code")
  String? get returnOrderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiced_by")
  String? get invoicedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_id")
  String? get venderId => throw _privateConstructorUsedError;
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
  String? get vendorTrnNumber =>
      throw _privateConstructorUsedError; // @JsonKey(name: "purchase_invoice_line_id") final String? purchaseInvoiceLineId,
  @JsonKey(name: "invoice_lines")
  List<Order>? get lines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseReturnInvoicePostModelCopyWith<PurchaseReturnInvoicePostModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseReturnInvoicePostModelCopyWith<$Res> {
  factory $PurchaseReturnInvoicePostModelCopyWith(
          PurchaseReturnInvoicePostModel value,
          $Res Function(PurchaseReturnInvoicePostModel) then) =
      _$PurchaseReturnInvoicePostModelCopyWithImpl<$Res>;
  $Res call(
      {double? foc,
      double? discount,
      double? vat,
      String? notes,
      String? remarks,
      @JsonKey(name: "purchase_invoice_id") String? purchaseInvoiceId,
      @JsonKey(name: "return_order_code") String? returnOrderCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "invoiced_by") String? invoicedBy,
      @JsonKey(name: "vendor_id") String? venderId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "invoice_lines") List<Order>? lines});
}

/// @nodoc
class _$PurchaseReturnInvoicePostModelCopyWithImpl<$Res>
    implements $PurchaseReturnInvoicePostModelCopyWith<$Res> {
  _$PurchaseReturnInvoicePostModelCopyWithImpl(this._value, this._then);

  final PurchaseReturnInvoicePostModel _value;
  // ignore: unused_field
  final $Res Function(PurchaseReturnInvoicePostModel) _then;

  @override
  $Res call({
    Object? foc = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? purchaseInvoiceId = freezed,
    Object? returnOrderCode = freezed,
    Object? inventoryId = freezed,
    Object? invoicedBy = freezed,
    Object? venderId = freezed,
    Object? unitCost = freezed,
    Object? grandTotal = freezed,
    Object? vatableAmount = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? vendorTrnNumber = freezed,
    Object? lines = freezed,
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
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: purchaseInvoiceId == freezed
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderCode: returnOrderCode == freezed
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: invoicedBy == freezed
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      venderId: venderId == freezed
          ? _value.venderId
          : venderId // ignore: cast_nullable_to_non_nullable
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
      lines: lines == freezed
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ));
  }
}

/// @nodoc
abstract class _$PurchaseReturnInvoicePostModelCopyWith<$Res>
    implements $PurchaseReturnInvoicePostModelCopyWith<$Res> {
  factory _$PurchaseReturnInvoicePostModelCopyWith(
          _PurchaseReturnInvoicePostModel value,
          $Res Function(_PurchaseReturnInvoicePostModel) then) =
      __$PurchaseReturnInvoicePostModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? foc,
      double? discount,
      double? vat,
      String? notes,
      String? remarks,
      @JsonKey(name: "purchase_invoice_id") String? purchaseInvoiceId,
      @JsonKey(name: "return_order_code") String? returnOrderCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "invoiced_by") String? invoicedBy,
      @JsonKey(name: "vendor_id") String? venderId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "invoice_lines") List<Order>? lines});
}

/// @nodoc
class __$PurchaseReturnInvoicePostModelCopyWithImpl<$Res>
    extends _$PurchaseReturnInvoicePostModelCopyWithImpl<$Res>
    implements _$PurchaseReturnInvoicePostModelCopyWith<$Res> {
  __$PurchaseReturnInvoicePostModelCopyWithImpl(
      _PurchaseReturnInvoicePostModel _value,
      $Res Function(_PurchaseReturnInvoicePostModel) _then)
      : super(_value, (v) => _then(v as _PurchaseReturnInvoicePostModel));

  @override
  _PurchaseReturnInvoicePostModel get _value =>
      super._value as _PurchaseReturnInvoicePostModel;

  @override
  $Res call({
    Object? foc = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? purchaseInvoiceId = freezed,
    Object? returnOrderCode = freezed,
    Object? inventoryId = freezed,
    Object? invoicedBy = freezed,
    Object? venderId = freezed,
    Object? unitCost = freezed,
    Object? grandTotal = freezed,
    Object? vatableAmount = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? vendorTrnNumber = freezed,
    Object? lines = freezed,
  }) {
    return _then(_PurchaseReturnInvoicePostModel(
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
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: purchaseInvoiceId == freezed
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderCode: returnOrderCode == freezed
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: invoicedBy == freezed
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      venderId: venderId == freezed
          ? _value.venderId
          : venderId // ignore: cast_nullable_to_non_nullable
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
      lines: lines == freezed
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseReturnInvoicePostModel
    implements _PurchaseReturnInvoicePostModel {
  const _$_PurchaseReturnInvoicePostModel(
      {this.foc,
      this.discount,
      this.vat,
      this.notes,
      this.remarks,
      @JsonKey(name: "purchase_invoice_id") this.purchaseInvoiceId,
      @JsonKey(name: "return_order_code") this.returnOrderCode,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "invoiced_by") this.invoicedBy,
      @JsonKey(name: "vendor_id") this.venderId,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "grand_total") this.grandTotal,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "vendor_trn_number") this.vendorTrnNumber,
      @JsonKey(name: "invoice_lines") this.lines});

  factory _$_PurchaseReturnInvoicePostModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_PurchaseReturnInvoicePostModelFromJson(json);

  @override
  final double? foc;
  @override
  final double? discount;
  @override
  final double? vat;
  @override
  final String? notes;
  @override
  final String? remarks;
  @override
  @JsonKey(name: "purchase_invoice_id")
  final String? purchaseInvoiceId;
  @override
  @JsonKey(name: "return_order_code")
  final String? returnOrderCode;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "invoiced_by")
  final String? invoicedBy;
  @override
  @JsonKey(name: "vendor_id")
  final String? venderId;
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
  @override // @JsonKey(name: "purchase_invoice_line_id") final String? purchaseInvoiceLineId,
  @JsonKey(name: "invoice_lines")
  final List<Order>? lines;

  @override
  String toString() {
    return 'PurchaseReturnInvoicePostModel(foc: $foc, discount: $discount, vat: $vat, notes: $notes, remarks: $remarks, purchaseInvoiceId: $purchaseInvoiceId, returnOrderCode: $returnOrderCode, inventoryId: $inventoryId, invoicedBy: $invoicedBy, venderId: $venderId, unitCost: $unitCost, grandTotal: $grandTotal, vatableAmount: $vatableAmount, excessTax: $excessTax, actualCost: $actualCost, vendorTrnNumber: $vendorTrnNumber, lines: $lines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PurchaseReturnInvoicePostModel &&
            (identical(other.foc, foc) ||
                const DeepCollectionEquality().equals(other.foc, foc)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.remarks, remarks) ||
                const DeepCollectionEquality()
                    .equals(other.remarks, remarks)) &&
            (identical(other.purchaseInvoiceId, purchaseInvoiceId) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseInvoiceId, purchaseInvoiceId)) &&
            (identical(other.returnOrderCode, returnOrderCode) ||
                const DeepCollectionEquality()
                    .equals(other.returnOrderCode, returnOrderCode)) &&
            (identical(other.inventoryId, inventoryId) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryId, inventoryId)) &&
            (identical(other.invoicedBy, invoicedBy) ||
                const DeepCollectionEquality()
                    .equals(other.invoicedBy, invoicedBy)) &&
            (identical(other.venderId, venderId) ||
                const DeepCollectionEquality()
                    .equals(other.venderId, venderId)) &&
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
            (identical(other.lines, lines) ||
                const DeepCollectionEquality().equals(other.lines, lines)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(foc) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(remarks) ^
      const DeepCollectionEquality().hash(purchaseInvoiceId) ^
      const DeepCollectionEquality().hash(returnOrderCode) ^
      const DeepCollectionEquality().hash(inventoryId) ^
      const DeepCollectionEquality().hash(invoicedBy) ^
      const DeepCollectionEquality().hash(venderId) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(grandTotal) ^
      const DeepCollectionEquality().hash(vatableAmount) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(actualCost) ^
      const DeepCollectionEquality().hash(vendorTrnNumber) ^
      const DeepCollectionEquality().hash(lines);

  @JsonKey(ignore: true)
  @override
  _$PurchaseReturnInvoicePostModelCopyWith<_PurchaseReturnInvoicePostModel>
      get copyWith => __$PurchaseReturnInvoicePostModelCopyWithImpl<
          _PurchaseReturnInvoicePostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseReturnInvoicePostModelToJson(this);
  }
}

abstract class _PurchaseReturnInvoicePostModel
    implements PurchaseReturnInvoicePostModel {
  const factory _PurchaseReturnInvoicePostModel(
          {double? foc,
          double? discount,
          double? vat,
          String? notes,
          String? remarks,
          @JsonKey(name: "purchase_invoice_id") String? purchaseInvoiceId,
          @JsonKey(name: "return_order_code") String? returnOrderCode,
          @JsonKey(name: "inventory_id") String? inventoryId,
          @JsonKey(name: "invoiced_by") String? invoicedBy,
          @JsonKey(name: "vendor_id") String? venderId,
          @JsonKey(name: "unit_cost") double? unitCost,
          @JsonKey(name: "grand_total") double? grandTotal,
          @JsonKey(name: "vatable_amount") double? vatableAmount,
          @JsonKey(name: "excess_tax") double? excessTax,
          @JsonKey(name: "actual_cost") double? actualCost,
          @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
          @JsonKey(name: "invoice_lines") List<Order>? lines}) =
      _$_PurchaseReturnInvoicePostModel;

  factory _PurchaseReturnInvoicePostModel.fromJson(Map<String, dynamic> json) =
      _$_PurchaseReturnInvoicePostModel.fromJson;

  @override
  double? get foc => throw _privateConstructorUsedError;
  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  String? get notes => throw _privateConstructorUsedError;
  @override
  String? get remarks => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_invoice_id")
  String? get purchaseInvoiceId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_order_code")
  String? get returnOrderCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoiced_by")
  String? get invoicedBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_id")
  String? get venderId => throw _privateConstructorUsedError;
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
  @override // @JsonKey(name: "purchase_invoice_line_id") final String? purchaseInvoiceLineId,
  @JsonKey(name: "invoice_lines")
  List<Order>? get lines => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PurchaseReturnInvoicePostModelCopyWith<_PurchaseReturnInvoicePostModel>
      get copyWith => throw _privateConstructorUsedError;
}
