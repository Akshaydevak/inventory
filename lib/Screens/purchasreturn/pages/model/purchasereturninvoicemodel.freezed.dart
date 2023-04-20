// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchasereturninvoicemodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseInvoiceReadModel _$PurchaseInvoiceReadModelFromJson(
    Map<String, dynamic> json) {
  return _PurchaseInvoiceReadModel.fromJson(json);
}

/// @nodoc
mixin _$PurchaseInvoiceReadModel {
  int? get id => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  double? get foc => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "return_order_code")
  String? get returnOrderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "return_order_status")
  String? get returnOrderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_invoice_id")
  String? get purchaseInvoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_code")
  String? get vendorCode => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_address")
  String? get vendorAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_trn_number")
  String? get vendorTrnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_mail_id")
  String? get vendorMailId => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_data")
  InvoiceDatas? get invoicedata => throw _privateConstructorUsedError;
  @JsonKey(name: "order_lines")
  List<Order>? get orderLiness => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseInvoiceReadModelCopyWith<PurchaseInvoiceReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseInvoiceReadModelCopyWith<$Res> {
  factory $PurchaseInvoiceReadModelCopyWith(PurchaseInvoiceReadModel value,
          $Res Function(PurchaseInvoiceReadModel) then) =
      _$PurchaseInvoiceReadModelCopyWithImpl<$Res, PurchaseInvoiceReadModel>;
  @useResult
  $Res call(
      {int? id,
      double? vat,
      double? foc,
      double? discount,
      String? notes,
      String? remarks,
      @JsonKey(name: "return_order_code") String? returnOrderCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "return_order_status") String? returnOrderStatus,
      @JsonKey(name: "purchase_invoice_id") String? purchaseInvoiceId,
      @JsonKey(name: "vendor_code") String? vendorCode,
      @JsonKey(name: "vendor_address") String? vendorAddress,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") String? vendorMailId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "invoice_data") InvoiceDatas? invoicedata,
      @JsonKey(name: "order_lines") List<Order>? orderLiness});

  $InvoiceDatasCopyWith<$Res>? get invoicedata;
}

