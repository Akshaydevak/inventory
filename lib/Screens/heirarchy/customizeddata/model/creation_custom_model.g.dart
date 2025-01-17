// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creation_custom_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomCreationtModel _$$_CustomCreationtModelFromJson(
        Map<String, dynamic> json) =>
    _$_CustomCreationtModel(
      vat: (json['vat'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      length: (json['length'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      mappingPlaceId: json['mapping_place_id'] as String?,
      minimumGp: (json['minimum_gp'] as num?)?.toDouble(),
      averageGp: (json['average_gp'] as num?)?.toDouble(),
      maximumGp: (json['maximum_gp'] as num?)?.toDouble(),
      excesstax: (json['excess_tax'] as num?)?.toDouble(),
      returnType: json['return_type'] as String?,
      shelfType: json['shelf_type'] as String?,
      weightUnit: json['weight_unit'] as String?,
      lengthUnit: json['length_unit'] as String?,
      widthUnit: json['width_unit'] as String?,
      heightUnit: json['height_unit'] as String?,
      returnTime: json['return_time'] as int?,
      weightUomId: (json['weight_uom_id'] as num?)?.toDouble(),
      targetdGp: (json['targeted_gp'] as num?)?.toDouble(),
      groupId: json['group_id'] as int?,
      shelfTime: json['shelf_time'] as int?,
      isActive: json['is_active'] as bool? ?? false,
      haveGiftOption: json['have_gift_option'] as bool? ?? false,
      haveWrapOption: json['have_wrap_option'] as bool? ?? false,
      needMultipleIntgration:
          json['need_multiple_integration'] as bool? ?? false,
    );

Map<String, dynamic> _$$_CustomCreationtModelToJson(
        _$_CustomCreationtModel instance) =>
    <String, dynamic>{
      'vat': instance.vat,
      'height': instance.height,
      'width': instance.width,
      'length': instance.length,
      'weight': instance.weight,
      'mapping_place_id': instance.mappingPlaceId,
      'minimum_gp': instance.minimumGp,
      'average_gp': instance.averageGp,
      'maximum_gp': instance.maximumGp,
      'excess_tax': instance.excesstax,
      'return_type': instance.returnType,
      'shelf_type': instance.shelfType,
      'weight_unit': instance.weightUnit,
      'length_unit': instance.lengthUnit,
      'width_unit': instance.widthUnit,
      'height_unit': instance.heightUnit,
      'return_time': instance.returnTime,
      'weight_uom_id': instance.weightUomId,
      'targeted_gp': instance.targetdGp,
      'group_id': instance.groupId,
      'shelf_time': instance.shelfTime,
      'is_active': instance.isActive,
      'have_gift_option': instance.haveGiftOption,
      'have_wrap_option': instance.haveWrapOption,
      'need_multiple_integration': instance.needMultipleIntgration,
    };

_$_ReadCustomModel _$$_ReadCustomModelFromJson(Map<String, dynamic> json) =>
    _$_ReadCustomModel(
      returnType: (json['return_type'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      groupCustomdata: json['group_custom_data'] == null
          ? null
          : GroupCustomData.fromJson(
              json['group_custom_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReadCustomModelToJson(_$_ReadCustomModel instance) =>
    <String, dynamic>{
      'return_type': instance.returnType,
      'group_custom_data': instance.groupCustomdata,
    };

_$_ReadMessuremnetModel _$$_ReadMessuremnetModelFromJson(
        Map<String, dynamic> json) =>
    _$_ReadMessuremnetModel(
      lengthUnit: (json['length_unit'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      widthUnit: (json['width_unit'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      heightUnit: (json['height_unit'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      weightUnit: (json['weight_unit'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ReadMessuremnetModelToJson(
        _$_ReadMessuremnetModel instance) =>
    <String, dynamic>{
      'length_unit': instance.lengthUnit,
      'width_unit': instance.widthUnit,
      'height_unit': instance.heightUnit,
      'weight_unit': instance.weightUnit,
    };

_$_GroupCustomData _$$_GroupCustomDataFromJson(Map<String, dynamic> json) =>
    _$_GroupCustomData(
      id: json['id'] as int?,
      vat: (json['vat'] as num?)?.toDouble(),
      code: json['code'] as String?,
      dimension: json['dimension'] == null
          ? null
          : Dimension.fromJson(json['dimension'] as Map<String, dynamic>),
      minGp: (json['min_gp'] as num?)?.toDouble(),
      avrgGp: (json['avrg_gp'] as num?)?.toDouble(),
      maxGp: (json['max_gp'] as num?)?.toDouble(),
      targetedGp: (json['targeted_gp'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      returntype: json['return_type'] as String?,
      shelpType: json['shelf_type'] as String?,
      shelfTime: json['shelf_time'] as int?,
      groupNmae: json['group_name'] as String?,
      returnTime: json['return_time'] as int?,
      weightUomId: json['weight_uom_id'] as int?,
      isActive: json['is_active'] as bool?,
      needMultipleIntegration: json['need_multiple_integration'] as bool?,
      haveWrapOption: json['have_wrap_option'] as bool?,
      haveGiftOption: json['have_gift_option'] as bool?,
      groupId: json['group_id'] as int?,
    );

Map<String, dynamic> _$$_GroupCustomDataToJson(_$_GroupCustomData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vat': instance.vat,
      'code': instance.code,
      'dimension': instance.dimension,
      'min_gp': instance.minGp,
      'avrg_gp': instance.avrgGp,
      'max_gp': instance.maxGp,
      'targeted_gp': instance.targetedGp,
      'excess_tax': instance.excessTax,
      'return_type': instance.returntype,
      'shelf_type': instance.shelpType,
      'shelf_time': instance.shelfTime,
      'group_name': instance.groupNmae,
      'return_time': instance.returnTime,
      'weight_uom_id': instance.weightUomId,
      'is_active': instance.isActive,
      'need_multiple_integration': instance.needMultipleIntegration,
      'have_wrap_option': instance.haveWrapOption,
      'have_gift_option': instance.haveGiftOption,
      'group_id': instance.groupId,
    };

_$_Dimension _$$_DimensionFromJson(Map<String, dynamic> json) => _$_Dimension(
      width: (json['width'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      length: (json['length'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DimensionToJson(_$_Dimension instance) =>
    <String, dynamic>{
      'width': instance.width,
      'weight': instance.weight,
      'length': instance.length,
      'height': instance.height,
    };
