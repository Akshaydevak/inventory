// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customidcreation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerIdCreation2Model _$$_CustomerIdCreation2ModelFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerIdCreation2Model(
      id: json['id'] as int?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      mobile: json['mobile'] as String?,
      fname: json['fname'] as String?,
      lname: json['lname'] as String?,
      country: json['country'] as String?,
      gender: json['gender'] as String?,
      designation: json['designation'] as String?,
      customerUserCode: json['customer_usercode'] as String?,
      isActive: json['is_active'] as bool? ?? false,
      isDeleted: json['is_delete'] as bool? ?? false,
      isBuisnessUser: json['is_business_user'] as bool? ?? false,
      accessSite: json['acess_site'] as String?,
      buisnessUser: json['business_user'] as String?,
      buisnessName: json['business_name'] as String?,
      buisnessMode: json['business_mode'] as String?,
      taxId: json['tax_id'] as String?,
      loginId: json['login_id'] as int?,
    );

Map<String, dynamic> _$$_CustomerIdCreation2ModelToJson(
        _$_CustomerIdCreation2Model instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'password': instance.password,
      'mobile': instance.mobile,
      'fname': instance.fname,
      'lname': instance.lname,
      'country': instance.country,
      'gender': instance.gender,
      'designation': instance.designation,
      'customer_usercode': instance.customerUserCode,
      'is_active': instance.isActive,
      'is_delete': instance.isDeleted,
      'is_business_user': instance.isBuisnessUser,
      'acess_site': instance.accessSite,
      'business_user': instance.buisnessUser,
      'business_name': instance.buisnessName,
      'business_mode': instance.buisnessMode,
      'tax_id': instance.taxId,
      'login_id': instance.loginId,
    };
