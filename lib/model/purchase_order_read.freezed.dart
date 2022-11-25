// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchase_order_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseOrderRead _$PurchaseOrderReadFromJson(Map<String, dynamic> json) {
  return _PurchaseOrderRead.fromJson(json);
}

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
      _$PurchaseOrderReadCopyWithImpl<$Res, PurchaseOrderRead>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") Data? data,
      @JsonKey(name: "types_of_purchasing") List<String>? typesOfPurcasing});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PurchaseOrderReadCopyWithImpl<$Res, $Val extends PurchaseOrderRead>
    implements $PurchaseOrderReadCopyWith<$Res> {
  _$PurchaseOrderReadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? typesOfPurcasing = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      typesOfPurcasing: freezed == typesOfPurcasing
          ? _value.typesOfPurcasing
          : typesOfPurcasing // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PurchaseOrderReadCopyWith<$Res>
    implements $PurchaseOrderReadCopyWith<$Res> {
  factory _$$_PurchaseOrderReadCopyWith(_$_PurchaseOrderRead value,
          $Res Function(_$_PurchaseOrderRead) then) =
      __$$_PurchaseOrderReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") Data? data,
      @JsonKey(name: "types_of_purchasing") List<String>? typesOfPurcasing});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_PurchaseOrderReadCopyWithImpl<$Res>
    extends _$PurchaseOrderReadCopyWithImpl<$Res, _$_PurchaseOrderRead>
    implements _$$_PurchaseOrderReadCopyWith<$Res> {
  __$$_PurchaseOrderReadCopyWithImpl(
      _$_PurchaseOrderRead _value, $Res Function(_$_PurchaseOrderRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? typesOfPurcasing = freezed,
  }) {
    return _then(_$_PurchaseOrderRead(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      typesOfPurcasing: freezed == typesOfPurcasing
          ? _value._typesOfPurcasing
          : typesOfPurcasing // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseOrderRead implements _PurchaseOrderRead {
  const _$_PurchaseOrderRead(
      {@JsonKey(name: "data")
          this.data,
      @JsonKey(name: "types_of_purchasing")
          final List<String>? typesOfPurcasing})
      : _typesOfPurcasing = typesOfPurcasing;

  factory _$_PurchaseOrderRead.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseOrderReadFromJson(json);

  @override
  @JsonKey(name: "data")
  final Data? data;
  final List<String>? _typesOfPurcasing;
  @override
  @JsonKey(name: "types_of_purchasing")
  List<String>? get typesOfPurcasing {
    final value = _typesOfPurcasing;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PurchaseOrderRead(data: $data, typesOfPurcasing: $typesOfPurcasing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseOrderRead &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality()
                .equals(other._typesOfPurcasing, _typesOfPurcasing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data,
      const DeepCollectionEquality().hash(_typesOfPurcasing));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseOrderReadCopyWith<_$_PurchaseOrderRead> get copyWith =>
      __$$_PurchaseOrderReadCopyWithImpl<_$_PurchaseOrderRead>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseOrderReadToJson(
      this,
    );
  }
}

abstract class _PurchaseOrderRead implements PurchaseOrderRead {
  const factory _PurchaseOrderRead(
      {@JsonKey(name: "data")
          final Data? data,
      @JsonKey(name: "types_of_purchasing")
          final List<String>? typesOfPurcasing}) = _$_PurchaseOrderRead;

  factory _PurchaseOrderRead.fromJson(Map<String, dynamic> json) =
      _$_PurchaseOrderRead.fromJson;

  @override
  @JsonKey(name: "data")
  Data? get data;
  @override
  @JsonKey(name: "types_of_purchasing")
  List<String>? get typesOfPurcasing;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseOrderReadCopyWith<_$_PurchaseOrderRead> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

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
  @JsonKey(name: "ordered_date")
  String? get orderDate => throw _privateConstructorUsedError;
  @JsonKey(name: "order_status")
  String? get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "ordered_person")
  String? get orderedPereson => throw _privateConstructorUsedError;
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
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "order_lines") List<OrderLines>? orderLines,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "purchase_order_type") String? purchaseOrderType,
      @JsonKey(name: "recieving_status") String? recievingStatus,
      @JsonKey(name: "payment_code") String? paymentcode,
      @JsonKey(name: "ordered_date") String? orderDate,
      @JsonKey(name: "order_status") String? orderStatus,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "ordered_person") String? orderedPereson,
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
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderLines = freezed,
    Object? orderCode = freezed,
    Object? purchaseOrderType = freezed,
    Object? recievingStatus = freezed,
    Object? paymentcode = freezed,
    Object? orderDate = freezed,
    Object? orderStatus = freezed,
    Object? invoiceStatus = freezed,
    Object? orderedPereson = freezed,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderLines: freezed == orderLines
          ? _value.orderLines
          : orderLines // ignore: cast_nullable_to_non_nullable
              as List<OrderLines>?,
      orderCode: freezed == orderCode
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseOrderType: freezed == purchaseOrderType
          ? _value.purchaseOrderType
          : purchaseOrderType // ignore: cast_nullable_to_non_nullable
              as String?,
      recievingStatus: freezed == recievingStatus
          ? _value.recievingStatus
          : recievingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentcode: freezed == paymentcode
          ? _value.paymentcode
          : paymentcode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: freezed == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderedPereson: freezed == orderedPereson
          ? _value.orderedPereson
          : orderedPereson // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      iventoryId: freezed == iventoryId
          ? _value.iventoryId
          : iventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorTrnNumber: freezed == vendorTrnNumber
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: freezed == vendorMailId
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: freezed == vendorAddress
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      promisedReceiptdate: freezed == promisedReceiptdate
          ? _value.promisedReceiptdate
          : promisedReceiptdate // ignore: cast_nullable_to_non_nullable
              as String?,
      plannedRecieptDate: freezed == plannedRecieptDate
          ? _value.plannedRecieptDate
          : plannedRecieptDate // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as int?,
      unitcost: freezed == unitcost
          ? _value.unitcost
          : unitcost // ignore: cast_nullable_to_non_nullable
              as int?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as int?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as int?,
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      variableAmount: freezed == variableAmount
          ? _value.variableAmount
          : variableAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "order_lines") List<OrderLines>? orderLines,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "purchase_order_type") String? purchaseOrderType,
      @JsonKey(name: "recieving_status") String? recievingStatus,
      @JsonKey(name: "payment_code") String? paymentcode,
      @JsonKey(name: "ordered_date") String? orderDate,
      @JsonKey(name: "order_status") String? orderStatus,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "ordered_person") String? orderedPereson,
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
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderLines = freezed,
    Object? orderCode = freezed,
    Object? purchaseOrderType = freezed,
    Object? recievingStatus = freezed,
    Object? paymentcode = freezed,
    Object? orderDate = freezed,
    Object? orderStatus = freezed,
    Object? invoiceStatus = freezed,
    Object? orderedPereson = freezed,
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
    return _then(_$_Data(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderLines: freezed == orderLines
          ? _value._orderLines
          : orderLines // ignore: cast_nullable_to_non_nullable
              as List<OrderLines>?,
      orderCode: freezed == orderCode
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseOrderType: freezed == purchaseOrderType
          ? _value.purchaseOrderType
          : purchaseOrderType // ignore: cast_nullable_to_non_nullable
              as String?,
      recievingStatus: freezed == recievingStatus
          ? _value.recievingStatus
          : recievingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentcode: freezed == paymentcode
          ? _value.paymentcode
          : paymentcode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: freezed == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderedPereson: freezed == orderedPereson
          ? _value.orderedPereson
          : orderedPereson // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      iventoryId: freezed == iventoryId
          ? _value.iventoryId
          : iventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorTrnNumber: freezed == vendorTrnNumber
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: freezed == vendorMailId
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: freezed == vendorAddress
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      promisedReceiptdate: freezed == promisedReceiptdate
          ? _value.promisedReceiptdate
          : promisedReceiptdate // ignore: cast_nullable_to_non_nullable
              as String?,
      plannedRecieptDate: freezed == plannedRecieptDate
          ? _value.plannedRecieptDate
          : plannedRecieptDate // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      foc: freezed == foc
          ? _value.foc
          : foc // ignore: cast_nullable_to_non_nullable
              as int?,
      unitcost: freezed == unitcost
          ? _value.unitcost
          : unitcost // ignore: cast_nullable_to_non_nullable
              as int?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as int?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as int?,
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      variableAmount: freezed == variableAmount
          ? _value.variableAmount
          : variableAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdBy: freezed == createdBy
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
      @JsonKey(name: "order_lines") final List<OrderLines>? orderLines,
      @JsonKey(name: "order_code") this.orderCode,
      @JsonKey(name: "purchase_order_type") this.purchaseOrderType,
      @JsonKey(name: "recieving_status") this.recievingStatus,
      @JsonKey(name: "payment_code") this.paymentcode,
      @JsonKey(name: "ordered_date") this.orderDate,
      @JsonKey(name: "order_status") this.orderStatus,
      @JsonKey(name: "invoice_status") this.invoiceStatus,
      @JsonKey(name: "ordered_person") this.orderedPereson,
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
      @JsonKey(name: "created_by") this.createdBy})
      : _orderLines = orderLines;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final int? id;
  final List<OrderLines>? _orderLines;
  @override
  @JsonKey(name: "order_lines")
  List<OrderLines>? get orderLines {
    final value = _orderLines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  @JsonKey(name: "ordered_date")
  final String? orderDate;
  @override
  @JsonKey(name: "order_status")
  final String? orderStatus;
  @override
  @JsonKey(name: "invoice_status")
  final String? invoiceStatus;
  @override
  @JsonKey(name: "ordered_person")
  final String? orderedPereson;
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
    return 'Data(id: $id, orderLines: $orderLines, orderCode: $orderCode, purchaseOrderType: $purchaseOrderType, recievingStatus: $recievingStatus, paymentcode: $paymentcode, orderDate: $orderDate, orderStatus: $orderStatus, invoiceStatus: $invoiceStatus, orderedPereson: $orderedPereson, paymentStatus: $paymentStatus, iventoryId: $iventoryId, vendorId: $vendorId, vendorTrnNumber: $vendorTrnNumber, vendorMailId: $vendorMailId, vendorAddress: $vendorAddress, address1: $address1, address2: $address2, promisedReceiptdate: $promisedReceiptdate, plannedRecieptDate: $plannedRecieptDate, note: $note, remarks: $remarks, discount: $discount, foc: $foc, unitcost: $unitcost, excessTax: $excessTax, actualCost: $actualCost, vat: $vat, grandTotal: $grandTotal, variableAmount: $variableAmount, createdBy: $createdBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._orderLines, _orderLines) &&
            (identical(other.orderCode, orderCode) ||
                other.orderCode == orderCode) &&
            (identical(other.purchaseOrderType, purchaseOrderType) ||
                other.purchaseOrderType == purchaseOrderType) &&
            (identical(other.recievingStatus, recievingStatus) ||
                other.recievingStatus == recievingStatus) &&
            (identical(other.paymentcode, paymentcode) ||
                other.paymentcode == paymentcode) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.invoiceStatus, invoiceStatus) ||
                other.invoiceStatus == invoiceStatus) &&
            (identical(other.orderedPereson, orderedPereson) ||
                other.orderedPereson == orderedPereson) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.iventoryId, iventoryId) ||
                other.iventoryId == iventoryId) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.vendorTrnNumber, vendorTrnNumber) ||
                other.vendorTrnNumber == vendorTrnNumber) &&
            (identical(other.vendorMailId, vendorMailId) ||
                other.vendorMailId == vendorMailId) &&
            (identical(other.vendorAddress, vendorAddress) ||
                other.vendorAddress == vendorAddress) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.promisedReceiptdate, promisedReceiptdate) ||
                other.promisedReceiptdate == promisedReceiptdate) &&
            (identical(other.plannedRecieptDate, plannedRecieptDate) ||
                other.plannedRecieptDate == plannedRecieptDate) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.foc, foc) || other.foc == foc) &&
            (identical(other.unitcost, unitcost) ||
                other.unitcost == unitcost) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.variableAmount, variableAmount) ||
                other.variableAmount == variableAmount) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_orderLines),
        orderCode,
        purchaseOrderType,
        recievingStatus,
        paymentcode,
        orderDate,
        orderStatus,
        invoiceStatus,
        orderedPereson,
        paymentStatus,
        iventoryId,
        vendorId,
        vendorTrnNumber,
        vendorMailId,
        vendorAddress,
        address1,
        address2,
        promisedReceiptdate,
        plannedRecieptDate,
        note,
        remarks,
        discount,
        foc,
        unitcost,
        excessTax,
        actualCost,
        vat,
        grandTotal,
        variableAmount,
        createdBy
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {final int? id,
      @JsonKey(name: "order_lines") final List<OrderLines>? orderLines,
      @JsonKey(name: "order_code") final String? orderCode,
      @JsonKey(name: "purchase_order_type") final String? purchaseOrderType,
      @JsonKey(name: "recieving_status") final String? recievingStatus,
      @JsonKey(name: "payment_code") final String? paymentcode,
      @JsonKey(name: "ordered_date") final String? orderDate,
      @JsonKey(name: "order_status") final String? orderStatus,
      @JsonKey(name: "invoice_status") final String? invoiceStatus,
      @JsonKey(name: "ordered_person") final String? orderedPereson,
      @JsonKey(name: "payment_status") final String? paymentStatus,
      @JsonKey(name: "inventory_id") final String? iventoryId,
      @JsonKey(name: "vendor_id") final String? vendorId,
      @JsonKey(name: "vendor_trn_number") final String? vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") final String? vendorMailId,
      @JsonKey(name: "vendor_address") final String? vendorAddress,
      @JsonKey(name: "address_1") final String? address1,
      @JsonKey(name: "address_2") final String? address2,
      @JsonKey(name: "promised_receipt_date") final String? promisedReceiptdate,
      @JsonKey(name: "planned_receipt_date") final String? plannedRecieptDate,
      @JsonKey(name: "note") final String? note,
      @JsonKey(name: "remarks") final String? remarks,
      @JsonKey(name: "discount") final int? discount,
      @JsonKey(name: "foc") final int? foc,
      @JsonKey(name: "unit_cost") final int? unitcost,
      @JsonKey(name: "excess_tax") final int? excessTax,
      @JsonKey(name: "actual_cost") final double? actualCost,
      @JsonKey(name: "vat") final int? vat,
      @JsonKey(name: "grand_total") final double? grandTotal,
      @JsonKey(name: "vatable_amount") final int? variableAmount,
      @JsonKey(name: "created_by") final String? createdBy}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "order_lines")
  List<OrderLines>? get orderLines;
  @override
  @JsonKey(name: "order_code")
  String? get orderCode;
  @override
  @JsonKey(name: "purchase_order_type")
  String? get purchaseOrderType;
  @override
  @JsonKey(name: "recieving_status")
  String? get recievingStatus;
  @override
  @JsonKey(name: "payment_code")
  String? get paymentcode;
  @override
  @JsonKey(name: "ordered_date")
  String? get orderDate;
  @override
  @JsonKey(name: "order_status")
  String? get orderStatus;
  @override
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus;
  @override
  @JsonKey(name: "ordered_person")
  String? get orderedPereson;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus;
  @override
  @JsonKey(name: "inventory_id")
  String? get iventoryId;
  @override
  @JsonKey(name: "vendor_id")
  String? get vendorId;
  @override
  @JsonKey(name: "vendor_trn_number")
  String? get vendorTrnNumber;
  @override
  @JsonKey(name: "vendor_mail_id")
  String? get vendorMailId;
  @override
  @JsonKey(name: "vendor_address")
  String? get vendorAddress;
  @override
  @JsonKey(name: "address_1")
  String? get address1;
  @override
  @JsonKey(name: "address_2")
  String? get address2;
  @override
  @JsonKey(name: "promised_receipt_date")
  String? get promisedReceiptdate;
  @override
  @JsonKey(name: "planned_receipt_date")
  String? get plannedRecieptDate;
  @override
  @JsonKey(name: "note")
  String? get note;
  @override
  @JsonKey(name: "remarks")
  String? get remarks;
  @override
  @JsonKey(name: "discount")
  int? get discount;
  @override
  @JsonKey(name: "foc")
  int? get foc;
  @override
  @JsonKey(name: "unit_cost")
  int? get unitcost;
  @override
  @JsonKey(name: "excess_tax")
  int? get excessTax;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost;
  @override
  @JsonKey(name: "vat")
  int? get vat;
  @override
  @JsonKey(name: "grand_total")
  double? get grandTotal;
  @override
  @JsonKey(name: "vatable_amount")
  int? get variableAmount;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
