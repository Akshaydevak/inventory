// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invoicepostmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesReturnInvoicePostModel _$SalesReturnInvoicePostModelFromJson(
    Map<String, dynamic> json) {
  return _SalesReturnInvoicePostModel.fromJson(json);
}

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
      _$SalesReturnInvoicePostModelCopyWithImpl<$Res,
          SalesReturnInvoicePostModel>;
  @useResult
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
class _$SalesReturnInvoicePostModelCopyWithImpl<$Res,
        $Val extends SalesReturnInvoicePostModel>
    implements $SalesReturnInvoicePostModelCopyWith<$Res> {
  _$SalesReturnInvoicePostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      salesOrderId: freezed == salesOrderId
          ? _value.salesOrderId
          : salesOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: freezed == invoicedBy
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
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
      ivoiceLines: freezed == ivoiceLines
          ? _value.ivoiceLines
          : ivoiceLines // ignore: cast_nullable_to_non_nullable
              as List<Postlines>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SalesReturnInvoicePostModelCopyWith<$Res>
    implements $SalesReturnInvoicePostModelCopyWith<$Res> {
  factory _$$_SalesReturnInvoicePostModelCopyWith(
          _$_SalesReturnInvoicePostModel value,
          $Res Function(_$_SalesReturnInvoicePostModel) then) =
      __$$_SalesReturnInvoicePostModelCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_SalesReturnInvoicePostModelCopyWithImpl<$Res>
    extends _$SalesReturnInvoicePostModelCopyWithImpl<$Res,
        _$_SalesReturnInvoicePostModel>
    implements _$$_SalesReturnInvoicePostModelCopyWith<$Res> {
  __$$_SalesReturnInvoicePostModelCopyWithImpl(
      _$_SalesReturnInvoicePostModel _value,
      $Res Function(_$_SalesReturnInvoicePostModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    return _then(_$_SalesReturnInvoicePostModel(
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
      salesOrderId: freezed == salesOrderId
          ? _value.salesOrderId
          : salesOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: freezed == invoicedBy
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
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
      ivoiceLines: freezed == ivoiceLines
          ? _value._ivoiceLines
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
      @JsonKey(name: "invoice_lines") final List<Postlines>? ivoiceLines})
      : _ivoiceLines = ivoiceLines;

  factory _$_SalesReturnInvoicePostModel.fromJson(Map<String, dynamic> json) =>
      _$$_SalesReturnInvoicePostModelFromJson(json);

// final int? id,
  @override
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
// @JsonKey(name: "return_order_code") final String? returnOrderCode,
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
  final List<Postlines>? _ivoiceLines;
  @override
  @JsonKey(name: "invoice_lines")
  List<Postlines>? get ivoiceLines {
    final value = _ivoiceLines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SalesReturnInvoicePostModel(discount: $discount, vat: $vat, notes: $notes, remarks: $remarks, salesOrderId: $salesOrderId, inventoryId: $inventoryId, invoicedBy: $invoicedBy, assignedTo: $assignedTo, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, sellingPriceTotal: $sellingPriceTotal, totalPrice: $totalPrice, ivoiceLines: $ivoiceLines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesReturnInvoicePostModel &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.salesOrderId, salesOrderId) ||
                other.salesOrderId == salesOrderId) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.invoicedBy, invoicedBy) ||
                other.invoicedBy == invoicedBy) &&
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
            const DeepCollectionEquality()
                .equals(other._ivoiceLines, _ivoiceLines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      discount,
      vat,
      notes,
      remarks,
      salesOrderId,
      inventoryId,
      invoicedBy,
      assignedTo,
      unitCost,
      excessTax,
      taxableAmount,
      sellingPriceTotal,
      totalPrice,
      const DeepCollectionEquality().hash(_ivoiceLines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalesReturnInvoicePostModelCopyWith<_$_SalesReturnInvoicePostModel>
      get copyWith => __$$_SalesReturnInvoicePostModelCopyWithImpl<
          _$_SalesReturnInvoicePostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesReturnInvoicePostModelToJson(
      this,
    );
  }
}

abstract class _SalesReturnInvoicePostModel
    implements SalesReturnInvoicePostModel {
  const factory _SalesReturnInvoicePostModel(
          {final double? discount,
          final double? vat,
          final String? notes,
          final String? remarks,
          @JsonKey(name: "sales_order_id") final int? salesOrderId,
          @JsonKey(name: "inventory_id") final String? inventoryId,
          @JsonKey(name: "invoiced_by") final String? invoicedBy,
          @JsonKey(name: "assigned_to") final String? assignedTo,
          @JsonKey(name: "unit_cost") final double? unitCost,
          @JsonKey(name: "excess_tax") final double? excessTax,
          @JsonKey(name: "taxable_amount") final double? taxableAmount,
          @JsonKey(name: "selling_price_total") final double? sellingPriceTotal,
          @JsonKey(name: "total_price") final double? totalPrice,
          @JsonKey(name: "invoice_lines") final List<Postlines>? ivoiceLines}) =
      _$_SalesReturnInvoicePostModel;

  factory _SalesReturnInvoicePostModel.fromJson(Map<String, dynamic> json) =
      _$_SalesReturnInvoicePostModel.fromJson;

  @override // final int? id,
  double? get discount;
  @override
  double? get vat;
  @override
  String? get notes;
  @override
  String? get remarks;
  @override
  @JsonKey(name: "sales_order_id")
  int? get salesOrderId;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "invoiced_by")
  String? get invoicedBy;
  @override
  @JsonKey(name: "assigned_to")
  String? get assignedTo;
  @override // @JsonKey(name: "return_order_code") final String? returnOrderCode,
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
  List<Postlines>? get ivoiceLines;
  @override
  @JsonKey(ignore: true)
  _$$_SalesReturnInvoicePostModelCopyWith<_$_SalesReturnInvoicePostModel>
      get copyWith => throw _privateConstructorUsedError;
}

Postlines _$PostlinesFromJson(Map<String, dynamic> json) {
  return _Postlines.fromJson(json);
}

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
      _$PostlinesCopyWithImpl<$Res, Postlines>;
  @useResult
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
class _$PostlinesCopyWithImpl<$Res, $Val extends Postlines>
    implements $PostlinesCopyWith<$Res> {
  _$PostlinesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      salesOrderLineCode: freezed == salesOrderLineCode
          ? _value.salesOrderLineCode
          : salesOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      warrentyPrice: freezed == warrentyPrice
          ? _value.warrentyPrice
          : warrentyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      taxableAmoubt: freezed == taxableAmoubt
          ? _value.taxableAmoubt
          : taxableAmoubt // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostlinesCopyWith<$Res> implements $PostlinesCopyWith<$Res> {
  factory _$$_PostlinesCopyWith(
          _$_Postlines value, $Res Function(_$_Postlines) then) =
      __$$_PostlinesCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_PostlinesCopyWithImpl<$Res>
    extends _$PostlinesCopyWithImpl<$Res, _$_Postlines>
    implements _$$_PostlinesCopyWith<$Res> {
  __$$_PostlinesCopyWithImpl(
      _$_Postlines _value, $Res Function(_$_Postlines) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    return _then(_$_Postlines(
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      salesOrderLineCode: freezed == salesOrderLineCode
          ? _value.salesOrderLineCode
          : salesOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      warrentyPrice: freezed == warrentyPrice
          ? _value.warrentyPrice
          : warrentyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      taxableAmoubt: freezed == taxableAmoubt
          ? _value.taxableAmoubt
          : taxableAmoubt // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
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
        (other.runtimeType == runtimeType &&
            other is _$_Postlines &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.isInvoiced, isInvoiced) ||
                other.isInvoiced == isInvoiced) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.salesOrderLineCode, salesOrderLineCode) ||
                other.salesOrderLineCode == salesOrderLineCode) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.warrentyPrice, warrentyPrice) ||
                other.warrentyPrice == warrentyPrice) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.taxableAmoubt, taxableAmoubt) ||
                other.taxableAmoubt == taxableAmoubt) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      quantity,
      vat,
      isInvoiced,
      isActive,
      salesOrderLineCode,
      totalPrice,
      warrentyPrice,
      sellingPrice,
      taxableAmoubt,
      unitCost,
      excessTax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostlinesCopyWith<_$_Postlines> get copyWith =>
      __$$_PostlinesCopyWithImpl<_$_Postlines>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostlinesToJson(
      this,
    );
  }
}

