// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchasereturninvoicemodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseInvoiceReadModel _$PurchaseInvoiceReadModelFromJson(
    Map<String, dynamic> json) {
  return _PurchaseInvoiceReadModel.fromJson(json);
}

/// @nodoc
class _$PurchaseInvoiceReadModelTearOff {
  const _$PurchaseInvoiceReadModelTearOff();

  _PurchaseInvoiceReadModel call(
      {int? id,
      double? vat,
      double? foc,
      double? discount,
      @JsonKey(name: "return_order_code") String? returnOrderCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
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
      @JsonKey(name: "order_lines") List<Order>? orderLiness}) {
    return _PurchaseInvoiceReadModel(
      id: id,
      vat: vat,
      foc: foc,
      discount: discount,
      returnOrderCode: returnOrderCode,
      inventoryId: inventoryId,
      purchaseInvoiceId: purchaseInvoiceId,
      vendorCode: vendorCode,
      vendorAddress: vendorAddress,
      vendorTrnNumber: vendorTrnNumber,
      vendorMailId: vendorMailId,
      unitCost: unitCost,
      excessTax: excessTax,
      actualCost: actualCost,
      grandTotal: grandTotal,
      vatableAmount: vatableAmount,
      invoicedata: invoicedata,
      orderLiness: orderLiness,
    );
  }

  PurchaseInvoiceReadModel fromJson(Map<String, Object> json) {
    return PurchaseInvoiceReadModel.fromJson(json);
  }
}

/// @nodoc
const $PurchaseInvoiceReadModel = _$PurchaseInvoiceReadModelTearOff();

/// @nodoc
mixin _$PurchaseInvoiceReadModel {
  int? get id => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  double? get foc => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "return_order_code")
  String? get returnOrderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
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
      _$PurchaseInvoiceReadModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      double? vat,
      double? foc,
      double? discount,
      @JsonKey(name: "return_order_code") String? returnOrderCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
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
class _$PurchaseInvoiceReadModelCopyWithImpl<$Res>
    implements $PurchaseInvoiceReadModelCopyWith<$Res> {
  _$PurchaseInvoiceReadModelCopyWithImpl(this._value, this._then);

  final PurchaseInvoiceReadModel _value;
  // ignore: unused_field
  final $Res Function(PurchaseInvoiceReadModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? vat = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? returnOrderCode = freezed,
    Object? inventoryId = freezed,
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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      returnOrderCode: returnOrderCode == freezed
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: purchaseInvoiceId == freezed
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorCode: vendorCode == freezed
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: vendorAddress == freezed
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorTrnNumber: vendorTrnNumber == freezed
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: vendorMailId == freezed
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: vatableAmount == freezed
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      invoicedata: invoicedata == freezed
          ? _value.invoicedata
          : invoicedata // ignore: cast_nullable_to_non_nullable
              as InvoiceDatas?,
      orderLiness: orderLiness == freezed
          ? _value.orderLiness
          : orderLiness // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ));
  }

  @override
  $InvoiceDatasCopyWith<$Res>? get invoicedata {
    if (_value.invoicedata == null) {
      return null;
    }

    return $InvoiceDatasCopyWith<$Res>(_value.invoicedata!, (value) {
      return _then(_value.copyWith(invoicedata: value));
    });
  }
}

