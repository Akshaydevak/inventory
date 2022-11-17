import 'package:freezed_annotation/freezed_annotation.dart';

part 'creationmodel.g.dart';
part 'creationmodel.freezed.dart';

@freezed
class DivisionCreationtModel with _$DivisionCreationtModel {
  const factory DivisionCreationtModel({
    final String? name,
    final String? description,
    final String? image,
    final int? priority,
    @JsonKey(name: "minimum_gp") final double? minimumGp,
    @JsonKey(name: "uom_code") final List<String>? uomCode,
    @JsonKey(name: "category_code") final List<String>? categoryCode,
    @JsonKey(name: "group_code") final List<String>? groupCode,
    @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
    @JsonKey(name: "is_mixed", defaultValue: false) final bool? isMixed,
  }) = _DivisionCreationtModel;
  factory DivisionCreationtModel.fromJson(Map<String, dynamic> json) =>
      _$DivisionCreationtModelFromJson(json);
}
@freezed
class DivisionReadModel with _$DivisionReadModel {
  const factory DivisionReadModel({
    final String? name,
    final String? description,
    final String? code,
    final String? image,
    final int? priority,
    final int? id,
    @JsonKey(name: "uom_name") final List<DataInclude>? uom,
    @JsonKey(name: "category_name") final List<DataInclude>? category,
    @JsonKey(name: "group_name") final List<DataInclude>? groupName,
    @JsonKey(name: "is_mixed",defaultValue: false) final bool? isMixed,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,

  }) = _DivisionReadModel;
  factory DivisionReadModel.fromJson(Map<String, dynamic> json) =>
      _$DivisionReadModelFromJson(json);

}

@freezed
class DataInclude with _$DataInclude{
  const factory DataInclude({
    final int?  id,
    final String? name,

    final String? code,
    @JsonKey(name: "uom_code") final String? uomCode,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,



  }) = _DataInclude;
  factory DataInclude.fromJson(Map<String, dynamic> json) =>
      _$DataIncludeFromJson(json);
}
