// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sales_general_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesGeneralPostModel _$SalesGeneralPostModelFromJson(
    Map<String, dynamic> json) {
  return _SalesGeneralPostModel.fromJson(json);
}

/// @nodoc
class _$SalesGeneralPostModelTearOff {
  const _$SalesGeneralPostModelTearOff();

  _SalesGeneralPostModel call(
      {double? discount,
      double? vat,
      String? note,
      String? remarks,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "order_mode") String? orderMode,
      @JsonKey(name: "inventory_id") String? inventoryid,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "shipping_address_id") String? shippingAddressId,
      @JsonKey(name: "billing_address_id") String? billingAddressId,
      @JsonKey(name: "sales_quotes_id") String? salesQuotesId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "order_lines") List<SalesOrderLines>? orderLines}) {
    return _SalesGeneralPostModel(
      discount: discount,
      vat: vat,
      note: note,
      remarks: remarks,
      orderType: orderType,
      orderMode: orderMode,
      inventoryid: inventoryid,
      customerId: customerId,
      trnNumber: trnNumber,
      shippingAddressId: shippingAddressId,
      billingAddressId: billingAddressId,
      salesQuotesId: salesQuotesId,
      unitCost: unitCost,
      excessTax: excessTax,
      taxableAmount: taxableAmount,
      sellingPriceTotal: sellingPriceTotal,
      totalPrice: totalPrice,
      createdBy: createdBy,
      orderLines: orderLines,
    );
  }

  SalesGeneralPostModel fromJson(Map<String, Object> json) {
    return SalesGeneralPostModel.fromJson(json);
  }
}

/// @nodoc
const $SalesGeneralPostModel = _$SalesGeneralPostModelTearOff();

/// @nodoc
mixin _$SalesGeneralPostModel {
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "order_type")
  String? get orderType => throw _privateConstructorUsedError;
  @JsonKey(name: "order_mode")
  String? get orderMode => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryid => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id")
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "trn_number")
  String? get trnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_address_id")
  String? get shippingAddressId => throw _privateConstructorUsedError;
  @JsonKey(name: "billing_address_id")
  String? get billingAddressId => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_quotes_id")
  String? get salesQuotesId => throw _privateConstructorUsedError;
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
  @JsonKey(name: "created_by")
  String? get createdBy =>
      throw _privateConstructorUsedError; // @JsonKey(name: "edited_by") final String? editedBy,/
  @JsonKey(name: "order_lines")
  List<SalesOrderLines>? get orderLines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesGeneralPostModelCopyWith<SalesGeneralPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesGeneralPostModelCopyWith<$Res> {
  factory $SalesGeneralPostModelCopyWith(SalesGeneralPostModel value,
          $Res Function(SalesGeneralPostModel) then) =
      _$SalesGeneralPostModelCopyWithImpl<$Res>;
  $Res call(
      {double? discount,
      double? vat,
      String? note,
      String? remarks,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "order_mode") String? orderMode,
      @JsonKey(name: "inventory_id") String? inventoryid,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "shipping_address_id") String? shippingAddressId,
      @JsonKey(name: "billing_address_id") String? billingAddressId,
      @JsonKey(name: "sales_quotes_id") String? salesQuotesId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "order_lines") List<SalesOrderLines>? orderLines});
}

/// @nodoc
class _$SalesGeneralPostModelCopyWithImpl<$Res>
    implements $SalesGeneralPostModelCopyWith<$Res> {
  _$SalesGeneralPostModelCopyWithImpl(this._value, this._then);

  final SalesGeneralPostModel _value;
  // ignore: unused_field
  final $Res Function(SalesGeneralPostModel) _then;

  @override
  $Res call({
    Object? discount = freezed,
    Object? vat = freezed,
    Object? note = freezed,
    Object? remarks = freezed,
    Object? orderType = freezed,
    Object? orderMode = freezed,
    Object? inventoryid = freezed,
    Object? customerId = freezed,
    Object? trnNumber = freezed,
    Object? shippingAddressId = freezed,
    Object? billingAddressId = freezed,
    Object? salesQuotesId = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? createdBy = freezed,
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
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      orderMode: orderMode == freezed
          ? _value.orderMode
          : orderMode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryid: inventoryid == freezed
          ? _value.inventoryid
          : inventoryid // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: trnNumber == freezed
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddressId: shippingAddressId == freezed
          ? _value.shippingAddressId
          : shippingAddressId // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddressId: billingAddressId == freezed
          ? _value.billingAddressId
          : billingAddressId // ignore: cast_nullable_to_non_nullable
              as String?,
      salesQuotesId: salesQuotesId == freezed
          ? _value.salesQuotesId
          : salesQuotesId // ignore: cast_nullable_to_non_nullable
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
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      orderLines: orderLines == freezed
          ? _value.orderLines
          : orderLines // ignore: cast_nullable_to_non_nullable
              as List<SalesOrderLines>?,
    ));
  }
}

/// @nodoc
abstract class _$SalesGeneralPostModelCopyWith<$Res>
    implements $SalesGeneralPostModelCopyWith<$Res> {
  factory _$SalesGeneralPostModelCopyWith(_SalesGeneralPostModel value,
          $Res Function(_SalesGeneralPostModel) then) =
      __$SalesGeneralPostModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? discount,
      double? vat,
      String? note,
      String? remarks,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "order_mode") String? orderMode,
      @JsonKey(name: "inventory_id") String? inventoryid,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "shipping_address_id") String? shippingAddressId,
      @JsonKey(name: "billing_address_id") String? billingAddressId,
      @JsonKey(name: "sales_quotes_id") String? salesQuotesId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "order_lines") List<SalesOrderLines>? orderLines});
}

