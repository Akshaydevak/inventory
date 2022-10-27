import 'package:freezed_annotation/freezed_annotation.dart';

part 'categoryread.g.dart';
part 'categoryread.freezed.dart';

@freezed
class CategoryReadModel with _$CategoryReadModel {
  const factory CategoryReadModel({
    final String? description,
    final String? code,
    final String? status,
    final String? name,
    final String? image,
    final int? id,
    @JsonKey(name: "alternative_name") final String? alternativename,
    @JsonKey(name: "division_name") final String? divisionName,
    @JsonKey(name: "parent_name") final String? parentname,
    @JsonKey(name: "parent_code") final String? parentCode,
    @JsonKey(name: "division_code") final String? divisionCode,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
  }) = _CategoryReadModel;
  factory CategoryReadModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryReadModelFromJson(json);
}