/// @nodoc
class _$PurchaseInvoiceReadModelCopyWithImpl<$Res,
        $Val extends PurchaseInvoiceReadModel>
    implements $PurchaseInvoiceReadModelCopyWith<$Res> {
  _$PurchaseInvoiceReadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? vat = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? returnOrderCode = freezed,
    Object? inventoryId = freezed,
    Object? returnOrderStatus = freezed,
    Object? purchaseInvoiceId = freezed,
    Object? vendorCode = freezed,
    Object? vendorAddress = freezed,
    Object? vendorTrnNumber = freezed,
    Object? vendorMailId = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? grandTotal = freezed,
    Object? vatableAmount = freezed,
    Object? invoicedata = freezed,
    Object? orderLiness = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
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
      returnOrderCode: freezed == returnOrderCode
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderStatus: freezed == returnOrderStatus
          ? _value.returnOrderStatus
          : returnOrderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: freezed == purchaseInvoiceId
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorCode: freezed == vendorCode
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: freezed == vendorAddress
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorTrnNumber: freezed == vendorTrnNumber
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: freezed == vendorMailId
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
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
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      invoicedata: freezed == invoicedata
          ? _value.invoicedata
          : invoicedata // ignore: cast_nullable_to_non_nullable
              as InvoiceDatas?,
      orderLiness: freezed == orderLiness
          ? _value.orderLiness
          : orderLiness // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceDatasCopyWith<$Res>? get invoicedata {
    if (_value.invoicedata == null) {
      return null;
    }

    return $InvoiceDatasCopyWith<$Res>(_value.invoicedata!, (value) {
      return _then(_value.copyWith(invoicedata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PurchaseInvoiceReadModelCopyWith<$Res>
    implements $PurchaseInvoiceReadModelCopyWith<$Res> {
  factory _$$_PurchaseInvoiceReadModelCopyWith(
          _$_PurchaseInvoiceReadModel value,
          $Res Function(_$_PurchaseInvoiceReadModel) then) =
      __$$_PurchaseInvoiceReadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      double? vat,
      double? foc,
      double? discount,
      String? notes,
      String? remarks,
      @JsonKey(name: "return_order_code") String? returnOrderCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "return_order_status") String? returnOrderStatus,
      @JsonKey(name: "purchase_invoice_id") String? purchaseInvoiceId,
      @JsonKey(name: "vendor_code") String? vendorCode,
      @JsonKey(name: "vendor_address") String? vendorAddress,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") String? vendorMailId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "invoice_data") InvoiceDatas? invoicedata,
      @JsonKey(name: "order_lines") List<Order>? orderLiness});

  @override
  $InvoiceDatasCopyWith<$Res>? get invoicedata;
}

/// @nodoc
class __$$_PurchaseInvoiceReadModelCopyWithImpl<$Res>
    extends _$PurchaseInvoiceReadModelCopyWithImpl<$Res,
        _$_PurchaseInvoiceReadModel>
    implements _$$_PurchaseInvoiceReadModelCopyWith<$Res> {
  __$$_PurchaseInvoiceReadModelCopyWithImpl(_$_PurchaseInvoiceReadModel _value,
      $Res Function(_$_PurchaseInvoiceReadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? vat = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? returnOrderCode = freezed,
    Object? inventoryId = freezed,
    Object? returnOrderStatus = freezed,
    Object? purchaseInvoiceId = freezed,
    Object? vendorCode = freezed,
    Object? vendorAddress = freezed,
    Object? vendorTrnNumber = freezed,
    Object? vendorMailId = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? grandTotal = freezed,
    Object? vatableAmount = freezed,
    Object? invoicedata = freezed,
    Object? orderLiness = freezed,
  }) {
    return _then(_$_PurchaseInvoiceReadModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
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
      returnOrderCode: freezed == returnOrderCode
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderStatus: freezed == returnOrderStatus
          ? _value.returnOrderStatus
          : returnOrderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: freezed == purchaseInvoiceId
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorCode: freezed == vendorCode
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: freezed == vendorAddress
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorTrnNumber: freezed == vendorTrnNumber
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: freezed == vendorMailId
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
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
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      invoicedata: freezed == invoicedata
          ? _value.invoicedata
          : invoicedata // ignore: cast_nullable_to_non_nullable
              as InvoiceDatas?,
      orderLiness: freezed == orderLiness
          ? _value._orderLiness
          : orderLiness // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseInvoiceReadModel implements _PurchaseInvoiceReadModel {
  const _$_PurchaseInvoiceReadModel(
      {this.id,
      this.vat,
      this.foc,
      this.discount,
      this.notes,
      this.remarks,
      @JsonKey(name: "return_order_code") this.returnOrderCode,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "return_order_status") this.returnOrderStatus,
      @JsonKey(name: "purchase_invoice_id") this.purchaseInvoiceId,
      @JsonKey(name: "vendor_code") this.vendorCode,
      @JsonKey(name: "vendor_address") this.vendorAddress,
      @JsonKey(name: "vendor_trn_number") this.vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") this.vendorMailId,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "grand_total") this.grandTotal,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "invoice_data") this.invoicedata,
      @JsonKey(name: "order_lines") final List<Order>? orderLiness})
      : _orderLiness = orderLiness;

  factory _$_PurchaseInvoiceReadModel.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseInvoiceReadModelFromJson(json);

  @override
  final int? id;
  @override
  final double? vat;
  @override
  final double? foc;
  @override
  final double? discount;
  @override
  final String? notes;
  @override
  final String? remarks;
  @override
  @JsonKey(name: "return_order_code")
  final String? returnOrderCode;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "return_order_status")
  final String? returnOrderStatus;
  @override
  @JsonKey(name: "purchase_invoice_id")
  final String? purchaseInvoiceId;
  @override
  @JsonKey(name: "vendor_code")
  final String? vendorCode;
  @override
  @JsonKey(name: "vendor_address")
  final String? vendorAddress;
  @override
  @JsonKey(name: "vendor_trn_number")
  final String? vendorTrnNumber;
  @override
  @JsonKey(name: "vendor_mail_id")
  final String? vendorMailId;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
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
  @JsonKey(name: "vatable_amount")
  final double? vatableAmount;
  @override
  @JsonKey(name: "invoice_data")
  final InvoiceDatas? invoicedata;
  final List<Order>? _orderLiness;
  @override
  @JsonKey(name: "order_lines")
  List<Order>? get orderLiness {
    final value = _orderLiness;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PurchaseInvoiceReadModel(id: $id, vat: $vat, foc: $foc, discount: $discount, notes: $notes, remarks: $remarks, returnOrderCode: $returnOrderCode, inventoryId: $inventoryId, returnOrderStatus: $returnOrderStatus, purchaseInvoiceId: $purchaseInvoiceId, vendorCode: $vendorCode, vendorAddress: $vendorAddress, vendorTrnNumber: $vendorTrnNumber, vendorMailId: $vendorMailId, unitCost: $unitCost, excessTax: $excessTax, actualCost: $actualCost, grandTotal: $grandTotal, vatableAmount: $vatableAmount, invoicedata: $invoicedata, orderLiness: $orderLiness)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseInvoiceReadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.foc, foc) || other.foc == foc) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.returnOrderCode, returnOrderCode) ||
                other.returnOrderCode == returnOrderCode) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.returnOrderStatus, returnOrderStatus) ||
                other.returnOrderStatus == returnOrderStatus) &&
            (identical(other.purchaseInvoiceId, purchaseInvoiceId) ||
                other.purchaseInvoiceId == purchaseInvoiceId) &&
            (identical(other.vendorCode, vendorCode) ||
                other.vendorCode == vendorCode) &&
            (identical(other.vendorAddress, vendorAddress) ||
                other.vendorAddress == vendorAddress) &&
            (identical(other.vendorTrnNumber, vendorTrnNumber) ||
                other.vendorTrnNumber == vendorTrnNumber) &&
            (identical(other.vendorMailId, vendorMailId) ||
                other.vendorMailId == vendorMailId) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.vatableAmount, vatableAmount) ||
                other.vatableAmount == vatableAmount) &&
            (identical(other.invoicedata, invoicedata) ||
                other.invoicedata == invoicedata) &&
            const DeepCollectionEquality()
                .equals(other._orderLiness, _orderLiness));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        vat,
        foc,
        discount,
        notes,
        remarks,
        returnOrderCode,
        inventoryId,
        returnOrderStatus,
        purchaseInvoiceId,
        vendorCode,
        vendorAddress,
        vendorTrnNumber,
        vendorMailId,
        unitCost,
        excessTax,
        actualCost,
        grandTotal,
        vatableAmount,
        invoicedata,
        const DeepCollectionEquality().hash(_orderLiness)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseInvoiceReadModelCopyWith<_$_PurchaseInvoiceReadModel>
      get copyWith => __$$_PurchaseInvoiceReadModelCopyWithImpl<
          _$_PurchaseInvoiceReadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseInvoiceReadModelToJson(
      this,
    );
  }
}

