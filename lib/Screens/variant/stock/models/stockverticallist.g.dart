// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stockverticallist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StockVerticalReadModel _$$_StockVerticalReadModelFromJson(
        Map<String, dynamic> json) =>
    _$_StockVerticalReadModel(
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_StockVerticalReadModelToJson(
        _$_StockVerticalReadModel instance) =>
    <String, dynamic>{
      'category': instance.category,
      'name': instance.name,
    };

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      name: json['name'] as String?,
      description: json['description'] as String?,
      id: json['id'] as int?,
      isActive: json['is_active'] as bool? ?? false,
      legalUnitType: json['legal_unit_type'] as String?,
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'id': instance.id,
      'is_active': instance.isActive,
      'legal_unit_type': instance.legalUnitType,
    };
