// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inventoryPostModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InventoryPostModel _$InventoryPostModelFromJson(Map<String, dynamic> json) {
  return _InventoryPostModel.fromJson(json);
}

/// @nodoc
class _$InventoryPostModelTearOff {
  const _$InventoryPostModelTearOff();

  _InventoryPostModel call(
      {double? discount,
      String? notes,
      String? remarks,
      double? foc,
      double? vat,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "purchase_order_code") String? purchaseOrderCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "invoiced_by") String? invoicedBy,
      @JsonKey(name: "grand_total") double? grandtotal,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "invoice_lines") List<Lines>? invoiceLines}) {
    return _InventoryPostModel(
      discount: discount,
      notes: notes,
      remarks: remarks,
      foc: foc,
      vat: vat,
      vatableAmount: vatableAmount,
      purchaseOrderCode: purchaseOrderCode,
      inventoryId: inventoryId,
      invoicedBy: invoicedBy,
      grandtotal: grandtotal,
      actualCost: actualCost,
      excessTax: excessTax,
      unitCost: unitCost,
      invoiceLines: invoiceLines,
    );
  }

  InventoryPostModel fromJson(Map<String, Object> json) {
    return InventoryPostModel.fromJson(json);
  }
}

/// @nodoc
const $InventoryPostModel = _$InventoryPostModelTearOff();

/// @nodoc
mixin _$InventoryPostModel {
  double? get discount => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  double? get foc => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_order_code")
  String? get purchaseOrderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiced_by")
  String? get invoicedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "grand_total")
  double? get grandtotal => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_lines")
  List<Lines>? get invoiceLines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InventoryPostModelCopyWith<InventoryPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryPostModelCopyWith<$Res> {
  factory $InventoryPostModelCopyWith(
          InventoryPostModel value, $Res Function(InventoryPostModel) then) =
      _$InventoryPostModelCopyWithImpl<$Res>;
  $Res call(
      {double? discount,
      String? notes,
      String? remarks,
      double? foc,
      double? vat,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "purchase_order_code") String? purchaseOrderCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "invoiced_by") String? invoicedBy,
      @JsonKey(name: "grand_total") double? grandtotal,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "invoice_lines") List<Lines>? invoiceLines});
}

/// @nodoc
class _$InventoryPostModelCopyWithImpl<$Res>
    implements $InventoryPostModelCopyWith<$Res> {
  _$InventoryPostModelCopyWithImpl(this._value, this._then);

  final InventoryPostModel _value;
  // ignore: unused_field
  final $Res Function(InventoryPostModel) _then;

  @override
  $Res call({
    Object? discount = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? foc = freezed,
    Object? vat = freezed,
    Object? vatableAmount = freezed,
    Object? purchaseOrderCode = freezed,
    Object? inventoryId = freezed,
    Object? invoicedBy = freezed,
    Object? grandtotal = freezed,
    Object? actualCost = freezed,
    Object? excessTax = freezed,
    Object? unitCost = freezed,
    Object? invoiceLines = freezed,
  }) {
    return _then(_value.copyWith(
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: vatableAmount == freezed
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      purchaseOrderCode: purchaseOrderCode == freezed
          ? _value.purchaseOrderCode
          : purchaseOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: invoicedBy == freezed
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      grandtotal: grandtotal == freezed
          ? _value.grandtotal
          : grandtotal // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceLines: invoiceLines == freezed
          ? _value.invoiceLines
          : invoiceLines // ignore: cast_nullable_to_non_nullable
              as List<Lines>?,
    ));
  }
}

/// @nodoc
abstract class _$InventoryPostModelCopyWith<$Res>
    implements $InventoryPostModelCopyWith<$Res> {
  factory _$InventoryPostModelCopyWith(
          _InventoryPostModel value, $Res Function(_InventoryPostModel) then) =
      __$InventoryPostModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? discount,
      String? notes,
      String? remarks,
      double? foc,
      double? vat,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "purchase_order_code") String? purchaseOrderCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "invoiced_by") String? invoicedBy,
      @JsonKey(name: "grand_total") double? grandtotal,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "invoice_lines") List<Lines>? invoiceLines});
}

