// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creationmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DivisionCreationtModel _$$_DivisionCreationtModelFromJson(
        Map<String, dynamic> json) =>
    _$_DivisionCreationtModel(
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      priority: json['priority'] as int?,
      minimumGp: (json['minimum_gp'] as num?)?.toDouble(),
      uomCode: (json['uom_code'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      categoryCode: (json['category_code'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      groupCode: (json['group_code'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isActive: json['is_active'] as bool? ?? false,
      isMixed: json['is_mixed'] as bool? ?? false,
    );

Map<String, dynamic> _$$_DivisionCreationtModelToJson(
        _$_DivisionCreationtModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'priority': instance.priority,
      'minimum_gp': instance.minimumGp,
      'uom_code': instance.uomCode,
      'category_code': instance.categoryCode,
      'group_code': instance.groupCode,
      'is_active': instance.isActive,
      'is_mixed': instance.isMixed,
    };

_$_DivisionReadModel _$$_DivisionReadModelFromJson(Map<String, dynamic> json) =>
    _$_DivisionReadModel(
      name: json['name'] as String?,
      description: json['description'] as String?,
      code: json['code'] as String?,
      image: json['image'] as String?,
      priority: json['priority'] as int?,
      id: json['id'] as int?,
      uom: (json['uom_name'] as List<dynamic>?)
          ?.map((e) => DataInclude.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: (json['category_name'] as List<dynamic>?)
          ?.map((e) => DataInclude.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupName: (json['group_name'] as List<dynamic>?)
          ?.map((e) => DataInclude.fromJson(e as Map<String, dynamic>))
          .toList(),
      isMixed: json['is_mixed'] as bool? ?? false,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_DivisionReadModelToJson(
        _$_DivisionReadModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'code': instance.code,
      'image': instance.image,
      'priority': instance.priority,
      'id': instance.id,
      'uom_name': instance.uom,
      'category_name': instance.category,
      'group_name': instance.groupName,
      'is_mixed': instance.isMixed,
      'is_active': instance.isActive,
    };

_$_DataInclude _$$_DataIncludeFromJson(Map<String, dynamic> json) =>
    _$_DataInclude(
      id: json['id'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      uomCode: json['uom_code'] as String?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_DataIncludeToJson(_$_DataInclude instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'uom_code': instance.uomCode,
      'is_active': instance.isActive,
    };
