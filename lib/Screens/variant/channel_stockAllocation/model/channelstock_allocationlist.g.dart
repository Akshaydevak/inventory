// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channelstock_allocationlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChanmneStockListModelModel _$$_ChanmneStockListModelModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChanmneStockListModelModel(
      id: json['id'] as int?,
      values:
          (json['values'] as List<dynamic>?)?.map((e) => e as String).toList(),
      channelTypecode: json['channel_type_code'] as String?,
      channelTypeId: json['channel_type_id'] as String?,
      channeltypeName: json['channel_type_name'] as String?,
    );

Map<String, dynamic> _$$_ChanmneStockListModelModelToJson(
        _$_ChanmneStockListModelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'values': instance.values,
      'channel_type_code': instance.channelTypecode,
      'channel_type_id': instance.channelTypeId,
      'channel_type_name': instance.channeltypeName,
    };
