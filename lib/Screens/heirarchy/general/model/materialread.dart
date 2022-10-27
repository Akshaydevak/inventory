import 'package:freezed_annotation/freezed_annotation.dart';

part 'materialread.g.dart';
part 'materialread.freezed.dart';

@freezed
class MaterialReadModel with _$MaterialReadModel {
  const factory MaterialReadModel({
    final String? description,
    final String? status,
    final String? updated,
    final String? code,
    final String? name,
    final String? image,
    final int? id,
    @JsonKey(name: "search_name") final String? searchNmae,
    @JsonKey(name: "display_name") final String? displayName,
    @JsonKey(name: "category_code") final String? categoryCode,
    @JsonKey(name: "category_name") final String? categoryName,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
  }) = _MaterialReadModel;
  factory MaterialReadModel.fromJson(Map<String, dynamic> json) =>
      _$MaterialReadModelFromJson(json);
}
