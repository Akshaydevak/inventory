import 'package:freezed_annotation/freezed_annotation.dart';
part 'listbrand.g.dart';
part 'listbrand.freezed.dart';

@freezed
class BrandListModel with _$BrandListModel {
  const factory BrandListModel({
    final int? id,
    final String? name,
    final String? code,
    @JsonKey(name: "standard_code") final String? standardCode,
    @JsonKey(name: "variant_framework_name") final String? variantFrameWorkName,
    @JsonKey(name: "uom_code") final String? uomCode,
  }) = _BrandListModel;
  factory BrandListModel.fromJson(Map<String, dynamic> json) =>
      _$BrandListModelFromJson(json);
}
