// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categorymodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryCreationtModel _$$_CategoryCreationtModelFromJson(
        Map<String, dynamic> json) =>
    _$_CategoryCreationtModel(
      description: json['description'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      image: json['image'] as String?,
      alternativeName: json['alternative_name'] as String?,
      parentCode: json['parent_code'] as String?,
      divisionCode: json['division_code'] as String?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_CategoryCreationtModelToJson(
        _$_CategoryCreationtModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'name': instance.name,
      'code': instance.code,
      'image': instance.image,
      'alternative_name': instance.alternativeName,
      'parent_code': instance.parentCode,
      'division_code': instance.divisionCode,
      'is_active': instance.isActive,
    };