/// @nodoc
abstract class _$PurchaseInvoiceReadModelCopyWith<$Res>
    implements $PurchaseInvoiceReadModelCopyWith<$Res> {
  factory _$PurchaseInvoiceReadModelCopyWith(_PurchaseInvoiceReadModel value,
          $Res Function(_PurchaseInvoiceReadModel) then) =
      __$PurchaseInvoiceReadModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      double? vat,
      double? foc,
      double? discount,
      @JsonKey(name: "return_order_code") String? returnOrderCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
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
class __$PurchaseInvoiceReadModelCopyWithImpl<$Res>
    extends _$PurchaseInvoiceReadModelCopyWithImpl<$Res>
    implements _$PurchaseInvoiceReadModelCopyWith<$Res> {
  __$PurchaseInvoiceReadModelCopyWithImpl(_PurchaseInvoiceReadModel _value,
      $Res Function(_PurchaseInvoiceReadModel) _then)
      : super(_value, (v) => _then(v as _PurchaseInvoiceReadModel));

  @override
  _PurchaseInvoiceReadModel get _value =>
      super._value as _PurchaseInvoiceReadModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? vat = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? returnOrderCode = freezed,
    Object? inventoryId = freezed,
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
    return _then(_PurchaseInvoiceReadModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      returnOrderCode: returnOrderCode == freezed
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: purchaseInvoiceId == freezed
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorCode: vendorCode == freezed
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: vendorAddress == freezed
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorTrnNumber: vendorTrnNumber == freezed
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: vendorMailId == freezed
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: vatableAmount == freezed
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      invoicedata: invoicedata == freezed
          ? _value.invoicedata
          : invoicedata // ignore: cast_nullable_to_non_nullable
              as InvoiceDatas?,
      orderLiness: orderLiness == freezed
          ? _value.orderLiness
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
      @JsonKey(name: "return_order_code") this.returnOrderCode,
      @JsonKey(name: "inventory_id") this.inventoryId,
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
      @JsonKey(name: "order_lines") this.orderLiness});

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
  @JsonKey(name: "return_order_code")
  final String? returnOrderCode;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
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
  @override
  @JsonKey(name: "order_lines")
  final List<Order>? orderLiness;

  @override
  String toString() {
    return 'PurchaseInvoiceReadModel(id: $id, vat: $vat, foc: $foc, discount: $discount, returnOrderCode: $returnOrderCode, inventoryId: $inventoryId, purchaseInvoiceId: $purchaseInvoiceId, vendorCode: $vendorCode, vendorAddress: $vendorAddress, vendorTrnNumber: $vendorTrnNumber, vendorMailId: $vendorMailId, unitCost: $unitCost, excessTax: $excessTax, actualCost: $actualCost, grandTotal: $grandTotal, vatableAmount: $vatableAmount, invoicedata: $invoicedata, orderLiness: $orderLiness)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PurchaseInvoiceReadModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.foc, foc) ||
                const DeepCollectionEquality().equals(other.foc, foc)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.returnOrderCode, returnOrderCode) ||
                const DeepCollectionEquality()
                    .equals(other.returnOrderCode, returnOrderCode)) &&
            (identical(other.inventoryId, inventoryId) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryId, inventoryId)) &&
            (identical(other.purchaseInvoiceId, purchaseInvoiceId) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseInvoiceId, purchaseInvoiceId)) &&
            (identical(other.vendorCode, vendorCode) ||
                const DeepCollectionEquality()
                    .equals(other.vendorCode, vendorCode)) &&
            (identical(other.vendorAddress, vendorAddress) ||
                const DeepCollectionEquality()
                    .equals(other.vendorAddress, vendorAddress)) &&
            (identical(other.vendorTrnNumber, vendorTrnNumber) ||
                const DeepCollectionEquality()
                    .equals(other.vendorTrnNumber, vendorTrnNumber)) &&
            (identical(other.vendorMailId, vendorMailId) ||
                const DeepCollectionEquality()
                    .equals(other.vendorMailId, vendorMailId)) &&
            (identical(other.unitCost, unitCost) ||
                const DeepCollectionEquality()
                    .equals(other.unitCost, unitCost)) &&
            (identical(other.excessTax, excessTax) ||
                const DeepCollectionEquality()
                    .equals(other.excessTax, excessTax)) &&
            (identical(other.actualCost, actualCost) ||
                const DeepCollectionEquality()
                    .equals(other.actualCost, actualCost)) &&
            (identical(other.grandTotal, grandTotal) ||
                const DeepCollectionEquality()
                    .equals(other.grandTotal, grandTotal)) &&
            (identical(other.vatableAmount, vatableAmount) ||
                const DeepCollectionEquality()
                    .equals(other.vatableAmount, vatableAmount)) &&
            (identical(other.invoicedata, invoicedata) ||
                const DeepCollectionEquality()
                    .equals(other.invoicedata, invoicedata)) &&
            (identical(other.orderLiness, orderLiness) ||
                const DeepCollectionEquality()
                    .equals(other.orderLiness, orderLiness)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(foc) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(returnOrderCode) ^
      const DeepCollectionEquality().hash(inventoryId) ^
      const DeepCollectionEquality().hash(purchaseInvoiceId) ^
      const DeepCollectionEquality().hash(vendorCode) ^
      const DeepCollectionEquality().hash(vendorAddress) ^
      const DeepCollectionEquality().hash(vendorTrnNumber) ^
      const DeepCollectionEquality().hash(vendorMailId) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(actualCost) ^
      const DeepCollectionEquality().hash(grandTotal) ^
      const DeepCollectionEquality().hash(vatableAmount) ^
      const DeepCollectionEquality().hash(invoicedata) ^
      const DeepCollectionEquality().hash(orderLiness);

  @JsonKey(ignore: true)
  @override
  _$PurchaseInvoiceReadModelCopyWith<_PurchaseInvoiceReadModel> get copyWith =>
      __$PurchaseInvoiceReadModelCopyWithImpl<_PurchaseInvoiceReadModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseInvoiceReadModelToJson(this);
  }
}

