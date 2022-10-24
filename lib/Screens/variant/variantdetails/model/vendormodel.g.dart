// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendormodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VendorDetailsModel _$$_VendorDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_VendorDetailsModel(
      id: json['id'] as int?,
      manuFactureuserCode: json['manufacturer_usercode'] as String?,
      manuFactureName: json['manufacturer_name'] as String?,
    );

Map<String, dynamic> _$$_VendorDetailsModelToJson(
        _$_VendorDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'manufacturer_usercode': instance.manuFactureuserCode,
      'manufacturer_name': instance.manuFactureName,
    };
