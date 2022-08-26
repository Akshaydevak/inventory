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
      accesssite: json['acess_site'] as String?,
      createdCode: json['created_code'] as int?,
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
      'acess_site': instance.accesssite,
      'created_code': instance.createdCode,
      'isLoggedIn': instance.isLoggedIn,
    };