abstract class _PurchaseInvoiceReadModel implements PurchaseInvoiceReadModel {
  const factory _PurchaseInvoiceReadModel(
          {int? id,
          double? vat,
          double? foc,
          double? discount,
          @JsonKey(name: "return_order_code") String? returnOrderCode,
          @JsonKey(name: "inventory_id") String? inventoryId,
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
          @JsonKey(name: "order_lines") List<Order>? orderLiness}) =
      _$_PurchaseInvoiceReadModel;

  factory _PurchaseInvoiceReadModel.fromJson(Map<String, dynamic> json) =
      _$_PurchaseInvoiceReadModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  double? get foc => throw _privateConstructorUsedError;
  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_order_code")
  String? get returnOrderCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_invoice_id")
  String? get purchaseInvoiceId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_code")
  String? get vendorCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_address")
  String? get vendorAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_trn_number")
  String? get vendorTrnNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_mail_id")
  String? get vendorMailId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_data")
  InvoiceDatas? get invoicedata => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_lines")
  List<Order>? get orderLiness => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PurchaseInvoiceReadModelCopyWith<_PurchaseInvoiceReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
class _$OrderTearOff {
  const _$OrderTearOff();

  _Order call(
      {int? id,
      double? vat,
      double? foc,
      double? discount,
      String? barcode,
      @JsonKey(name: "return_order_line_code") String? returnOrderLineCode,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "purchase_invoice_id") String? purchaseInvoiceId,
      @JsonKey(name: "total_qty") int? totalQty,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "is_free") bool? isFree,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "supplier_code") String? suppliercode,
      @JsonKey(name: "purchase_uom") String? purchaseUom,
      @JsonKey(name: "invoice_id") int? invoiceId,
      @JsonKey(name: "vendor_reference_code") String? vendorRefCode}) {
    return _Order(
      id: id,
      vat: vat,
      foc: foc,
      discount: discount,
      barcode: barcode,
      returnOrderLineCode: returnOrderLineCode,
      variantId: variantId,
      variantName: variantName,
      purchaseInvoiceId: purchaseInvoiceId,
      totalQty: totalQty,
      unitCost: unitCost,
      vatableAmount: vatableAmount,
      excessTax: excessTax,
      actualCost: actualCost,
      isInvoiced: isInvoiced,
      isActive: isActive,
      isFree: isFree,
      createdAt: createdAt,
      suppliercode: suppliercode,
      purchaseUom: purchaseUom,
      invoiceId: invoiceId,
      vendorRefCode: vendorRefCode,
    );
  }

  Order fromJson(Map<String, Object> json) {
    return Order.fromJson(json);
  }
}

