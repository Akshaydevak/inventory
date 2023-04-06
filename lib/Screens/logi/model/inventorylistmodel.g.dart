// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventorylistmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InventoryListModel _$$_InventoryListModelFromJson(
        Map<String, dynamic> json) =>
    _$_InventoryListModel(
      name: json['name'] as String?,
      id: json['id'] as int?,
      status: json['status'] as bool?,
      state: json['state'] as String?,
      email: json['email'] as String?,
      contact: json['contact'] == null
          ? null
          : Contact.fromJson(json['contact'] as Map<String, dynamic>),
      isInventoryExist: json['isInventoryExist'] as bool?,
      isActive: json['is_active'] as bool? ?? false,
      isOffline: json['is_offline'] as bool? ?? false,
      businessUnitCode: json['business_unit_code'] as String?,
      addressOne: json['address_one'] as String?,
      addressTwo: json['address_two'] as String?,
      landMark: json['land_mark'] as String?,
      companyLogo: json['company_logo'] as String?,
      userId: json['user_id'] as String?,
      businessAddress: json['business_addres'] as int?,
    );

Map<String, dynamic> _$$_InventoryListModelToJson(
        _$_InventoryListModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'status': instance.status,
      'state': instance.state,
      'email': instance.email,
      'contact': instance.contact,
      'isInventoryExist': instance.isInventoryExist,
      'is_active': instance.isActive,
      'is_offline': instance.isOffline,
      'business_unit_code': instance.businessUnitCode,
      'address_one': instance.addressOne,
      'address_two': instance.addressTwo,
      'land_mark': instance.landMark,
      'company_logo': instance.companyLogo,
      'user_id': instance.userId,
      'business_addres': instance.businessAddress,
    };

_$_Contact _$$_ContactFromJson(Map<String, dynamic> json) => _$_Contact(
      primary: json['primary'] as String?,
    );

Map<String, dynamic> _$$_ContactToJson(_$_Contact instance) =>
    <String, dynamic>{
      'primary': instance.primary,
    };
