import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventorylistmodel.g.dart';
part 'inventorylistmodel.freezed.dart';

@freezed
class InventoryListModel with _$InventoryListModel {
  const factory InventoryListModel({
    final String? name,
    final int? id,

    final bool? status,
    final String? state,
    final String? email,
    final Contact? contact,
    final bool? isInventoryExist,
    @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
    @JsonKey(name: "is_offline", defaultValue: false) final bool? isOffline,
    @JsonKey(name: "business_unit_code", ) final String? businessUnitCode,
    @JsonKey(name: "address_one" ) final String? addressOne,
    @JsonKey(name: "address_two" ) final String? addressTwo,
    @JsonKey(name: "land_mark" ) final String? landMark,
    @JsonKey(name: "company_logo" ) final String? companyLogo,
    @JsonKey(name: "store_logo" ) final String? storeLogo,
    @JsonKey(name: "user_id", ) final String? userId,
    @JsonKey(name: "business_addres", ) final int? businessAddress,
  }) = _InventoryListModel;
  factory InventoryListModel.fromJson(Map<String, dynamic> json) =>
      _$InventoryListModelFromJson(json);
}



@freezed
class Contact with _$Contact {
  const factory Contact({
    final String? primary,


  }) = _Contact;
  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}