/// @nodoc
class __$SalesGeneralPostModelCopyWithImpl<$Res>
    extends _$SalesGeneralPostModelCopyWithImpl<$Res>
    implements _$SalesGeneralPostModelCopyWith<$Res> {
  __$SalesGeneralPostModelCopyWithImpl(_SalesGeneralPostModel _value,
      $Res Function(_SalesGeneralPostModel) _then)
      : super(_value, (v) => _then(v as _SalesGeneralPostModel));

  @override
  _SalesGeneralPostModel get _value => super._value as _SalesGeneralPostModel;

  @override
  $Res call({
    Object? discount = freezed,
    Object? vat = freezed,
    Object? note = freezed,
    Object? remarks = freezed,
    Object? orderType = freezed,
    Object? orderMode = freezed,
    Object? inventoryid = freezed,
    Object? customerId = freezed,
    Object? trnNumber = freezed,
    Object? shippingAddressId = freezed,
    Object? billingAddressId = freezed,
    Object? salesQuotesId = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? createdBy = freezed,
    Object? orderLines = freezed,
  }) {
    return _then(_SalesGeneralPostModel(
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      orderMode: orderMode == freezed
          ? _value.orderMode
          : orderMode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryid: inventoryid == freezed
          ? _value.inventoryid
          : inventoryid // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: trnNumber == freezed
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddressId: shippingAddressId == freezed
          ? _value.shippingAddressId
          : shippingAddressId // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddressId: billingAddressId == freezed
          ? _value.billingAddressId
          : billingAddressId // ignore: cast_nullable_to_non_nullable
              as String?,
      salesQuotesId: salesQuotesId == freezed
          ? _value.salesQuotesId
          : salesQuotesId // ignore: cast_nullable_to_non_nullable
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
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      orderLines: orderLines == freezed
          ? _value.orderLines
          : orderLines // ignore: cast_nullable_to_non_nullable
              as List<SalesOrderLines>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesGeneralPostModel implements _SalesGeneralPostModel {
  const _$_SalesGeneralPostModel(
      {this.discount,
      this.vat,
      this.note,
      this.remarks,
      @JsonKey(name: "order_type") this.orderType,
      @JsonKey(name: "order_mode") this.orderMode,
      @JsonKey(name: "inventory_id") this.inventoryid,
      @JsonKey(name: "customer_id") this.customerId,
      @JsonKey(name: "trn_number") this.trnNumber,
      @JsonKey(name: "shipping_address_id") this.shippingAddressId,
      @JsonKey(name: "billing_address_id") this.billingAddressId,
      @JsonKey(name: "sales_quotes_id") this.salesQuotesId,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "taxable_amount") this.taxableAmount,
      @JsonKey(name: "selling_price_total") this.sellingPriceTotal,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "created_by") this.createdBy,
      @JsonKey(name: "order_lines") this.orderLines});

  factory _$_SalesGeneralPostModel.fromJson(Map<String, dynamic> json) =>
      _$$_SalesGeneralPostModelFromJson(json);

  @override
  final double? discount;
  @override
  final double? vat;
  @override
  final String? note;
  @override
  final String? remarks;
  @override
  @JsonKey(name: "order_type")
  final String? orderType;
  @override
  @JsonKey(name: "order_mode")
  final String? orderMode;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryid;
  @override
  @JsonKey(name: "customer_id")
  final String? customerId;
  @override
  @JsonKey(name: "trn_number")
  final String? trnNumber;
  @override
  @JsonKey(name: "shipping_address_id")
  final String? shippingAddressId;
  @override
  @JsonKey(name: "billing_address_id")
  final String? billingAddressId;
  @override
  @JsonKey(name: "sales_quotes_id")
  final String? salesQuotesId;
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
  @JsonKey(name: "created_by")
  final String? createdBy;
  @override // @JsonKey(name: "edited_by") final String? editedBy,/
  @JsonKey(name: "order_lines")
  final List<SalesOrderLines>? orderLines;

  @override
  String toString() {
    return 'SalesGeneralPostModel(discount: $discount, vat: $vat, note: $note, remarks: $remarks, orderType: $orderType, orderMode: $orderMode, inventoryid: $inventoryid, customerId: $customerId, trnNumber: $trnNumber, shippingAddressId: $shippingAddressId, billingAddressId: $billingAddressId, salesQuotesId: $salesQuotesId, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, sellingPriceTotal: $sellingPriceTotal, totalPrice: $totalPrice, createdBy: $createdBy, orderLines: $orderLines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SalesGeneralPostModel &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.remarks, remarks) ||
                const DeepCollectionEquality()
                    .equals(other.remarks, remarks)) &&
            (identical(other.orderType, orderType) ||
                const DeepCollectionEquality()
                    .equals(other.orderType, orderType)) &&
            (identical(other.orderMode, orderMode) ||
                const DeepCollectionEquality()
                    .equals(other.orderMode, orderMode)) &&
            (identical(other.inventoryid, inventoryid) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryid, inventoryid)) &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality()
                    .equals(other.customerId, customerId)) &&
            (identical(other.trnNumber, trnNumber) ||
                const DeepCollectionEquality()
                    .equals(other.trnNumber, trnNumber)) &&
            (identical(other.shippingAddressId, shippingAddressId) ||
                const DeepCollectionEquality()
                    .equals(other.shippingAddressId, shippingAddressId)) &&
            (identical(other.billingAddressId, billingAddressId) ||
                const DeepCollectionEquality()
                    .equals(other.billingAddressId, billingAddressId)) &&
            (identical(other.salesQuotesId, salesQuotesId) ||
                const DeepCollectionEquality()
                    .equals(other.salesQuotesId, salesQuotesId)) &&
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
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.orderLines, orderLines) ||
                const DeepCollectionEquality()
                    .equals(other.orderLines, orderLines)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(remarks) ^
      const DeepCollectionEquality().hash(orderType) ^
      const DeepCollectionEquality().hash(orderMode) ^
      const DeepCollectionEquality().hash(inventoryid) ^
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(trnNumber) ^
      const DeepCollectionEquality().hash(shippingAddressId) ^
      const DeepCollectionEquality().hash(billingAddressId) ^
      const DeepCollectionEquality().hash(salesQuotesId) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(taxableAmount) ^
      const DeepCollectionEquality().hash(sellingPriceTotal) ^
      const DeepCollectionEquality().hash(totalPrice) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(orderLines);

  @JsonKey(ignore: true)
  @override
  _$SalesGeneralPostModelCopyWith<_SalesGeneralPostModel> get copyWith =>
      __$SalesGeneralPostModelCopyWithImpl<_SalesGeneralPostModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesGeneralPostModelToJson(this);
  }
}