/// @nodoc
const $Order = _$OrderTearOff();

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
  @JsonKey(name: "purchase_invoice_id")
  String? get purchaseInvoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "total_qty")
  int? get totalQty => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "is_invoiced")
  bool? get isInvoiced => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_free")
  bool? get isFree => throw _privateConstructorUsedError;
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
      _$OrderCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      double? vat,
      double? foc,
      double? discount,
      String? barcode,
      @JsonKey(name: "return_order_line_code") String? returnOrderLineCode,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "purchase_invoice_id") String? purchaseInvoiceId,
      @JsonKey(name: "total_qty") int? totalQty,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "is_free") bool? isFree,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "supplier_code") String? suppliercode,
      @JsonKey(name: "purchase_uom") String? purchaseUom,
      @JsonKey(name: "invoice_id") int? invoiceId,
      @JsonKey(name: "vendor_reference_code") String? vendorRefCode});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res> implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  final Order _value;
  // ignore: unused_field
  final $Res Function(Order) _then;

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
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? isInvoiced = freezed,
    Object? isActive = freezed,
    Object? isFree = freezed,
    Object? createdAt = freezed,
    Object? suppliercode = freezed,
    Object? purchaseUom = freezed,
    Object? invoiceId = freezed,
    Object? vendorRefCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderLineCode: returnOrderLineCode == freezed
          ? _value.returnOrderLineCode
          : returnOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: variantId == freezed
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: variantName == freezed
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: purchaseInvoiceId == freezed
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQty: totalQty == freezed
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
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
      isInvoiced: isInvoiced == freezed
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFree: isFree == freezed
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      suppliercode: suppliercode == freezed
          ? _value.suppliercode
          : suppliercode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUom: purchaseUom == freezed
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceId: invoiceId == freezed
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int?,
      vendorRefCode: vendorRefCode == freezed
          ? _value.vendorRefCode
          : vendorRefCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) then) =
      __$OrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      double? vat,
      double? foc,
      double? discount,
      String? barcode,
      @JsonKey(name: "return_order_line_code") String? returnOrderLineCode,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "purchase_invoice_id") String? purchaseInvoiceId,
      @JsonKey(name: "total_qty") int? totalQty,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "is_free") bool? isFree,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "supplier_code") String? suppliercode,
      @JsonKey(name: "purchase_uom") String? purchaseUom,
      @JsonKey(name: "invoice_id") int? invoiceId,
      @JsonKey(name: "vendor_reference_code") String? vendorRefCode});
}

