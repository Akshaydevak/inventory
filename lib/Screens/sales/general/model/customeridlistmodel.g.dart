// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customeridlistmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerIdCreationModel _$$_CustomerIdCreationModelFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerIdCreationModel(
      id: json['id'] as int?,
      fname: json['fname'] as String?,
      lname: json['lname'] as String?,
      customerUserCode: json['customer_usercode'] as String?,
      customerName: json['customer_name'] as String?,
      isActive: json['is_active'] as bool? ?? false,
      isDeleted: json['is_delete'] as bool? ?? false,
      isBuisnessUser: json['is_business_user'] as bool? ?? false,
      loginId: json['login_id'] as int?,
      taxId: json['tax_id'] as String?,
    );

Map<String, dynamic> _$$_CustomerIdCreationModelToJson(
        _$_CustomerIdCreationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fname': instance.fname,
      'lname': instance.lname,
      'customer_usercode': instance.customerUserCode,
      'customer_name': instance.customerName,
      'is_active': instance.isActive,
      'is_delete': instance.isDeleted,
      'is_business_user': instance.isBuisnessUser,
      'login_id': instance.loginId,
      'tax_id': instance.taxId,
    };

_$_CustomerIdListModel _$$_CustomerIdListModelFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerIdListModel(
      id: json['id'] as int?,
      fname: json['fname'] as String?,
      lname: json['lname'] as String?,
      customerUserCode: json['customer_usercode'] as String?,
      customerName: json['customer_name'] as String?,
      isActive: json['is_active'] as bool? ?? false,
      isDeleted: json['is_delete'] as bool? ?? false,
      isBuisnessUser: json['is_business_user'] as bool? ?? false,
      businessData: json['business_data'] == null
          ? null
          : BusinessData.fromJson(
              json['business_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CustomerIdListModelToJson(
        _$_CustomerIdListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fname': instance.fname,
      'lname': instance.lname,
      'customer_usercode': instance.customerUserCode,
      'customer_name': instance.customerName,
      'is_active': instance.isActive,
      'is_delete': instance.isDeleted,
      'is_business_user': instance.isBuisnessUser,
      'business_data': instance.businessData,
    };

_$_BusinessData _$$_BusinessDataFromJson(Map<String, dynamic> json) =>
    _$_BusinessData(
      taxId: json['tax_id'] as String?,
    );

Map<String, dynamic> _$$_BusinessDataToJson(_$_BusinessData instance) =>
    <String, dynamic>{
      'tax_id': instance.taxId,
    };
