// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creatematerial.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MaterialCreationtModel _$$_MaterialCreationtModelFromJson(
        Map<String, dynamic> json) =>
    _$_MaterialCreationtModel(
      description: json['description'] as String?,
      status: json['status'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      searchNmae: json['search_name'] as String?,
      displayName: json['display_name'] as String?,
      categoryCode: json['category_code'] as String?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_MaterialCreationtModelToJson(
        _$_MaterialCreationtModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'status': instance.status,
      'name': instance.name,
      'image': instance.image,
      'search_name': instance.searchNmae,
      'display_name': instance.displayName,
      'category_code': instance.categoryCode,
      'is_active': instance.isActive,
    };
