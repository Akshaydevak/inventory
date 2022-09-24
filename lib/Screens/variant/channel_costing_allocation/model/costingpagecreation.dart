import 'package:freezed_annotation/freezed_annotation.dart';
part 'costingpagecreation.g.dart';
part 'costingpagecreation.freezed.dart';

@freezed
class CostingPageCreationPostModel with _$CostingPageCreationPostModel {
  const factory CostingPageCreationPostModel({


    final String? description,
    final int? id,

    @JsonKey(name: "pricing_pg_type") final List<String>? pricingPgtype,
    @JsonKey(name: "channel_id") final int? channelId,
    @JsonKey(name: "costing_method_id") final int? costingMethodId,
    @JsonKey(name: "pricing_group_id") final int? pricingGroupId,
    @JsonKey(name: "channel_stock_id") final int? channelStockId,
    @JsonKey(name: "channel_code") final String? channelCode,
    @JsonKey(name: "costing_method_name") final String? costingMethodName,
    @JsonKey(name: "costing_code") final String? costingCode,
    @JsonKey(name: "variant_id") final int? variantId,
    @JsonKey(name: "variant_code") final String? variantCode,
    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "created_by") final String? createdBy,
    @JsonKey(name: "pricing_gp_type") final String? pricingGpType,
    @JsonKey(name: "gp_percentage") final double? gpPercentage,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "selling_price") final double? sellingPrice,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,





  }) = _CostingPageCreationPostModel;
  factory CostingPageCreationPostModel.fromJson(Map<String, dynamic> json) =>
      _$CostingPageCreationPostModelFromJson(json);
}