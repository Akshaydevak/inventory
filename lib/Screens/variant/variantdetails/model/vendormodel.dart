import 'package:freezed_annotation/freezed_annotation.dart';
part 'vendormodel.g.dart';
part 'vendormodel.freezed.dart';

@freezed
class VendorDetailsModel with _$VendorDetailsModel {
  const factory VendorDetailsModel({
    final int? id,

    @JsonKey(name: "manufacturer_usercode", ) final String? manuFactureuserCode,
    @JsonKey(name: "manufacturer_name", ) final String? manuFactureName,
  }) = _VendorDetailsModel;
  factory VendorDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$VendorDetailsModelFromJson(json);
}