abstract class _SalesGeneralPostModel implements SalesGeneralPostModel {
  const factory _SalesGeneralPostModel(
          {double? discount,
          double? vat,
          String? note,
          String? remarks,
          @JsonKey(name: "order_type") String? orderType,
          @JsonKey(name: "order_mode") String? orderMode,
          @JsonKey(name: "inventory_id") String? inventoryid,
          @JsonKey(name: "customer_id") String? customerId,
          @JsonKey(name: "trn_number") String? trnNumber,
          @JsonKey(name: "shipping_address_id") String? shippingAddressId,
          @JsonKey(name: "billing_address_id") String? billingAddressId,
          @JsonKey(name: "sales_quotes_id") String? salesQuotesId,
          @JsonKey(name: "unit_cost") double? unitCost,
          @JsonKey(name: "excess_tax") double? excessTax,
          @JsonKey(name: "taxable_amount") double? taxableAmount,
          @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
          @JsonKey(name: "total_price") double? totalPrice,
          @JsonKey(name: "created_by") String? createdBy,
          @JsonKey(name: "order_lines") List<SalesOrderLines>? orderLines}) =
      _$_SalesGeneralPostModel;

  factory _SalesGeneralPostModel.fromJson(Map<String, dynamic> json) =
      _$_SalesGeneralPostModel.fromJson;

  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  String? get note => throw _privateConstructorUsedError;
  @override
  String? get remarks => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_type")
  String? get orderType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_mode")
  String? get orderMode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "customer_id")
  String? get customerId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "trn_number")
  String? get trnNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "shipping_address_id")
  String? get shippingAddressId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "billing_address_id")
  String? get billingAddressId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_quotes_id")
  String? get salesQuotesId => throw _privateConstructorUsedError;
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
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @override // @JsonKey(name: "edited_by") final String? editedBy,/
  @JsonKey(name: "order_lines")
  List<SalesOrderLines>? get orderLines => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SalesGeneralPostModelCopyWith<_SalesGeneralPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SalesOrderLines _$SalesOrderLinesFromJson(Map<String, dynamic> json) {
  return _SalesOrderLines.fromJson(json);
}

/// @nodoc
class _$SalesOrderLinesTearOff {
  const _$SalesOrderLinesTearOff();

  _SalesOrderLines call(
      {int? id,
      int? qty,
      int? quantity,
      double? discount,
      double? vat,
      String? barcode,
      String? remarks,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "sales_order_line_code") String? salesOrderLineCode,
      @JsonKey(name: "variant_name") String? variaNtname,
      @JsonKey(name: "stock_id") String? stockId,
      @JsonKey(name: "warranty_id") String? warrentyId,
      @JsonKey(name: "sales_uom") String? salesUom,
      @JsonKey(name: "discount_type") String? discountType,
      @JsonKey(name: "return_type") String? returnType,
      @JsonKey(name: "return_time") int? returnTime,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "warranty_price") double? warrentyPrice,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "is_invoiced", defaultValue: false) bool? isInvoiced,
      @JsonKey(name: "updatecheck", defaultValue: false) bool? updatecheck}) {
    return _SalesOrderLines(
      id: id,
      qty: qty,
      quantity: quantity,
      discount: discount,
      vat: vat,
      barcode: barcode,
      remarks: remarks,
      variantId: variantId,
      salesOrderLineCode: salesOrderLineCode,
      variaNtname: variaNtname,
      stockId: stockId,
      warrentyId: warrentyId,
      salesUom: salesUom,
      discountType: discountType,
      returnType: returnType,
      returnTime: returnTime,
      unitCost: unitCost,
      excessTax: excessTax,
      taxableAmount: taxableAmount,
      sellingPrice: sellingPrice,
      totalPrice: totalPrice,
      warrentyPrice: warrentyPrice,
      isActive: isActive,
      isInvoiced: isInvoiced,
      updatecheck: updatecheck,
    );
  }

  SalesOrderLines fromJson(Map<String, Object> json) {
    return SalesOrderLines.fromJson(json);
  }
}

