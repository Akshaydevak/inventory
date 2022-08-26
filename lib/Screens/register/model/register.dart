
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





    @JsonKey(name: "acess_site") final String? accesssite,
    @JsonKey(name: "created_code") final int? createdCode,
    @JsonKey(name: "isLoggedIn",defaultValue: false) final bool? isLoggedIn,

  }) = _RegisterModel;
  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);
}