
import 'package:freezed_annotation/freezed_annotation.dart';

part 'variant_read2_model.g.dart';
part 'variant_read2_model.freezed.dart';

@freezed
class VariantCreationRead2Model with _$VariantCreationRead2Model {
  const factory VariantCreationRead2Model({
    final int? id,
    final int? variantframework,

    final List< String>? values,
    @JsonKey(name: "attribute_name") final String? attributeName,
    @JsonKey(name: "attribute_id") final int? attributeId,
    @JsonKey(name: "attribute_type") final String? attributeType,
    @JsonKey(name: "attribute_code") final String? attributeCode,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
  }) = _VariantCreationRead2Model;
  factory VariantCreationRead2Model.fromJson(Map<String, dynamic> json) =>
      _$VariantCreationRead2ModelFromJson(json);
}