/// @nodoc
class __$OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(_Order _value, $Res Function(_Order) _then)
      : super(_value, (v) => _then(v as _Order));

  @override
  _Order get _value => super._value as _Order;

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
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? isInvoiced = freezed,
    Object? isActive = freezed,
    Object? isFree = freezed,
    Object? createdAt = freezed,
    Object? suppliercode = freezed,
    Object? purchaseUom = freezed,
    Object? invoiceId = freezed,
    Object? vendorRefCode = freezed,
  }) {
    return _then(_Order(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnOrderLineCode: returnOrderLineCode == freezed
          ? _value.returnOrderLineCode
          : returnOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: variantId == freezed
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: variantName == freezed
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: purchaseInvoiceId == freezed
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQty: totalQty == freezed
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
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
      isInvoiced: isInvoiced == freezed
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFree: isFree == freezed
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      suppliercode: suppliercode == freezed
          ? _value.suppliercode
          : suppliercode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUom: purchaseUom == freezed
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceId: invoiceId == freezed
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int?,
      vendorRefCode: vendorRefCode == freezed
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
      @JsonKey(name: "purchase_invoice_id") this.purchaseInvoiceId,
      @JsonKey(name: "total_qty") this.totalQty,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "is_invoiced") this.isInvoiced,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "is_free") this.isFree,
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
  @JsonKey(name: "purchase_invoice_id")
  final String? purchaseInvoiceId;
  @override
  @JsonKey(name: "total_qty")
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
  @JsonKey(name: "is_invoiced")
  final bool? isInvoiced;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "is_free")
  final bool? isFree;
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
    return 'Order(id: $id, vat: $vat, foc: $foc, discount: $discount, barcode: $barcode, returnOrderLineCode: $returnOrderLineCode, variantId: $variantId, variantName: $variantName, purchaseInvoiceId: $purchaseInvoiceId, totalQty: $totalQty, unitCost: $unitCost, vatableAmount: $vatableAmount, excessTax: $excessTax, actualCost: $actualCost, isInvoiced: $isInvoiced, isActive: $isActive, isFree: $isFree, createdAt: $createdAt, suppliercode: $suppliercode, purchaseUom: $purchaseUom, invoiceId: $invoiceId, vendorRefCode: $vendorRefCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Order &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.foc, foc) ||
                const DeepCollectionEquality().equals(other.foc, foc)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.returnOrderLineCode, returnOrderLineCode) ||
                const DeepCollectionEquality()
                    .equals(other.returnOrderLineCode, returnOrderLineCode)) &&
            (identical(other.variantId, variantId) ||
                const DeepCollectionEquality()
                    .equals(other.variantId, variantId)) &&
            (identical(other.variantName, variantName) ||
                const DeepCollectionEquality()
                    .equals(other.variantName, variantName)) &&
            (identical(other.purchaseInvoiceId, purchaseInvoiceId) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseInvoiceId, purchaseInvoiceId)) &&
            (identical(other.totalQty, totalQty) ||
                const DeepCollectionEquality()
                    .equals(other.totalQty, totalQty)) &&
            (identical(other.unitCost, unitCost) ||
                const DeepCollectionEquality()
                    .equals(other.unitCost, unitCost)) &&
            (identical(other.vatableAmount, vatableAmount) ||
                const DeepCollectionEquality()
                    .equals(other.vatableAmount, vatableAmount)) &&
            (identical(other.excessTax, excessTax) ||
                const DeepCollectionEquality()
                    .equals(other.excessTax, excessTax)) &&
            (identical(other.actualCost, actualCost) ||
                const DeepCollectionEquality()
                    .equals(other.actualCost, actualCost)) &&
            (identical(other.isInvoiced, isInvoiced) ||
                const DeepCollectionEquality()
                    .equals(other.isInvoiced, isInvoiced)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.isFree, isFree) ||
                const DeepCollectionEquality().equals(other.isFree, isFree)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.suppliercode, suppliercode) ||
                const DeepCollectionEquality()
                    .equals(other.suppliercode, suppliercode)) &&
            (identical(other.purchaseUom, purchaseUom) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseUom, purchaseUom)) &&
            (identical(other.invoiceId, invoiceId) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceId, invoiceId)) &&
            (identical(other.vendorRefCode, vendorRefCode) ||
                const DeepCollectionEquality()
                    .equals(other.vendorRefCode, vendorRefCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(foc) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(returnOrderLineCode) ^
      const DeepCollectionEquality().hash(variantId) ^
      const DeepCollectionEquality().hash(variantName) ^
      const DeepCollectionEquality().hash(purchaseInvoiceId) ^
      const DeepCollectionEquality().hash(totalQty) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(vatableAmount) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(actualCost) ^
      const DeepCollectionEquality().hash(isInvoiced) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(isFree) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(suppliercode) ^
      const DeepCollectionEquality().hash(purchaseUom) ^
      const DeepCollectionEquality().hash(invoiceId) ^
      const DeepCollectionEquality().hash(vendorRefCode);

  @JsonKey(ignore: true)
  @override
  _$OrderCopyWith<_Order> get copyWith =>
      __$OrderCopyWithImpl<_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderToJson(this);
  }
}

