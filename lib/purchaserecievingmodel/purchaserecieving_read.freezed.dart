// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchaserecieving_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseRecievingRead _$PurchaseRecievingReadFromJson(
    Map<String, dynamic> json) {
  return _PurchaseRecievingRead.fromJson(json);
}

/// @nodoc
mixin _$PurchaseRecievingRead {
  int? get id => throw _privateConstructorUsedError;
  double? get foc => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "order_code")
  String? get orderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "promised_receipt_date")
  String? get promisedRecieptDate => throw _privateConstructorUsedError;
  @JsonKey(name: "received_by")
  String? get receivedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "planned_receipt_date")
  String? get plannedRecieptDate => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_trn_number")
  String? get vendorTrnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_mail_id")
  String? get vendorMailId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_code")
  String? get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_address")
  String? get vendorAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "receiving_code")
  String? get receivingCode => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "receiving_id")
  int? get receivinglineId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_status")
  String? get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "receiving_status")
  String? get receivingStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "order_created_date")
  String? get orderCreatedDate => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  int? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "is_invoiced")
  bool? get is_invoiced => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_free")
  bool? get isFree => throw _privateConstructorUsedError;
  @JsonKey(name: "receiving_lines")
  List<RecievingLines>? get receivingLines =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseRecievingReadCopyWith<PurchaseRecievingRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseRecievingReadCopyWith<$Res> {
  factory $PurchaseRecievingReadCopyWith(PurchaseRecievingRead value,
          $Res Function(PurchaseRecievingRead) then) =
      _$PurchaseRecievingReadCopyWithImpl<$Res, PurchaseRecievingRead>;
  @useResult
  $Res call(
      {int? id,
      double? foc,
      double? discount,
      double? vat,
      String? remarks,
      String? note,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "promised_receipt_date") String? promisedRecieptDate,
      @JsonKey(name: "received_by") String? receivedBy,
      @JsonKey(name: "planned_receipt_date") String? plannedRecieptDate,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") String? vendorMailId,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "vendor_code") String? vendorId,
      @JsonKey(name: "vendor_address") String? vendorAddress,
      @JsonKey(name: "receiving_code") String? receivingCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "receiving_id") int? receivinglineId,
      @JsonKey(name: "order_status") String? orderStatus,
      @JsonKey(name: "receiving_status") String? receivingStatus,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "order_created_date") String? orderCreatedDate,
      @JsonKey(name: "unit_cost") int? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "is_invoiced") bool? is_invoiced,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "is_free") bool? isFree,
      @JsonKey(name: "receiving_lines") List<RecievingLines>? receivingLines});
}

/// @nodoc
class _$PurchaseRecievingReadCopyWithImpl<$Res,
        $Val extends PurchaseRecievingRead>
    implements $PurchaseRecievingReadCopyWith<$Res> {
  _$PurchaseRecievingReadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? remarks = freezed,
    Object? note = freezed,
    Object? orderCode = freezed,
    Object? promisedRecieptDate = freezed,
    Object? receivedBy = freezed,
    Object? plannedRecieptDate = freezed,
    Object? vendorTrnNumber = freezed,
    Object? vendorMailId = freezed,
    Object? createdBy = freezed,
    Object? vendorId = freezed,
    Object? vendorAddress = freezed,
    Object? receivingCode = freezed,
    Object? inventoryId = freezed,
    Object? paymentStatus = freezed,
    Object? receivinglineId = freezed,
    Object? orderStatus = freezed,
    Object? receivingStatus = freezed,
    Object? invoiceStatus = freezed,
    Object? orderCreatedDate = freezed,
    Object? unitCost = freezed,
    Object? grandTotal = freezed,
    Object? vatableAmount = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? is_invoiced = freezed,
    Object? isActive = freezed,
    Object? isFree = freezed,
    Object? receivingLines = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      orderCode: freezed == orderCode
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      promisedRecieptDate: freezed == promisedRecieptDate
          ? _value.promisedRecieptDate
          : promisedRecieptDate // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedBy: freezed == receivedBy
          ? _value.receivedBy
          : receivedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      plannedRecieptDate: freezed == plannedRecieptDate
          ? _value.plannedRecieptDate
          : plannedRecieptDate // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorTrnNumber: freezed == vendorTrnNumber
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: freezed == vendorMailId
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: freezed == vendorAddress
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      receivingCode: freezed == receivingCode
          ? _value.receivingCode
          : receivingCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      receivinglineId: freezed == receivinglineId
          ? _value.receivinglineId
          : receivinglineId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      receivingStatus: freezed == receivingStatus
          ? _value.receivingStatus
          : receivingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: freezed == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderCreatedDate: freezed == orderCreatedDate
          ? _value.orderCreatedDate
          : orderCreatedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as int?,
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
      is_invoiced: freezed == is_invoiced
          ? _value.is_invoiced
          : is_invoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFree: freezed == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      receivingLines: freezed == receivingLines
          ? _value.receivingLines
          : receivingLines // ignore: cast_nullable_to_non_nullable
              as List<RecievingLines>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchaseRecievingReadCopyWith<$Res>
    implements $PurchaseRecievingReadCopyWith<$Res> {
  factory _$$_PurchaseRecievingReadCopyWith(_$_PurchaseRecievingRead value,
          $Res Function(_$_PurchaseRecievingRead) then) =
      __$$_PurchaseRecievingReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      double? foc,
      double? discount,
      double? vat,
      String? remarks,
      String? note,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "promised_receipt_date") String? promisedRecieptDate,
      @JsonKey(name: "received_by") String? receivedBy,
      @JsonKey(name: "planned_receipt_date") String? plannedRecieptDate,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id") String? vendorMailId,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "vendor_code") String? vendorId,
      @JsonKey(name: "vendor_address") String? vendorAddress,
      @JsonKey(name: "receiving_code") String? receivingCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "receiving_id") int? receivinglineId,
      @JsonKey(name: "order_status") String? orderStatus,
      @JsonKey(name: "receiving_status") String? receivingStatus,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "order_created_date") String? orderCreatedDate,
      @JsonKey(name: "unit_cost") int? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "is_invoiced") bool? is_invoiced,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "is_free") bool? isFree,
      @JsonKey(name: "receiving_lines") List<RecievingLines>? receivingLines});
}

