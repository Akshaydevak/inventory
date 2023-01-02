import 'package:freezed_annotation/freezed_annotation.dart';

part 'creation_custom_model.g.dart';
part 'creation_custom_model.freezed.dart';

@freezed
class CustomCreationtModel with _$CustomCreationtModel {
  const factory CustomCreationtModel({
    final double? vat,
    final double? height,
    final double? width,
    final double? length,
    final double? weight,
    @JsonKey(name: "mapping_place_id") final String? mappingPlaceId,
    @JsonKey(name: "minimum_gp") final double? minimumGp,
    @JsonKey(name: "average_gp") final double? averageGp,
    @JsonKey(name: "maximum_gp") final double? maximumGp,
    @JsonKey(name: "excess_tax") final double? excesstax,
    @JsonKey(name: "return_type") final String? returnType,
    @JsonKey(name: "shelf_type") final String? shelfType,
    @JsonKey(name: "weight_unit") final String? weightUnit,
    @JsonKey(name: "length_unit") final String? lengthUnit,
    @JsonKey(name: "width_unit") final String? widthUnit,
    @JsonKey(name: "height_unit") final String? heightUnit,
    @JsonKey(name: "return_time") final int? returnTime,
    @JsonKey(name: "weight_uom_id") final double? weightUomId,
    @JsonKey(name: "targeted_gp") final double? targetdGp,
    @JsonKey(name: "group_id") final int? groupId,
    @JsonKey(name: "shelf_time") final int? shelfTime,
    @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
    @JsonKey(name: "have_gift_option", defaultValue: false) final bool? haveGiftOption,
    @JsonKey(name: "have_wrap_option", defaultValue: false) final bool? haveWrapOption,
    @JsonKey(name: "need_multiple_integration", defaultValue: false) final bool? needMultipleIntgration,
  }) = _CustomCreationtModel;
  factory CustomCreationtModel.fromJson(Map<String, dynamic> json) =>
      _$CustomCreationtModelFromJson(json);
}

@freezed
class ReadCustomModel with _$ReadCustomModel {
  const factory ReadCustomModel({
    @JsonKey(name: "return_type") final List<String>? returnType,
    @JsonKey(name: "group_custom_data") final GroupCustomData? groupCustomdata,
  }) = _ReadCustomModel;
  factory ReadCustomModel.fromJson(Map<String, dynamic> json) =>
      _$ReadCustomModelFromJson(json);
}
@freezed
class ReadMessuremnetModel with _$ReadMessuremnetModel {
  const factory ReadMessuremnetModel({
    @JsonKey(name: "length_unit") final List<String>? lengthUnit,
    @JsonKey(name: "width_unit") final List<String>? widthUnit,
    @JsonKey(name: "height_unit") final List<String>? heightUnit,
    @JsonKey(name: "weight_unit") final List<String>? weightUnit,

  }) = _ReadMessuremnetModel;
  factory ReadMessuremnetModel.fromJson(Map<String, dynamic> json) =>
      _$ReadMessuremnetModelFromJson(json);
}

@freezed
class GroupCustomData with _$GroupCustomData {
  const factory GroupCustomData({
    final int? id,
    final double? vat,
    final String? code,
    final Dimension? dimension,
    @JsonKey(name: "min_gp") final double? minGp,
    @JsonKey(name: "avrg_gp") final double? avrgGp,
    @JsonKey(name: "max_gp") final double? maxGp,
    @JsonKey(name: "targeted_gp") final double? targetedGp,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "return_type") final String? returntype,
    @JsonKey(name: "shelf_type") final String? shelpType,
    @JsonKey(name: "shelf_time") final int? shelfTime,
    @JsonKey(name: "group_name") final String? groupNmae,
    @JsonKey(name: "return_time") final int? returnTime,
    @JsonKey(name: "weight_uom_id") final int? weightUomId,
    @JsonKey(name: "is_active") final bool? isActive,
    @JsonKey(name: "need_multiple_integration") final bool? needMultipleIntegration,
    @JsonKey(name: "have_wrap_option") final bool? haveWrapOption,
    @JsonKey(name: "have_gift_option") final bool? haveGiftOption,
    @JsonKey(name: "group_id") final int? groupId,
  }) = _GroupCustomData;
  factory GroupCustomData.fromJson(Map<String, dynamic> json) =>
      _$GroupCustomDataFromJson(json);
}

@freezed
class Dimension with _$Dimension {
  const factory Dimension({
    final double? width,
    final double? weight,
    final double? length,
    final double? height,
  }) = _Dimension;
  factory Dimension.fromJson(Map<String, dynamic> json) =>
      _$DimensionFromJson(json);
}