abstract class _PurchaseInvoiceReadModel implements PurchaseInvoiceReadModel {
  const factory _PurchaseInvoiceReadModel(
          {final int? id,
          final double? vat,
          final double? foc,
          final double? discount,
          final String? notes,
          final String? remarks,
          @JsonKey(name: "return_order_code") final String? returnOrderCode,
          @JsonKey(name: "inventory_id") final String? inventoryId,
          @JsonKey(name: "return_order_status") final String? returnOrderStatus,
          @JsonKey(name: "purchase_invoice_id") final String? purchaseInvoiceId,
          @JsonKey(name: "vendor_code") final String? vendorCode,
          @JsonKey(name: "vendor_address") final String? vendorAddress,
          @JsonKey(name: "vendor_trn_number") final String? vendorTrnNumber,
          @JsonKey(name: "vendor_mail_id") final String? vendorMailId,
          @JsonKey(name: "unit_cost") final double? unitCost,
          @JsonKey(name: "excess_tax") final double? excessTax,
          @JsonKey(name: "actual_cost") final double? actualCost,
          @JsonKey(name: "grand_total") final double? grandTotal,
          @JsonKey(name: "vatable_amount") final double? vatableAmount,
          @JsonKey(name: "invoice_data") final InvoiceDatas? invoicedata,
          @JsonKey(name: "order_lines") final List<Order>? orderLiness}) =
      _$_PurchaseInvoiceReadModel;

  factory _PurchaseInvoiceReadModel.fromJson(Map<String, dynamic> json) =
      _$_PurchaseInvoiceReadModel.fromJson;

