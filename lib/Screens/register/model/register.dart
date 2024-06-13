
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register.g.dart';
part 'register.freezed.dart';
@freezed
class RegisterModel with _$RegisterModel {
  const factory RegisterModel({
final String? email,
final String? password,
final String? mobile,
final String? lname,
final String? fname,
final String? country,
final String? gender,
final String? token,





    @JsonKey(name: "login_id") final int? loginid,
    @JsonKey(name: "accesssite") final String? accesssite,
    @JsonKey(name: "legal_entiry") final String? legalEntiry,
    @JsonKey(name: "employee_code") final String? employeeCode,
    @JsonKey(name: "organization_type") final String? organizationType,
    @JsonKey(name: "organization_code") final String? organizationCode,
    @JsonKey(name: "isLoggedIn",defaultValue: false) final bool? isLoggedIn,

  }) = _RegisterModel;
  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);
}

@freezed
class ipBlockModel with _$ipBlockModel{
  const factory ipBlockModel({
    final String? username,
    final String? password,
    final String? code,
    final String? email,
    final CaptchaReadModel? captcha,



  })=_ipBlockModel;
  factory ipBlockModel.fromJson(Map<String,dynamic>json)=>
      _$ipBlockModelFromJson(json);
}
@freezed
class CaptchaReadModel with _$CaptchaReadModel {
  const factory CaptchaReadModel({
    final int? id,

    @JsonKey(name: "captcha_id") final String? captchaId,
    @JsonKey(name: "captcha_image_base64") final String? captchaImageBase64,
    @JsonKey(name: "captcha_text") final String? captchaText,

  })=_CaptchaReadModel;

  factory CaptchaReadModel.fromJson(Map<String, dynamic>json)=>
      _$CaptchaReadModelFromJson(json);
}