/// @nodoc
const $SalesOrderLines = _$SalesOrderLinesTearOff();

/// @nodoc
mixin _$SalesOrderLines {
  int? get id => throw _privateConstructorUsedError;
  int? get qty => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  String? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_order_line_code")
  String? get salesOrderLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_name")
  String? get variaNtname => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_id")
  String? get stockId => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_id")
  String? get warrentyId => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_uom")
  String? get salesUom => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_type")
  String? get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: "return_type")
  String? get returnType => throw _privateConstructorUsedError;
  @JsonKey(name: "return_time")
  int? get returnTime => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "taxable_amount")
  double? get taxableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  double? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_price")
  double? get warrentyPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_invoiced", defaultValue: false)
  bool? get isInvoiced => throw _privateConstructorUsedError;
  @JsonKey(name: "updatecheck", defaultValue: false)
  bool? get updatecheck => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesOrderLinesCopyWith<SalesOrderLines> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderLinesCopyWith<$Res> {
  factory $SalesOrderLinesCopyWith(
          SalesOrderLines value, $Res Function(SalesOrderLines) then) =
      _$SalesOrderLinesCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? qty,
      int? quantity,
      double? discount,
      double? vat,
      String? barcode,
      String? remarks,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "sales_order_line_code") String? salesOrderLineCode,
      @JsonKey(name: "variant_name") String? variaNtname,
      @JsonKey(name: "stock_id") String? stockId,
      @JsonKey(name: "warranty_id") String? warrentyId,
      @JsonKey(name: "sales_uom") String? salesUom,
      @JsonKey(name: "discount_type") String? discountType,
      @JsonKey(name: "return_type") String? returnType,
      @JsonKey(name: "return_time") int? returnTime,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "warranty_price") double? warrentyPrice,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "is_invoiced", defaultValue: false) bool? isInvoiced,
      @JsonKey(name: "updatecheck", defaultValue: false) bool? updatecheck});
}

/// @nodoc
class _$SalesOrderLinesCopyWithImpl<$Res>
    implements $SalesOrderLinesCopyWith<$Res> {
  _$SalesOrderLinesCopyWithImpl(this._value, this._then);

  final SalesOrderLines _value;
  // ignore: unused_field
  final $Res Function(SalesOrderLines) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? qty = freezed,
    Object? quantity = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? barcode = freezed,
    Object? remarks = freezed,
    Object? variantId = freezed,
    Object? salesOrderLineCode = freezed,
    Object? variaNtname = freezed,
    Object? stockId = freezed,
    Object? warrentyId = freezed,
    Object? salesUom = freezed,
    Object? discountType = freezed,
    Object? returnType = freezed,
    Object? returnTime = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPrice = freezed,
    Object? totalPrice = freezed,
    Object? warrentyPrice = freezed,
    Object? isActive = freezed,
    Object? isInvoiced = freezed,
    Object? updatecheck = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: variantId == freezed
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      salesOrderLineCode: salesOrderLineCode == freezed
          ? _value.salesOrderLineCode
          : salesOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variaNtname: variaNtname == freezed
          ? _value.variaNtname
          : variaNtname // ignore: cast_nullable_to_non_nullable
              as String?,
      stockId: stockId == freezed
          ? _value.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as String?,
      warrentyId: warrentyId == freezed
          ? _value.warrentyId
          : warrentyId // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUom: salesUom == freezed
          ? _value.salesUom
          : salesUom // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: discountType == freezed
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      returnType: returnType == freezed
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String?,
      returnTime: returnTime == freezed
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as int?,
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
      sellingPrice: sellingPrice == freezed
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      warrentyPrice: warrentyPrice == freezed
          ? _value.warrentyPrice
          : warrentyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isInvoiced: isInvoiced == freezed
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      updatecheck: updatecheck == freezed
          ? _value.updatecheck
          : updatecheck // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$SalesOrderLinesCopyWith<$Res>
    implements $SalesOrderLinesCopyWith<$Res> {
  factory _$SalesOrderLinesCopyWith(
          _SalesOrderLines value, $Res Function(_SalesOrderLines) then) =
      __$SalesOrderLinesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? qty,
      int? quantity,
      double? discount,
      double? vat,
      String? barcode,
      String? remarks,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "sales_order_line_code") String? salesOrderLineCode,
      @JsonKey(name: "variant_name") String? variaNtname,
      @JsonKey(name: "stock_id") String? stockId,
      @JsonKey(name: "warranty_id") String? warrentyId,
      @JsonKey(name: "sales_uom") String? salesUom,
      @JsonKey(name: "discount_type") String? discountType,
      @JsonKey(name: "return_type") String? returnType,
      @JsonKey(name: "return_time") int? returnTime,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "warranty_price") double? warrentyPrice,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "is_invoiced", defaultValue: false) bool? isInvoiced,
      @JsonKey(name: "updatecheck", defaultValue: false) bool? updatecheck});
}