  @override
  int? get id;
  @override
  double? get vat;
  @override
  double? get foc;
  @override
  double? get discount;
  @override
  String? get notes;
  @override
  String? get remarks;
  @override
  @JsonKey(name: "return_order_code")
  String? get returnOrderCode;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "return_order_status")
  String? get returnOrderStatus;
  @override
  @JsonKey(name: "purchase_invoice_id")
  String? get purchaseInvoiceId;
  @override
  @JsonKey(name: "vendor_code")
  String? get vendorCode;
  @override
  @JsonKey(name: "vendor_address")
  String? get vendorAddress;
  @override
  @JsonKey(name: "vendor_trn_number")
  String? get vendorTrnNumber;
  @override
  @JsonKey(name: "vendor_mail_id")
  String? get vendorMailId;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
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
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount;
  @override
  @JsonKey(name: "invoice_data")
  InvoiceDatas? get invoicedata;
  @override
  @JsonKey(name: "order_lines")
  List<Order>? get orderLiness;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseInvoiceReadModelCopyWith<_$_PurchaseInvoiceReadModel>
      get copyWith => throw _privateConstructorUsedError;
}

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  int? get id => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  double? get foc => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "return_order_line_code")
  String? get returnOrderLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  String? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_name")
  String? get variantName => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_invoice_line_id")
  String? get purchaseInvoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get totalQty => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "is_invoiced", defaultValue: false)
  bool? get isInvoiced => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_free", defaultValue: false)
  bool? get isFree => throw _privateConstructorUsedError;
  @JsonKey(name: "updateCheck", defaultValue: false)
  bool? get updateCheck => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "supplier_code")
  String? get suppliercode => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_uom")
  String? get purchaseUom => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_id")
  int? get invoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_reference_code")
  String? get vendorRefCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {int? id,
      double? vat,
      double? foc,
      double? discount,
      String? barcode,
      @JsonKey(name: "return_order_line_code") String? returnOrderLineCode,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "purchase_invoice_line_id") String? purchaseInvoiceId,
      @JsonKey(name: "quantity") int? totalQty,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "is_invoiced", defaultValue: false) bool? isInvoiced,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "is_free", defaultValue: false) bool? isFree,
      @JsonKey(name: "updateCheck", defaultValue: false) bool? updateCheck,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "supplier_code") String? suppliercode,
      @JsonKey(name: "purchase_uom") String? purchaseUom,
      @JsonKey(name: "invoice_id") int? invoiceId,
      @JsonKey(name: "vendor_reference_code") String? vendorRefCode});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? vat = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? barcode = freezed,
    Object? returnOrderLineCode = freezed,
    Object? variantId = freezed,
    Object? variantName = freezed,
    Object? purchaseInvoiceId = freezed,
    Object? totalQty = freezed,
    Object? unitCost = freezed,
    Object? vatableAmount = freezed,
    Object? grandTotal = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? isInvoiced = freezed,
    Object? isActive = freezed,
    Object? isFree = freezed,
    Object? updateCheck = freezed,
    Object? createdAt = freezed,
    Object? suppliercode = freezed,
    Object? purchaseUom = freezed,
    Object? invoiceId = freezed,
    Object? vendorRefCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
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
      purchaseInvoiceId: freezed == purchaseInvoiceId
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
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
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFree: freezed == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      updateCheck: freezed == updateCheck
          ? _value.updateCheck
          : updateCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      suppliercode: freezed == suppliercode
          ? _value.suppliercode
          : suppliercode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUom: freezed == purchaseUom
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceId: freezed == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int?,
      vendorRefCode: freezed == vendorRefCode
          ? _value.vendorRefCode
          : vendorRefCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      double? vat,
      double? foc,
      double? discount,
      String? barcode,
      @JsonKey(name: "return_order_line_code") String? returnOrderLineCode,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "purchase_invoice_line_id") String? purchaseInvoiceId,
      @JsonKey(name: "quantity") int? totalQty,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "is_invoiced", defaultValue: false) bool? isInvoiced,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "is_free", defaultValue: false) bool? isFree,
      @JsonKey(name: "updateCheck", defaultValue: false) bool? updateCheck,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "supplier_code") String? suppliercode,
      @JsonKey(name: "purchase_uom") String? purchaseUom,
      @JsonKey(name: "invoice_id") int? invoiceId,
      @JsonKey(name: "vendor_reference_code") String? vendorRefCode});
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res, _$_Order>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? vat = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? barcode = freezed,
    Object? returnOrderLineCode = freezed,
    Object? variantId = freezed,
    Object? variantName = freezed,
    Object? purchaseInvoiceId = freezed,
    Object? totalQty = freezed,
    Object? unitCost = freezed,
    Object? vatableAmount = freezed,
    Object? grandTotal = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? isInvoiced = freezed,
    Object? isActive = freezed,
    Object? isFree = freezed,
    Object? updateCheck = freezed,
    Object? createdAt = freezed,
    Object? suppliercode = freezed,
    Object? purchaseUom = freezed,
    Object? invoiceId = freezed,
    Object? vendorRefCode = freezed,
  }) {
    return _then(_$_Order(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
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
      purchaseInvoiceId: freezed == purchaseInvoiceId
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
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
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFree: freezed == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      updateCheck: freezed == updateCheck
          ? _value.updateCheck
          : updateCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      suppliercode: freezed == suppliercode
          ? _value.suppliercode
          : suppliercode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUom: freezed == purchaseUom
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceId: freezed == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int?,
      vendorRefCode: freezed == vendorRefCode
          ? _value.vendorRefCode
          : vendorRefCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Order implements _Order {
  const _$_Order(
      {this.id,
      this.vat,
      this.foc,
      this.discount,
      this.barcode,
      @JsonKey(name: "return_order_line_code") this.returnOrderLineCode,
      @JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "variant_name") this.variantName,
      @JsonKey(name: "purchase_invoice_line_id") this.purchaseInvoiceId,
      @JsonKey(name: "quantity") this.totalQty,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "grand_total") this.grandTotal,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "is_invoiced", defaultValue: false) this.isInvoiced,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive,
      @JsonKey(name: "is_free", defaultValue: false) this.isFree,
      @JsonKey(name: "updateCheck", defaultValue: false) this.updateCheck,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "supplier_code") this.suppliercode,
      @JsonKey(name: "purchase_uom") this.purchaseUom,
      @JsonKey(name: "invoice_id") this.invoiceId,
      @JsonKey(name: "vendor_reference_code") this.vendorRefCode});

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  final int? id;
  @override
  final double? vat;
  @override
  final double? foc;
  @override
  final double? discount;
  @override
  final String? barcode;
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
  @JsonKey(name: "purchase_invoice_line_id")
  final String? purchaseInvoiceId;
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
  @JsonKey(name: "grand_total")
  final double? grandTotal;
  @override
  @JsonKey(name: "excess_tax")
  final double? excessTax;
  @override
  @JsonKey(name: "actual_cost")
  final double? actualCost;
  @override
  @JsonKey(name: "is_invoiced", defaultValue: false)
  final bool? isInvoiced;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "is_free", defaultValue: false)
  final bool? isFree;
  @override
  @JsonKey(name: "updateCheck", defaultValue: false)
  final bool? updateCheck;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "supplier_code")
  final String? suppliercode;
  @override
  @JsonKey(name: "purchase_uom")
  final String? purchaseUom;
  @override
  @JsonKey(name: "invoice_id")
  final int? invoiceId;
  @override
  @JsonKey(name: "vendor_reference_code")
  final String? vendorRefCode;

  @override
  String toString() {
    return 'Order(id: $id, vat: $vat, foc: $foc, discount: $discount, barcode: $barcode, returnOrderLineCode: $returnOrderLineCode, variantId: $variantId, variantName: $variantName, purchaseInvoiceId: $purchaseInvoiceId, totalQty: $totalQty, unitCost: $unitCost, vatableAmount: $vatableAmount, grandTotal: $grandTotal, excessTax: $excessTax, actualCost: $actualCost, isInvoiced: $isInvoiced, isActive: $isActive, isFree: $isFree, updateCheck: $updateCheck, createdAt: $createdAt, suppliercode: $suppliercode, purchaseUom: $purchaseUom, invoiceId: $invoiceId, vendorRefCode: $vendorRefCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.foc, foc) || other.foc == foc) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.returnOrderLineCode, returnOrderLineCode) ||
                other.returnOrderLineCode == returnOrderLineCode) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.variantName, variantName) ||
                other.variantName == variantName) &&
            (identical(other.purchaseInvoiceId, purchaseInvoiceId) ||
                other.purchaseInvoiceId == purchaseInvoiceId) &&
            (identical(other.totalQty, totalQty) ||
                other.totalQty == totalQty) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.vatableAmount, vatableAmount) ||
                other.vatableAmount == vatableAmount) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.isInvoiced, isInvoiced) ||
                other.isInvoiced == isInvoiced) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.updateCheck, updateCheck) ||
                other.updateCheck == updateCheck) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.suppliercode, suppliercode) ||
                other.suppliercode == suppliercode) &&
            (identical(other.purchaseUom, purchaseUom) ||
                other.purchaseUom == purchaseUom) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.vendorRefCode, vendorRefCode) ||
                other.vendorRefCode == vendorRefCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        vat,
        foc,
        discount,
        barcode,
        returnOrderLineCode,
        variantId,
        variantName,
        purchaseInvoiceId,
        totalQty,
        unitCost,
        vatableAmount,
        grandTotal,
        excessTax,
        actualCost,
        isInvoiced,
        isActive,
        isFree,
        updateCheck,
        createdAt,
        suppliercode,
        purchaseUom,
        invoiceId,
        vendorRefCode
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  const factory _Order(
      {final int? id,
      final double? vat,
      final double? foc,
      final double? discount,
      final String? barcode,
      @JsonKey(name: "return_order_line_code")
          final String? returnOrderLineCode,
      @JsonKey(name: "variant_id")
          final String? variantId,
      @JsonKey(name: "variant_name")
          final String? variantName,
      @JsonKey(name: "purchase_invoice_line_id")
          final String? purchaseInvoiceId,
      @JsonKey(name: "quantity")
          final int? totalQty,
      @JsonKey(name: "unit_cost")
          final double? unitCost,
      @JsonKey(name: "vatable_amount")
          final double? vatableAmount,
      @JsonKey(name: "grand_total")
          final double? grandTotal,
      @JsonKey(name: "excess_tax")
          final double? excessTax,
      @JsonKey(name: "actual_cost")
          final double? actualCost,
      @JsonKey(name: "is_invoiced", defaultValue: false)
          final bool? isInvoiced,
      @JsonKey(name: "is_active", defaultValue: false)
          final bool? isActive,
      @JsonKey(name: "is_free", defaultValue: false)
          final bool? isFree,
      @JsonKey(name: "updateCheck", defaultValue: false)
          final bool? updateCheck,
      @JsonKey(name: "created_at")
          final String? createdAt,
      @JsonKey(name: "supplier_code")
          final String? suppliercode,
      @JsonKey(name: "purchase_uom")
          final String? purchaseUom,
      @JsonKey(name: "invoice_id")
          final int? invoiceId,
      @JsonKey(name: "vendor_reference_code")
          final String? vendorRefCode}) = _$_Order;

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  int? get id;
  @override
  double? get vat;
  @override
  double? get foc;
  @override
  double? get discount;
  @override
  String? get barcode;
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
  @JsonKey(name: "purchase_invoice_line_id")
  String? get purchaseInvoiceId;
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
  @JsonKey(name: "grand_total")
  double? get grandTotal;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost;
  @override
  @JsonKey(name: "is_invoiced", defaultValue: false)
  bool? get isInvoiced;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "is_free", defaultValue: false)
  bool? get isFree;
  @override
  @JsonKey(name: "updateCheck", defaultValue: false)
  bool? get updateCheck;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "supplier_code")
  String? get suppliercode;
  @override
  @JsonKey(name: "purchase_uom")
  String? get purchaseUom;
  @override
  @JsonKey(name: "invoice_id")
  int? get invoiceId;
  @override
  @JsonKey(name: "vendor_reference_code")
  String? get vendorRefCode;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceDatas _$InvoiceDatasFromJson(Map<String, dynamic> json) {
  return _InvoiceDatas.fromJson(json);
}

