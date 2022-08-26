// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invoicepostmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesReturnInvoicePostModel _$SalesReturnInvoicePostModelFromJson(
    Map<String, dynamic> json) {
  return _SalesReturnInvoicePostModel.fromJson(json);
}

/// @nodoc
class _$SalesReturnInvoicePostModelTearOff {
  const _$SalesReturnInvoicePostModelTearOff();

  _SalesReturnInvoicePostModel call(
      {double? discount,
      double? vat,
      String? notes,
      String? remarks,
      @JsonKey(name: "sales_order_id") int? salesOrderId,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "invoiced_by") String? invoicedBy,
      @JsonKey(name: "assigned_to") String? assignedTo,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "invoice_lines") List<Postlines>? ivoiceLines}) {
    return _SalesReturnInvoicePostModel(
      discount: discount,
      vat: vat,
      notes: notes,
      remarks: remarks,
      salesOrderId: salesOrderId,
      inventoryId: inventoryId,
      invoicedBy: invoicedBy,
      assignedTo: assignedTo,
      unitCost: unitCost,
      excessTax: excessTax,
      taxableAmount: taxableAmount,
      sellingPriceTotal: sellingPriceTotal,
      totalPrice: totalPrice,
      ivoiceLines: ivoiceLines,
    );
  }

  SalesReturnInvoicePostModel fromJson(Map<String, Object> json) {
    return SalesReturnInvoicePostModel.fromJson(json);
  }
}

/// @nodoc
const $SalesReturnInvoicePostModel = _$SalesReturnInvoicePostModelTearOff();

/// @nodoc
mixin _$SalesReturnInvoicePostModel {
// final int? id,
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_order_id")
  int? get salesOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiced_by")
  String? get invoicedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "assigned_to")
  String? get assignedTo =>
      throw _privateConstructorUsedError; // @JsonKey(name: "return_order_code") final String? returnOrderCode,
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
  List<Postlines>? get ivoiceLines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesReturnInvoicePostModelCopyWith<SalesReturnInvoicePostModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesReturnInvoicePostModelCopyWith<$Res> {
  factory $SalesReturnInvoicePostModelCopyWith(
          SalesReturnInvoicePostModel value,
          $Res Function(SalesReturnInvoicePostModel) then) =
      _$SalesReturnInvoicePostModelCopyWithImpl<$Res>;
  $Res call(
      {double? discount,
      double? vat,
      String? notes,
      String? remarks,
      @JsonKey(name: "sales_order_id") int? salesOrderId,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "invoiced_by") String? invoicedBy,
      @JsonKey(name: "assigned_to") String? assignedTo,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "invoice_lines") List<Postlines>? ivoiceLines});
}

/// @nodoc
class _$SalesReturnInvoicePostModelCopyWithImpl<$Res>
    implements $SalesReturnInvoicePostModelCopyWith<$Res> {
  _$SalesReturnInvoicePostModelCopyWithImpl(this._value, this._then);

  final SalesReturnInvoicePostModel _value;
  // ignore: unused_field
  final $Res Function(SalesReturnInvoicePostModel) _then;

  @override
  $Res call({
    Object? discount = freezed,
    Object? vat = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? salesOrderId = freezed,
    Object? inventoryId = freezed,
    Object? invoicedBy = freezed,
    Object? assignedTo = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? ivoiceLines = freezed,
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
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      salesOrderId: salesOrderId == freezed
          ? _value.salesOrderId
          : salesOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: invoicedBy == freezed
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
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
      ivoiceLines: ivoiceLines == freezed
          ? _value.ivoiceLines
          : ivoiceLines // ignore: cast_nullable_to_non_nullable
              as List<Postlines>?,
    ));
  }
}