/// @nodoc
class __$InventoryPostModelCopyWithImpl<$Res>
    extends _$InventoryPostModelCopyWithImpl<$Res>
    implements _$InventoryPostModelCopyWith<$Res> {
  __$InventoryPostModelCopyWithImpl(
      _InventoryPostModel _value, $Res Function(_InventoryPostModel) _then)
      : super(_value, (v) => _then(v as _InventoryPostModel));

  @override
  _InventoryPostModel get _value => super._value as _InventoryPostModel;

  @override
  $Res call({
    Object? discount = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? foc = freezed,
    Object? vat = freezed,
    Object? vatableAmount = freezed,
    Object? purchaseOrderCode = freezed,
    Object? inventoryId = freezed,
    Object? invoicedBy = freezed,
    Object? grandtotal = freezed,
    Object? actualCost = freezed,
    Object? excessTax = freezed,
    Object? unitCost = freezed,
    Object? invoiceLines = freezed,
  }) {
    return _then(_InventoryPostModel(
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: vatableAmount == freezed
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      purchaseOrderCode: purchaseOrderCode == freezed
          ? _value.purchaseOrderCode
          : purchaseOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: invoicedBy == freezed
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      grandtotal: grandtotal == freezed
          ? _value.grandtotal
          : grandtotal // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceLines: invoiceLines == freezed
          ? _value.invoiceLines
          : invoiceLines // ignore: cast_nullable_to_non_nullable
              as List<Lines>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InventoryPostModel implements _InventoryPostModel {
  const _$_InventoryPostModel(
      {this.discount,
      this.notes,
      this.remarks,
      this.foc,
      this.vat,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "purchase_order_code") this.purchaseOrderCode,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "invoiced_by") this.invoicedBy,
      @JsonKey(name: "grand_total") this.grandtotal,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "invoice_lines") this.invoiceLines});

  factory _$_InventoryPostModel.fromJson(Map<String, dynamic> json) =>
      _$$_InventoryPostModelFromJson(json);

  @override
  final double? discount;
  @override
  final String? notes;
  @override
  final String? remarks;
  @override
  final double? foc;
  @override
  final double? vat;
  @override
  @JsonKey(name: "vatable_amount")
  final double? vatableAmount;
  @override
  @JsonKey(name: "purchase_order_code")
  final String? purchaseOrderCode;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "invoiced_by")
  final String? invoicedBy;
  @override
  @JsonKey(name: "grand_total")
  final double? grandtotal;
  @override
  @JsonKey(name: "actual_cost")
  final double? actualCost;
  @override
  @JsonKey(name: "excess_tax")
  final double? excessTax;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "invoice_lines")
  final List<Lines>? invoiceLines;

  @override
  String toString() {
    return 'InventoryPostModel(discount: $discount, notes: $notes, remarks: $remarks, foc: $foc, vat: $vat, vatableAmount: $vatableAmount, purchaseOrderCode: $purchaseOrderCode, inventoryId: $inventoryId, invoicedBy: $invoicedBy, grandtotal: $grandtotal, actualCost: $actualCost, excessTax: $excessTax, unitCost: $unitCost, invoiceLines: $invoiceLines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InventoryPostModel &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.remarks, remarks) ||
                const DeepCollectionEquality()
                    .equals(other.remarks, remarks)) &&
            (identical(other.foc, foc) ||
                const DeepCollectionEquality().equals(other.foc, foc)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.vatableAmount, vatableAmount) ||
                const DeepCollectionEquality()
                    .equals(other.vatableAmount, vatableAmount)) &&
            (identical(other.purchaseOrderCode, purchaseOrderCode) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseOrderCode, purchaseOrderCode)) &&
            (identical(other.inventoryId, inventoryId) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryId, inventoryId)) &&
            (identical(other.invoicedBy, invoicedBy) ||
                const DeepCollectionEquality()
                    .equals(other.invoicedBy, invoicedBy)) &&
            (identical(other.grandtotal, grandtotal) ||
                const DeepCollectionEquality()
                    .equals(other.grandtotal, grandtotal)) &&
            (identical(other.actualCost, actualCost) ||
                const DeepCollectionEquality()
                    .equals(other.actualCost, actualCost)) &&
            (identical(other.excessTax, excessTax) ||
                const DeepCollectionEquality()
                    .equals(other.excessTax, excessTax)) &&
            (identical(other.unitCost, unitCost) ||
                const DeepCollectionEquality()
                    .equals(other.unitCost, unitCost)) &&
            (identical(other.invoiceLines, invoiceLines) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceLines, invoiceLines)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(remarks) ^
      const DeepCollectionEquality().hash(foc) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(vatableAmount) ^
      const DeepCollectionEquality().hash(purchaseOrderCode) ^
      const DeepCollectionEquality().hash(inventoryId) ^
      const DeepCollectionEquality().hash(invoicedBy) ^
      const DeepCollectionEquality().hash(grandtotal) ^
      const DeepCollectionEquality().hash(actualCost) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(invoiceLines);

  @JsonKey(ignore: true)
  @override
  _$InventoryPostModelCopyWith<_InventoryPostModel> get copyWith =>
      __$InventoryPostModelCopyWithImpl<_InventoryPostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InventoryPostModelToJson(this);
  }
}

abstract class _InventoryPostModel implements InventoryPostModel {
  const factory _InventoryPostModel(
          {double? discount,
          String? notes,
          String? remarks,
          double? foc,
          double? vat,
          @JsonKey(name: "vatable_amount") double? vatableAmount,
          @JsonKey(name: "purchase_order_code") String? purchaseOrderCode,
          @JsonKey(name: "inventory_id") String? inventoryId,
          @JsonKey(name: "invoiced_by") String? invoicedBy,
          @JsonKey(name: "grand_total") double? grandtotal,
          @JsonKey(name: "actual_cost") double? actualCost,
          @JsonKey(name: "excess_tax") double? excessTax,
          @JsonKey(name: "unit_cost") double? unitCost,
          @JsonKey(name: "invoice_lines") List<Lines>? invoiceLines}) =
      _$_InventoryPostModel;

  factory _InventoryPostModel.fromJson(Map<String, dynamic> json) =
      _$_InventoryPostModel.fromJson;

  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  String? get notes => throw _privateConstructorUsedError;
  @override
  String? get remarks => throw _privateConstructorUsedError;
  @override
  double? get foc => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_order_code")
  String? get purchaseOrderCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoiced_by")
  String? get invoicedBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "grand_total")
  double? get grandtotal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_lines")
  List<Lines>? get invoiceLines => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InventoryPostModelCopyWith<_InventoryPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}
