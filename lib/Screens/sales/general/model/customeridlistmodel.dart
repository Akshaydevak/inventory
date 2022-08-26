import 'package:freezed_annotation/freezed_annotation.dart';
part 'customeridlistmodel.g.dart';
part 'customeridlistmodel.freezed.dart';

@freezed
class CustomerIdCreationModel with _$CustomerIdCreationModel {
  const factory CustomerIdCreationModel({

    final int? id,

    @JsonKey(name: "customer_usercode") final String? customerUserCode,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name: "is_delete",defaultValue: false) final bool? isDeleted,
    @JsonKey(name: "is_business_user",defaultValue: false) final bool? isBuisnessUser,
    @JsonKey(name: "login_id") final int? loginId,
    @JsonKey(name: "tax_id") final String? taxId,


  }) = _CustomerIdCreationModel;
  factory CustomerIdCreationModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerIdCreationModelFromJson(json);
}