abstract class _Order implements Order {
  const factory _Order(
          {int? id,
          double? vat,
          double? foc,
          double? discount,
          String? barcode,
          @JsonKey(name: "return_order_line_code") String? returnOrderLineCode,
          @JsonKey(name: "variant_id") String? variantId,
          @JsonKey(name: "variant_name") String? variantName,
          @JsonKey(name: "purchase_invoice_id") String? purchaseInvoiceId,
          @JsonKey(name: "total_qty") int? totalQty,
          @JsonKey(name: "unit_cost") double? unitCost,
          @JsonKey(name: "vatable_amount") double? vatableAmount,
          @JsonKey(name: "excess_tax") double? excessTax,
          @JsonKey(name: "actual_cost") double? actualCost,
          @JsonKey(name: "is_invoiced") bool? isInvoiced,
          @JsonKey(name: "is_active") bool? isActive,
          @JsonKey(name: "is_free") bool? isFree,
          @JsonKey(name: "created_at") String? createdAt,
          @JsonKey(name: "supplier_code") String? suppliercode,
          @JsonKey(name: "purchase_uom") String? purchaseUom,
          @JsonKey(name: "invoice_id") int? invoiceId,
          @JsonKey(name: "vendor_reference_code") String? vendorRefCode}) =
      _$_Order;

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  double? get foc => throw _privateConstructorUsedError;
  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  String? get barcode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_order_line_code")
  String? get returnOrderLineCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_id")
  String? get variantId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_name")
  String? get variantName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_invoice_id")
  String? get purchaseInvoiceId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "total_qty")
  int? get totalQty => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
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
  @JsonKey(name: "is_invoiced")
  bool? get isInvoiced => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_free")
  bool? get isFree => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "supplier_code")
  String? get suppliercode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_uom")
  String? get purchaseUom => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_id")
  int? get invoiceId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_reference_code")
  String? get vendorRefCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderCopyWith<_Order> get copyWith => throw _privateConstructorUsedError;
}

InvoiceDatas _$InvoiceDatasFromJson(Map<String, dynamic> json) {
  return _InvoiceDatas.fromJson(json);
}

/// @nodoc
class _$InvoiceDatasTearOff {
  const _$InvoiceDatasTearOff();

  _InvoiceDatas call(
      {int? id,
      double? vat,
      double? foc,
      double? discount,
      @JsonKey(name: "return_order_code") String? returnOrderCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
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
      @JsonKey(name: "nvoice_lines") List<Order>? orderLiness}) {
    return _InvoiceDatas(
      id: id,
      vat: vat,
      foc: foc,
      discount: discount,
      returnOrderCode: returnOrderCode,
      inventoryId: inventoryId,
      purchaseInvoiceId: purchaseInvoiceId,
      vendorCode: vendorCode,
      vendorAddress: vendorAddress,
      vendorTrnNumber: vendorTrnNumber,
      vendorMailId: vendorMailId,
      unitCost: unitCost,
      excessTax: excessTax,
      actualCost: actualCost,
      grandTotal: grandTotal,
      vatableAmount: vatableAmount,
      invoicedata: invoicedata,
      orderLiness: orderLiness,
    );
  }

  InvoiceDatas fromJson(Map<String, Object> json) {
    return InvoiceDatas.fromJson(json);
  }
}

/// @nodoc
const $InvoiceDatas = _$InvoiceDatasTearOff();

/// @nodoc
mixin _$InvoiceDatas {
  int? get id => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  double? get foc => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "return_order_code")
  String? get returnOrderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
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
  @JsonKey(name: "nvoice_lines")
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
      _$InvoiceDatasCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      double? vat,
      double? foc,
      double? discount,
      @JsonKey(name: "return_order_code") String? returnOrderCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
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
      @JsonKey(name: "nvoice_lines") List<Order>? orderLiness});

  $InvoiceDatasCopyWith<$Res>? get invoicedata;
}

/// @nodoc
class _$InvoiceDatasCopyWithImpl<$Res> implements $InvoiceDatasCopyWith<$Res> {
  _$InvoiceDatasCopyWithImpl(this._value, this._then);