/// @nodoc
class __$$_PurchaseRecievingReadCopyWithImpl<$Res>
    extends _$PurchaseRecievingReadCopyWithImpl<$Res, _$_PurchaseRecievingRead>
    implements _$$_PurchaseRecievingReadCopyWith<$Res> {
  __$$_PurchaseRecievingReadCopyWithImpl(_$_PurchaseRecievingRead _value,
      $Res Function(_$_PurchaseRecievingRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? remarks = freezed,
    Object? note = freezed,
    Object? orderCode = freezed,
    Object? promisedRecieptDate = freezed,
    Object? receivedBy = freezed,
    Object? plannedRecieptDate = freezed,
    Object? vendorTrnNumber = freezed,
    Object? vendorMailId = freezed,
    Object? createdBy = freezed,
    Object? vendorId = freezed,
    Object? vendorAddress = freezed,
    Object? receivingCode = freezed,
    Object? inventoryId = freezed,
    Object? paymentStatus = freezed,
    Object? receivinglineId = freezed,
    Object? orderStatus = freezed,
    Object? receivingStatus = freezed,
    Object? invoiceStatus = freezed,
    Object? orderCreatedDate = freezed,
    Object? unitCost = freezed,
    Object? grandTotal = freezed,
    Object? vatableAmount = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? is_invoiced = freezed,
    Object? isActive = freezed,
    Object? isFree = freezed,
    Object? receivingLines = freezed,
  }) {
    return _then(_$_PurchaseRecievingRead(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      orderCode: freezed == orderCode
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      promisedRecieptDate: freezed == promisedRecieptDate
          ? _value.promisedRecieptDate
          : promisedRecieptDate // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedBy: freezed == receivedBy
          ? _value.receivedBy
          : receivedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      plannedRecieptDate: freezed == plannedRecieptDate
          ? _value.plannedRecieptDate
          : plannedRecieptDate // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorTrnNumber: freezed == vendorTrnNumber
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorMailId: freezed == vendorMailId
          ? _value.vendorMailId
          : vendorMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: freezed == vendorAddress
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      receivingCode: freezed == receivingCode
          ? _value.receivingCode
          : receivingCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      receivinglineId: freezed == receivinglineId
          ? _value.receivinglineId
          : receivinglineId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      receivingStatus: freezed == receivingStatus
          ? _value.receivingStatus
          : receivingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: freezed == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderCreatedDate: freezed == orderCreatedDate
          ? _value.orderCreatedDate
          : orderCreatedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as int?,
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
      is_invoiced: freezed == is_invoiced
          ? _value.is_invoiced
          : is_invoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFree: freezed == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      receivingLines: freezed == receivingLines
          ? _value._receivingLines
          : receivingLines // ignore: cast_nullable_to_non_nullable
              as List<RecievingLines>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseRecievingRead implements _PurchaseRecievingRead {
  const _$_PurchaseRecievingRead(
      {this.id,
      this.foc,
      this.discount,
      this.vat,
      this.remarks,
      this.note,
      @JsonKey(name: "order_code")
          this.orderCode,
      @JsonKey(name: "promised_receipt_date")
          this.promisedRecieptDate,
      @JsonKey(name: "received_by")
          this.receivedBy,
      @JsonKey(name: "planned_receipt_date")
          this.plannedRecieptDate,
      @JsonKey(name: "vendor_trn_number")
          this.vendorTrnNumber,
      @JsonKey(name: "vendor_mail_id")
          this.vendorMailId,
      @JsonKey(name: "created_by")
          this.createdBy,
      @JsonKey(name: "vendor_code")
          this.vendorId,
      @JsonKey(name: "vendor_address")
          this.vendorAddress,
      @JsonKey(name: "receiving_code")
          this.receivingCode,
      @JsonKey(name: "inventory_id")
          this.inventoryId,
      @JsonKey(name: "payment_status")
          this.paymentStatus,
      @JsonKey(name: "receiving_id")
          this.receivinglineId,
      @JsonKey(name: "order_status")
          this.orderStatus,
      @JsonKey(name: "receiving_status")
          this.receivingStatus,
      @JsonKey(name: "invoice_status")
          this.invoiceStatus,
      @JsonKey(name: "order_created_date")
          this.orderCreatedDate,
      @JsonKey(name: "unit_cost")
          this.unitCost,
      @JsonKey(name: "grand_total")
          this.grandTotal,
      @JsonKey(name: "vatable_amount")
          this.vatableAmount,
      @JsonKey(name: "excess_tax")
          this.excessTax,
      @JsonKey(name: "actual_cost")
          this.actualCost,
      @JsonKey(name: "is_invoiced")
          this.is_invoiced,
      @JsonKey(name: "is_active")
          this.isActive,
      @JsonKey(name: "is_free")
          this.isFree,
      @JsonKey(name: "receiving_lines")
          final List<RecievingLines>? receivingLines})
      : _receivingLines = receivingLines;

  factory _$_PurchaseRecievingRead.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseRecievingReadFromJson(json);

  @override
  final int? id;
  @override
  final double? foc;
  @override
  final double? discount;
  @override
  final double? vat;
  @override
  final String? remarks;
  @override
  final String? note;
  @override
  @JsonKey(name: "order_code")
  final String? orderCode;
  @override
  @JsonKey(name: "promised_receipt_date")
  final String? promisedRecieptDate;
  @override
  @JsonKey(name: "received_by")
  final String? receivedBy;
  @override
  @JsonKey(name: "planned_receipt_date")
  final String? plannedRecieptDate;
  @override
  @JsonKey(name: "vendor_trn_number")
  final String? vendorTrnNumber;
  @override
  @JsonKey(name: "vendor_mail_id")
  final String? vendorMailId;
  @override
  @JsonKey(name: "created_by")
  final String? createdBy;
  @override
  @JsonKey(name: "vendor_code")
  final String? vendorId;
  @override
  @JsonKey(name: "vendor_address")
  final String? vendorAddress;
  @override
  @JsonKey(name: "receiving_code")
  final String? receivingCode;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  @override
  @JsonKey(name: "receiving_id")
  final int? receivinglineId;
  @override
  @JsonKey(name: "order_status")
  final String? orderStatus;
  @override
  @JsonKey(name: "receiving_status")
  final String? receivingStatus;
  @override
  @JsonKey(name: "invoice_status")
  final String? invoiceStatus;
  @override
  @JsonKey(name: "order_created_date")
  final String? orderCreatedDate;
  @override
  @JsonKey(name: "unit_cost")
  final int? unitCost;
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
  @JsonKey(name: "is_invoiced")
  final bool? is_invoiced;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "is_free")
  final bool? isFree;
  final List<RecievingLines>? _receivingLines;
  @override
  @JsonKey(name: "receiving_lines")
  List<RecievingLines>? get receivingLines {
    final value = _receivingLines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PurchaseRecievingRead(id: $id, foc: $foc, discount: $discount, vat: $vat, remarks: $remarks, note: $note, orderCode: $orderCode, promisedRecieptDate: $promisedRecieptDate, receivedBy: $receivedBy, plannedRecieptDate: $plannedRecieptDate, vendorTrnNumber: $vendorTrnNumber, vendorMailId: $vendorMailId, createdBy: $createdBy, vendorId: $vendorId, vendorAddress: $vendorAddress, receivingCode: $receivingCode, inventoryId: $inventoryId, paymentStatus: $paymentStatus, receivinglineId: $receivinglineId, orderStatus: $orderStatus, receivingStatus: $receivingStatus, invoiceStatus: $invoiceStatus, orderCreatedDate: $orderCreatedDate, unitCost: $unitCost, grandTotal: $grandTotal, vatableAmount: $vatableAmount, excessTax: $excessTax, actualCost: $actualCost, is_invoiced: $is_invoiced, isActive: $isActive, isFree: $isFree, receivingLines: $receivingLines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseRecievingRead &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.foc, foc) || other.foc == foc) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.orderCode, orderCode) ||
                other.orderCode == orderCode) &&
            (identical(other.promisedRecieptDate, promisedRecieptDate) ||
                other.promisedRecieptDate == promisedRecieptDate) &&
            (identical(other.receivedBy, receivedBy) ||
                other.receivedBy == receivedBy) &&
            (identical(other.plannedRecieptDate, plannedRecieptDate) ||
                other.plannedRecieptDate == plannedRecieptDate) &&
            (identical(other.vendorTrnNumber, vendorTrnNumber) ||
                other.vendorTrnNumber == vendorTrnNumber) &&
            (identical(other.vendorMailId, vendorMailId) ||
                other.vendorMailId == vendorMailId) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.vendorAddress, vendorAddress) ||
                other.vendorAddress == vendorAddress) &&
            (identical(other.receivingCode, receivingCode) ||
                other.receivingCode == receivingCode) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.receivinglineId, receivinglineId) ||
                other.receivinglineId == receivinglineId) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.receivingStatus, receivingStatus) ||
                other.receivingStatus == receivingStatus) &&
            (identical(other.invoiceStatus, invoiceStatus) ||
                other.invoiceStatus == invoiceStatus) &&
            (identical(other.orderCreatedDate, orderCreatedDate) ||
                other.orderCreatedDate == orderCreatedDate) &&
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
            (identical(other.is_invoiced, is_invoiced) ||
                other.is_invoiced == is_invoiced) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            const DeepCollectionEquality()
                .equals(other._receivingLines, _receivingLines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        foc,
        discount,
        vat,
        remarks,
        note,
        orderCode,
        promisedRecieptDate,
        receivedBy,
        plannedRecieptDate,
        vendorTrnNumber,
        vendorMailId,
        createdBy,
        vendorId,
        vendorAddress,
        receivingCode,
        inventoryId,
        paymentStatus,
        receivinglineId,
        orderStatus,
        receivingStatus,
        invoiceStatus,
        orderCreatedDate,
        unitCost,
        grandTotal,
        vatableAmount,
        excessTax,
        actualCost,
        is_invoiced,
        isActive,
        isFree,
        const DeepCollectionEquality().hash(_receivingLines)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseRecievingReadCopyWith<_$_PurchaseRecievingRead> get copyWith =>
      __$$_PurchaseRecievingReadCopyWithImpl<_$_PurchaseRecievingRead>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseRecievingReadToJson(
      this,
    );
  }
}