abstract class _Postlines implements Postlines {
  const factory _Postlines(
      {final int? quantity,
      final double? vat,
      @JsonKey(name: "is_invoiced", defaultValue: false) final bool? isInvoiced,
      @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
      @JsonKey(name: "sales_order_line_code") final String? salesOrderLineCode,
      @JsonKey(name: "total_price") final double? totalPrice,
      @JsonKey(name: "warranty_price") final double? warrentyPrice,
      @JsonKey(name: "selling_price") final double? sellingPrice,
      @JsonKey(name: "taxable_amount") final double? taxableAmoubt,
      @JsonKey(name: "unit_cost") final double? unitCost,
      @JsonKey(name: "excess_tax") final double? excessTax}) = _$_Postlines;

  factory _Postlines.fromJson(Map<String, dynamic> json) =
      _$_Postlines.fromJson;

  @override
  int? get quantity;
  @override
  double? get vat;
  @override
  @JsonKey(name: "is_invoiced", defaultValue: false)
  bool? get isInvoiced;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "sales_order_line_code")
  String? get salesOrderLineCode;
  @override
  @JsonKey(name: "total_price")
  double? get totalPrice;
  @override
  @JsonKey(name: "warranty_price")
  double? get warrentyPrice;
  @override
  @JsonKey(name: "selling_price")
  double? get sellingPrice;
  @override
  @JsonKey(name: "taxable_amount")
  double? get taxableAmoubt;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax;
  @override
  @JsonKey(ignore: true)
  _$$_PostlinesCopyWith<_$_Postlines> get copyWith =>
      throw _privateConstructorUsedError;
}
