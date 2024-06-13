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
      employeeCode: json['employee_code'] as String?,
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
      'employee_code': instance.employeeCode,
      'organization_type': instance.organizationType,
      'organization_code': instance.organizationCode,
      'isLoggedIn': instance.isLoggedIn,
    };

_$_ipBlockModel _$$_ipBlockModelFromJson(Map<String, dynamic> json) =>
    _$_ipBlockModel(
      username: json['username'] as String?,
      password: json['password'] as String?,
      code: json['code'] as String?,
      email: json['email'] as String?,
      captcha: json['captcha'] == null
          ? null
          : CaptchaReadModel.fromJson(json['captcha'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ipBlockModelToJson(_$_ipBlockModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'code': instance.code,
      'email': instance.email,
      'captcha': instance.captcha,
    };

_$_CaptchaReadModel _$$_CaptchaReadModelFromJson(Map<String, dynamic> json) =>
    _$_CaptchaReadModel(
      id: json['id'] as int?,
      captchaId: json['captcha_id'] as String?,
      captchaImageBase64: json['captcha_image_base64'] as String?,
      captchaText: json['captcha_text'] as String?,
    );

Map<String, dynamic> _$$_CaptchaReadModelToJson(_$_CaptchaReadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'captcha_id': instance.captchaId,
      'captcha_image_base64': instance.captchaImageBase64,
      'captcha_text': instance.captchaText,
    };