/// @nodoc
mixin _$InvoiceDatas {
  int? get id => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  double? get foc => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "return_order_code")
  String? get returnOrderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_invoice_id")
  String? get purchaseInvoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_code")
  String? get invoiceCode => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiced_by")
  String? get invoicedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_code")
  String? get payementCode => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method")
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_id")
  String? get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiced_date")
  String? get invoicedDate => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_address")
  String? get vendorAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_trn_number")
  String? get vendorTrnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_mail_id")
  String? get vendorMailId => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "return_order_status")
  String? get returnOrderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_lines")
  List<Order>? get orderLiness => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceDatasCopyWith<InvoiceDatas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDatasCopyWith<$Res> {
  factory $InvoiceDatasCopyWith(
          InvoiceDatas value, $Res Function(InvoiceDatas) then) =
      _$InvoiceDatasCopyWithImpl<$Res, InvoiceDatas>;
  @useResult
  $Res call(
      {int? id,
      double? vat,
      String? notes,
      String? remarks,
      double? foc,
      double? discount,
      @JsonKey(name: "return_order_code") String? returnOrderCode,
      @JsonKey(name: "purchase_invoice_id") String? purchaseInvoiceId,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "invoiced_by") String? invoicedBy,
      @JsonKey(name: "payment_code") String? payementCode,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "vendor_id") String? vendorId,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "invoiced_date") String? invoicedDate,
      @JsonKey(name: "vendor_address") String? vendorAddress,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") String? vendorMailId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "return_order_status") String? returnOrderStatus,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "invoice_lines") List<Order>? orderLiness});
}

