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
      isActive: json['is_active'] as bool? ?? false,
      isOffline: json['is_offline'] as bool? ?? false,
      businessUnitCode: json['business_unit_code'] as String?,
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
      'is_active': instance.isActive,
      'is_offline': instance.isOffline,
      'business_unit_code': instance.businessUnitCode,
      'user_id': instance.userId,
      'business_addres': instance.businessAddress,
    };