abstract class _PurchaseRecievingRead implements PurchaseRecievingRead {
  const factory _PurchaseRecievingRead(
          {final int? id,
          final double? foc,
          final double? discount,
          final double? vat,
          final String? remarks,
          final String? note,
          @JsonKey(name: "order_code")
              final String? orderCode,
          @JsonKey(name: "promised_receipt_date")
              final String? promisedRecieptDate,
          @JsonKey(name: "received_by")
              final String? receivedBy,
          @JsonKey(name: "planned_receipt_date")
              final String? plannedRecieptDate,
          @JsonKey(name: "vendor_trn_number")
              final String? vendorTrnNumber,
          @JsonKey(name: "vendor_mail_id")
              final String? vendorMailId,
          @JsonKey(name: "created_by")
              final String? createdBy,
          @JsonKey(name: "vendor_code")
              final String? vendorId,
          @JsonKey(name: "vendor_address")
              final String? vendorAddress,
          @JsonKey(name: "receiving_code")
              final String? receivingCode,
          @JsonKey(name: "inventory_id")
              final String? inventoryId,
          @JsonKey(name: "payment_status")
              final String? paymentStatus,
          @JsonKey(name: "receiving_id")
              final int? receivinglineId,
          @JsonKey(name: "order_status")
              final String? orderStatus,
          @JsonKey(name: "receiving_status")
              final String? receivingStatus,
          @JsonKey(name: "invoice_status")
              final String? invoiceStatus,
          @JsonKey(name: "order_created_date")
              final String? orderCreatedDate,
          @JsonKey(name: "unit_cost")
              final int? unitCost,
          @JsonKey(name: "grand_total")
              final double? grandTotal,
          @JsonKey(name: "vatable_amount")
              final double? vatableAmount,
          @JsonKey(name: "excess_tax")
              final double? excessTax,
          @JsonKey(name: "actual_cost")
              final double? actualCost,
          @JsonKey(name: "is_invoiced")
              final bool? is_invoiced,
          @JsonKey(name: "is_active")
              final bool? isActive,
          @JsonKey(name: "is_free")
              final bool? isFree,
          @JsonKey(name: "receiving_lines")
              final List<RecievingLines>? receivingLines}) =
      _$_PurchaseRecievingRead;

  factory _PurchaseRecievingRead.fromJson(Map<String, dynamic> json) =
      _$_PurchaseRecievingRead.fromJson;

  @override
  int? get id;
  @override
  double? get foc;
  @override
  double? get discount;
  @override
  double? get vat;
  @override
  String? get remarks;
  @override
  String? get note;
  @override
  @JsonKey(name: "order_code")
  String? get orderCode;
  @override
  @JsonKey(name: "promised_receipt_date")
  String? get promisedRecieptDate;
  @override
  @JsonKey(name: "received_by")
  String? get receivedBy;
  @override
  @JsonKey(name: "planned_receipt_date")
  String? get plannedRecieptDate;
  @override
  @JsonKey(name: "vendor_trn_number")
  String? get vendorTrnNumber;
  @override
  @JsonKey(name: "vendor_mail_id")
  String? get vendorMailId;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy;
  @override
  @JsonKey(name: "vendor_code")
  String? get vendorId;
  @override
  @JsonKey(name: "vendor_address")
  String? get vendorAddress;
  @override
  @JsonKey(name: "receiving_code")
  String? get receivingCode;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus;
  @override
  @JsonKey(name: "receiving_id")
  int? get receivinglineId;
  @override
  @JsonKey(name: "order_status")
  String? get orderStatus;
  @override
  @JsonKey(name: "receiving_status")
  String? get receivingStatus;
  @override
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus;
  @override
  @JsonKey(name: "order_created_date")
  String? get orderCreatedDate;
  @override
  @JsonKey(name: "unit_cost")
  int? get unitCost;
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
  @JsonKey(name: "is_invoiced")
  bool? get is_invoiced;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "is_free")
  bool? get isFree;
  @override
  @JsonKey(name: "receiving_lines")
  List<RecievingLines>? get receivingLines;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseRecievingReadCopyWith<_$_PurchaseRecievingRead> get copyWith =>
      throw _privateConstructorUsedError;
}