/// @nodoc
class _$InvoiceDatasCopyWithImpl<$Res, $Val extends InvoiceDatas>
    implements $InvoiceDatasCopyWith<$Res> {
  _$InvoiceDatasCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? vat = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? returnOrderCode = freezed,
    Object? purchaseInvoiceId = freezed,
    Object? invoiceCode = freezed,
    Object? paymentStatus = freezed,
    Object? inventoryId = freezed,
    Object? invoicedBy = freezed,
    Object? payementCode = freezed,
    Object? paymentMethod = freezed,
    Object? vendorId = freezed,
    Object? invoiceStatus = freezed,
    Object? invoicedDate = freezed,
    Object? vendorAddress = freezed,
    Object? vendorTrnNumber = freezed,
    Object? vendorMailId = freezed,
    Object? unitCost = freezed,
    Object? returnOrderStatus = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? grandTotal = freezed,
    Object? vatableAmount = freezed,
    Object? orderLiness = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      returnOrderCode: freezed == returnOrderCode
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: freezed == purchaseInvoiceId
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: freezed == invoicedBy
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      payementCode: freezed == payementCode
          ? _value.payementCode
          : payementCode // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: freezed == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedDate: freezed == invoicedDate
          ? _value.invoicedDate
          : invoicedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: freezed == vendorAddress
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorTrnNumber: freezed == vendorTrnNumber
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: freezed == vendorMailId
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      returnOrderStatus: freezed == returnOrderStatus
          ? _value.returnOrderStatus
          : returnOrderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
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
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      orderLiness: freezed == orderLiness
          ? _value.orderLiness
          : orderLiness // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvoiceDatasCopyWith<$Res>
    implements $InvoiceDatasCopyWith<$Res> {
  factory _$$_InvoiceDatasCopyWith(
          _$_InvoiceDatas value, $Res Function(_$_InvoiceDatas) then) =
      __$$_InvoiceDatasCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      double? vat,
      String? notes,
      String? remarks,
      double? foc,
      double? discount,
      @JsonKey(name: "return_order_code") String? returnOrderCode,
      @JsonKey(name: "purchase_invoice_id") String? purchaseInvoiceId,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "invoiced_by") String? invoicedBy,
      @JsonKey(name: "payment_code") String? payementCode,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "vendor_id") String? vendorId,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "invoiced_date") String? invoicedDate,
      @JsonKey(name: "vendor_address") String? vendorAddress,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") String? vendorMailId,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "return_order_status") String? returnOrderStatus,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "invoice_lines") List<Order>? orderLiness});
}