/// @nodoc
abstract class _$SalesReturnInvoicePostModelCopyWith<$Res>
    implements $SalesReturnInvoicePostModelCopyWith<$Res> {
  factory _$SalesReturnInvoicePostModelCopyWith(
          _SalesReturnInvoicePostModel value,
          $Res Function(_SalesReturnInvoicePostModel) then) =
      __$SalesReturnInvoicePostModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? discount,
      double? vat,
      String? notes,
      String? remarks,
      @JsonKey(name: "sales_order_id") int? salesOrderId,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "invoiced_by") String? invoicedBy,
      @JsonKey(name: "assigned_to") String? assignedTo,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "invoice_lines") List<Postlines>? ivoiceLines});
}

/// @nodoc
class __$SalesReturnInvoicePostModelCopyWithImpl<$Res>
    extends _$SalesReturnInvoicePostModelCopyWithImpl<$Res>
    implements _$SalesReturnInvoicePostModelCopyWith<$Res> {
  __$SalesReturnInvoicePostModelCopyWithImpl(
      _SalesReturnInvoicePostModel _value,
      $Res Function(_SalesReturnInvoicePostModel) _then)
      : super(_value, (v) => _then(v as _SalesReturnInvoicePostModel));

  @override
  _SalesReturnInvoicePostModel get _value =>
      super._value as _SalesReturnInvoicePostModel;

  @override
  $Res call({
    Object? discount = freezed,
    Object? vat = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? salesOrderId = freezed,
    Object? inventoryId = freezed,
    Object? invoicedBy = freezed,
    Object? assignedTo = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? ivoiceLines = freezed,
  }) {
    return _then(_SalesReturnInvoicePostModel(
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
      salesOrderId: salesOrderId == freezed
          ? _value.salesOrderId
          : salesOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: invoicedBy == freezed
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
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
      ivoiceLines: ivoiceLines == freezed
          ? _value.ivoiceLines
          : ivoiceLines // ignore: cast_nullable_to_non_nullable
              as List<Postlines>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesReturnInvoicePostModel implements _SalesReturnInvoicePostModel {
  const _$_SalesReturnInvoicePostModel(
      {this.discount,
      this.vat,
      this.notes,
      this.remarks,
      @JsonKey(name: "sales_order_id") this.salesOrderId,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "invoiced_by") this.invoicedBy,
      @JsonKey(name: "assigned_to") this.assignedTo,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "taxable_amount") this.taxableAmount,
      @JsonKey(name: "selling_price_total") this.sellingPriceTotal,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "invoice_lines") this.ivoiceLines});

  factory _$_SalesReturnInvoicePostModel.fromJson(Map<String, dynamic> json) =>
      _$$_SalesReturnInvoicePostModelFromJson(json);

  @override // final int? id,
  final double? discount;
  @override
  final double? vat;
  @override
  final String? notes;
  @override
  final String? remarks;
  @override
  @JsonKey(name: "sales_order_id")
  final int? salesOrderId;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "invoiced_by")
  final String? invoicedBy;
  @override
  @JsonKey(name: "assigned_to")
  final String? assignedTo;
  @override // @JsonKey(name: "return_order_code") final String? returnOrderCode,
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
  @JsonKey(name: "invoice_lines")
  final List<Postlines>? ivoiceLines;

  @override
  String toString() {
    return 'SalesReturnInvoicePostModel(discount: $discount, vat: $vat, notes: $notes, remarks: $remarks, salesOrderId: $salesOrderId, inventoryId: $inventoryId, invoicedBy: $invoicedBy, assignedTo: $assignedTo, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, sellingPriceTotal: $sellingPriceTotal, totalPrice: $totalPrice, ivoiceLines: $ivoiceLines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SalesReturnInvoicePostModel &&
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
            (identical(other.salesOrderId, salesOrderId) ||
                const DeepCollectionEquality()
                    .equals(other.salesOrderId, salesOrderId)) &&
            (identical(other.inventoryId, inventoryId) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryId, inventoryId)) &&
            (identical(other.invoicedBy, invoicedBy) ||
                const DeepCollectionEquality()
                    .equals(other.invoicedBy, invoicedBy)) &&
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
            (identical(other.ivoiceLines, ivoiceLines) ||
                const DeepCollectionEquality()
                    .equals(other.ivoiceLines, ivoiceLines)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(remarks) ^
      const DeepCollectionEquality().hash(salesOrderId) ^
      const DeepCollectionEquality().hash(inventoryId) ^
      const DeepCollectionEquality().hash(invoicedBy) ^
      const DeepCollectionEquality().hash(assignedTo) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(taxableAmount) ^
      const DeepCollectionEquality().hash(sellingPriceTotal) ^
      const DeepCollectionEquality().hash(totalPrice) ^
      const DeepCollectionEquality().hash(ivoiceLines);

  @JsonKey(ignore: true)
  @override
  _$SalesReturnInvoicePostModelCopyWith<_SalesReturnInvoicePostModel>
      get copyWith => __$SalesReturnInvoicePostModelCopyWithImpl<
          _SalesReturnInvoicePostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesReturnInvoicePostModelToJson(this);
  }
}