RecievingLines _$RecievingLinesFromJson(Map<String, dynamic> json) {
  return _RecievingLines.fromJson(json);
}

/// @nodoc
mixin _$RecievingLines {
  int? get id => throw _privateConstructorUsedError;
  int? get currentStock => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  double? get foc => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "order_line_code")
  String? get orderLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "receiving_line_code")
  String? get receivinglineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_reference_code")
  String? get vendorRefCode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  String? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_name")
  String? get variantName => throw _privateConstructorUsedError;
  @JsonKey(name: "supplier_code")
  String? get supplierCode => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_uom")
  String? get purchaseUom => throw _privateConstructorUsedError;
  @JsonKey(name: "is_received")
  bool? get isReceived => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "received_qty")
  int? get receivedQty => throw _privateConstructorUsedError;
  @JsonKey(name: "expiry_date")
  String? get expiryDate => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_id")
  String? get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_trn_number")
  String? get vendorTrnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_address")
  String? get vendorAddress => throw _privateConstructorUsedError;
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
  @JsonKey(name: "purchase_order_line_id")
  int? get purchaseOrderLineId => throw _privateConstructorUsedError;
  @JsonKey(name: "updateCheck", defaultValue: false)
  bool? get updateCheck => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecievingLinesCopyWith<RecievingLines> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecievingLinesCopyWith<$Res> {
  factory $RecievingLinesCopyWith(
          RecievingLines value, $Res Function(RecievingLines) then) =
      _$RecievingLinesCopyWithImpl<$Res, RecievingLines>;
  @useResult
  $Res call(
      {int? id,
      int? currentStock,
      String? barcode,
      double? foc,
      double? discount,
      double? vat,
      @JsonKey(name: "order_line_code") String? orderLineCode,
      @JsonKey(name: "receiving_line_code") String? receivinglineCode,
      @JsonKey(name: "vendor_reference_code") String? vendorRefCode,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "supplier_code") String? supplierCode,
      @JsonKey(name: "purchase_uom") String? purchaseUom,
      @JsonKey(name: "is_received") bool? isReceived,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "received_qty") int? receivedQty,
      @JsonKey(name: "expiry_date") String? expiryDate,
      @JsonKey(name: "vendor_id") String? vendorId,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "vendor_address") String? vendorAddress,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "is_free") bool? isFree,
      @JsonKey(name: "purchase_order_line_id") int? purchaseOrderLineId,
      @JsonKey(name: "updateCheck", defaultValue: false) bool? updateCheck});
}

/// @nodoc
class _$RecievingLinesCopyWithImpl<$Res, $Val extends RecievingLines>
    implements $RecievingLinesCopyWith<$Res> {
  _$RecievingLinesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? currentStock = freezed,
    Object? barcode = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? orderLineCode = freezed,
    Object? receivinglineCode = freezed,
    Object? vendorRefCode = freezed,
    Object? variantId = freezed,
    Object? variantName = freezed,
    Object? supplierCode = freezed,
    Object? purchaseUom = freezed,
    Object? isReceived = freezed,
    Object? unitCost = freezed,
    Object? grandTotal = freezed,
    Object? receivedQty = freezed,
    Object? expiryDate = freezed,
    Object? vendorId = freezed,
    Object? vendorTrnNumber = freezed,
    Object? vendorAddress = freezed,
    Object? vatableAmount = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? isInvoiced = freezed,
    Object? isActive = freezed,
    Object? isFree = freezed,
    Object? purchaseOrderLineId = freezed,
    Object? updateCheck = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      currentStock: freezed == currentStock
          ? _value.currentStock
          : currentStock // ignore: cast_nullable_to_non_nullable
              as int?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
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
      orderLineCode: freezed == orderLineCode
          ? _value.orderLineCode
          : orderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      receivinglineCode: freezed == receivinglineCode
          ? _value.receivinglineCode
          : receivinglineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorRefCode: freezed == vendorRefCode
          ? _value.vendorRefCode
          : vendorRefCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierCode: freezed == supplierCode
          ? _value.supplierCode
          : supplierCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUom: freezed == purchaseUom
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as String?,
      isReceived: freezed == isReceived
          ? _value.isReceived
          : isReceived // ignore: cast_nullable_to_non_nullable
              as bool?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      receivedQty: freezed == receivedQty
          ? _value.receivedQty
          : receivedQty // ignore: cast_nullable_to_non_nullable
              as int?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorTrnNumber: freezed == vendorTrnNumber
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: freezed == vendorAddress
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
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
      purchaseOrderLineId: freezed == purchaseOrderLineId
          ? _value.purchaseOrderLineId
          : purchaseOrderLineId // ignore: cast_nullable_to_non_nullable
              as int?,
      updateCheck: freezed == updateCheck
          ? _value.updateCheck
          : updateCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecievingLinesCopyWith<$Res>
    implements $RecievingLinesCopyWith<$Res> {
  factory _$$_RecievingLinesCopyWith(
          _$_RecievingLines value, $Res Function(_$_RecievingLines) then) =
      __$$_RecievingLinesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? currentStock,
      String? barcode,
      double? foc,
      double? discount,
      double? vat,
      @JsonKey(name: "order_line_code") String? orderLineCode,
      @JsonKey(name: "receiving_line_code") String? receivinglineCode,
      @JsonKey(name: "vendor_reference_code") String? vendorRefCode,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "supplier_code") String? supplierCode,
      @JsonKey(name: "purchase_uom") String? purchaseUom,
      @JsonKey(name: "is_received") bool? isReceived,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "received_qty") int? receivedQty,
      @JsonKey(name: "expiry_date") String? expiryDate,
      @JsonKey(name: "vendor_id") String? vendorId,
      @JsonKey(name: "vendor_trn_number") String? vendorTrnNumber,
      @JsonKey(name: "vendor_address") String? vendorAddress,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "is_free") bool? isFree,
      @JsonKey(name: "purchase_order_line_id") int? purchaseOrderLineId,
      @JsonKey(name: "updateCheck", defaultValue: false) bool? updateCheck});
}