/// @nodoc
class __$$_InvoiceDatasCopyWithImpl<$Res>
    extends _$InvoiceDatasCopyWithImpl<$Res, _$_InvoiceDatas>
    implements _$$_InvoiceDatasCopyWith<$Res> {
  __$$_InvoiceDatasCopyWithImpl(
      _$_InvoiceDatas _value, $Res Function(_$_InvoiceDatas) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? vat = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? returnOrderCode = freezed,
    Object? purchaseInvoiceId = freezed,
    Object? invoiceCode = freezed,
    Object? paymentStatus = freezed,
    Object? inventoryId = freezed,
    Object? invoicedBy = freezed,
    Object? payementCode = freezed,
    Object? paymentMethod = freezed,
    Object? vendorId = freezed,
    Object? invoiceStatus = freezed,
    Object? invoicedDate = freezed,
    Object? vendorAddress = freezed,
    Object? vendorTrnNumber = freezed,
    Object? vendorMailId = freezed,
    Object? unitCost = freezed,
    Object? returnOrderStatus = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? grandTotal = freezed,
    Object? vatableAmount = freezed,
    Object? orderLiness = freezed,
  }) {
    return _then(_$_InvoiceDatas(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      returnOrderCode: freezed == returnOrderCode
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: freezed == purchaseInvoiceId
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: freezed == invoicedBy
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      payementCode: freezed == payementCode
          ? _value.payementCode
          : payementCode // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: freezed == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedDate: freezed == invoicedDate
          ? _value.invoicedDate
          : invoicedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: freezed == vendorAddress
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorTrnNumber: freezed == vendorTrnNumber
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: freezed == vendorMailId
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      returnOrderStatus: freezed == returnOrderStatus
          ? _value.returnOrderStatus
          : returnOrderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
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
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      orderLiness: freezed == orderLiness
          ? _value._orderLiness
          : orderLiness // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvoiceDatas implements _InvoiceDatas {
  const _$_InvoiceDatas(
      {this.id,
      this.vat,
      this.notes,
      this.remarks,
      this.foc,
      this.discount,
      @JsonKey(name: "return_order_code") this.returnOrderCode,
      @JsonKey(name: "purchase_invoice_id") this.purchaseInvoiceId,
      @JsonKey(name: "invoice_code") this.invoiceCode,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "invoiced_by") this.invoicedBy,
      @JsonKey(name: "payment_code") this.payementCode,
      @JsonKey(name: "payment_method") this.paymentMethod,
      @JsonKey(name: "vendor_id") this.vendorId,
      @JsonKey(name: "invoice_status") this.invoiceStatus,
      @JsonKey(name: "invoiced_date") this.invoicedDate,
      @JsonKey(name: "vendor_address") this.vendorAddress,
      @JsonKey(name: "vendor_trn_number") this.vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") this.vendorMailId,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "return_order_status") this.returnOrderStatus,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "grand_total") this.grandTotal,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "invoice_lines") final List<Order>? orderLiness})
      : _orderLiness = orderLiness;

  factory _$_InvoiceDatas.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceDatasFromJson(json);

  @override
  final int? id;
  @override
  final double? vat;
  @override
  final String? notes;
  @override
  final String? remarks;
  @override
  final double? foc;
  @override
  final double? discount;
  @override
  @JsonKey(name: "return_order_code")
  final String? returnOrderCode;
  @override
  @JsonKey(name: "purchase_invoice_id")
  final String? purchaseInvoiceId;
  @override
  @JsonKey(name: "invoice_code")
  final String? invoiceCode;
  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "invoiced_by")
  final String? invoicedBy;
  @override
  @JsonKey(name: "payment_code")
  final String? payementCode;
  @override
  @JsonKey(name: "payment_method")
  final String? paymentMethod;
  @override
  @JsonKey(name: "vendor_id")
  final String? vendorId;
  @override
  @JsonKey(name: "invoice_status")
  final String? invoiceStatus;
  @override
  @JsonKey(name: "invoiced_date")
  final String? invoicedDate;
  @override
  @JsonKey(name: "vendor_address")
  final String? vendorAddress;
  @override
  @JsonKey(name: "vendor_trn_number")
  final String? vendorTrnNumber;
  @override
  @JsonKey(name: "vendor_mail_id")
  final String? vendorMailId;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "return_order_status")
  final String? returnOrderStatus;
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
  @JsonKey(name: "vatable_amount")
  final double? vatableAmount;
  final List<Order>? _orderLiness;
  @override
  @JsonKey(name: "invoice_lines")
  List<Order>? get orderLiness {
    final value = _orderLiness;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InvoiceDatas(id: $id, vat: $vat, notes: $notes, remarks: $remarks, foc: $foc, discount: $discount, returnOrderCode: $returnOrderCode, purchaseInvoiceId: $purchaseInvoiceId, invoiceCode: $invoiceCode, paymentStatus: $paymentStatus, inventoryId: $inventoryId, invoicedBy: $invoicedBy, payementCode: $payementCode, paymentMethod: $paymentMethod, vendorId: $vendorId, invoiceStatus: $invoiceStatus, invoicedDate: $invoicedDate, vendorAddress: $vendorAddress, vendorTrnNumber: $vendorTrnNumber, vendorMailId: $vendorMailId, unitCost: $unitCost, returnOrderStatus: $returnOrderStatus, excessTax: $excessTax, actualCost: $actualCost, grandTotal: $grandTotal, vatableAmount: $vatableAmount, orderLiness: $orderLiness)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceDatas &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.foc, foc) || other.foc == foc) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.returnOrderCode, returnOrderCode) ||
                other.returnOrderCode == returnOrderCode) &&
            (identical(other.purchaseInvoiceId, purchaseInvoiceId) ||
                other.purchaseInvoiceId == purchaseInvoiceId) &&
            (identical(other.invoiceCode, invoiceCode) ||
                other.invoiceCode == invoiceCode) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.invoicedBy, invoicedBy) ||
                other.invoicedBy == invoicedBy) &&
            (identical(other.payementCode, payementCode) ||
                other.payementCode == payementCode) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.invoiceStatus, invoiceStatus) ||
                other.invoiceStatus == invoiceStatus) &&
            (identical(other.invoicedDate, invoicedDate) ||
                other.invoicedDate == invoicedDate) &&
            (identical(other.vendorAddress, vendorAddress) ||
                other.vendorAddress == vendorAddress) &&
            (identical(other.vendorTrnNumber, vendorTrnNumber) ||
                other.vendorTrnNumber == vendorTrnNumber) &&
            (identical(other.vendorMailId, vendorMailId) ||
                other.vendorMailId == vendorMailId) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.returnOrderStatus, returnOrderStatus) ||
                other.returnOrderStatus == returnOrderStatus) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.vatableAmount, vatableAmount) ||
                other.vatableAmount == vatableAmount) &&
            const DeepCollectionEquality()
                .equals(other._orderLiness, _orderLiness));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        vat,
        notes,
        remarks,
        foc,
        discount,
        returnOrderCode,
        purchaseInvoiceId,
        invoiceCode,
        paymentStatus,
        inventoryId,
        invoicedBy,
        payementCode,
        paymentMethod,
        vendorId,
        invoiceStatus,
        invoicedDate,
        vendorAddress,
        vendorTrnNumber,
        vendorMailId,
        unitCost,
        returnOrderStatus,
        excessTax,
        actualCost,
        grandTotal,
        vatableAmount,
        const DeepCollectionEquality().hash(_orderLiness)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoiceDatasCopyWith<_$_InvoiceDatas> get copyWith =>
      __$$_InvoiceDatasCopyWithImpl<_$_InvoiceDatas>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceDatasToJson(
      this,
    );
  }
}

