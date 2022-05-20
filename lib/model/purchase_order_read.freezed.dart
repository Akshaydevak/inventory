// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchase_order_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseOrderRead _$PurchaseOrderReadFromJson(Map<String, dynamic> json) {
  return _PurchaseOrderRead.fromJson(json);
}

/// @nodoc
class _$PurchaseOrderReadTearOff {
  const _$PurchaseOrderReadTearOff();

  _PurchaseOrderRead call(
      {@JsonKey(name: "data") Data? data,
      @JsonKey(name: "types_of_purchasing") List<String>? typesOfPurcasing}) {
    return _PurchaseOrderRead(
      data: data,
      typesOfPurcasing: typesOfPurcasing,
    );
  }

  PurchaseOrderRead fromJson(Map<String, Object> json) {
    return PurchaseOrderRead.fromJson(json);
  }
}

/// @nodoc
const $PurchaseOrderRead = _$PurchaseOrderReadTearOff();

/// @nodoc
mixin _$PurchaseOrderRead {
  @JsonKey(name: "data")
  Data? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "types_of_purchasing")
  List<String>? get typesOfPurcasing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseOrderReadCopyWith<PurchaseOrderRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseOrderReadCopyWith<$Res> {
  factory $PurchaseOrderReadCopyWith(
          PurchaseOrderRead value, $Res Function(PurchaseOrderRead) then) =
      _$PurchaseOrderReadCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "data") Data? data,
      @JsonKey(name: "types_of_purchasing") List<String>? typesOfPurcasing});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PurchaseOrderReadCopyWithImpl<$Res>
    implements $PurchaseOrderReadCopyWith<$Res> {
  _$PurchaseOrderReadCopyWithImpl(this._value, this._then);

  final PurchaseOrderRead _value;
  // ignore: unused_field
  final $Res Function(PurchaseOrderRead) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? typesOfPurcasing = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      typesOfPurcasing: typesOfPurcasing == freezed
          ? _value.typesOfPurcasing
          : typesOfPurcasing // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  @override
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$PurchaseOrderReadCopyWith<$Res>
    implements $PurchaseOrderReadCopyWith<$Res> {
  factory _$PurchaseOrderReadCopyWith(
          _PurchaseOrderRead value, $Res Function(_PurchaseOrderRead) then) =
      __$PurchaseOrderReadCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "data") Data? data,
      @JsonKey(name: "types_of_purchasing") List<String>? typesOfPurcasing});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$PurchaseOrderReadCopyWithImpl<$Res>
    extends _$PurchaseOrderReadCopyWithImpl<$Res>
    implements _$PurchaseOrderReadCopyWith<$Res> {
  __$PurchaseOrderReadCopyWithImpl(
      _PurchaseOrderRead _value, $Res Function(_PurchaseOrderRead) _then)
      : super(_value, (v) => _then(v as _PurchaseOrderRead));

  @override
  _PurchaseOrderRead get _value => super._value as _PurchaseOrderRead;

  @override
  $Res call({
    Object? data = freezed,
    Object? typesOfPurcasing = freezed,
  }) {
    return _then(_PurchaseOrderRead(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      typesOfPurcasing: typesOfPurcasing == freezed
          ? _value.typesOfPurcasing
          : typesOfPurcasing // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseOrderRead implements _PurchaseOrderRead {
  const _$_PurchaseOrderRead(
      {@JsonKey(name: "data") this.data,
      @JsonKey(name: "types_of_purchasing") this.typesOfPurcasing});

  factory _$_PurchaseOrderRead.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseOrderReadFromJson(json);

  @override
  @JsonKey(name: "data")
  final Data? data;
  @override
  @JsonKey(name: "types_of_purchasing")
  final List<String>? typesOfPurcasing;

  @override
  String toString() {
    return 'PurchaseOrderRead(data: $data, typesOfPurcasing: $typesOfPurcasing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PurchaseOrderRead &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.typesOfPurcasing, typesOfPurcasing) ||
                const DeepCollectionEquality()
                    .equals(other.typesOfPurcasing, typesOfPurcasing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(typesOfPurcasing);

  @JsonKey(ignore: true)
  @override
  _$PurchaseOrderReadCopyWith<_PurchaseOrderRead> get copyWith =>
      __$PurchaseOrderReadCopyWithImpl<_PurchaseOrderRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseOrderReadToJson(this);
  }
}

abstract class _PurchaseOrderRead implements PurchaseOrderRead {
  const factory _PurchaseOrderRead(
      {@JsonKey(name: "data")
          Data? data,
      @JsonKey(name: "types_of_purchasing")
          List<String>? typesOfPurcasing}) = _$_PurchaseOrderRead;

  factory _PurchaseOrderRead.fromJson(Map<String, dynamic> json) =
      _$_PurchaseOrderRead.fromJson;

  @override
  @JsonKey(name: "data")
  Data? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "types_of_purchasing")
  List<String>? get typesOfPurcasing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PurchaseOrderReadCopyWith<_PurchaseOrderRead> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call(
      {int? id,
      @JsonKey(name: "order_lines") List<OrderLines>? orderLines,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "purchase_order_type") String? purchaseOrderType,
      @JsonKey(name: "recieving_status") String? recievingStatus,
      @JsonKey(name: "payment_code") String? paymentcode,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "inventory_id") String? iventoryId,
      @JsonKey(name: "vendor_id") String? vendorId,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") String? vendorMailId,
      @JsonKey(name: "vendor_address") String? vendorAddress,
      @JsonKey(name: "address_1") String? address1,
      @JsonKey(name: "address_2") String? address2,
      @JsonKey(name: "promised_receipt_date") String? promisedReceiptdate,
      @JsonKey(name: "planned_receipt_date") String? plannedRecieptDate,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "discount") int? discount,
      @JsonKey(name: "foc") int? foc,
      @JsonKey(name: "unit_cost") int? unitcost,
      @JsonKey(name: "excess_tax") int? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "vat") int? vat,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") int? variableAmount,
      @JsonKey(name: "created_by") String? createdBy}) {
    return _Data(
      id: id,
      orderLines: orderLines,
      orderCode: orderCode,
      purchaseOrderType: purchaseOrderType,
      recievingStatus: recievingStatus,
      paymentcode: paymentcode,
      paymentStatus: paymentStatus,
      iventoryId: iventoryId,
      vendorId: vendorId,
      vendorTrnNumber: vendorTrnNumber,
      vendorMailId: vendorMailId,
      vendorAddress: vendorAddress,
      address1: address1,
      address2: address2,
      promisedReceiptdate: promisedReceiptdate,
      plannedRecieptDate: plannedRecieptDate,
      note: note,
      remarks: remarks,
      discount: discount,
      foc: foc,
      unitcost: unitcost,
      excessTax: excessTax,
      actualCost: actualCost,
      vat: vat,
      grandTotal: grandTotal,
      variableAmount: variableAmount,
      createdBy: createdBy,
    );
  }

  Data fromJson(Map<String, Object> json) {
    return Data.fromJson(json);
  }
}