/// @nodoc
class __$$_RecievingLinesCopyWithImpl<$Res>
    extends _$RecievingLinesCopyWithImpl<$Res, _$_RecievingLines>
    implements _$$_RecievingLinesCopyWith<$Res> {
  __$$_RecievingLinesCopyWithImpl(
      _$_RecievingLines _value, $Res Function(_$_RecievingLines) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? currentStock = freezed,
    Object? barcode = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? orderLineCode = freezed,
    Object? receivinglineCode = freezed,
    Object? vendorRefCode = freezed,
    Object? variantId = freezed,
    Object? variantName = freezed,
    Object? supplierCode = freezed,
    Object? purchaseUom = freezed,
    Object? isReceived = freezed,
    Object? unitCost = freezed,
    Object? grandTotal = freezed,
    Object? receivedQty = freezed,
    Object? expiryDate = freezed,
    Object? vendorId = freezed,
    Object? vendorTrnNumber = freezed,
    Object? vendorAddress = freezed,
    Object? vatableAmount = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? isInvoiced = freezed,
    Object? isActive = freezed,
    Object? isFree = freezed,
    Object? purchaseOrderLineId = freezed,
    Object? updateCheck = freezed,
  }) {
    return _then(_$_RecievingLines(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      currentStock: freezed == currentStock
          ? _value.currentStock
          : currentStock // ignore: cast_nullable_to_non_nullable
              as int?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
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
      orderLineCode: freezed == orderLineCode
          ? _value.orderLineCode
          : orderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      receivinglineCode: freezed == receivinglineCode
          ? _value.receivinglineCode
          : receivinglineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorRefCode: freezed == vendorRefCode
          ? _value.vendorRefCode
          : vendorRefCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierCode: freezed == supplierCode
          ? _value.supplierCode
          : supplierCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUom: freezed == purchaseUom
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as String?,
      isReceived: freezed == isReceived
          ? _value.isReceived
          : isReceived // ignore: cast_nullable_to_non_nullable
              as bool?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      receivedQty: freezed == receivedQty
          ? _value.receivedQty
          : receivedQty // ignore: cast_nullable_to_non_nullable
              as int?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorTrnNumber: freezed == vendorTrnNumber
          ? _value.vendorTrnNumber
          : vendorTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: freezed == vendorAddress
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
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
      purchaseOrderLineId: freezed == purchaseOrderLineId
          ? _value.purchaseOrderLineId
          : purchaseOrderLineId // ignore: cast_nullable_to_non_nullable
              as int?,
      updateCheck: freezed == updateCheck
          ? _value.updateCheck
          : updateCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecievingLines implements _RecievingLines {
  const _$_RecievingLines(
      {this.id,
      this.currentStock,
      this.barcode,
      this.foc,
      this.discount,
      this.vat,
      @JsonKey(name: "order_line_code") this.orderLineCode,
      @JsonKey(name: "receiving_line_code") this.receivinglineCode,
      @JsonKey(name: "vendor_reference_code") this.vendorRefCode,
      @JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "variant_name") this.variantName,
      @JsonKey(name: "supplier_code") this.supplierCode,
      @JsonKey(name: "purchase_uom") this.purchaseUom,
      @JsonKey(name: "is_received") this.isReceived,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "grand_total") this.grandTotal,
      @JsonKey(name: "received_qty") this.receivedQty,
      @JsonKey(name: "expiry_date") this.expiryDate,
      @JsonKey(name: "vendor_id") this.vendorId,
      @JsonKey(name: "vendor_trn_number") this.vendorTrnNumber,
      @JsonKey(name: "vendor_address") this.vendorAddress,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "is_invoiced") this.isInvoiced,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "is_free") this.isFree,
      @JsonKey(name: "purchase_order_line_id") this.purchaseOrderLineId,
      @JsonKey(name: "updateCheck", defaultValue: false) this.updateCheck});

  factory _$_RecievingLines.fromJson(Map<String, dynamic> json) =>
      _$$_RecievingLinesFromJson(json);

  @override
  final int? id;
  @override
  final int? currentStock;
  @override
  final String? barcode;
  @override
  final double? foc;
  @override
  final double? discount;
  @override
  final double? vat;
  @override
  @JsonKey(name: "order_line_code")
  final String? orderLineCode;
  @override
  @JsonKey(name: "receiving_line_code")
  final String? receivinglineCode;
  @override
  @JsonKey(name: "vendor_reference_code")
  final String? vendorRefCode;
  @override
  @JsonKey(name: "variant_id")
  final String? variantId;
  @override
  @JsonKey(name: "variant_name")
  final String? variantName;
  @override
  @JsonKey(name: "supplier_code")
  final String? supplierCode;
  @override
  @JsonKey(name: "purchase_uom")
  final String? purchaseUom;
  @override
  @JsonKey(name: "is_received")
  final bool? isReceived;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "grand_total")
  final double? grandTotal;
  @override
  @JsonKey(name: "received_qty")
  final int? receivedQty;
  @override
  @JsonKey(name: "expiry_date")
  final String? expiryDate;
  @override
  @JsonKey(name: "vendor_id")
  final String? vendorId;
  @override
  @JsonKey(name: "vendor_trn_number")
  final String? vendorTrnNumber;
  @override
  @JsonKey(name: "vendor_address")
  final String? vendorAddress;
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
  @JsonKey(name: "purchase_order_line_id")
  final int? purchaseOrderLineId;
  @override
  @JsonKey(name: "updateCheck", defaultValue: false)
  final bool? updateCheck;

  @override
  String toString() {
    return 'RecievingLines(id: $id, currentStock: $currentStock, barcode: $barcode, foc: $foc, discount: $discount, vat: $vat, orderLineCode: $orderLineCode, receivinglineCode: $receivinglineCode, vendorRefCode: $vendorRefCode, variantId: $variantId, variantName: $variantName, supplierCode: $supplierCode, purchaseUom: $purchaseUom, isReceived: $isReceived, unitCost: $unitCost, grandTotal: $grandTotal, receivedQty: $receivedQty, expiryDate: $expiryDate, vendorId: $vendorId, vendorTrnNumber: $vendorTrnNumber, vendorAddress: $vendorAddress, vatableAmount: $vatableAmount, excessTax: $excessTax, actualCost: $actualCost, isInvoiced: $isInvoiced, isActive: $isActive, isFree: $isFree, purchaseOrderLineId: $purchaseOrderLineId, updateCheck: $updateCheck)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecievingLines &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.currentStock, currentStock) ||
                other.currentStock == currentStock) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.foc, foc) || other.foc == foc) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.orderLineCode, orderLineCode) ||
                other.orderLineCode == orderLineCode) &&
            (identical(other.receivinglineCode, receivinglineCode) ||
                other.receivinglineCode == receivinglineCode) &&
            (identical(other.vendorRefCode, vendorRefCode) ||
                other.vendorRefCode == vendorRefCode) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.variantName, variantName) ||
                other.variantName == variantName) &&
            (identical(other.supplierCode, supplierCode) ||
                other.supplierCode == supplierCode) &&
            (identical(other.purchaseUom, purchaseUom) ||
                other.purchaseUom == purchaseUom) &&
            (identical(other.isReceived, isReceived) ||
                other.isReceived == isReceived) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.receivedQty, receivedQty) ||
                other.receivedQty == receivedQty) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.vendorTrnNumber, vendorTrnNumber) ||
                other.vendorTrnNumber == vendorTrnNumber) &&
            (identical(other.vendorAddress, vendorAddress) ||
                other.vendorAddress == vendorAddress) &&
            (identical(other.vatableAmount, vatableAmount) ||
                other.vatableAmount == vatableAmount) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.isInvoiced, isInvoiced) ||
                other.isInvoiced == isInvoiced) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.purchaseOrderLineId, purchaseOrderLineId) ||
                other.purchaseOrderLineId == purchaseOrderLineId) &&
            (identical(other.updateCheck, updateCheck) ||
                other.updateCheck == updateCheck));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        currentStock,
        barcode,
        foc,
        discount,
        vat,
        orderLineCode,
        receivinglineCode,
        vendorRefCode,
        variantId,
        variantName,
        supplierCode,
        purchaseUom,
        isReceived,
        unitCost,
        grandTotal,
        receivedQty,
        expiryDate,
        vendorId,
        vendorTrnNumber,
        vendorAddress,
        vatableAmount,
        excessTax,
        actualCost,
        isInvoiced,
        isActive,
        isFree,
        purchaseOrderLineId,
        updateCheck
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecievingLinesCopyWith<_$_RecievingLines> get copyWith =>
      __$$_RecievingLinesCopyWithImpl<_$_RecievingLines>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecievingLinesToJson(
      this,
    );
  }
}

