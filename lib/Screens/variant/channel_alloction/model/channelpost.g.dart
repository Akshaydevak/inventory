// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channelpost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChannelPostModel _$$_ChannelPostModelFromJson(Map<String, dynamic> json) =>
    _$_ChannelPostModel(
      priority: json['priority'] as int?,
      inventoryId: json['inventory_id'] as String?,
      selectionType: json['selection_type'] as String?,
      channelTypeCode: json['channel_type_code'] as String?,
      channelTypeName: json['channel_type_name'] as String?,
      channelTypeId: json['channel_type_id'] as String?,
      selectedData: (json['selected_data'] as List<dynamic>?)
          ?.map((e) => SelectedData.fromJson(e as Map<String, dynamic>))
          .toList(),
      channelDatas: (json['channel_data'] as List<dynamic>?)
          ?.map((e) => ChannelDatas.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChannelPostModelToJson(_$_ChannelPostModel instance) =>
    <String, dynamic>{
      'priority': instance.priority,
      'inventory_id': instance.inventoryId,
      'selection_type': instance.selectionType,
      'channel_type_code': instance.channelTypeCode,
      'channel_type_name': instance.channelTypeName,
      'channel_type_id': instance.channelTypeId,
      'selected_data': instance.selectedData,
      'channel_data': instance.channelDatas,
    };

_$_SelectedData _$$_SelectedDataFromJson(Map<String, dynamic> json) =>
    _$_SelectedData(
      id: json['id'] as int?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$_SelectedDataToJson(_$_SelectedData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
    };

_$_ChannelDatas _$$_ChannelDatasFromJson(Map<String, dynamic> json) =>
    _$_ChannelDatas(
      priority: json['priority'] as int?,
      channelId: json['channel_id'] as String?,
      channelCode: json['channel_code'] as String?,
      channelName: json['channel_name'] as String?,
      channelTypeName: json['channel_type_name'] as String?,
      channelStockType: json['channel_stock_type'] as String?,
    );

Map<String, dynamic> _$$_ChannelDatasToJson(_$_ChannelDatas instance) =>
    <String, dynamic>{
      'priority': instance.priority,
      'channel_id': instance.channelId,
      'channel_code': instance.channelCode,
      'channel_name': instance.channelName,
      'channel_type_name': instance.channelTypeName,
      'channel_stock_type': instance.channelStockType,
    };
