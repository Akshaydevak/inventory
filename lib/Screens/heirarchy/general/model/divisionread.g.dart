// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'divisionread.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DevisionReadModel _$$_DevisionReadModelFromJson(Map<String, dynamic> json) =>
    _$_DevisionReadModel(
      id: json['id'] as int?,
      description: json['description'] as String?,
      status: json['status'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      code: json['code'] as String?,
      searchNmae: json['search_name'] as String?,
      displayName: json['display_name'] as String?,
      shortName: json['short_name'] as String?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_DevisionReadModelToJson(
        _$_DevisionReadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'status': instance.status,
      'name': instance.name,
      'image': instance.image,
      'code': instance.code,
      'search_name': instance.searchNmae,
      'display_name': instance.displayName,
      'short_name': instance.shortName,
      'is_active': instance.isActive,
    };
