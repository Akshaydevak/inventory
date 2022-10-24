// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChannelTypeModel _$$_ChannelTypeModelFromJson(Map<String, dynamic> json) =>
    _$_ChannelTypeModel(
      id: json['id'] as int?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      barcode: json['barcode'] == null
          ? null
          : Barcode.fromJson(json['barcode'] as Map<String, dynamic>),
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ChannelTypeModelToJson(_$_ChannelTypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'barcode': instance.barcode,
      'is_active': instance.isActive,
    };
