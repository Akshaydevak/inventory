import 'package:freezed_annotation/freezed_annotation.dart';

part 'frameworklistmodel.g.dart';
part 'frameworklistmodel.freezed.dart';

@freezed
class FrameWorkListModel with _$FrameWorkListModel {
  const factory FrameWorkListModel({

    final String? code,
    final String? description,
    final String? status,
    final String? name,
    final String? category,
    final int? id,
    @JsonKey(name: "category_code") final String? categoryCode,
    @JsonKey(name: "attributes") final List<AttributesModel>? attributes,

  }) = _FrameWorkListModel;
  factory FrameWorkListModel.fromJson(Map<String, dynamic> json) =>
      _$FrameWorkListModelFromJson(json);
}


@freezed
class AttributesModel with _$AttributesModel {
  const factory AttributesModel({


    final List<dynamic>?values,
    @JsonKey(name: "attribute_id") final int? attrributeId,
    @JsonKey(name: "attribute_name") final String? attrributeName,
    @JsonKey(name: "attribute_type") final String? attrributeType,


  }) = _AttributesModel;
  factory AttributesModel.fromJson(Map<String, dynamic> json) =>
      _$AttributesModelFromJson(json);
}



@freezed
class VariantFrameWorkPostModel with _$VariantFrameWorkPostModel {
  const factory VariantFrameWorkPostModel({
final String? name,
final String? description,
final String? code ,

    final List<dynamic>?values,
    @JsonKey(name: "category_id") final int? categoryId,
    @JsonKey(name: "category_name") final String? categoryName,
    @JsonKey(name: "variant_lines_list") final List<VariantLinesLiostModel>? variantListModel,
    @JsonKey(name: "lines") final List<VariantLinesLiostModel>? lines,
    @JsonKey(name: "attribute_type") final String? attrributeType,
    @JsonKey(name: "is_active") final bool? isActive,


  }) = _VariantFrameWorkPostModel;
  factory VariantFrameWorkPostModel.fromJson(Map<String, dynamic> json) =>
      _$VariantFrameWorkPostModelFromJson(json);
}@freezed
class VariantLinesLiostModel with _$VariantLinesLiostModel {
  const factory VariantLinesLiostModel({



    final List<String>?values,
    @JsonKey(name: "attribute_id") final int? attributeId,
    @JsonKey(name: "attribute_name") final String? name,
    @JsonKey(name: "attribute_type") final String? type,
    @JsonKey(name: "attribute_code") final String? attributeCode,
    @JsonKey(name: "is_active") final bool? isActive,



  }) = _VariantLinesLiostModel;
  factory VariantLinesLiostModel.fromJson(Map<String, dynamic> json) =>
      _$VariantLinesLiostModelFromJson(json);
}

