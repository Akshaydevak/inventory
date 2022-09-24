import 'package:freezed_annotation/freezed_annotation.dart';
part 'variantframeworkpost.g.dart';
part 'variantframeworkpost.freezed.dart';

@freezed
class VariantFrameworkPostModel with _$VariantFrameworkPostModel {
  const factory VariantFrameworkPostModel({
    final String? name,
    final String? barcode,
    final String? description,

    @JsonKey(name: "category_id") final int? categoryId,
    @JsonKey(name: "variant_lines_list") final List<VariantLineListModel>? variantLineList,


    final bool? purchaseBlock,
  }) = _VariantFrameworkPostModel;
  factory VariantFrameworkPostModel.fromJson(Map<String, dynamic> json) =>
      _$VariantFrameworkPostModelFromJson(json);
}


@freezed
class VariantLineListModel with _$VariantLineListModel {
  const factory VariantLineListModel({


    @JsonKey(name: "attribute_id") final int? attributeId,
    final List<String>? values,


    final bool? purchaseBlock,
  }) = _VariantLineListModel;
  factory VariantLineListModel.fromJson(Map<String, dynamic> json) =>
      _$VariantLineListModelFromJson(json);
}
@freezed
class AttributeListModel with _$AttributeListModel {
  const factory AttributeListModel({
    final int? id,
    final String? code,



    @JsonKey(name: "attribute_type") final String? attributeType,
    @JsonKey(name: "attribute_name") final String? attributeName,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,

  }) = _AttributeListModel;
  factory AttributeListModel.fromJson(Map<String, dynamic> json) =>
      _$AttributeListModelFromJson(json);
}