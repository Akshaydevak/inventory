import 'package:freezed_annotation/freezed_annotation.dart';

part 'variant_read_model.g.dart';
part 'variant_read_model.freezed.dart';

@freezed
class VariantCreationReadModel with _$VariantCreationReadModel {
  const factory VariantCreationReadModel({
    final int? id,
    final String? name,
    final String? code,
    @JsonKey(name: "variant_framework_code") final String? variantFrameWork,
    @JsonKey(name: "variant_framework_name") final String? variantFrameWorkName,
  }) = _VariantCreationReadModel;
  factory VariantCreationReadModel.fromJson(Map<String, dynamic> json) =>
      _$VariantCreationReadModelFromJson(json);
}
