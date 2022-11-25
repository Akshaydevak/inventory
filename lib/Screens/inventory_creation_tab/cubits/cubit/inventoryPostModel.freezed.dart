// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inventoryPostModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InventoryPostModel _$InventoryPostModelFromJson(Map<String, dynamic> json) {
  return _InventoryPostModel.fromJson(json);
}

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
      _$InventoryPostModelCopyWithImpl<$Res, InventoryPostModel>;
  @useResult
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
class _$InventoryPostModelCopyWithImpl<$Res, $Val extends InventoryPostModel>
    implements $InventoryPostModelCopyWith<$Res> {
  _$InventoryPostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      purchaseOrderCode: freezed == purchaseOrderCode
          ? _value.purchaseOrderCode
          : purchaseOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: freezed == invoicedBy
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      grandtotal: freezed == grandtotal
          ? _value.grandtotal
          : grandtotal // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceLines: freezed == invoiceLines
          ? _value.invoiceLines
          : invoiceLines // ignore: cast_nullable_to_non_nullable
              as List<Lines>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InventoryPostModelCopyWith<$Res>
    implements $InventoryPostModelCopyWith<$Res> {
  factory _$$_InventoryPostModelCopyWith(_$_InventoryPostModel value,
          $Res Function(_$_InventoryPostModel) then) =
      __$$_InventoryPostModelCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_InventoryPostModelCopyWithImpl<$Res>
    extends _$InventoryPostModelCopyWithImpl<$Res, _$_InventoryPostModel>
    implements _$$_InventoryPostModelCopyWith<$Res> {
  __$$_InventoryPostModelCopyWithImpl(
      _$_InventoryPostModel _value, $Res Function(_$_InventoryPostModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    return _then(_$_InventoryPostModel(
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      purchaseOrderCode: freezed == purchaseOrderCode
          ? _value.purchaseOrderCode
          : purchaseOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: freezed == invoicedBy
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      grandtotal: freezed == grandtotal
          ? _value.grandtotal
          : grandtotal // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceLines: freezed == invoiceLines
          ? _value._invoiceLines
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
      @JsonKey(name: "invoice_lines") final List<Lines>? invoiceLines})
      : _invoiceLines = invoiceLines;

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
  final List<Lines>? _invoiceLines;
  @override
  @JsonKey(name: "invoice_lines")
  List<Lines>? get invoiceLines {
    final value = _invoiceLines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InventoryPostModel(discount: $discount, notes: $notes, remarks: $remarks, foc: $foc, vat: $vat, vatableAmount: $vatableAmount, purchaseOrderCode: $purchaseOrderCode, inventoryId: $inventoryId, invoicedBy: $invoicedBy, grandtotal: $grandtotal, actualCost: $actualCost, excessTax: $excessTax, unitCost: $unitCost, invoiceLines: $invoiceLines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InventoryPostModel &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.foc, foc) || other.foc == foc) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.vatableAmount, vatableAmount) ||
                other.vatableAmount == vatableAmount) &&
            (identical(other.purchaseOrderCode, purchaseOrderCode) ||
                other.purchaseOrderCode == purchaseOrderCode) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.invoicedBy, invoicedBy) ||
                other.invoicedBy == invoicedBy) &&
            (identical(other.grandtotal, grandtotal) ||
                other.grandtotal == grandtotal) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            const DeepCollectionEquality()
                .equals(other._invoiceLines, _invoiceLines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      discount,
      notes,
      remarks,
      foc,
      vat,
      vatableAmount,
      purchaseOrderCode,
      inventoryId,
      invoicedBy,
      grandtotal,
      actualCost,
      excessTax,
      unitCost,
      const DeepCollectionEquality().hash(_invoiceLines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InventoryPostModelCopyWith<_$_InventoryPostModel> get copyWith =>
      __$$_InventoryPostModelCopyWithImpl<_$_InventoryPostModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InventoryPostModelToJson(
      this,
    );
  }
}

abstract class _InventoryPostModel implements InventoryPostModel {
  const factory _InventoryPostModel(
          {final double? discount,
          final String? notes,
          final String? remarks,
          final double? foc,
          final double? vat,
          @JsonKey(name: "vatable_amount") final double? vatableAmount,
          @JsonKey(name: "purchase_order_code") final String? purchaseOrderCode,
          @JsonKey(name: "inventory_id") final String? inventoryId,
          @JsonKey(name: "invoiced_by") final String? invoicedBy,
          @JsonKey(name: "grand_total") final double? grandtotal,
          @JsonKey(name: "actual_cost") final double? actualCost,
          @JsonKey(name: "excess_tax") final double? excessTax,
          @JsonKey(name: "unit_cost") final double? unitCost,
          @JsonKey(name: "invoice_lines") final List<Lines>? invoiceLines}) =
      _$_InventoryPostModel;

  factory _InventoryPostModel.fromJson(Map<String, dynamic> json) =
      _$_InventoryPostModel.fromJson;

  @override
  double? get discount;
  @override
  String? get notes;
  @override
  String? get remarks;
  @override
  double? get foc;
  @override
  double? get vat;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount;
  @override
  @JsonKey(name: "purchase_order_code")
  String? get purchaseOrderCode;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "invoiced_by")
  String? get invoicedBy;
  @override
  @JsonKey(name: "grand_total")
  double? get grandtotal;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "invoice_lines")
  List<Lines>? get invoiceLines;
  @override
  @JsonKey(ignore: true)
  _$$_InventoryPostModelCopyWith<_$_InventoryPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}
