import 'package:freezed_annotation/freezed_annotation.dart';
part 'itemcreation.g.dart';
part 'itemcreation.freezed.dart';

@freezed
class ItemCreationModel with _$ItemCreationModel {
  const factory ItemCreationModel({
    final String? name,
    final String? barcode,
    final String? description,
    final int? image1,
    final int? image2,
    final int? image3,
    @JsonKey(name: "qr_code") final String? qrCode,
    @JsonKey(name: "material_code") final String? materialCode,
    @JsonKey(name: "uom_group_code") final String? uomGroupCode,
    @JsonKey(name: "uom_code") final String? uomCode,
    @JsonKey(name: "group_code") final String? groupCode,
    @JsonKey(name: "brand_code") final String? brandCode,
    @JsonKey(name: "static_group_code") final String? staticGroupCode,
    @JsonKey(name: "variant_framework_code") final String? variantFrameWorkCode,
    @JsonKey(name: "old_system_code") final String? oldsystemCode,
    @JsonKey(name: "search_name") final String? searchName,
    @JsonKey(name: "display_name") final String? displayName,
    @JsonKey(name: "item_cataloge1") final int? itemCatelog1,
    @JsonKey(name: "item_cataloge2") final int? itemCatelog2,
    @JsonKey(name: "item_cataloge3") final int? itemCatelog3,
    @JsonKey(name: "item_cataloge4") final int? itemCatelog4,
    @JsonKey(name: "item_cataloge5") final int? itemCatelog5,
    @JsonKey(name: "sales_block", defaultValue: false) final bool? salesBlock,
    @JsonKey(name: "purchase_block", defaultValue: false)
        final bool? purchaseBlock,
  }) = _ItemCreationModel;
  factory ItemCreationModel.fromJson(Map<String, dynamic> json) =>
      _$ItemCreationModelFromJson(json);
}
