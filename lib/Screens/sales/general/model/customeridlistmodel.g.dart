// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customeridlistmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerIdCreationModel _$$_CustomerIdCreationModelFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerIdCreationModel(
      id: json['id'] as int?,
      customerUserCode: json['customer_usercode'] as String?,
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
      'customer_usercode': instance.customerUserCode,
      'is_active': instance.isActive,
      'is_delete': instance.isDeleted,
      'is_business_user': instance.isBuisnessUser,
      'login_id': instance.loginId,
      'tax_id': instance.taxId,
    };