abstract class _RecievingLines implements RecievingLines {
  const factory _RecievingLines(
      {final int? id,
      final int? currentStock,
      final String? barcode,
      final double? foc,
      final double? discount,
      final double? vat,
      @JsonKey(name: "order_line_code")
          final String? orderLineCode,
      @JsonKey(name: "receiving_line_code")
          final String? receivinglineCode,
      @JsonKey(name: "vendor_reference_code")
          final String? vendorRefCode,
      @JsonKey(name: "variant_id")
          final String? variantId,
      @JsonKey(name: "variant_name")
          final String? variantName,
      @JsonKey(name: "supplier_code")
          final String? supplierCode,
      @JsonKey(name: "purchase_uom")
          final String? purchaseUom,
      @JsonKey(name: "is_received")
          final bool? isReceived,
      @JsonKey(name: "unit_cost")
          final double? unitCost,
      @JsonKey(name: "grand_total")
          final double? grandTotal,
      @JsonKey(name: "received_qty")
          final int? receivedQty,
      @JsonKey(name: "expiry_date")
          final String? expiryDate,
      @JsonKey(name: "vendor_id")
          final String? vendorId,
      @JsonKey(name: "vendor_trn_number")
          final String? vendorTrnNumber,
      @JsonKey(name: "vendor_address")
          final String? vendorAddress,
      @JsonKey(name: "vatable_amount")
          final double? vatableAmount,
      @JsonKey(name: "excess_tax")
          final double? excessTax,
      @JsonKey(name: "actual_cost")
          final double? actualCost,
      @JsonKey(name: "is_invoiced")
          final bool? isInvoiced,
      @JsonKey(name: "is_active")
          final bool? isActive,
      @JsonKey(name: "is_free")
          final bool? isFree,
      @JsonKey(name: "purchase_order_line_id")
          final int? purchaseOrderLineId,
      @JsonKey(name: "updateCheck", defaultValue: false)
          final bool? updateCheck}) = _$_RecievingLines;

  factory _RecievingLines.fromJson(Map<String, dynamic> json) =
      _$_RecievingLines.fromJson;

  @override
  int? get id;
  @override
  int? get currentStock;
  @override
  String? get barcode;
  @override
  double? get foc;
  @override
  double? get discount;
  @override
  double? get vat;
  @override
  @JsonKey(name: "order_line_code")
  String? get orderLineCode;
  @override
  @JsonKey(name: "receiving_line_code")
  String? get receivinglineCode;
  @override
  @JsonKey(name: "vendor_reference_code")
  String? get vendorRefCode;
  @override
  @JsonKey(name: "variant_id")
  String? get variantId;
  @override
  @JsonKey(name: "variant_name")
  String? get variantName;
  @override
  @JsonKey(name: "supplier_code")
  String? get supplierCode;
  @override
  @JsonKey(name: "purchase_uom")
  String? get purchaseUom;
  @override
  @JsonKey(name: "is_received")
  bool? get isReceived;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "grand_total")
  double? get grandTotal;
  @override
  @JsonKey(name: "received_qty")
  int? get receivedQty;
  @override
  @JsonKey(name: "expiry_date")
  String? get expiryDate;
  @override
  @JsonKey(name: "vendor_id")
  String? get vendorId;
  @override
  @JsonKey(name: "vendor_trn_number")
  String? get vendorTrnNumber;
  @override
  @JsonKey(name: "vendor_address")
  String? get vendorAddress;
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
  @JsonKey(name: "is_invoiced")
  bool? get isInvoiced;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "is_free")
  bool? get isFree;
  @override
  @JsonKey(name: "purchase_order_line_id")
  int? get purchaseOrderLineId;
  @override
  @JsonKey(name: "updateCheck", defaultValue: false)
  bool? get updateCheck;
  @override
  @JsonKey(ignore: true)
  _$$_RecievingLinesCopyWith<_$_RecievingLines> get copyWith =>
      throw _privateConstructorUsedError;
}

AdditionalGenerateModel _$AdditionalGenerateModelFromJson(
    Map<String, dynamic> json) {
  return _AdditionalGenerateModel.fromJson(json);
}