  final InvoiceDatas _value;
  // ignore: unused_field
  final $Res Function(InvoiceDatas) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? vat = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? returnOrderCode = freezed,
    Object? inventoryId = freezed,
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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      returnOrderCode: returnOrderCode == freezed
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: purchaseInvoiceId == freezed
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorCode: vendorCode == freezed
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: vendorAddress == freezed
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorTrnNumber: vendorTrnNumber == freezed
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: vendorMailId == freezed
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: vatableAmount == freezed
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      invoicedata: invoicedata == freezed
          ? _value.invoicedata
          : invoicedata // ignore: cast_nullable_to_non_nullable
              as InvoiceDatas?,
      orderLiness: orderLiness == freezed
          ? _value.orderLiness
          : orderLiness // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ));
  }

  @override
  $InvoiceDatasCopyWith<$Res>? get invoicedata {
    if (_value.invoicedata == null) {
      return null;
    }

    return $InvoiceDatasCopyWith<$Res>(_value.invoicedata!, (value) {
      return _then(_value.copyWith(invoicedata: value));
    });
  }
}

/// @nodoc
abstract class _$InvoiceDatasCopyWith<$Res>
    implements $InvoiceDatasCopyWith<$Res> {
  factory _$InvoiceDatasCopyWith(
          _InvoiceDatas value, $Res Function(_InvoiceDatas) then) =
      __$InvoiceDatasCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      double? vat,
      double? foc,
      double? discount,
      @JsonKey(name: "return_order_code") String? returnOrderCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
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
      @JsonKey(name: "nvoice_lines") List<Order>? orderLiness});

  @override
  $InvoiceDatasCopyWith<$Res>? get invoicedata;
}

