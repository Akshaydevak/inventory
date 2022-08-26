import 'package:freezed_annotation/freezed_annotation.dart';

part 'creatematerial.g.dart';
part 'creatematerial.freezed.dart';

@freezed
class MaterialCreationtModel with _$MaterialCreationtModel {
  const factory MaterialCreationtModel({
    final String? description,
    final String? status,
    final String? name,
    final int? image,
    @JsonKey(name: "search_name") final String? searchNmae,
    @JsonKey(name: "display_name") final String? displayName,
    @JsonKey(name: "category_code") final String? categoryCode,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
  }) = _MaterialCreationtModel;
  factory MaterialCreationtModel.fromJson(Map<String, dynamic> json) =>
      _$MaterialCreationtModelFromJson(json);
}