/// @nodoc
mixin _$AdditionalGenerateModel {
// final String? remarks,
// final String? note,
// final int? id,
  @JsonKey(name: "receiving_id")
  int? get receivingId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  int? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_order_id")
  int? get purchaseOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_lines")
  List<RecievingLines>? get orderLines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionalGenerateModelCopyWith<AdditionalGenerateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalGenerateModelCopyWith<$Res> {
  factory $AdditionalGenerateModelCopyWith(AdditionalGenerateModel value,
          $Res Function(AdditionalGenerateModel) then) =
      _$AdditionalGenerateModelCopyWithImpl<$Res, AdditionalGenerateModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "receiving_id") int? receivingId,
      @JsonKey(name: "created_by") int? createdBy,
      @JsonKey(name: "purchase_order_id") int? purchaseOrderId,
      @JsonKey(name: "order_lines") List<RecievingLines>? orderLines});
}

/// @nodoc
class _$AdditionalGenerateModelCopyWithImpl<$Res,
        $Val extends AdditionalGenerateModel>
    implements $AdditionalGenerateModelCopyWith<$Res> {
  _$AdditionalGenerateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receivingId = freezed,
    Object? createdBy = freezed,
    Object? purchaseOrderId = freezed,
    Object? orderLines = freezed,
  }) {
    return _then(_value.copyWith(
      receivingId: freezed == receivingId
          ? _value.receivingId
          : receivingId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseOrderId: freezed == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderLines: freezed == orderLines
          ? _value.orderLines
          : orderLines // ignore: cast_nullable_to_non_nullable
              as List<RecievingLines>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdditionalGenerateModelCopyWith<$Res>
    implements $AdditionalGenerateModelCopyWith<$Res> {
  factory _$$_AdditionalGenerateModelCopyWith(_$_AdditionalGenerateModel value,
          $Res Function(_$_AdditionalGenerateModel) then) =
      __$$_AdditionalGenerateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "receiving_id") int? receivingId,
      @JsonKey(name: "created_by") int? createdBy,
      @JsonKey(name: "purchase_order_id") int? purchaseOrderId,
      @JsonKey(name: "order_lines") List<RecievingLines>? orderLines});
}