abstract class _SalesReturnInvoicePostModel
    implements SalesReturnInvoicePostModel {
  const factory _SalesReturnInvoicePostModel(
          {double? discount,
          double? vat,
          String? notes,
          String? remarks,
          @JsonKey(name: "sales_order_id") int? salesOrderId,
          @JsonKey(name: "inventory_id") String? inventoryId,
          @JsonKey(name: "invoiced_by") String? invoicedBy,
          @JsonKey(name: "assigned_to") String? assignedTo,
          @JsonKey(name: "unit_cost") double? unitCost,
          @JsonKey(name: "excess_tax") double? excessTax,
          @JsonKey(name: "taxable_amount") double? taxableAmount,
          @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
          @JsonKey(name: "total_price") double? totalPrice,
          @JsonKey(name: "invoice_lines") List<Postlines>? ivoiceLines}) =
      _$_SalesReturnInvoicePostModel;

  factory _SalesReturnInvoicePostModel.fromJson(Map<String, dynamic> json) =
      _$_SalesReturnInvoicePostModel.fromJson;

  @override // final int? id,
  double? get discount => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  String? get notes => throw _privateConstructorUsedError;
  @override
  String? get remarks => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_order_id")
  int? get salesOrderId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoiced_by")
  String? get invoicedBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "assigned_to")
  String? get assignedTo => throw _privateConstructorUsedError;
  @override // @JsonKey(name: "return_order_code") final String? returnOrderCode,
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
  @JsonKey(name: "invoice_lines")
  List<Postlines>? get ivoiceLines => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SalesReturnInvoicePostModelCopyWith<_SalesReturnInvoicePostModel>
      get copyWith => throw _privateConstructorUsedError;
}

Postlines _$PostlinesFromJson(Map<String, dynamic> json) {
  return _Postlines.fromJson(json);
}

/// @nodoc
class _$PostlinesTearOff {
  const _$PostlinesTearOff();

  _Postlines call(
      {int? quantity,
      double? vat,
      @JsonKey(name: "is_invoiced", defaultValue: false) bool? isInvoiced,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "sales_order_line_code") String? salesOrderLineCode,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "warranty_price") double? warrentyPrice,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "taxable_amount") double? taxableAmoubt,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax}) {
    return _Postlines(
      quantity: quantity,
      vat: vat,
      isInvoiced: isInvoiced,
      isActive: isActive,
      salesOrderLineCode: salesOrderLineCode,
      totalPrice: totalPrice,
      warrentyPrice: warrentyPrice,
      sellingPrice: sellingPrice,
      taxableAmoubt: taxableAmoubt,
      unitCost: unitCost,
      excessTax: excessTax,
    );
  }

  Postlines fromJson(Map<String, Object> json) {
    return Postlines.fromJson(json);
  }
}

/// @nodoc
const $Postlines = _$PostlinesTearOff();

