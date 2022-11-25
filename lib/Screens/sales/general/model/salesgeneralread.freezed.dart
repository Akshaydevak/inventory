// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'salesgeneralread.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesGeneralReadModel _$SalesGeneralReadModelFromJson(
    Map<String, dynamic> json) {
  return _SalesGeneralReadModel.fromJson(json);
}

/// @nodoc
mixin _$SalesGeneralReadModel {
  @JsonKey(name: "sales_order_data")
  SalesOrderData? get salesOrderData => throw _privateConstructorUsedError;
  @JsonKey(name: "order_types")
  List<String>? get orderTypes => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_type")
  List<String>? get discountType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesGeneralReadModelCopyWith<SalesGeneralReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesGeneralReadModelCopyWith<$Res> {
  factory $SalesGeneralReadModelCopyWith(SalesGeneralReadModel value,
          $Res Function(SalesGeneralReadModel) then) =
      _$SalesGeneralReadModelCopyWithImpl<$Res, SalesGeneralReadModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "sales_order_data") SalesOrderData? salesOrderData,
      @JsonKey(name: "order_types") List<String>? orderTypes,
      @JsonKey(name: "discount_type") List<String>? discountType});

  $SalesOrderDataCopyWith<$Res>? get salesOrderData;
}

/// @nodoc
class _$SalesGeneralReadModelCopyWithImpl<$Res,
        $Val extends SalesGeneralReadModel>
    implements $SalesGeneralReadModelCopyWith<$Res> {
  _$SalesGeneralReadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesOrderData = freezed,
    Object? orderTypes = freezed,
    Object? discountType = freezed,
  }) {
    return _then(_value.copyWith(
      salesOrderData: freezed == salesOrderData
          ? _value.salesOrderData
          : salesOrderData // ignore: cast_nullable_to_non_nullable
              as SalesOrderData?,
      orderTypes: freezed == orderTypes
          ? _value.orderTypes
          : orderTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SalesOrderDataCopyWith<$Res>? get salesOrderData {
    if (_value.salesOrderData == null) {
      return null;
    }

    return $SalesOrderDataCopyWith<$Res>(_value.salesOrderData!, (value) {
      return _then(_value.copyWith(salesOrderData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SalesGeneralReadModelCopyWith<$Res>
    implements $SalesGeneralReadModelCopyWith<$Res> {
  factory _$$_SalesGeneralReadModelCopyWith(_$_SalesGeneralReadModel value,
          $Res Function(_$_SalesGeneralReadModel) then) =
      __$$_SalesGeneralReadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sales_order_data") SalesOrderData? salesOrderData,
      @JsonKey(name: "order_types") List<String>? orderTypes,
      @JsonKey(name: "discount_type") List<String>? discountType});

  @override
  $SalesOrderDataCopyWith<$Res>? get salesOrderData;
}

/// @nodoc
class __$$_SalesGeneralReadModelCopyWithImpl<$Res>
    extends _$SalesGeneralReadModelCopyWithImpl<$Res, _$_SalesGeneralReadModel>
    implements _$$_SalesGeneralReadModelCopyWith<$Res> {
  __$$_SalesGeneralReadModelCopyWithImpl(_$_SalesGeneralReadModel _value,
      $Res Function(_$_SalesGeneralReadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesOrderData = freezed,
    Object? orderTypes = freezed,
    Object? discountType = freezed,
  }) {
    return _then(_$_SalesGeneralReadModel(
      salesOrderData: freezed == salesOrderData
          ? _value.salesOrderData
          : salesOrderData // ignore: cast_nullable_to_non_nullable
              as SalesOrderData?,
      orderTypes: freezed == orderTypes
          ? _value._orderTypes
          : orderTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      discountType: freezed == discountType
          ? _value._discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesGeneralReadModel implements _SalesGeneralReadModel {
  const _$_SalesGeneralReadModel(
      {@JsonKey(name: "sales_order_data") this.salesOrderData,
      @JsonKey(name: "order_types") final List<String>? orderTypes,
      @JsonKey(name: "discount_type") final List<String>? discountType})
      : _orderTypes = orderTypes,
        _discountType = discountType;

  factory _$_SalesGeneralReadModel.fromJson(Map<String, dynamic> json) =>
      _$$_SalesGeneralReadModelFromJson(json);

  @override
  @JsonKey(name: "sales_order_data")
  final SalesOrderData? salesOrderData;
  final List<String>? _orderTypes;
  @override
  @JsonKey(name: "order_types")
  List<String>? get orderTypes {
    final value = _orderTypes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _discountType;
  @override
  @JsonKey(name: "discount_type")
  List<String>? get discountType {
    final value = _discountType;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SalesGeneralReadModel(salesOrderData: $salesOrderData, orderTypes: $orderTypes, discountType: $discountType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesGeneralReadModel &&
            (identical(other.salesOrderData, salesOrderData) ||
                other.salesOrderData == salesOrderData) &&
            const DeepCollectionEquality()
                .equals(other._orderTypes, _orderTypes) &&
            const DeepCollectionEquality()
                .equals(other._discountType, _discountType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      salesOrderData,
      const DeepCollectionEquality().hash(_orderTypes),
      const DeepCollectionEquality().hash(_discountType));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalesGeneralReadModelCopyWith<_$_SalesGeneralReadModel> get copyWith =>
      __$$_SalesGeneralReadModelCopyWithImpl<_$_SalesGeneralReadModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesGeneralReadModelToJson(
      this,
    );
  }
}

abstract class _SalesGeneralReadModel implements SalesGeneralReadModel {
  const factory _SalesGeneralReadModel(
      {@JsonKey(name: "sales_order_data")
          final SalesOrderData? salesOrderData,
      @JsonKey(name: "order_types")
          final List<String>? orderTypes,
      @JsonKey(name: "discount_type")
          final List<String>? discountType}) = _$_SalesGeneralReadModel;

  factory _SalesGeneralReadModel.fromJson(Map<String, dynamic> json) =
      _$_SalesGeneralReadModel.fromJson;

  @override
  @JsonKey(name: "sales_order_data")
  SalesOrderData? get salesOrderData;
  @override
  @JsonKey(name: "order_types")
  List<String>? get orderTypes;
  @override
  @JsonKey(name: "discount_type")
  List<String>? get discountType;
  @override
  @JsonKey(ignore: true)
  _$$_SalesGeneralReadModelCopyWith<_$_SalesGeneralReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SalesOrderData _$SalesOrderDataFromJson(Map<String, dynamic> json) {
  return _SalesOrderData.fromJson(json);
}

/// @nodoc
mixin _$SalesOrderData {
  double? get foc => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
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
  @JsonKey(name: "ordered_date")
  String? get orderedDate => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_id")
  String? get paymentId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_order_code")
  String? get salesOrderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "order_satus")
  String? get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus => throw _privateConstructorUsedError;
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
  @JsonKey(name: "order_lines")
  List<SalesOrderLines>? get orderLines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesOrderDataCopyWith<SalesOrderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderDataCopyWith<$Res> {
  factory $SalesOrderDataCopyWith(
          SalesOrderData value, $Res Function(SalesOrderData) then) =
      _$SalesOrderDataCopyWithImpl<$Res, SalesOrderData>;
  @useResult
  $Res call(
      {double? foc,
      int? id,
      double? discount,
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
      @JsonKey(name: "ordered_date") String? orderedDate,
      @JsonKey(name: "payment_id") String? paymentId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "sales_order_code") String? salesOrderCode,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "sales_quotes_id") String? salesQuotesId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "order_lines") List<SalesOrderLines>? orderLines});
}

/// @nodoc
class _$SalesOrderDataCopyWithImpl<$Res, $Val extends SalesOrderData>
    implements $SalesOrderDataCopyWith<$Res> {
  _$SalesOrderDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foc = freezed,
    Object? id = freezed,
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
    Object? orderedDate = freezed,
    Object? paymentId = freezed,
    Object? paymentStatus = freezed,
    Object? salesOrderCode = freezed,
    Object? orderStatus = freezed,
    Object? invoiceStatus = freezed,
    Object? salesQuotesId = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? orderLines = freezed,
  }) {
    return _then(_value.copyWith(
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      orderMode: freezed == orderMode
          ? _value.orderMode
          : orderMode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryid: freezed == inventoryid
          ? _value.inventoryid
          : inventoryid // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: freezed == trnNumber
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddressId: freezed == shippingAddressId
          ? _value.shippingAddressId
          : shippingAddressId // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddressId: freezed == billingAddressId
          ? _value.billingAddressId
          : billingAddressId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderedDate: freezed == orderedDate
          ? _value.orderedDate
          : orderedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      salesOrderCode: freezed == salesOrderCode
          ? _value.salesOrderCode
          : salesOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: freezed == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      salesQuotesId: freezed == salesQuotesId
          ? _value.salesQuotesId
          : salesQuotesId // ignore: cast_nullable_to_non_nullable
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
      orderLines: freezed == orderLines
          ? _value.orderLines
          : orderLines // ignore: cast_nullable_to_non_nullable
              as List<SalesOrderLines>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SalesOrderDataCopyWith<$Res>
    implements $SalesOrderDataCopyWith<$Res> {
  factory _$$_SalesOrderDataCopyWith(
          _$_SalesOrderData value, $Res Function(_$_SalesOrderData) then) =
      __$$_SalesOrderDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? foc,
      int? id,
      double? discount,
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
      @JsonKey(name: "ordered_date") String? orderedDate,
      @JsonKey(name: "payment_id") String? paymentId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "sales_order_code") String? salesOrderCode,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "sales_quotes_id") String? salesQuotesId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "order_lines") List<SalesOrderLines>? orderLines});
}

/// @nodoc
class __$$_SalesOrderDataCopyWithImpl<$Res>
    extends _$SalesOrderDataCopyWithImpl<$Res, _$_SalesOrderData>
    implements _$$_SalesOrderDataCopyWith<$Res> {
  __$$_SalesOrderDataCopyWithImpl(
      _$_SalesOrderData _value, $Res Function(_$_SalesOrderData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foc = freezed,
    Object? id = freezed,
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
    Object? orderedDate = freezed,
    Object? paymentId = freezed,
    Object? paymentStatus = freezed,
    Object? salesOrderCode = freezed,
    Object? orderStatus = freezed,
    Object? invoiceStatus = freezed,
    Object? salesQuotesId = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? orderLines = freezed,
  }) {
    return _then(_$_SalesOrderData(
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      orderMode: freezed == orderMode
          ? _value.orderMode
          : orderMode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryid: freezed == inventoryid
          ? _value.inventoryid
          : inventoryid // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: freezed == trnNumber
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddressId: freezed == shippingAddressId
          ? _value.shippingAddressId
          : shippingAddressId // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddressId: freezed == billingAddressId
          ? _value.billingAddressId
          : billingAddressId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderedDate: freezed == orderedDate
          ? _value.orderedDate
          : orderedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      salesOrderCode: freezed == salesOrderCode
          ? _value.salesOrderCode
          : salesOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: freezed == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      salesQuotesId: freezed == salesQuotesId
          ? _value.salesQuotesId
          : salesQuotesId // ignore: cast_nullable_to_non_nullable
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
      orderLines: freezed == orderLines
          ? _value._orderLines
          : orderLines // ignore: cast_nullable_to_non_nullable
              as List<SalesOrderLines>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesOrderData implements _SalesOrderData {
  const _$_SalesOrderData(
      {this.foc,
      this.id,
      this.discount,
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
      @JsonKey(name: "ordered_date") this.orderedDate,
      @JsonKey(name: "payment_id") this.paymentId,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "sales_order_code") this.salesOrderCode,
      @JsonKey(name: "order_satus") this.orderStatus,
      @JsonKey(name: "invoice_status") this.invoiceStatus,
      @JsonKey(name: "sales_quotes_id") this.salesQuotesId,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "taxable_amount") this.taxableAmount,
      @JsonKey(name: "selling_price_total") this.sellingPriceTotal,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "order_lines") final List<SalesOrderLines>? orderLines})
      : _orderLines = orderLines;

  factory _$_SalesOrderData.fromJson(Map<String, dynamic> json) =>
      _$$_SalesOrderDataFromJson(json);

  @override
  final double? foc;
  @override
  final int? id;
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
  @JsonKey(name: "ordered_date")
  final String? orderedDate;
  @override
  @JsonKey(name: "payment_id")
  final String? paymentId;
  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  @override
  @JsonKey(name: "sales_order_code")
  final String? salesOrderCode;
  @override
  @JsonKey(name: "order_satus")
  final String? orderStatus;
  @override
  @JsonKey(name: "invoice_status")
  final String? invoiceStatus;
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
  final List<SalesOrderLines>? _orderLines;
  @override
  @JsonKey(name: "order_lines")
  List<SalesOrderLines>? get orderLines {
    final value = _orderLines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SalesOrderData(foc: $foc, id: $id, discount: $discount, vat: $vat, note: $note, remarks: $remarks, orderType: $orderType, orderMode: $orderMode, inventoryid: $inventoryid, customerId: $customerId, trnNumber: $trnNumber, shippingAddressId: $shippingAddressId, billingAddressId: $billingAddressId, orderedDate: $orderedDate, paymentId: $paymentId, paymentStatus: $paymentStatus, salesOrderCode: $salesOrderCode, orderStatus: $orderStatus, invoiceStatus: $invoiceStatus, salesQuotesId: $salesQuotesId, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, sellingPriceTotal: $sellingPriceTotal, totalPrice: $totalPrice, orderLines: $orderLines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesOrderData &&
            (identical(other.foc, foc) || other.foc == foc) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.orderMode, orderMode) ||
                other.orderMode == orderMode) &&
            (identical(other.inventoryid, inventoryid) ||
                other.inventoryid == inventoryid) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.trnNumber, trnNumber) ||
                other.trnNumber == trnNumber) &&
            (identical(other.shippingAddressId, shippingAddressId) ||
                other.shippingAddressId == shippingAddressId) &&
            (identical(other.billingAddressId, billingAddressId) ||
                other.billingAddressId == billingAddressId) &&
            (identical(other.orderedDate, orderedDate) ||
                other.orderedDate == orderedDate) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.salesOrderCode, salesOrderCode) ||
                other.salesOrderCode == salesOrderCode) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.invoiceStatus, invoiceStatus) ||
                other.invoiceStatus == invoiceStatus) &&
            (identical(other.salesQuotesId, salesQuotesId) ||
                other.salesQuotesId == salesQuotesId) &&
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
                .equals(other._orderLines, _orderLines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        foc,
        id,
        discount,
        vat,
        note,
        remarks,
        orderType,
        orderMode,
        inventoryid,
        customerId,
        trnNumber,
        shippingAddressId,
        billingAddressId,
        orderedDate,
        paymentId,
        paymentStatus,
        salesOrderCode,
        orderStatus,
        invoiceStatus,
        salesQuotesId,
        unitCost,
        excessTax,
        taxableAmount,
        sellingPriceTotal,
        totalPrice,
        const DeepCollectionEquality().hash(_orderLines)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalesOrderDataCopyWith<_$_SalesOrderData> get copyWith =>
      __$$_SalesOrderDataCopyWithImpl<_$_SalesOrderData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesOrderDataToJson(
      this,
    );
  }
}

abstract class _SalesOrderData implements SalesOrderData {
  const factory _SalesOrderData(
      {final double? foc,
      final int? id,
      final double? discount,
      final double? vat,
      final String? note,
      final String? remarks,
      @JsonKey(name: "order_type")
          final String? orderType,
      @JsonKey(name: "order_mode")
          final String? orderMode,
      @JsonKey(name: "inventory_id")
          final String? inventoryid,
      @JsonKey(name: "customer_id")
          final String? customerId,
      @JsonKey(name: "trn_number")
          final String? trnNumber,
      @JsonKey(name: "shipping_address_id")
          final String? shippingAddressId,
      @JsonKey(name: "billing_address_id")
          final String? billingAddressId,
      @JsonKey(name: "ordered_date")
          final String? orderedDate,
      @JsonKey(name: "payment_id")
          final String? paymentId,
      @JsonKey(name: "payment_status")
          final String? paymentStatus,
      @JsonKey(name: "sales_order_code")
          final String? salesOrderCode,
      @JsonKey(name: "order_satus")
          final String? orderStatus,
      @JsonKey(name: "invoice_status")
          final String? invoiceStatus,
      @JsonKey(name: "sales_quotes_id")
          final String? salesQuotesId,
      @JsonKey(name: "unit_cost")
          final double? unitCost,
      @JsonKey(name: "excess_tax")
          final double? excessTax,
      @JsonKey(name: "taxable_amount")
          final double? taxableAmount,
      @JsonKey(name: "selling_price_total")
          final double? sellingPriceTotal,
      @JsonKey(name: "total_price")
          final double? totalPrice,
      @JsonKey(name: "order_lines")
          final List<SalesOrderLines>? orderLines}) = _$_SalesOrderData;

  factory _SalesOrderData.fromJson(Map<String, dynamic> json) =
      _$_SalesOrderData.fromJson;

  @override
  double? get foc;
  @override
  int? get id;
  @override
  double? get discount;
  @override
  double? get vat;
  @override
  String? get note;
  @override
  String? get remarks;
  @override
  @JsonKey(name: "order_type")
  String? get orderType;
  @override
  @JsonKey(name: "order_mode")
  String? get orderMode;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryid;
  @override
  @JsonKey(name: "customer_id")
  String? get customerId;
  @override
  @JsonKey(name: "trn_number")
  String? get trnNumber;
  @override
  @JsonKey(name: "shipping_address_id")
  String? get shippingAddressId;
  @override
  @JsonKey(name: "billing_address_id")
  String? get billingAddressId;
  @override
  @JsonKey(name: "ordered_date")
  String? get orderedDate;
  @override
  @JsonKey(name: "payment_id")
  String? get paymentId;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus;
  @override
  @JsonKey(name: "sales_order_code")
  String? get salesOrderCode;
  @override
  @JsonKey(name: "order_satus")
  String? get orderStatus;
  @override
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus;
  @override
  @JsonKey(name: "sales_quotes_id")
  String? get salesQuotesId;
  @override
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
  @JsonKey(name: "order_lines")
  List<SalesOrderLines>? get orderLines;
  @override
  @JsonKey(ignore: true)
  _$$_SalesOrderDataCopyWith<_$_SalesOrderData> get copyWith =>
      throw _privateConstructorUsedError;
}
