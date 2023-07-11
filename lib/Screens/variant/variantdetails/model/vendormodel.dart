import 'package:freezed_annotation/freezed_annotation.dart';
part 'vendormodel.g.dart';
part 'vendormodel.freezed.dart';

@freezed
class VendorDetailsModel with _$VendorDetailsModel {
  const factory VendorDetailsModel({
    final int? id,
    final Address? address,
    final String? email,


    @JsonKey(name: "code", ) final String? manuFactureuserCode,
    @JsonKey(name: "alternative_email", ) final String? alternativeEmail,
    @JsonKey(name: "tr_number", ) final int? trnNumber,
    @JsonKey(name: "name", ) final String? manuFactureName,
  }) = _VendorDetailsModel;
  factory VendorDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$VendorDetailsModelFromJson(json);
}
@freezed
class Address with _$Address {
  const factory Address({
    final int? id,
    final String? email,
    final String? phone,
    final String? place,



  }) = _Address;
  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}