/// @nodoc
mixin _$Postlines {
  int? get quantity => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "is_invoiced", defaultValue: false)
  bool? get isInvoiced => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_order_line_code")
  String? get salesOrderLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  double? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_price")
  double? get warrentyPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "taxable_amount")
  double? get taxableAmoubt => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostlinesCopyWith<Postlines> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostlinesCopyWith<$Res> {
  factory $PostlinesCopyWith(Postlines value, $Res Function(Postlines) then) =
      _$PostlinesCopyWithImpl<$Res>;
  $Res call(
      {int? quantity,
      double? vat,
      @JsonKey(name: "is_invoiced", defaultValue: false) bool? isInvoiced,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "sales_order_line_code") String? salesOrderLineCode,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "warranty_price") double? warrentyPrice,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "taxable_amount") double? taxableAmoubt,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax});
}

/// @nodoc
class _$PostlinesCopyWithImpl<$Res> implements $PostlinesCopyWith<$Res> {
  _$PostlinesCopyWithImpl(this._value, this._then);

  final Postlines _value;
  // ignore: unused_field
  final $Res Function(Postlines) _then;

  @override
  $Res call({
    Object? quantity = freezed,
    Object? vat = freezed,
    Object? isInvoiced = freezed,
    Object? isActive = freezed,
    Object? salesOrderLineCode = freezed,
    Object? totalPrice = freezed,
    Object? warrentyPrice = freezed,
    Object? sellingPrice = freezed,
    Object? taxableAmoubt = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      isInvoiced: isInvoiced == freezed
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      salesOrderLineCode: salesOrderLineCode == freezed
          ? _value.salesOrderLineCode
          : salesOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      warrentyPrice: warrentyPrice == freezed
          ? _value.warrentyPrice
          : warrentyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPrice: sellingPrice == freezed
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      taxableAmoubt: taxableAmoubt == freezed
          ? _value.taxableAmoubt
          : taxableAmoubt // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$PostlinesCopyWith<$Res> implements $PostlinesCopyWith<$Res> {
  factory _$PostlinesCopyWith(
          _Postlines value, $Res Function(_Postlines) then) =
      __$PostlinesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? quantity,
      double? vat,
      @JsonKey(name: "is_invoiced", defaultValue: false) bool? isInvoiced,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "sales_order_line_code") String? salesOrderLineCode,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "warranty_price") double? warrentyPrice,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "taxable_amount") double? taxableAmoubt,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax});
}

