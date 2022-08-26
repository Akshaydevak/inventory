import 'package:freezed_annotation/freezed_annotation.dart';

part 'baseuomcreation.g.dart';
part 'baseuomcreation.freezed.dart';

@freezed
class BaseUomCreationtModel with _$BaseUomCreationtModel {
  const factory BaseUomCreationtModel({
    final String? name,
    @JsonKey(name: "base_equivalent") final String? baseEquivalent,
    @JsonKey(name: "uomgroup_code") final String? uomGroupCode,
    @JsonKey(name: "short_name") final String? shortName,
    @JsonKey(name: "uom_code") final String? uomCode,
    @JsonKey(name: "standard_code") final String? standardCode,
    @JsonKey(name: "conversion_factor") final int? conversionFactor,
    @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
  }) = _BaseUomCreationtModel;
  factory BaseUomCreationtModel.fromJson(Map<String, dynamic> json) =>
      _$BaseUomCreationtModelFromJson(json);
}