/// @nodoc
class __$SalesOrderLinesCopyWithImpl<$Res>
    extends _$SalesOrderLinesCopyWithImpl<$Res>
    implements _$SalesOrderLinesCopyWith<$Res> {
  __$SalesOrderLinesCopyWithImpl(
      _SalesOrderLines _value, $Res Function(_SalesOrderLines) _then)
      : super(_value, (v) => _then(v as _SalesOrderLines));

  @override
  _SalesOrderLines get _value => super._value as _SalesOrderLines;

  @override
  $Res call({
    Object? id = freezed,
    Object? qty = freezed,
    Object? quantity = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? barcode = freezed,
    Object? remarks = freezed,
    Object? variantId = freezed,
    Object? salesOrderLineCode = freezed,
    Object? variaNtname = freezed,
    Object? stockId = freezed,
    Object? warrentyId = freezed,
    Object? salesUom = freezed,
    Object? discountType = freezed,
    Object? returnType = freezed,
    Object? returnTime = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPrice = freezed,
    Object? totalPrice = freezed,
    Object? warrentyPrice = freezed,
    Object? isActive = freezed,
    Object? isInvoiced = freezed,
    Object? updatecheck = freezed,
  }) {
    return _then(_SalesOrderLines(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: variantId == freezed
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      salesOrderLineCode: salesOrderLineCode == freezed
          ? _value.salesOrderLineCode
          : salesOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variaNtname: variaNtname == freezed
          ? _value.variaNtname
          : variaNtname // ignore: cast_nullable_to_non_nullable
              as String?,
      stockId: stockId == freezed
          ? _value.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as String?,
      warrentyId: warrentyId == freezed
          ? _value.warrentyId
          : warrentyId // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUom: salesUom == freezed
          ? _value.salesUom
          : salesUom // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: discountType == freezed
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      returnType: returnType == freezed
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String?,
      returnTime: returnTime == freezed
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as int?,
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
      sellingPrice: sellingPrice == freezed
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      warrentyPrice: warrentyPrice == freezed
          ? _value.warrentyPrice
          : warrentyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isInvoiced: isInvoiced == freezed
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      updatecheck: updatecheck == freezed
          ? _value.updatecheck
          : updatecheck // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesOrderLines implements _SalesOrderLines {
  const _$_SalesOrderLines(
      {this.id,
      this.qty,
      this.quantity,
      this.discount,
      this.vat,
      this.barcode,
      this.remarks,
      @JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "sales_order_line_code") this.salesOrderLineCode,
      @JsonKey(name: "variant_name") this.variaNtname,
      @JsonKey(name: "stock_id") this.stockId,
      @JsonKey(name: "warranty_id") this.warrentyId,
      @JsonKey(name: "sales_uom") this.salesUom,
      @JsonKey(name: "discount_type") this.discountType,
      @JsonKey(name: "return_type") this.returnType,
      @JsonKey(name: "return_time") this.returnTime,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "taxable_amount") this.taxableAmount,
      @JsonKey(name: "selling_price") this.sellingPrice,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "warranty_price") this.warrentyPrice,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive,
      @JsonKey(name: "is_invoiced", defaultValue: false) this.isInvoiced,
      @JsonKey(name: "updatecheck", defaultValue: false) this.updatecheck});

  factory _$_SalesOrderLines.fromJson(Map<String, dynamic> json) =>
      _$$_SalesOrderLinesFromJson(json);

  @override
  final int? id;
  @override
  final int? qty;
  @override
  final int? quantity;
  @override
  final double? discount;
  @override
  final double? vat;
  @override
  final String? barcode;
  @override
  final String? remarks;
  @override
  @JsonKey(name: "variant_id")
  final String? variantId;
  @override
  @JsonKey(name: "sales_order_line_code")
  final String? salesOrderLineCode;
  @override
  @JsonKey(name: "variant_name")
  final String? variaNtname;
  @override
  @JsonKey(name: "stock_id")
  final String? stockId;
  @override
  @JsonKey(name: "warranty_id")
  final String? warrentyId;
  @override
  @JsonKey(name: "sales_uom")
  final String? salesUom;
  @override
  @JsonKey(name: "discount_type")
  final String? discountType;
  @override
  @JsonKey(name: "return_type")
  final String? returnType;
  @override
  @JsonKey(name: "return_time")
  final int? returnTime;
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
  final double? sellingPrice;
  @override
  @JsonKey(name: "total_price")
  final double? totalPrice;
  @override
  @JsonKey(name: "warranty_price")
  final double? warrentyPrice;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "is_invoiced", defaultValue: false)
  final bool? isInvoiced;
  @override
  @JsonKey(name: "updatecheck", defaultValue: false)
  final bool? updatecheck;

  @override
  String toString() {
    return 'SalesOrderLines(id: $id, qty: $qty, quantity: $quantity, discount: $discount, vat: $vat, barcode: $barcode, remarks: $remarks, variantId: $variantId, salesOrderLineCode: $salesOrderLineCode, variaNtname: $variaNtname, stockId: $stockId, warrentyId: $warrentyId, salesUom: $salesUom, discountType: $discountType, returnType: $returnType, returnTime: $returnTime, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, sellingPrice: $sellingPrice, totalPrice: $totalPrice, warrentyPrice: $warrentyPrice, isActive: $isActive, isInvoiced: $isInvoiced, updatecheck: $updatecheck)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SalesOrderLines &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.qty, qty) ||
                const DeepCollectionEquality().equals(other.qty, qty)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.remarks, remarks) ||
                const DeepCollectionEquality()
                    .equals(other.remarks, remarks)) &&
            (identical(other.variantId, variantId) ||
                const DeepCollectionEquality()
                    .equals(other.variantId, variantId)) &&
            (identical(other.salesOrderLineCode, salesOrderLineCode) ||
                const DeepCollectionEquality()
                    .equals(other.salesOrderLineCode, salesOrderLineCode)) &&
            (identical(other.variaNtname, variaNtname) ||
                const DeepCollectionEquality()
                    .equals(other.variaNtname, variaNtname)) &&
            (identical(other.stockId, stockId) ||
                const DeepCollectionEquality()
                    .equals(other.stockId, stockId)) &&
            (identical(other.warrentyId, warrentyId) ||
                const DeepCollectionEquality()
                    .equals(other.warrentyId, warrentyId)) &&
            (identical(other.salesUom, salesUom) ||
                const DeepCollectionEquality()
                    .equals(other.salesUom, salesUom)) &&
            (identical(other.discountType, discountType) ||
                const DeepCollectionEquality()
                    .equals(other.discountType, discountType)) &&
            (identical(other.returnType, returnType) ||
                const DeepCollectionEquality()
                    .equals(other.returnType, returnType)) &&
            (identical(other.returnTime, returnTime) ||
                const DeepCollectionEquality()
                    .equals(other.returnTime, returnTime)) &&
            (identical(other.unitCost, unitCost) ||
                const DeepCollectionEquality()
                    .equals(other.unitCost, unitCost)) &&
            (identical(other.excessTax, excessTax) ||
                const DeepCollectionEquality()
                    .equals(other.excessTax, excessTax)) &&
            (identical(other.taxableAmount, taxableAmount) ||
                const DeepCollectionEquality()
                    .equals(other.taxableAmount, taxableAmount)) &&
            (identical(other.sellingPrice, sellingPrice) ||
                const DeepCollectionEquality()
                    .equals(other.sellingPrice, sellingPrice)) &&
            (identical(other.totalPrice, totalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.totalPrice, totalPrice)) &&
            (identical(other.warrentyPrice, warrentyPrice) ||
                const DeepCollectionEquality()
                    .equals(other.warrentyPrice, warrentyPrice)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.isInvoiced, isInvoiced) || const DeepCollectionEquality().equals(other.isInvoiced, isInvoiced)) &&
            (identical(other.updatecheck, updatecheck) || const DeepCollectionEquality().equals(other.updatecheck, updatecheck)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(qty) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(remarks) ^
      const DeepCollectionEquality().hash(variantId) ^
      const DeepCollectionEquality().hash(salesOrderLineCode) ^
      const DeepCollectionEquality().hash(variaNtname) ^
      const DeepCollectionEquality().hash(stockId) ^
      const DeepCollectionEquality().hash(warrentyId) ^
      const DeepCollectionEquality().hash(salesUom) ^
      const DeepCollectionEquality().hash(discountType) ^
      const DeepCollectionEquality().hash(returnType) ^
      const DeepCollectionEquality().hash(returnTime) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(taxableAmount) ^
      const DeepCollectionEquality().hash(sellingPrice) ^
      const DeepCollectionEquality().hash(totalPrice) ^
      const DeepCollectionEquality().hash(warrentyPrice) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(isInvoiced) ^
      const DeepCollectionEquality().hash(updatecheck);

  @JsonKey(ignore: true)
  @override
  _$SalesOrderLinesCopyWith<_SalesOrderLines> get copyWith =>
      __$SalesOrderLinesCopyWithImpl<_SalesOrderLines>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesOrderLinesToJson(this);
  }
}

