import 'package:freezed_annotation/freezed_annotation.dart';
part 'customidcreation.g.dart';
part 'customidcreation.freezed.dart';

@freezed
class CustomerIdCreation2Model with _$CustomerIdCreation2Model {
  const factory CustomerIdCreation2Model({

    final int? id,
    final String? email,
    final String? password,
    final String? mobile,
    final String? fname,
    final String? lname,
    final String? country,
    final String? gender,
    final String? designation,

    @JsonKey(name: "customer_usercode") final String? customerUserCode,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name: "is_delete",defaultValue: false) final bool? isDeleted,
    @JsonKey(name: "is_business_user",defaultValue: false) final bool? isBuisnessUser,
    @JsonKey(name: "acess_site",) final String? accessSite,
    @JsonKey(name: "business_user",) final String? buisnessUser,
    @JsonKey(name: "business_name",) final String? buisnessName,
    @JsonKey(name: "business_mode",) final String? buisnessMode,
    @JsonKey(name: "tax_id",) final String? taxId,
    @JsonKey(name: "login_id") final int? loginId,


  }) = _CustomerIdCreation2Model;
  factory CustomerIdCreation2Model.fromJson(Map<String, dynamic> json) =>
      _$CustomerIdCreation2ModelFromJson(json);
}
@freezed
class CustomerIdCreationUpdateModel with _$CustomerIdCreationUpdateModel {
  const factory CustomerIdCreationUpdateModel({

    final int? id,
    final String? email,
    final String? password,
    final String? mobile,
    final String? fullname,
    final String? lname,
    final String? country,
    final String? gender,


    @JsonKey(name: "business_unit") final String? buisnessUnit,
    @JsonKey(name: "tax_id") final String? taxId,



  }) = _CustomerIdCreationUpdateModel;
  factory CustomerIdCreationUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerIdCreationUpdateModelFromJson(json);
}