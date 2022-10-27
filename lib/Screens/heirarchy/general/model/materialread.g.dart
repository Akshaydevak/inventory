// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'materialread.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MaterialReadModel _$$_MaterialReadModelFromJson(Map<String, dynamic> json) =>
    _$_MaterialReadModel(
      description: json['description'] as String?,
      status: json['status'] as String?,
      updated: json['updated'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      id: json['id'] as int?,
      searchNmae: json['search_name'] as String?,
      displayName: json['display_name'] as String?,
      categoryCode: json['category_code'] as String?,
      categoryName: json['category_name'] as String?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_MaterialReadModelToJson(
        _$_MaterialReadModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'status': instance.status,
      'updated': instance.updated,
      'code': instance.code,
      'name': instance.name,
      'image': instance.image,
      'id': instance.id,
      'search_name': instance.searchNmae,
      'display_name': instance.displayName,
      'category_code': instance.categoryCode,
      'category_name': instance.categoryName,
      'is_active': instance.isActive,
    };