abstract class _SalesOrderLines implements SalesOrderLines {
  const factory _SalesOrderLines(
      {int? id,
      int? qty,
      int? quantity,
      double? discount,
      double? vat,
      String? barcode,
      String? remarks,
      @JsonKey(name: "variant_id")
          String? variantId,
      @JsonKey(name: "sales_order_line_code")
          String? salesOrderLineCode,
      @JsonKey(name: "variant_name")
          String? variaNtname,
      @JsonKey(name: "stock_id")
          String? stockId,
      @JsonKey(name: "warranty_id")
          String? warrentyId,
      @JsonKey(name: "sales_uom")
          String? salesUom,
      @JsonKey(name: "discount_type")
          String? discountType,
      @JsonKey(name: "return_type")
          String? returnType,
      @JsonKey(name: "return_time")
          int? returnTime,
      @JsonKey(name: "unit_cost")
          double? unitCost,
      @JsonKey(name: "excess_tax")
          double? excessTax,
      @JsonKey(name: "taxable_amount")
          double? taxableAmount,
      @JsonKey(name: "selling_price")
          double? sellingPrice,
      @JsonKey(name: "total_price")
          double? totalPrice,
      @JsonKey(name: "warranty_price")
          double? warrentyPrice,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "is_invoiced", defaultValue: false)
          bool? isInvoiced,
      @JsonKey(name: "updatecheck", defaultValue: false)
          bool? updatecheck}) = _$_SalesOrderLines;

  factory _SalesOrderLines.fromJson(Map<String, dynamic> json) =
      _$_SalesOrderLines.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  int? get qty => throw _privateConstructorUsedError;
  @override
  int? get quantity => throw _privateConstructorUsedError;
  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  String? get barcode => throw _privateConstructorUsedError;
  @override
  String? get remarks => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_id")
  String? get variantId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_order_line_code")
  String? get salesOrderLineCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_name")
  String? get variaNtname => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "stock_id")
  String? get stockId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "warranty_id")
  String? get warrentyId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_uom")
  String? get salesUom => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "discount_type")
  String? get discountType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_type")
  String? get returnType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_time")
  int? get returnTime => throw _privateConstructorUsedError;
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
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "total_price")
  double? get totalPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "warranty_price")
  double? get warrentyPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_invoiced", defaultValue: false)
  bool? get isInvoiced => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "updatecheck", defaultValue: false)
  bool? get updatecheck => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SalesOrderLinesCopyWith<_SalesOrderLines> get copyWith =>
      throw _privateConstructorUsedError;
}

