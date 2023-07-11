// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendormodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VendorDetailsModel _$$_VendorDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_VendorDetailsModel(
      id: json['id'] as int?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      email: json['email'] as String?,
      manuFactureuserCode: json['code'] as String?,
      alternativeEmail: json['alternative_email'] as String?,
      trnNumber: json['tr_number'] as int?,
      manuFactureName: json['name'] as String?,
    );

Map<String, dynamic> _$$_VendorDetailsModelToJson(
        _$_VendorDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'email': instance.email,
      'code': instance.manuFactureuserCode,
      'alternative_email': instance.alternativeEmail,
      'tr_number': instance.trnNumber,
      'name': instance.manuFactureName,
    };

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      id: json['id'] as int?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      place: json['place'] as String?,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phone': instance.phone,
      'place': instance.place,
    };