/// @nodoc
class __$PostlinesCopyWithImpl<$Res> extends _$PostlinesCopyWithImpl<$Res>
    implements _$PostlinesCopyWith<$Res> {
  __$PostlinesCopyWithImpl(_Postlines _value, $Res Function(_Postlines) _then)
      : super(_value, (v) => _then(v as _Postlines));

  @override
  _Postlines get _value => super._value as _Postlines;

  @override
  $Res call({
    Object? quantity = freezed,
    Object? vat = freezed,
    Object? isInvoiced = freezed,
    Object? isActive = freezed,
    Object? salesOrderLineCode = freezed,
    Object? totalPrice = freezed,
    Object? warrentyPrice = freezed,
    Object? sellingPrice = freezed,
    Object? taxableAmoubt = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
  }) {
    return _then(_Postlines(
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      isInvoiced: isInvoiced == freezed
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      salesOrderLineCode: salesOrderLineCode == freezed
          ? _value.salesOrderLineCode
          : salesOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      warrentyPrice: warrentyPrice == freezed
          ? _value.warrentyPrice
          : warrentyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPrice: sellingPrice == freezed
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      taxableAmoubt: taxableAmoubt == freezed
          ? _value.taxableAmoubt
          : taxableAmoubt // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Postlines implements _Postlines {
  const _$_Postlines(
      {this.quantity,
      this.vat,
      @JsonKey(name: "is_invoiced", defaultValue: false) this.isInvoiced,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive,
      @JsonKey(name: "sales_order_line_code") this.salesOrderLineCode,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "warranty_price") this.warrentyPrice,
      @JsonKey(name: "selling_price") this.sellingPrice,
      @JsonKey(name: "taxable_amount") this.taxableAmoubt,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "excess_tax") this.excessTax});

  factory _$_Postlines.fromJson(Map<String, dynamic> json) =>
      _$$_PostlinesFromJson(json);

  @override
  final int? quantity;
  @override
  final double? vat;
  @override
  @JsonKey(name: "is_invoiced", defaultValue: false)
  final bool? isInvoiced;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "sales_order_line_code")
  final String? salesOrderLineCode;
  @override
  @JsonKey(name: "total_price")
  final double? totalPrice;
  @override
  @JsonKey(name: "warranty_price")
  final double? warrentyPrice;
  @override
  @JsonKey(name: "selling_price")
  final double? sellingPrice;
  @override
  @JsonKey(name: "taxable_amount")
  final double? taxableAmoubt;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "excess_tax")
  final double? excessTax;

  @override
  String toString() {
    return 'Postlines(quantity: $quantity, vat: $vat, isInvoiced: $isInvoiced, isActive: $isActive, salesOrderLineCode: $salesOrderLineCode, totalPrice: $totalPrice, warrentyPrice: $warrentyPrice, sellingPrice: $sellingPrice, taxableAmoubt: $taxableAmoubt, unitCost: $unitCost, excessTax: $excessTax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Postlines &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.isInvoiced, isInvoiced) ||
                const DeepCollectionEquality()
                    .equals(other.isInvoiced, isInvoiced)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.salesOrderLineCode, salesOrderLineCode) ||
                const DeepCollectionEquality()
                    .equals(other.salesOrderLineCode, salesOrderLineCode)) &&
            (identical(other.totalPrice, totalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.totalPrice, totalPrice)) &&
            (identical(other.warrentyPrice, warrentyPrice) ||
                const DeepCollectionEquality()
                    .equals(other.warrentyPrice, warrentyPrice)) &&
            (identical(other.sellingPrice, sellingPrice) ||
                const DeepCollectionEquality()
                    .equals(other.sellingPrice, sellingPrice)) &&
            (identical(other.taxableAmoubt, taxableAmoubt) ||
                const DeepCollectionEquality()
                    .equals(other.taxableAmoubt, taxableAmoubt)) &&
            (identical(other.unitCost, unitCost) ||
                const DeepCollectionEquality()
                    .equals(other.unitCost, unitCost)) &&
            (identical(other.excessTax, excessTax) ||
                const DeepCollectionEquality()
                    .equals(other.excessTax, excessTax)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(isInvoiced) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(salesOrderLineCode) ^
      const DeepCollectionEquality().hash(totalPrice) ^
      const DeepCollectionEquality().hash(warrentyPrice) ^
      const DeepCollectionEquality().hash(sellingPrice) ^
      const DeepCollectionEquality().hash(taxableAmoubt) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(excessTax);

  @JsonKey(ignore: true)
  @override
  _$PostlinesCopyWith<_Postlines> get copyWith =>
      __$PostlinesCopyWithImpl<_Postlines>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostlinesToJson(this);
  }
}

abstract class _Postlines implements Postlines {
  const factory _Postlines(
      {int? quantity,
      double? vat,
      @JsonKey(name: "is_invoiced", defaultValue: false) bool? isInvoiced,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "sales_order_line_code") String? salesOrderLineCode,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "warranty_price") double? warrentyPrice,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "taxable_amount") double? taxableAmoubt,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax}) = _$_Postlines;

  factory _Postlines.fromJson(Map<String, dynamic> json) =
      _$_Postlines.fromJson;

  @override
  int? get quantity => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_invoiced", defaultValue: false)
  bool? get isInvoiced => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_order_line_code")
  String? get salesOrderLineCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "total_price")
  double? get totalPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "warranty_price")
  double? get warrentyPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "taxable_amount")
  double? get taxableAmoubt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostlinesCopyWith<_Postlines> get copyWith =>
      throw _privateConstructorUsedError;
}