ShippingAddressCreationModel _$ShippingAddressCreationModelFromJson(
    Map<String, dynamic> json) {
  return _ShippingAddressCreationModel.fromJson(json);
}

/// @nodoc
class _$ShippingAddressCreationModelTearOff {
  const _$ShippingAddressCreationModelTearOff();

  _ShippingAddressCreationModel call(
      {String? country,
      String? state,
      String? city,
      String? contact,
      String? landmark,
      String? instructions,
      @JsonKey(name: "address_type") String? addressType,
      @JsonKey(name: "full_name") String? fullName,
      @JsonKey(name: "street_name") String? streetName,
      @JsonKey(name: "building_name") String? buillingName,
      @JsonKey(name: "address_tag") String? addressTag}) {
    return _ShippingAddressCreationModel(
      country: country,
      state: state,
      city: city,
      contact: contact,
      landmark: landmark,
      instructions: instructions,
      addressType: addressType,
      fullName: fullName,
      streetName: streetName,
      buillingName: buillingName,
      addressTag: addressTag,
    );
  }

  ShippingAddressCreationModel fromJson(Map<String, Object> json) {
    return ShippingAddressCreationModel.fromJson(json);
  }
}

/// @nodoc
const $ShippingAddressCreationModel = _$ShippingAddressCreationModelTearOff();

/// @nodoc
mixin _$ShippingAddressCreationModel {
  String? get country => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get contact => throw _privateConstructorUsedError;
  String? get landmark => throw _privateConstructorUsedError;
  String? get instructions => throw _privateConstructorUsedError;
  @JsonKey(name: "address_type")
  String? get addressType => throw _privateConstructorUsedError;
  @JsonKey(name: "full_name")
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: "street_name")
  String? get streetName => throw _privateConstructorUsedError;
  @JsonKey(name: "building_name")
  String? get buillingName => throw _privateConstructorUsedError;
  @JsonKey(name: "address_tag")
  String? get addressTag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingAddressCreationModelCopyWith<ShippingAddressCreationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingAddressCreationModelCopyWith<$Res> {
  factory $ShippingAddressCreationModelCopyWith(
          ShippingAddressCreationModel value,
          $Res Function(ShippingAddressCreationModel) then) =
      _$ShippingAddressCreationModelCopyWithImpl<$Res>;
  $Res call(
      {String? country,
      String? state,
      String? city,
      String? contact,
      String? landmark,
      String? instructions,
      @JsonKey(name: "address_type") String? addressType,
      @JsonKey(name: "full_name") String? fullName,
      @JsonKey(name: "street_name") String? streetName,
      @JsonKey(name: "building_name") String? buillingName,
      @JsonKey(name: "address_tag") String? addressTag});
}