/// @nodoc
class __$InvoiceDatasCopyWithImpl<$Res> extends _$InvoiceDatasCopyWithImpl<$Res>
    implements _$InvoiceDatasCopyWith<$Res> {
  __$InvoiceDatasCopyWithImpl(
      _InvoiceDatas _value, $Res Function(_InvoiceDatas) _then)
      : super(_value, (v) => _then(v as _InvoiceDatas));

  @override
  _InvoiceDatas get _value => super._value as _InvoiceDatas;

  @override
  $Res call({
    Object? id = freezed,
    Object? vat = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? returnOrderCode = freezed,
    Object? inventoryId = freezed,
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
    return _then(_InvoiceDatas(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      returnOrderCode: returnOrderCode == freezed
          ? _value.returnOrderCode
          : returnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseInvoiceId: purchaseInvoiceId == freezed
          ? _value.purchaseInvoiceId
          : purchaseInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorCode: vendorCode == freezed
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: vendorAddress == freezed
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorTrnNumber: vendorTrnNumber == freezed
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: vendorMailId == freezed
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: vatableAmount == freezed
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      invoicedata: invoicedata == freezed
          ? _value.invoicedata
          : invoicedata // ignore: cast_nullable_to_non_nullable
              as InvoiceDatas?,
      orderLiness: orderLiness == freezed
          ? _value.orderLiness
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
      this.foc,
      this.discount,
      @JsonKey(name: "return_order_code") this.returnOrderCode,
      @JsonKey(name: "inventory_id") this.inventoryId,
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
      @JsonKey(name: "nvoice_lines") this.orderLiness});

  factory _$_InvoiceDatas.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceDatasFromJson(json);

  @override
  final int? id;
  @override
  final double? vat;
  @override
  final double? foc;
  @override
  final double? discount;
  @override
  @JsonKey(name: "return_order_code")
  final String? returnOrderCode;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
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
  @override
  @JsonKey(name: "nvoice_lines")
  final List<Order>? orderLiness;

  @override
  String toString() {
    return 'InvoiceDatas(id: $id, vat: $vat, foc: $foc, discount: $discount, returnOrderCode: $returnOrderCode, inventoryId: $inventoryId, purchaseInvoiceId: $purchaseInvoiceId, vendorCode: $vendorCode, vendorAddress: $vendorAddress, vendorTrnNumber: $vendorTrnNumber, vendorMailId: $vendorMailId, unitCost: $unitCost, excessTax: $excessTax, actualCost: $actualCost, grandTotal: $grandTotal, vatableAmount: $vatableAmount, invoicedata: $invoicedata, orderLiness: $orderLiness)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvoiceDatas &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.foc, foc) ||
                const DeepCollectionEquality().equals(other.foc, foc)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.returnOrderCode, returnOrderCode) ||
                const DeepCollectionEquality()
                    .equals(other.returnOrderCode, returnOrderCode)) &&
            (identical(other.inventoryId, inventoryId) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryId, inventoryId)) &&
            (identical(other.purchaseInvoiceId, purchaseInvoiceId) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseInvoiceId, purchaseInvoiceId)) &&
            (identical(other.vendorCode, vendorCode) ||
                const DeepCollectionEquality()
                    .equals(other.vendorCode, vendorCode)) &&
            (identical(other.vendorAddress, vendorAddress) ||
                const DeepCollectionEquality()
                    .equals(other.vendorAddress, vendorAddress)) &&
            (identical(other.vendorTrnNumber, vendorTrnNumber) ||
                const DeepCollectionEquality()
                    .equals(other.vendorTrnNumber, vendorTrnNumber)) &&
            (identical(other.vendorMailId, vendorMailId) ||
                const DeepCollectionEquality()
                    .equals(other.vendorMailId, vendorMailId)) &&
            (identical(other.unitCost, unitCost) ||
                const DeepCollectionEquality()
                    .equals(other.unitCost, unitCost)) &&
            (identical(other.excessTax, excessTax) ||
                const DeepCollectionEquality()
                    .equals(other.excessTax, excessTax)) &&
            (identical(other.actualCost, actualCost) ||
                const DeepCollectionEquality()
                    .equals(other.actualCost, actualCost)) &&
            (identical(other.grandTotal, grandTotal) ||
                const DeepCollectionEquality()
                    .equals(other.grandTotal, grandTotal)) &&
            (identical(other.vatableAmount, vatableAmount) ||
                const DeepCollectionEquality()
                    .equals(other.vatableAmount, vatableAmount)) &&
            (identical(other.invoicedata, invoicedata) ||
                const DeepCollectionEquality()
                    .equals(other.invoicedata, invoicedata)) &&
            (identical(other.orderLiness, orderLiness) ||
                const DeepCollectionEquality()
                    .equals(other.orderLiness, orderLiness)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(foc) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(returnOrderCode) ^
      const DeepCollectionEquality().hash(inventoryId) ^
      const DeepCollectionEquality().hash(purchaseInvoiceId) ^
      const DeepCollectionEquality().hash(vendorCode) ^
      const DeepCollectionEquality().hash(vendorAddress) ^
      const DeepCollectionEquality().hash(vendorTrnNumber) ^
      const DeepCollectionEquality().hash(vendorMailId) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(actualCost) ^
      const DeepCollectionEquality().hash(grandTotal) ^
      const DeepCollectionEquality().hash(vatableAmount) ^
      const DeepCollectionEquality().hash(invoicedata) ^
      const DeepCollectionEquality().hash(orderLiness);

  @JsonKey(ignore: true)
  @override
  _$InvoiceDatasCopyWith<_InvoiceDatas> get copyWith =>
      __$InvoiceDatasCopyWithImpl<_InvoiceDatas>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceDatasToJson(this);
  }
}

abstract class _InvoiceDatas implements InvoiceDatas {
  const factory _InvoiceDatas(
          {int? id,
          double? vat,
          double? foc,
          double? discount,
          @JsonKey(name: "return_order_code") String? returnOrderCode,
          @JsonKey(name: "inventory_id") String? inventoryId,
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
          @JsonKey(name: "nvoice_lines") List<Order>? orderLiness}) =
      _$_InvoiceDatas;

  factory _InvoiceDatas.fromJson(Map<String, dynamic> json) =
      _$_InvoiceDatas.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  double? get foc => throw _privateConstructorUsedError;
  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_order_code")
  String? get returnOrderCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_invoice_id")
  String? get purchaseInvoiceId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_code")
  String? get vendorCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_address")
  String? get vendorAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_trn_number")
  String? get vendorTrnNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_mail_id")
  String? get vendorMailId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoice_data")
  InvoiceDatas? get invoicedata => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "nvoice_lines")
  List<Order>? get orderLiness => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvoiceDatasCopyWith<_InvoiceDatas> get copyWith =>
      throw _privateConstructorUsedError;
}
