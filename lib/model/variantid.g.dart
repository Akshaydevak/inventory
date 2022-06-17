// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variantid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VariantId _$$_VariantIdFromJson(Map<String, dynamic> json) => _$_VariantId(
      id: json['id'] as int?,
      code: json['code'] as String?,
      category: json['category'] as String?,
      uom: json['uom'] as String?,
      unit_cost: (json['unit_cost'] as num?)?.toDouble(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_VariantIdToJson(_$_VariantId instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'category': instance.category,
      'uom': instance.uom,
      'unit_cost': instance.unit_cost,
      'name': instance.name,
    };

_$_VendorCodeModel _$$_VendorCodeModelFromJson(Map<String, dynamic> json) =>
    _$_VendorCodeModel(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VendorCodeModelToJson(_$_VendorCodeModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      id: json['id'] as int?,
      userLoginId: json['user_login_id'] as int?,
      partnerCode: json['partner_code'] as String?,
      isOrganization: json['is_organization'] as bool?,
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'id': instance.id,
      'user_login_id': instance.userLoginId,
      'partner_code': instance.partnerCode,
      'is_organization': instance.isOrganization,
    };

_$_VariantDetailsModel _$$_VariantDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_VariantDetailsModel(
      partnerData: json['partner_data'] == null
          ? null
          : PartnerData.fromJson(json['partner_data'] as Map<String, dynamic>),
      partnerOrganizationdata:
          (json['partner_organization_data'] as List<dynamic>?)
              ?.map((e) =>
                  PartnerOrganizationData.fromJson(e as Map<String, dynamic>))
              .toList(),
      partnerAddressdata: (json['partner_address_data'] as List<dynamic>?)
          ?.map((e) => PartnerAddressdata.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VariantDetailsModelToJson(
        _$_VariantDetailsModel instance) =>
    <String, dynamic>{
      'partner_data': instance.partnerData,
      'partner_organization_data': instance.partnerOrganizationdata,
      'partner_address_data': instance.partnerAddressdata,
    };

_$_PartnerData _$$_PartnerDataFromJson(Map<String, dynamic> json) =>
    _$_PartnerData(
      id: json['id'] as int?,
      userLoginId: json['user_login_id'] as int?,
      partnerCode: json['partner_code'] as String?,
      isOrganization: json['is_organization'] as bool?,
    );

Map<String, dynamic> _$$_PartnerDataToJson(_$_PartnerData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_login_id': instance.userLoginId,
      'partner_code': instance.partnerCode,
      'is_organization': instance.isOrganization,
    };

_$_PartnerOrganizationData _$$_PartnerOrganizationDataFromJson(
        Map<String, dynamic> json) =>
    _$_PartnerOrganizationData(
      id: json['id'] as int?,
      partnerCode: json['partner_code'] as String?,
      email: json['email_1'] as String?,
      trnNumber: json['trn_number'] as String?,
      displayName: json['display_name'] as String?,
    );

Map<String, dynamic> _$$_PartnerOrganizationDataToJson(
        _$_PartnerOrganizationData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partner_code': instance.partnerCode,
      'email_1': instance.email,
      'trn_number': instance.trnNumber,
      'display_name': instance.displayName,
    };

_$_PartnerAddressdata _$$_PartnerAddressdataFromJson(
        Map<String, dynamic> json) =>
    _$_PartnerAddressdata(
      id: json['id'] as int?,
      addressType: json['address_type'] as String?,
    );

Map<String, dynamic> _$$_PartnerAddressdataToJson(
        _$_PartnerAddressdata instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address_type': instance.addressType,
    };
