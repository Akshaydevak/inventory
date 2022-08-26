// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categoryread.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryReadModel _$$_CategoryReadModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryReadModel(
      description: json['description'] as String?,
      code: json['code'] as String?,
      status: json['status'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      id: json['id'] as int?,
      alternativename: json['alternative_name'] as String?,
      parentCode: json['parent_code'] as String?,
      divisionCode: json['division_code'] as String?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_CategoryReadModelToJson(
        _$_CategoryReadModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'code': instance.code,
      'status': instance.status,
      'name': instance.name,
      'image': instance.image,
      'id': instance.id,
      'alternative_name': instance.alternativename,
      'parent_code': instance.parentCode,
      'division_code': instance.divisionCode,
      'is_active': instance.isActive,
    };