/// @nodoc
class __$$_AdditionalGenerateModelCopyWithImpl<$Res>
    extends _$AdditionalGenerateModelCopyWithImpl<$Res,
        _$_AdditionalGenerateModel>
    implements _$$_AdditionalGenerateModelCopyWith<$Res> {
  __$$_AdditionalGenerateModelCopyWithImpl(_$_AdditionalGenerateModel _value,
      $Res Function(_$_AdditionalGenerateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receivingId = freezed,
    Object? createdBy = freezed,
    Object? purchaseOrderId = freezed,
    Object? orderLines = freezed,
  }) {
    return _then(_$_AdditionalGenerateModel(
      receivingId: freezed == receivingId
          ? _value.receivingId
          : receivingId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseOrderId: freezed == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderLines: freezed == orderLines
          ? _value._orderLines
          : orderLines // ignore: cast_nullable_to_non_nullable
              as List<RecievingLines>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdditionalGenerateModel implements _AdditionalGenerateModel {
  const _$_AdditionalGenerateModel(
      {@JsonKey(name: "receiving_id") this.receivingId,
      @JsonKey(name: "created_by") this.createdBy,
      @JsonKey(name: "purchase_order_id") this.purchaseOrderId,
      @JsonKey(name: "order_lines") final List<RecievingLines>? orderLines})
      : _orderLines = orderLines;

  factory _$_AdditionalGenerateModel.fromJson(Map<String, dynamic> json) =>
      _$$_AdditionalGenerateModelFromJson(json);

// final String? remarks,
// final String? note,
// final int? id,
  @override
  @JsonKey(name: "receiving_id")
  final int? receivingId;
  @override
  @JsonKey(name: "created_by")
  final int? createdBy;
  @override
  @JsonKey(name: "purchase_order_id")
  final int? purchaseOrderId;
  final List<RecievingLines>? _orderLines;
  @override
  @JsonKey(name: "order_lines")
  List<RecievingLines>? get orderLines {
    final value = _orderLines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AdditionalGenerateModel(receivingId: $receivingId, createdBy: $createdBy, purchaseOrderId: $purchaseOrderId, orderLines: $orderLines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdditionalGenerateModel &&
            (identical(other.receivingId, receivingId) ||
                other.receivingId == receivingId) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId) &&
            const DeepCollectionEquality()
                .equals(other._orderLines, _orderLines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, receivingId, createdBy,
      purchaseOrderId, const DeepCollectionEquality().hash(_orderLines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdditionalGenerateModelCopyWith<_$_AdditionalGenerateModel>
      get copyWith =>
          __$$_AdditionalGenerateModelCopyWithImpl<_$_AdditionalGenerateModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdditionalGenerateModelToJson(
      this,
    );
  }
}

abstract class _AdditionalGenerateModel implements AdditionalGenerateModel {
  const factory _AdditionalGenerateModel(
      {@JsonKey(name: "receiving_id")
          final int? receivingId,
      @JsonKey(name: "created_by")
          final int? createdBy,
      @JsonKey(name: "purchase_order_id")
          final int? purchaseOrderId,
      @JsonKey(name: "order_lines")
          final List<RecievingLines>? orderLines}) = _$_AdditionalGenerateModel;

  factory _AdditionalGenerateModel.fromJson(Map<String, dynamic> json) =
      _$_AdditionalGenerateModel.fromJson;

  @override // final String? remarks,
// final String? note,
// final int? id,
  @JsonKey(name: "receiving_id")
  int? get receivingId;
  @override
  @JsonKey(name: "created_by")
  int? get createdBy;
  @override
  @JsonKey(name: "purchase_order_id")
  int? get purchaseOrderId;
  @override
  @JsonKey(name: "order_lines")
  List<RecievingLines>? get orderLines;
  @override
  @JsonKey(ignore: true)
  _$$_AdditionalGenerateModelCopyWith<_$_AdditionalGenerateModel>
      get copyWith => throw _privateConstructorUsedError;
}

RequestReceivingPatch _$RequestReceivingPatchFromJson(
    Map<String, dynamic> json) {
  return _RequestReceivingPatch.fromJson(json);
}

/// @nodoc
mixin _$RequestReceivingPatch {
  int? get id => throw _privateConstructorUsedError;
  double? get foc => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "received_by")
  String? get receivedBy => throw _privateConstructorUsedError;
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
  @JsonKey(name: "receiving_lines")
  List<RecievingLines>? get receivingLines =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestReceivingPatchCopyWith<RequestReceivingPatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestReceivingPatchCopyWith<$Res> {
  factory $RequestReceivingPatchCopyWith(RequestReceivingPatch value,
          $Res Function(RequestReceivingPatch) then) =
      _$RequestReceivingPatchCopyWithImpl<$Res, RequestReceivingPatch>;
  @useResult
  $Res call(
      {int? id,
      double? foc,
      double? discount,
      double? vat,
      String? remarks,
      String? note,
      @JsonKey(name: "received_by") String? receivedBy,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "receiving_lines") List<RecievingLines>? receivingLines});
}

/// @nodoc
class _$RequestReceivingPatchCopyWithImpl<$Res,
        $Val extends RequestReceivingPatch>
    implements $RequestReceivingPatchCopyWith<$Res> {
  _$RequestReceivingPatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? remarks = freezed,
    Object? note = freezed,
    Object? receivedBy = freezed,
    Object? unitCost = freezed,
    Object? grandTotal = freezed,
    Object? vatableAmount = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? receivingLines = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedBy: freezed == receivedBy
          ? _value.receivedBy
          : receivedBy // ignore: cast_nullable_to_non_nullable
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
      receivingLines: freezed == receivingLines
          ? _value.receivingLines
          : receivingLines // ignore: cast_nullable_to_non_nullable
              as List<RecievingLines>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestReceivingPatchCopyWith<$Res>
    implements $RequestReceivingPatchCopyWith<$Res> {
  factory _$$_RequestReceivingPatchCopyWith(_$_RequestReceivingPatch value,
          $Res Function(_$_RequestReceivingPatch) then) =
      __$$_RequestReceivingPatchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      double? foc,
      double? discount,
      double? vat,
      String? remarks,
      String? note,
      @JsonKey(name: "received_by") String? receivedBy,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "grand_total") double? grandTotal,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "receiving_lines") List<RecievingLines>? receivingLines});
}

/// @nodoc
class __$$_RequestReceivingPatchCopyWithImpl<$Res>
    extends _$RequestReceivingPatchCopyWithImpl<$Res, _$_RequestReceivingPatch>
    implements _$$_RequestReceivingPatchCopyWith<$Res> {
  __$$_RequestReceivingPatchCopyWithImpl(_$_RequestReceivingPatch _value,
      $Res Function(_$_RequestReceivingPatch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? foc = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? remarks = freezed,
    Object? note = freezed,
    Object? receivedBy = freezed,
    Object? unitCost = freezed,
    Object? grandTotal = freezed,
    Object? vatableAmount = freezed,
    Object? excessTax = freezed,
    Object? actualCost = freezed,
    Object? receivingLines = freezed,
  }) {
    return _then(_$_RequestReceivingPatch(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedBy: freezed == receivedBy
          ? _value.receivedBy
          : receivedBy // ignore: cast_nullable_to_non_nullable
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
      receivingLines: freezed == receivingLines
          ? _value._receivingLines
          : receivingLines // ignore: cast_nullable_to_non_nullable
              as List<RecievingLines>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestReceivingPatch implements _RequestReceivingPatch {
  const _$_RequestReceivingPatch(
      {this.id,
      this.foc,
      this.discount,
      this.vat,
      this.remarks,
      this.note,
      @JsonKey(name: "received_by")
          this.receivedBy,
      @JsonKey(name: "unit_cost")
          this.unitCost,
      @JsonKey(name: "grand_total")
          this.grandTotal,
      @JsonKey(name: "vatable_amount")
          this.vatableAmount,
      @JsonKey(name: "excess_tax")
          this.excessTax,
      @JsonKey(name: "actual_cost")
          this.actualCost,
      @JsonKey(name: "receiving_lines")
          final List<RecievingLines>? receivingLines})
      : _receivingLines = receivingLines;

  factory _$_RequestReceivingPatch.fromJson(Map<String, dynamic> json) =>
      _$$_RequestReceivingPatchFromJson(json);

  @override
  final int? id;
  @override
  final double? foc;
  @override
  final double? discount;
  @override
  final double? vat;
  @override
  final String? remarks;
  @override
  final String? note;
  @override
  @JsonKey(name: "received_by")
  final String? receivedBy;
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
  final List<RecievingLines>? _receivingLines;
  @override
  @JsonKey(name: "receiving_lines")
  List<RecievingLines>? get receivingLines {
    final value = _receivingLines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RequestReceivingPatch(id: $id, foc: $foc, discount: $discount, vat: $vat, remarks: $remarks, note: $note, receivedBy: $receivedBy, unitCost: $unitCost, grandTotal: $grandTotal, vatableAmount: $vatableAmount, excessTax: $excessTax, actualCost: $actualCost, receivingLines: $receivingLines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestReceivingPatch &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.foc, foc) || other.foc == foc) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.receivedBy, receivedBy) ||
                other.receivedBy == receivedBy) &&
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
            const DeepCollectionEquality()
                .equals(other._receivingLines, _receivingLines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      foc,
      discount,
      vat,
      remarks,
      note,
      receivedBy,
      unitCost,
      grandTotal,
      vatableAmount,
      excessTax,
      actualCost,
      const DeepCollectionEquality().hash(_receivingLines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestReceivingPatchCopyWith<_$_RequestReceivingPatch> get copyWith =>
      __$$_RequestReceivingPatchCopyWithImpl<_$_RequestReceivingPatch>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestReceivingPatchToJson(
      this,
    );
  }
}

abstract class _RequestReceivingPatch implements RequestReceivingPatch {
  const factory _RequestReceivingPatch(
          {final int? id,
          final double? foc,
          final double? discount,
          final double? vat,
          final String? remarks,
          final String? note,
          @JsonKey(name: "received_by")
              final String? receivedBy,
          @JsonKey(name: "unit_cost")
              final double? unitCost,
          @JsonKey(name: "grand_total")
              final double? grandTotal,
          @JsonKey(name: "vatable_amount")
              final double? vatableAmount,
          @JsonKey(name: "excess_tax")
              final double? excessTax,
          @JsonKey(name: "actual_cost")
              final double? actualCost,
          @JsonKey(name: "receiving_lines")
              final List<RecievingLines>? receivingLines}) =
      _$_RequestReceivingPatch;

  factory _RequestReceivingPatch.fromJson(Map<String, dynamic> json) =
      _$_RequestReceivingPatch.fromJson;

  @override
  int? get id;
  @override
  double? get foc;
  @override
  double? get discount;
  @override
  double? get vat;
  @override
  String? get remarks;
  @override
  String? get note;
  @override
  @JsonKey(name: "received_by")
  String? get receivedBy;
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
  @JsonKey(name: "receiving_lines")
  List<RecievingLines>? get receivingLines;
  @override
  @JsonKey(ignore: true)
  _$$_RequestReceivingPatchCopyWith<_$_RequestReceivingPatch> get copyWith =>
      throw _privateConstructorUsedError;
}
