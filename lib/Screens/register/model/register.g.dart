// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterModel _$$_RegisterModelFromJson(Map<String, dynamic> json) =>
    _$_RegisterModel(
      email: json['email'] as String?,
      password: json['password'] as String?,
      mobile: json['mobile'] as String?,
      lname: json['lname'] as String?,
      fname: json['fname'] as String?,
      country: json['country'] as String?,
      gender: json['gender'] as String?,
      token: json['token'] as String?,
      loginid: json['login_id'] as int?,
      accesssite: json['accesssite'] as String?,
      legalEntiry: json['legal_entiry'] as String?,
      organizationType: json['organization_type'] as String?,
      organizationCode: json['organization_code'] as String?,
      isLoggedIn: json['isLoggedIn'] as bool? ?? false,
    );

Map<String, dynamic> _$$_RegisterModelToJson(_$_RegisterModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'mobile': instance.mobile,
      'lname': instance.lname,
      'fname': instance.fname,
      'country': instance.country,
      'gender': instance.gender,
      'token': instance.token,
      'login_id': instance.loginid,
      'accesssite': instance.accesssite,
      'legal_entiry': instance.legalEntiry,
      'organization_type': instance.organizationType,
      'organization_code': instance.organizationCode,
      'isLoggedIn': instance.isLoggedIn,
    };
