// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generatemissing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenerateMissing _$$_GenerateMissingFromJson(Map<String, dynamic> json) =>
    _$_GenerateMissing(
      id: json['id'] as int?,
      remarks: json['remarks'] as String?,
      note: json['note'] as String?,
      promisedRecieptDate: json['promised_receipt_date'] as String?,
      plannedRecieptDate: json['planned_receipt_date'] as String?,
      vendorTrnNumber: json['vendor_trn_number'] as String?,
      vendorMailId: json['vendor_mail_id'] as String?,
      createdBy: json['created_by'] as String?,
      vendorId: json['vendor_id'] as String?,
      vendorAddress: json['vendor_address'] as String?,
      inventoryId: json['inventory_id'] as String?,
      receivinglineId: json['receiving_id'] as int?,
      orderLinses: (json['order_lines'] as List<dynamic>?)
          ?.map((e) => OrderLiness.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GenerateMissingToJson(_$_GenerateMissing instance) =>
    <String, dynamic>{
      'id': instance.id,
      'remarks': instance.remarks,
      'note': instance.note,
      'promised_receipt_date': instance.promisedRecieptDate,
      'planned_receipt_date': instance.plannedRecieptDate,
      'vendor_trn_number': instance.vendorTrnNumber,
      'vendor_mail_id': instance.vendorMailId,
      'created_by': instance.createdBy,
      'vendor_id': instance.vendorId,
      'vendor_address': instance.vendorAddress,
      'inventory_id': instance.inventoryId,
      'receiving_id': instance.receivinglineId,
      'order_lines': instance.orderLinses,
    };

_$_OrderLines _$$_OrderLinesFromJson(Map<String, dynamic> json) =>
    _$_OrderLines(
      orderLineId: json['order_line_id'] as int?,
      receivinglineId: json['receiving_line_id'] as int?,
    );

Map<String, dynamic> _$$_OrderLinesToJson(_$_OrderLines instance) =>
    <String, dynamic>{
      'order_line_id': instance.orderLineId,
      'receiving_line_id': instance.receivinglineId,
    };

_$_OrderedPersonModel _$$_OrderedPersonModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrderedPersonModel(
      id: json['id'] as int?,
      fname: json['fname'] as String?,
      lname: json['lname'] as String?,
      userLoginId: json['user_login_id'] as int?,
      employeeUserCode: json['employee_usercode'] as String?,
      organisationCode: json['organization_code'] as String?,
      designationId: json['designation_id'] as int?,
      isActive: json['is_active'] as bool?,
    );

Map<String, dynamic> _$$_OrderedPersonModelToJson(
        _$_OrderedPersonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fname': instance.fname,
      'lname': instance.lname,
      'user_login_id': instance.userLoginId,
      'employee_usercode': instance.employeeUserCode,
      'organization_code': instance.organisationCode,
      'designation_id': instance.designationId,
      'is_active': instance.isActive,
    };