abstract class _InvoiceDatas implements InvoiceDatas {
  const factory _InvoiceDatas(
          {final int? id,
          final double? vat,
          final String? notes,
          final String? remarks,
          final double? foc,
          final double? discount,
          @JsonKey(name: "return_order_code") final String? returnOrderCode,
          @JsonKey(name: "purchase_invoice_id") final String? purchaseInvoiceId,
          @JsonKey(name: "invoice_code") final String? invoiceCode,
          @JsonKey(name: "payment_status") final String? paymentStatus,
          @JsonKey(name: "inventory_id") final String? inventoryId,
          @JsonKey(name: "invoiced_by") final String? invoicedBy,
          @JsonKey(name: "payment_code") final String? payementCode,
          @JsonKey(name: "payment_method") final String? paymentMethod,
          @JsonKey(name: "vendor_id") final String? vendorId,
          @JsonKey(name: "invoice_status") final String? invoiceStatus,
          @JsonKey(name: "invoiced_date") final String? invoicedDate,
          @JsonKey(name: "vendor_address") final String? vendorAddress,
          @JsonKey(name: "vendor_trn_number") final String? vendorTrnNumber,
          @JsonKey(name: "vendor_mail_id") final String? vendorMailId,
          @JsonKey(name: "unit_cost") final double? unitCost,
          @JsonKey(name: "return_order_status") final String? returnOrderStatus,
          @JsonKey(name: "excess_tax") final double? excessTax,
          @JsonKey(name: "actual_cost") final double? actualCost,
          @JsonKey(name: "grand_total") final double? grandTotal,
          @JsonKey(name: "vatable_amount") final double? vatableAmount,
          @JsonKey(name: "invoice_lines") final List<Order>? orderLiness}) =
      _$_InvoiceDatas;

  factory _InvoiceDatas.fromJson(Map<String, dynamic> json) =
      _$_InvoiceDatas.fromJson;

  @override
  int? get id;
  @override
  double? get vat;
  @override
  String? get notes;
  @override
  String? get remarks;
  @override
  double? get foc;
  @override
  double? get discount;
  @override
  @JsonKey(name: "return_order_code")
  String? get returnOrderCode;
  @override
  @JsonKey(name: "purchase_invoice_id")
  String? get purchaseInvoiceId;
  @override
  @JsonKey(name: "invoice_code")
  String? get invoiceCode;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "invoiced_by")
  String? get invoicedBy;
  @override
  @JsonKey(name: "payment_code")
  String? get payementCode;
  @override
  @JsonKey(name: "payment_method")
  String? get paymentMethod;
  @override
  @JsonKey(name: "vendor_id")
  String? get vendorId;
  @override
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus;
  @override
  @JsonKey(name: "invoiced_date")
  String? get invoicedDate;
  @override
  @JsonKey(name: "vendor_address")
  String? get vendorAddress;
  @override
  @JsonKey(name: "vendor_trn_number")
  String? get vendorTrnNumber;
  @override
  @JsonKey(name: "vendor_mail_id")
  String? get vendorMailId;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "return_order_status")
  String? get returnOrderStatus;
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
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount;
  @override
  @JsonKey(name: "invoice_lines")
  List<Order>? get orderLiness;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceDatasCopyWith<_$_InvoiceDatas> get copyWith =>
      throw _privateConstructorUsedError;
}