/// @nodoc
class _$ShippingAddressCreationModelCopyWithImpl<$Res>
    implements $ShippingAddressCreationModelCopyWith<$Res> {
  _$ShippingAddressCreationModelCopyWithImpl(this._value, this._then);

  final ShippingAddressCreationModel _value;
  // ignore: unused_field
  final $Res Function(ShippingAddressCreationModel) _then;

  @override
  $Res call({
    Object? country = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? contact = freezed,
    Object? landmark = freezed,
    Object? instructions = freezed,
    Object? addressType = freezed,
    Object? fullName = freezed,
    Object? streetName = freezed,
    Object? buillingName = freezed,
    Object? addressTag = freezed,
  }) {
    return _then(_value.copyWith(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: landmark == freezed
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      addressType: addressType == freezed
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      streetName: streetName == freezed
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String?,
      buillingName: buillingName == freezed
          ? _value.buillingName
          : buillingName // ignore: cast_nullable_to_non_nullable
              as String?,
      addressTag: addressTag == freezed
          ? _value.addressTag
          : addressTag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ShippingAddressCreationModelCopyWith<$Res>
    implements $ShippingAddressCreationModelCopyWith<$Res> {
  factory _$ShippingAddressCreationModelCopyWith(
          _ShippingAddressCreationModel value,
          $Res Function(_ShippingAddressCreationModel) then) =
      __$ShippingAddressCreationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? country,
      String? state,
      String? city,
      String? contact,
      String? landmark,
      String? instructions,
      @JsonKey(name: "address_type") String? addressType,
      @JsonKey(name: "full_name") String? fullName,
      @JsonKey(name: "street_name") String? streetName,
      @JsonKey(name: "building_name") String? buillingName,
      @JsonKey(name: "address_tag") String? addressTag});
}

/// @nodoc
class __$ShippingAddressCreationModelCopyWithImpl<$Res>
    extends _$ShippingAddressCreationModelCopyWithImpl<$Res>
    implements _$ShippingAddressCreationModelCopyWith<$Res> {
  __$ShippingAddressCreationModelCopyWithImpl(
      _ShippingAddressCreationModel _value,
      $Res Function(_ShippingAddressCreationModel) _then)
      : super(_value, (v) => _then(v as _ShippingAddressCreationModel));

  @override
  _ShippingAddressCreationModel get _value =>
      super._value as _ShippingAddressCreationModel;

  @override
  $Res call({
    Object? country = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? contact = freezed,
    Object? landmark = freezed,
    Object? instructions = freezed,
    Object? addressType = freezed,
    Object? fullName = freezed,
    Object? streetName = freezed,
    Object? buillingName = freezed,
    Object? addressTag = freezed,
  }) {
    return _then(_ShippingAddressCreationModel(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: landmark == freezed
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      addressType: addressType == freezed
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      streetName: streetName == freezed
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String?,
      buillingName: buillingName == freezed
          ? _value.buillingName
          : buillingName // ignore: cast_nullable_to_non_nullable
              as String?,
      addressTag: addressTag == freezed
          ? _value.addressTag
          : addressTag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShippingAddressCreationModel implements _ShippingAddressCreationModel {
  const _$_ShippingAddressCreationModel(
      {this.country,
      this.state,
      this.city,
      this.contact,
      this.landmark,
      this.instructions,
      @JsonKey(name: "address_type") this.addressType,
      @JsonKey(name: "full_name") this.fullName,
      @JsonKey(name: "street_name") this.streetName,
      @JsonKey(name: "building_name") this.buillingName,
      @JsonKey(name: "address_tag") this.addressTag});

  factory _$_ShippingAddressCreationModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShippingAddressCreationModelFromJson(json);

  @override
  final String? country;
  @override
  final String? state;
  @override
  final String? city;
  @override
  final String? contact;
  @override
  final String? landmark;
  @override
  final String? instructions;
  @override
  @JsonKey(name: "address_type")
  final String? addressType;
  @override
  @JsonKey(name: "full_name")
  final String? fullName;
  @override
  @JsonKey(name: "street_name")
  final String? streetName;
  @override
  @JsonKey(name: "building_name")
  final String? buillingName;
  @override
  @JsonKey(name: "address_tag")
  final String? addressTag;

  @override
  String toString() {
    return 'ShippingAddressCreationModel(country: $country, state: $state, city: $city, contact: $contact, landmark: $landmark, instructions: $instructions, addressType: $addressType, fullName: $fullName, streetName: $streetName, buillingName: $buillingName, addressTag: $addressTag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShippingAddressCreationModel &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality()
                    .equals(other.contact, contact)) &&
            (identical(other.landmark, landmark) ||
                const DeepCollectionEquality()
                    .equals(other.landmark, landmark)) &&
            (identical(other.instructions, instructions) ||
                const DeepCollectionEquality()
                    .equals(other.instructions, instructions)) &&
            (identical(other.addressType, addressType) ||
                const DeepCollectionEquality()
                    .equals(other.addressType, addressType)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.streetName, streetName) ||
                const DeepCollectionEquality()
                    .equals(other.streetName, streetName)) &&
            (identical(other.buillingName, buillingName) ||
                const DeepCollectionEquality()
                    .equals(other.buillingName, buillingName)) &&
            (identical(other.addressTag, addressTag) ||
                const DeepCollectionEquality()
                    .equals(other.addressTag, addressTag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(contact) ^
      const DeepCollectionEquality().hash(landmark) ^
      const DeepCollectionEquality().hash(instructions) ^
      const DeepCollectionEquality().hash(addressType) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(streetName) ^
      const DeepCollectionEquality().hash(buillingName) ^
      const DeepCollectionEquality().hash(addressTag);

  @JsonKey(ignore: true)
  @override
  _$ShippingAddressCreationModelCopyWith<_ShippingAddressCreationModel>
      get copyWith => __$ShippingAddressCreationModelCopyWithImpl<
          _ShippingAddressCreationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShippingAddressCreationModelToJson(this);
  }
}

abstract class _ShippingAddressCreationModel
    implements ShippingAddressCreationModel {
  const factory _ShippingAddressCreationModel(
          {String? country,
          String? state,
          String? city,
          String? contact,
          String? landmark,
          String? instructions,
          @JsonKey(name: "address_type") String? addressType,
          @JsonKey(name: "full_name") String? fullName,
          @JsonKey(name: "street_name") String? streetName,
          @JsonKey(name: "building_name") String? buillingName,
          @JsonKey(name: "address_tag") String? addressTag}) =
      _$_ShippingAddressCreationModel;

  factory _ShippingAddressCreationModel.fromJson(Map<String, dynamic> json) =
      _$_ShippingAddressCreationModel.fromJson;

  @override
  String? get country => throw _privateConstructorUsedError;
  @override
  String? get state => throw _privateConstructorUsedError;
  @override
  String? get city => throw _privateConstructorUsedError;
  @override
  String? get contact => throw _privateConstructorUsedError;
  @override
  String? get landmark => throw _privateConstructorUsedError;
  @override
  String? get instructions => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "address_type")
  String? get addressType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "full_name")
  String? get fullName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "street_name")
  String? get streetName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "building_name")
  String? get buillingName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "address_tag")
  String? get addressTag => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShippingAddressCreationModelCopyWith<_ShippingAddressCreationModel>
      get copyWith => throw _privateConstructorUsedError;
}