/// @nodoc
const $Data = _$DataTearOff();

/// @nodoc
mixin _$Data {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "order_lines")
  List<OrderLines>? get orderLines => throw _privateConstructorUsedError;
  @JsonKey(name: "order_code")
  String? get orderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_order_type")
  String? get purchaseOrderType => throw _privateConstructorUsedError;
  @JsonKey(name: "recieving_status")
  String? get recievingStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_code")
  String? get paymentcode => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get iventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_id")
  String? get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_trn_number")
  String? get vendorTrnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_mail_id")
  String? get vendorMailId => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_address")
  String? get vendorAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "address_1")
  String? get address1 => throw _privateConstructorUsedError;
  @JsonKey(name: "address_2")
  String? get address2 => throw _privateConstructorUsedError;
  @JsonKey(name: "promised_receipt_date")
  String? get promisedReceiptdate => throw _privateConstructorUsedError;
  @JsonKey(name: "planned_receipt_date")
  String? get plannedRecieptDate => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "remarks")
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  int? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "foc")
  int? get foc => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  int? get unitcost => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  int? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "vat")
  int? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  int? get variableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: "order_lines") List<OrderLines>? orderLines,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "purchase_order_type") String? purchaseOrderType,
      @JsonKey(name: "recieving_status") String? recievingStatus,
      @JsonKey(name: "payment_code") String? paymentcode,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "inventory_id") String? iventoryId,
      @JsonKey(name: "vendor_id") String? vendorId,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") String? vendorMailId,
      @JsonKey(name: "vendor_address") String? vendorAddress,
      @JsonKey(name: "address_1") String? address1,
      @JsonKey(name: "address_2") String? address2,
      @JsonKey(name: "promised_receipt_date") String? promisedReceiptdate,
      @JsonKey(name: "planned_receipt_date") String? plannedRecieptDate,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "discount") int? discount,
      @JsonKey(name: "foc") int? foc,
      @JsonKey(name: "unit_cost") int? unitcost,
      @JsonKey(name: "excess_tax") int? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "vat") int? vat,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") int? variableAmount,
      @JsonKey(name: "created_by") String? createdBy});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? orderLines = freezed,
    Object? orderCode = freezed,
    Object? purchaseOrderType = freezed,
    Object? recievingStatus = freezed,
    Object? paymentcode = freezed,
    Object? paymentStatus = freezed,
    Object? iventoryId = freezed,
    Object? vendorId = freezed,
    Object? vendorTrnNumber = freezed,
    Object? vendorMailId = freezed,
    Object? vendorAddress = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? promisedReceiptdate = freezed,
    Object? plannedRecieptDate = freezed,
    Object? note = freezed,
    Object? remarks = freezed,
    Object? discount = freezed,
    Object? foc = freezed,
    Object? unitcost = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? vat = freezed,
    Object? grandTotal = freezed,
    Object? variableAmount = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderLines: orderLines == freezed
          ? _value.orderLines
          : orderLines // ignore: cast_nullable_to_non_nullable
              as List<OrderLines>?,
      orderCode: orderCode == freezed
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseOrderType: purchaseOrderType == freezed
          ? _value.purchaseOrderType
          : purchaseOrderType // ignore: cast_nullable_to_non_nullable
              as String?,
      recievingStatus: recievingStatus == freezed
          ? _value.recievingStatus
          : recievingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentcode: paymentcode == freezed
          ? _value.paymentcode
          : paymentcode // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      iventoryId: iventoryId == freezed
          ? _value.iventoryId
          : iventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: vendorId == freezed
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorTrnNumber: vendorTrnNumber == freezed
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: vendorMailId == freezed
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: vendorAddress == freezed
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: address1 == freezed
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: address2 == freezed
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      promisedReceiptdate: promisedReceiptdate == freezed
          ? _value.promisedReceiptdate
          : promisedReceiptdate // ignore: cast_nullable_to_non_nullable
              as String?,
      plannedRecieptDate: plannedRecieptDate == freezed
          ? _value.plannedRecieptDate
          : plannedRecieptDate // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as int?,
      unitcost: unitcost == freezed
          ? _value.unitcost
          : unitcost // ignore: cast_nullable_to_non_nullable
              as int?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as int?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as int?,
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      variableAmount: variableAmount == freezed
          ? _value.variableAmount
          : variableAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: "order_lines") List<OrderLines>? orderLines,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "purchase_order_type") String? purchaseOrderType,
      @JsonKey(name: "recieving_status") String? recievingStatus,
      @JsonKey(name: "payment_code") String? paymentcode,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "inventory_id") String? iventoryId,
      @JsonKey(name: "vendor_id") String? vendorId,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") String? vendorMailId,
      @JsonKey(name: "vendor_address") String? vendorAddress,
      @JsonKey(name: "address_1") String? address1,
      @JsonKey(name: "address_2") String? address2,
      @JsonKey(name: "promised_receipt_date") String? promisedReceiptdate,
      @JsonKey(name: "planned_receipt_date") String? plannedRecieptDate,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "discount") int? discount,
      @JsonKey(name: "foc") int? foc,
      @JsonKey(name: "unit_cost") int? unitcost,
      @JsonKey(name: "excess_tax") int? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "vat") int? vat,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") int? variableAmount,
      @JsonKey(name: "created_by") String? createdBy});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? id = freezed,
    Object? orderLines = freezed,
    Object? orderCode = freezed,
    Object? purchaseOrderType = freezed,
    Object? recievingStatus = freezed,
    Object? paymentcode = freezed,
    Object? paymentStatus = freezed,
    Object? iventoryId = freezed,
    Object? vendorId = freezed,
    Object? vendorTrnNumber = freezed,
    Object? vendorMailId = freezed,
    Object? vendorAddress = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? promisedReceiptdate = freezed,
    Object? plannedRecieptDate = freezed,
    Object? note = freezed,
    Object? remarks = freezed,
    Object? discount = freezed,
    Object? foc = freezed,
    Object? unitcost = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? vat = freezed,
    Object? grandTotal = freezed,
    Object? variableAmount = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_Data(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderLines: orderLines == freezed
          ? _value.orderLines
          : orderLines // ignore: cast_nullable_to_non_nullable
              as List<OrderLines>?,
      orderCode: orderCode == freezed
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseOrderType: purchaseOrderType == freezed
          ? _value.purchaseOrderType
          : purchaseOrderType // ignore: cast_nullable_to_non_nullable
              as String?,
      recievingStatus: recievingStatus == freezed
          ? _value.recievingStatus
          : recievingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentcode: paymentcode == freezed
          ? _value.paymentcode
          : paymentcode // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      iventoryId: iventoryId == freezed
          ? _value.iventoryId
          : iventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: vendorId == freezed
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorTrnNumber: vendorTrnNumber == freezed
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: vendorMailId == freezed
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: vendorAddress == freezed
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: address1 == freezed
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: address2 == freezed
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      promisedReceiptdate: promisedReceiptdate == freezed
          ? _value.promisedReceiptdate
          : promisedReceiptdate // ignore: cast_nullable_to_non_nullable
              as String?,
      plannedRecieptDate: plannedRecieptDate == freezed
          ? _value.plannedRecieptDate
          : plannedRecieptDate // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      foc: foc == freezed
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as int?,
      unitcost: unitcost == freezed
          ? _value.unitcost
          : unitcost // ignore: cast_nullable_to_non_nullable
              as int?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as int?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as int?,
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      variableAmount: variableAmount == freezed
          ? _value.variableAmount
          : variableAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {this.id,
      @JsonKey(name: "order_lines") this.orderLines,
      @JsonKey(name: "order_code") this.orderCode,
      @JsonKey(name: "purchase_order_type") this.purchaseOrderType,
      @JsonKey(name: "recieving_status") this.recievingStatus,
      @JsonKey(name: "payment_code") this.paymentcode,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "inventory_id") this.iventoryId,
      @JsonKey(name: "vendor_id") this.vendorId,
      @JsonKey(name: "vendor_trn_number") this.vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") this.vendorMailId,
      @JsonKey(name: "vendor_address") this.vendorAddress,
      @JsonKey(name: "address_1") this.address1,
      @JsonKey(name: "address_2") this.address2,
      @JsonKey(name: "promised_receipt_date") this.promisedReceiptdate,
      @JsonKey(name: "planned_receipt_date") this.plannedRecieptDate,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "remarks") this.remarks,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "foc") this.foc,
      @JsonKey(name: "unit_cost") this.unitcost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "vat") this.vat,
      @JsonKey(name: "grand_total") this.grandTotal,
      @JsonKey(name: "vatable_amount") this.variableAmount,
      @JsonKey(name: "created_by") this.createdBy});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "order_lines")
  final List<OrderLines>? orderLines;
  @override
  @JsonKey(name: "order_code")
  final String? orderCode;
  @override
  @JsonKey(name: "purchase_order_type")
  final String? purchaseOrderType;
  @override
  @JsonKey(name: "recieving_status")
  final String? recievingStatus;
  @override
  @JsonKey(name: "payment_code")
  final String? paymentcode;
  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  @override
  @JsonKey(name: "inventory_id")
  final String? iventoryId;
  @override
  @JsonKey(name: "vendor_id")
  final String? vendorId;
  @override
  @JsonKey(name: "vendor_trn_number")
  final String? vendorTrnNumber;
  @override
  @JsonKey(name: "vendor_mail_id")
  final String? vendorMailId;
  @override
  @JsonKey(name: "vendor_address")
  final String? vendorAddress;
  @override
  @JsonKey(name: "address_1")
  final String? address1;
  @override
  @JsonKey(name: "address_2")
  final String? address2;
  @override
  @JsonKey(name: "promised_receipt_date")
  final String? promisedReceiptdate;
  @override
  @JsonKey(name: "planned_receipt_date")
  final String? plannedRecieptDate;
  @override
  @JsonKey(name: "note")
  final String? note;
  @override
  @JsonKey(name: "remarks")
  final String? remarks;
  @override
  @JsonKey(name: "discount")
  final int? discount;
  @override
  @JsonKey(name: "foc")
  final int? foc;
  @override
  @JsonKey(name: "unit_cost")
  final int? unitcost;
  @override
  @JsonKey(name: "excess_tax")
  final int? excessTax;
  @override
  @JsonKey(name: "actual_cost")
  final double? actualCost;
  @override
  @JsonKey(name: "vat")
  final int? vat;
  @override
  @JsonKey(name: "grand_total")
  final double? grandTotal;
  @override
  @JsonKey(name: "vatable_amount")
  final int? variableAmount;
  @override
  @JsonKey(name: "created_by")
  final String? createdBy;

  @override
  String toString() {
    return 'Data(id: $id, orderLines: $orderLines, orderCode: $orderCode, purchaseOrderType: $purchaseOrderType, recievingStatus: $recievingStatus, paymentcode: $paymentcode, paymentStatus: $paymentStatus, iventoryId: $iventoryId, vendorId: $vendorId, vendorTrnNumber: $vendorTrnNumber, vendorMailId: $vendorMailId, vendorAddress: $vendorAddress, address1: $address1, address2: $address2, promisedReceiptdate: $promisedReceiptdate, plannedRecieptDate: $plannedRecieptDate, note: $note, remarks: $remarks, discount: $discount, foc: $foc, unitcost: $unitcost, excessTax: $excessTax, actualCost: $actualCost, vat: $vat, grandTotal: $grandTotal, variableAmount: $variableAmount, createdBy: $createdBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.orderLines, orderLines) ||
                const DeepCollectionEquality()
                    .equals(other.orderLines, orderLines)) &&
            (identical(other.orderCode, orderCode) ||
                const DeepCollectionEquality()
                    .equals(other.orderCode, orderCode)) &&
            (identical(other.purchaseOrderType, purchaseOrderType) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseOrderType, purchaseOrderType)) &&
            (identical(other.recievingStatus, recievingStatus) ||
                const DeepCollectionEquality()
                    .equals(other.recievingStatus, recievingStatus)) &&
            (identical(other.paymentcode, paymentcode) ||
                const DeepCollectionEquality()
                    .equals(other.paymentcode, paymentcode)) &&
            (identical(other.paymentStatus, paymentStatus) ||
                const DeepCollectionEquality()
                    .equals(other.paymentStatus, paymentStatus)) &&
            (identical(other.iventoryId, iventoryId) ||
                const DeepCollectionEquality()
                    .equals(other.iventoryId, iventoryId)) &&
            (identical(other.vendorId, vendorId) ||
                const DeepCollectionEquality()
                    .equals(other.vendorId, vendorId)) &&
            (identical(other.vendorTrnNumber, vendorTrnNumber) ||
                const DeepCollectionEquality()
                    .equals(other.vendorTrnNumber, vendorTrnNumber)) &&
            (identical(other.vendorMailId, vendorMailId) ||
                const DeepCollectionEquality()
                    .equals(other.vendorMailId, vendorMailId)) &&
            (identical(other.vendorAddress, vendorAddress) ||
                const DeepCollectionEquality()
                    .equals(other.vendorAddress, vendorAddress)) &&
            (identical(other.address1, address1) ||
                const DeepCollectionEquality()
                    .equals(other.address1, address1)) &&
            (identical(other.address2, address2) ||
                const DeepCollectionEquality()
                    .equals(other.address2, address2)) &&
            (identical(other.promisedReceiptdate, promisedReceiptdate) ||
                const DeepCollectionEquality()
                    .equals(other.promisedReceiptdate, promisedReceiptdate)) &&
            (identical(other.plannedRecieptDate, plannedRecieptDate) ||
                const DeepCollectionEquality()
                    .equals(other.plannedRecieptDate, plannedRecieptDate)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.remarks, remarks) ||
                const DeepCollectionEquality()
                    .equals(other.remarks, remarks)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.foc, foc) ||
                const DeepCollectionEquality().equals(other.foc, foc)) &&
            (identical(other.unitcost, unitcost) ||
                const DeepCollectionEquality()
                    .equals(other.unitcost, unitcost)) &&
            (identical(other.excessTax, excessTax) ||
                const DeepCollectionEquality()
                    .equals(other.excessTax, excessTax)) &&
            (identical(other.actualCost, actualCost) ||
                const DeepCollectionEquality()
                    .equals(other.actualCost, actualCost)) &&
            (identical(other.vat, vat) || const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.grandTotal, grandTotal) || const DeepCollectionEquality().equals(other.grandTotal, grandTotal)) &&
            (identical(other.variableAmount, variableAmount) || const DeepCollectionEquality().equals(other.variableAmount, variableAmount)) &&
            (identical(other.createdBy, createdBy) || const DeepCollectionEquality().equals(other.createdBy, createdBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(orderLines) ^
      const DeepCollectionEquality().hash(orderCode) ^
      const DeepCollectionEquality().hash(purchaseOrderType) ^
      const DeepCollectionEquality().hash(recievingStatus) ^
      const DeepCollectionEquality().hash(paymentcode) ^
      const DeepCollectionEquality().hash(paymentStatus) ^
      const DeepCollectionEquality().hash(iventoryId) ^
      const DeepCollectionEquality().hash(vendorId) ^
      const DeepCollectionEquality().hash(vendorTrnNumber) ^
      const DeepCollectionEquality().hash(vendorMailId) ^
      const DeepCollectionEquality().hash(vendorAddress) ^
      const DeepCollectionEquality().hash(address1) ^
      const DeepCollectionEquality().hash(address2) ^
      const DeepCollectionEquality().hash(promisedReceiptdate) ^
      const DeepCollectionEquality().hash(plannedRecieptDate) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(remarks) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(foc) ^
      const DeepCollectionEquality().hash(unitcost) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(actualCost) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(grandTotal) ^
      const DeepCollectionEquality().hash(variableAmount) ^
      const DeepCollectionEquality().hash(createdBy);

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(this);
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {int? id,
      @JsonKey(name: "order_lines") List<OrderLines>? orderLines,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "purchase_order_type") String? purchaseOrderType,
      @JsonKey(name: "recieving_status") String? recievingStatus,
      @JsonKey(name: "payment_code") String? paymentcode,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "inventory_id") String? iventoryId,
      @JsonKey(name: "vendor_id") String? vendorId,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") String? vendorMailId,
      @JsonKey(name: "vendor_address") String? vendorAddress,
      @JsonKey(name: "address_1") String? address1,
      @JsonKey(name: "address_2") String? address2,
      @JsonKey(name: "promised_receipt_date") String? promisedReceiptdate,
      @JsonKey(name: "planned_receipt_date") String? plannedRecieptDate,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "discount") int? discount,
      @JsonKey(name: "foc") int? foc,
      @JsonKey(name: "unit_cost") int? unitcost,
      @JsonKey(name: "excess_tax") int? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "vat") int? vat,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") int? variableAmount,
      @JsonKey(name: "created_by") String? createdBy}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_lines")
  List<OrderLines>? get orderLines => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "order_code")
  String? get orderCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_order_type")
  String? get purchaseOrderType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "recieving_status")
  String? get recievingStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "payment_code")
  String? get paymentcode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get iventoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_id")
  String? get vendorId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_trn_number")
  String? get vendorTrnNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_mail_id")
  String? get vendorMailId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_address")
  String? get vendorAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "address_1")
  String? get address1 => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "address_2")
  String? get address2 => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "promised_receipt_date")
  String? get promisedReceiptdate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "planned_receipt_date")
  String? get plannedRecieptDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "remarks")
  String? get remarks => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "discount")
  int? get discount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "foc")
  int? get foc => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "unit_cost")
  int? get unitcost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "excess_tax")
  int? get excessTax => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vat")
  int? get vat => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vatable_amount")
  int? get variableAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}
