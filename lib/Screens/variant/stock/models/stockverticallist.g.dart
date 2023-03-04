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

_$_channelAllocatesRead _$$_channelAllocatesReadFromJson(
        Map<String, dynamic> json) =>
    _$_channelAllocatesRead(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      channelTypeId: json['channel_type_id'] as int?,
      channelTypeCode: json['channel_type_code'] as String?,
    );

Map<String, dynamic> _$$_channelAllocatesReadToJson(
        _$_channelAllocatesRead instance) =>
    <String, dynamic>{
      'results': instance.results,
      'channel_type_id': instance.channelTypeId,
      'channel_type_code': instance.channelTypeCode,
    };

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      name: json['name'] as String?,
      description: json['description'] as String?,
      code: json['code'] as String?,
      id: json['id'] as int?,
      isActive: json['is_active'] as bool? ?? false,
      legalUnitType: json['legal_unit_type'] as int?,
      channelCode: json['channel_code'] as String?,
      channelStockType: json['channel_stock_type'] as String?,
      channelTypeCode: json['channel_type_code'] as String?,
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'code': instance.code,
      'id': instance.id,
      'is_active': instance.isActive,
      'legal_unit_type': instance.legalUnitType,
      'channel_code': instance.channelCode,
      'channel_stock_type': instance.channelStockType,
      'channel_type_code': instance.channelTypeCode,
    };
