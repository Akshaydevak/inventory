// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invoicepost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseReturnInvoicePostModel _$PurchaseReturnInvoicePostModelFromJson(
    Map<String, dynamic> json) {
  return _PurchaseReturnInvoicePostModel.fromJson(json);
}

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
      _$PurchaseReturnInvoicePostModelCopyWithImpl<$Res,
          PurchaseReturnInvoicePostModel>;
  @useResult
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
class _$PurchaseReturnInvoicePostModelCopyWithImpl<$Res,
        $Val extends PurchaseReturnInvoicePostModel>
    implements $PurchaseReturnInvoicePostModelCopyWith<$Res> {
  _$PurchaseReturnInvoicePostModelCopyWithImpl(this._value, this._then);

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
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: freezed == purchaseInvoiceId
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderCode: freezed == returnOrderCode
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: freezed == invoicedBy
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      venderId: freezed == venderId
          ? _value.venderId
          : venderId // ignore: cast_nullable_to_non_nullable
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
      lines: freezed == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchaseReturnInvoicePostModelCopyWith<$Res>
    implements $PurchaseReturnInvoicePostModelCopyWith<$Res> {
  factory _$$_PurchaseReturnInvoicePostModelCopyWith(
          _$_PurchaseReturnInvoicePostModel value,
          $Res Function(_$_PurchaseReturnInvoicePostModel) then) =
      __$$_PurchaseReturnInvoicePostModelCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_PurchaseReturnInvoicePostModelCopyWithImpl<$Res>
    extends _$PurchaseReturnInvoicePostModelCopyWithImpl<$Res,
        _$_PurchaseReturnInvoicePostModel>
    implements _$$_PurchaseReturnInvoicePostModelCopyWith<$Res> {
  __$$_PurchaseReturnInvoicePostModelCopyWithImpl(
      _$_PurchaseReturnInvoicePostModel _value,
      $Res Function(_$_PurchaseReturnInvoicePostModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    return _then(_$_PurchaseReturnInvoicePostModel(
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
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: freezed == purchaseInvoiceId
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderCode: freezed == returnOrderCode
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: freezed == invoicedBy
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      venderId: freezed == venderId
          ? _value.venderId
          : venderId // ignore: cast_nullable_to_non_nullable
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
      lines: freezed == lines
          ? _value._lines
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
      @JsonKey(name: "invoice_lines") final List<Order>? lines})
      : _lines = lines;

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
// @JsonKey(name: "purchase_invoice_line_id") final String? purchaseInvoiceLineId,
  final List<Order>? _lines;
// @JsonKey(name: "purchase_invoice_line_id") final String? purchaseInvoiceLineId,
  @override
  @JsonKey(name: "invoice_lines")
  List<Order>? get lines {
    final value = _lines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PurchaseReturnInvoicePostModel(foc: $foc, discount: $discount, vat: $vat, notes: $notes, remarks: $remarks, purchaseInvoiceId: $purchaseInvoiceId, returnOrderCode: $returnOrderCode, inventoryId: $inventoryId, invoicedBy: $invoicedBy, venderId: $venderId, unitCost: $unitCost, grandTotal: $grandTotal, vatableAmount: $vatableAmount, excessTax: $excessTax, actualCost: $actualCost, vendorTrnNumber: $vendorTrnNumber, lines: $lines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseReturnInvoicePostModel &&
            (identical(other.foc, foc) || other.foc == foc) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.purchaseInvoiceId, purchaseInvoiceId) ||
                other.purchaseInvoiceId == purchaseInvoiceId) &&
            (identical(other.returnOrderCode, returnOrderCode) ||
                other.returnOrderCode == returnOrderCode) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.invoicedBy, invoicedBy) ||
                other.invoicedBy == invoicedBy) &&
            (identical(other.venderId, venderId) ||
                other.venderId == venderId) &&
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
            const DeepCollectionEquality().equals(other._lines, _lines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      foc,
      discount,
      vat,
      notes,
      remarks,
      purchaseInvoiceId,
      returnOrderCode,
      inventoryId,
      invoicedBy,
      venderId,
      unitCost,
      grandTotal,
      vatableAmount,
      excessTax,
      actualCost,
      vendorTrnNumber,
      const DeepCollectionEquality().hash(_lines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseReturnInvoicePostModelCopyWith<_$_PurchaseReturnInvoicePostModel>
      get copyWith => __$$_PurchaseReturnInvoicePostModelCopyWithImpl<
          _$_PurchaseReturnInvoicePostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseReturnInvoicePostModelToJson(
      this,
    );
  }
}

abstract class _PurchaseReturnInvoicePostModel
    implements PurchaseReturnInvoicePostModel {
  const factory _PurchaseReturnInvoicePostModel(
          {final double? foc,
          final double? discount,
          final double? vat,
          final String? notes,
          final String? remarks,
          @JsonKey(name: "purchase_invoice_id") final String? purchaseInvoiceId,
          @JsonKey(name: "return_order_code") final String? returnOrderCode,
          @JsonKey(name: "inventory_id") final String? inventoryId,
          @JsonKey(name: "invoiced_by") final String? invoicedBy,
          @JsonKey(name: "vendor_id") final String? venderId,
          @JsonKey(name: "unit_cost") final double? unitCost,
          @JsonKey(name: "grand_total") final double? grandTotal,
          @JsonKey(name: "vatable_amount") final double? vatableAmount,
          @JsonKey(name: "excess_tax") final double? excessTax,
          @JsonKey(name: "actual_cost") final double? actualCost,
          @JsonKey(name: "vendor_trn_number") final String? vendorTrnNumber,
          @JsonKey(name: "invoice_lines") final List<Order>? lines}) =
      _$_PurchaseReturnInvoicePostModel;

  factory _PurchaseReturnInvoicePostModel.fromJson(Map<String, dynamic> json) =
      _$_PurchaseReturnInvoicePostModel.fromJson;

  @override
  double? get foc;
  @override
  double? get discount;
  @override
  double? get vat;
  @override
  String? get notes;
  @override
  String? get remarks;
  @override
  @JsonKey(name: "purchase_invoice_id")
  String? get purchaseInvoiceId;
  @override
  @JsonKey(name: "return_order_code")
  String? get returnOrderCode;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "invoiced_by")
  String? get invoicedBy;
  @override
  @JsonKey(name: "vendor_id")
  String? get venderId;
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
  @override // @JsonKey(name: "purchase_invoice_line_id") final String? purchaseInvoiceLineId,
  @JsonKey(name: "invoice_lines")
  List<Order>? get lines;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseReturnInvoicePostModelCopyWith<_$_PurchaseReturnInvoicePostModel>
      get copyWith => throw _privateConstructorUsedError;
}

PurchasePaymentModel _$PurchasePaymentModelFromJson(Map<String, dynamic> json) {
  return _PurchasePaymentModel.fromJson(json);
}

/// @nodoc
mixin _$PurchasePaymentModel {
  String? get tittle => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchasePaymentModelCopyWith<PurchasePaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchasePaymentModelCopyWith<$Res> {
  factory $PurchasePaymentModelCopyWith(PurchasePaymentModel value,
          $Res Function(PurchasePaymentModel) then) =
      _$PurchasePaymentModelCopyWithImpl<$Res, PurchasePaymentModel>;
  @useResult
  $Res call({String? tittle, String? notes, String? code});
}

/// @nodoc
class _$PurchasePaymentModelCopyWithImpl<$Res,
        $Val extends PurchasePaymentModel>
    implements $PurchasePaymentModelCopyWith<$Res> {
  _$PurchasePaymentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tittle = freezed,
    Object? notes = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      tittle: freezed == tittle
          ? _value.tittle
          : tittle // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchasePaymentModelCopyWith<$Res>
    implements $PurchasePaymentModelCopyWith<$Res> {
  factory _$$_PurchasePaymentModelCopyWith(_$_PurchasePaymentModel value,
          $Res Function(_$_PurchasePaymentModel) then) =
      __$$_PurchasePaymentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? tittle, String? notes, String? code});
}

/// @nodoc
class __$$_PurchasePaymentModelCopyWithImpl<$Res>
    extends _$PurchasePaymentModelCopyWithImpl<$Res, _$_PurchasePaymentModel>
    implements _$$_PurchasePaymentModelCopyWith<$Res> {
  __$$_PurchasePaymentModelCopyWithImpl(_$_PurchasePaymentModel _value,
      $Res Function(_$_PurchasePaymentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tittle = freezed,
    Object? notes = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_PurchasePaymentModel(
      tittle: freezed == tittle
          ? _value.tittle
          : tittle // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchasePaymentModel implements _PurchasePaymentModel {
  const _$_PurchasePaymentModel({this.tittle, this.notes, this.code});

  factory _$_PurchasePaymentModel.fromJson(Map<String, dynamic> json) =>
      _$$_PurchasePaymentModelFromJson(json);

  @override
  final String? tittle;
  @override
  final String? notes;
  @override
  final String? code;

  @override
  String toString() {
    return 'PurchasePaymentModel(tittle: $tittle, notes: $notes, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchasePaymentModel &&
            (identical(other.tittle, tittle) || other.tittle == tittle) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tittle, notes, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchasePaymentModelCopyWith<_$_PurchasePaymentModel> get copyWith =>
      __$$_PurchasePaymentModelCopyWithImpl<_$_PurchasePaymentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchasePaymentModelToJson(
      this,
    );
  }
}

abstract class _PurchasePaymentModel implements PurchasePaymentModel {
  const factory _PurchasePaymentModel(
      {final String? tittle,
      final String? notes,
      final String? code}) = _$_PurchasePaymentModel;

  factory _PurchasePaymentModel.fromJson(Map<String, dynamic> json) =
      _$_PurchasePaymentModel.fromJson;

  @override
  String? get tittle;
  @override
  String? get notes;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$_PurchasePaymentModelCopyWith<_$_PurchasePaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PurchasePaymentPostModel _$PurchasePaymentPostModelFromJson(
    Map<String, dynamic> json) {
  return _PurchasePaymentPostModel.fromJson(json);
}

/// @nodoc
mixin _$PurchasePaymentPostModel {
  String? get contact => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_code")
  String? get customerCode => throw _privateConstructorUsedError;
  @JsonKey(name: "process_id")
  int? get processId => throw _privateConstructorUsedError;
  @JsonKey(name: "method_code")
  String? get methodCode => throw _privateConstructorUsedError;
  @JsonKey(name: "order_id")
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_code")
  String? get tranSactionCode => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_name")
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  double? get totalAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchasePaymentPostModelCopyWith<PurchasePaymentPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchasePaymentPostModelCopyWith<$Res> {
  factory $PurchasePaymentPostModelCopyWith(PurchasePaymentPostModel value,
          $Res Function(PurchasePaymentPostModel) then) =
      _$PurchasePaymentPostModelCopyWithImpl<$Res, PurchasePaymentPostModel>;
  @useResult
  $Res call(
      {String? contact,
      String? status,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "process_id") int? processId,
      @JsonKey(name: "method_code") String? methodCode,
      @JsonKey(name: "order_id") String? orderId,
      @JsonKey(name: "transaction_code") String? tranSactionCode,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "total_amount") double? totalAmount});
}

/// @nodoc
class _$PurchasePaymentPostModelCopyWithImpl<$Res,
        $Val extends PurchasePaymentPostModel>
    implements $PurchasePaymentPostModelCopyWith<$Res> {
  _$PurchasePaymentPostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
    Object? status = freezed,
    Object? customerCode = freezed,
    Object? processId = freezed,
    Object? methodCode = freezed,
    Object? orderId = freezed,
    Object? tranSactionCode = freezed,
    Object? customerName = freezed,
    Object? totalAmount = freezed,
  }) {
    return _then(_value.copyWith(
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      processId: freezed == processId
          ? _value.processId
          : processId // ignore: cast_nullable_to_non_nullable
              as int?,
      methodCode: freezed == methodCode
          ? _value.methodCode
          : methodCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      tranSactionCode: freezed == tranSactionCode
          ? _value.tranSactionCode
          : tranSactionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchasePaymentPostModelCopyWith<$Res>
    implements $PurchasePaymentPostModelCopyWith<$Res> {
  factory _$$_PurchasePaymentPostModelCopyWith(
          _$_PurchasePaymentPostModel value,
          $Res Function(_$_PurchasePaymentPostModel) then) =
      __$$_PurchasePaymentPostModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? contact,
      String? status,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "process_id") int? processId,
      @JsonKey(name: "method_code") String? methodCode,
      @JsonKey(name: "order_id") String? orderId,
      @JsonKey(name: "transaction_code") String? tranSactionCode,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "total_amount") double? totalAmount});
}

/// @nodoc
class __$$_PurchasePaymentPostModelCopyWithImpl<$Res>
    extends _$PurchasePaymentPostModelCopyWithImpl<$Res,
        _$_PurchasePaymentPostModel>
    implements _$$_PurchasePaymentPostModelCopyWith<$Res> {
  __$$_PurchasePaymentPostModelCopyWithImpl(_$_PurchasePaymentPostModel _value,
      $Res Function(_$_PurchasePaymentPostModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
    Object? status = freezed,
    Object? customerCode = freezed,
    Object? processId = freezed,
    Object? methodCode = freezed,
    Object? orderId = freezed,
    Object? tranSactionCode = freezed,
    Object? customerName = freezed,
    Object? totalAmount = freezed,
  }) {
    return _then(_$_PurchasePaymentPostModel(
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      processId: freezed == processId
          ? _value.processId
          : processId // ignore: cast_nullable_to_non_nullable
              as int?,
      methodCode: freezed == methodCode
          ? _value.methodCode
          : methodCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      tranSactionCode: freezed == tranSactionCode
          ? _value.tranSactionCode
          : tranSactionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchasePaymentPostModel implements _PurchasePaymentPostModel {
  const _$_PurchasePaymentPostModel(
      {this.contact,
      this.status,
      @JsonKey(name: "customer_code") this.customerCode,
      @JsonKey(name: "process_id") this.processId,
      @JsonKey(name: "method_code") this.methodCode,
      @JsonKey(name: "order_id") this.orderId,
      @JsonKey(name: "transaction_code") this.tranSactionCode,
      @JsonKey(name: "customer_name") this.customerName,
      @JsonKey(name: "total_amount") this.totalAmount});

  factory _$_PurchasePaymentPostModel.fromJson(Map<String, dynamic> json) =>
      _$$_PurchasePaymentPostModelFromJson(json);

  @override
  final String? contact;
  @override
  final String? status;
  @override
  @JsonKey(name: "customer_code")
  final String? customerCode;
  @override
  @JsonKey(name: "process_id")
  final int? processId;
  @override
  @JsonKey(name: "method_code")
  final String? methodCode;
  @override
  @JsonKey(name: "order_id")
  final String? orderId;
  @override
  @JsonKey(name: "transaction_code")
  final String? tranSactionCode;
  @override
  @JsonKey(name: "customer_name")
  final String? customerName;
  @override
  @JsonKey(name: "total_amount")
  final double? totalAmount;

  @override
  String toString() {
    return 'PurchasePaymentPostModel(contact: $contact, status: $status, customerCode: $customerCode, processId: $processId, methodCode: $methodCode, orderId: $orderId, tranSactionCode: $tranSactionCode, customerName: $customerName, totalAmount: $totalAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchasePaymentPostModel &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.customerCode, customerCode) ||
                other.customerCode == customerCode) &&
            (identical(other.processId, processId) ||
                other.processId == processId) &&
            (identical(other.methodCode, methodCode) ||
                other.methodCode == methodCode) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.tranSactionCode, tranSactionCode) ||
                other.tranSactionCode == tranSactionCode) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      contact,
      status,
      customerCode,
      processId,
      methodCode,
      orderId,
      tranSactionCode,
      customerName,
      totalAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchasePaymentPostModelCopyWith<_$_PurchasePaymentPostModel>
      get copyWith => __$$_PurchasePaymentPostModelCopyWithImpl<
          _$_PurchasePaymentPostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchasePaymentPostModelToJson(
      this,
    );
  }
}

abstract class _PurchasePaymentPostModel implements PurchasePaymentPostModel {
  const factory _PurchasePaymentPostModel(
          {final String? contact,
          final String? status,
          @JsonKey(name: "customer_code") final String? customerCode,
          @JsonKey(name: "process_id") final int? processId,
          @JsonKey(name: "method_code") final String? methodCode,
          @JsonKey(name: "order_id") final String? orderId,
          @JsonKey(name: "transaction_code") final String? tranSactionCode,
          @JsonKey(name: "customer_name") final String? customerName,
          @JsonKey(name: "total_amount") final double? totalAmount}) =
      _$_PurchasePaymentPostModel;

  factory _PurchasePaymentPostModel.fromJson(Map<String, dynamic> json) =
      _$_PurchasePaymentPostModel.fromJson;

  @override
  String? get contact;
  @override
  String? get status;
  @override
  @JsonKey(name: "customer_code")
  String? get customerCode;
  @override
  @JsonKey(name: "process_id")
  int? get processId;
  @override
  @JsonKey(name: "method_code")
  String? get methodCode;
  @override
  @JsonKey(name: "order_id")
  String? get orderId;
  @override
  @JsonKey(name: "transaction_code")
  String? get tranSactionCode;
  @override
  @JsonKey(name: "customer_name")
  String? get customerName;
  @override
  @JsonKey(name: "total_amount")
  double? get totalAmount;
  @override
  @JsonKey(ignore: true)
  _$$_PurchasePaymentPostModelCopyWith<_$_PurchasePaymentPostModel>
      get copyWith => throw _privateConstructorUsedError;
}
