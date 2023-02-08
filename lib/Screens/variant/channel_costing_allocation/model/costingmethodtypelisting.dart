import 'package:freezed_annotation/freezed_annotation.dart';
part 'costingmethodtypelisting.g.dart';
part 'costingmethodtypelisting.freezed.dart';

@freezed
class CostingMetodTypePostModel with _$CostingMetodTypePostModel {
  const factory CostingMetodTypePostModel({


    final String? description,
    final int? id,

    @JsonKey(name: "type_code") final String? typeCode,
    @JsonKey(name: "type_name") final String? typeName,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,





  }) = _CostingMetodTypePostModel;
  factory CostingMetodTypePostModel.fromJson(Map<String, dynamic> json) =>
      _$CostingMetodTypePostModelFromJson(json);
}
@freezed
class CostingCreatePostModel with _$CostingCreatePostModel {
  const factory CostingCreatePostModel({


    final String? description,
    final int? id,

    @JsonKey(name: "method_type_id") final int? methodTypeId,
    @JsonKey(name: "costing_method_type_name") final String? costingMethodTypeName,
    @JsonKey(name: "method_code") final String? methodCode,
    @JsonKey(name: "method_name") final String? methodName,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,





  }) = _CostingCreatePostModel;
  factory CostingCreatePostModel.fromJson(Map<String, dynamic> json) =>
      _$CostingCreatePostModelFromJson(json);
}


@freezed
class PricingGroupListModel with _$PricingGroupListModel {
  const factory PricingGroupListModel({


    final String? description,
    final int? id,


    @JsonKey(name: "pricing_type_code") final String? pricingTypeCode,
    @JsonKey(name: "created_by") final String? createdBy,
    @JsonKey(name: "pricing_type_name") final String? pricingTypeName,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,





  }) = _PricingGroupListModel;
  factory PricingGroupListModel.fromJson(Map<String, dynamic> json) =>
      _$PricingGroupListModelFromJson(json);
}


@freezed
class PricingTypeListModel with _$PricingTypeListModel {
  const factory PricingTypeListModel({


    final String? description,



    @JsonKey(name: "pricing_group_code") final String? pricingCroupCode,
    @JsonKey(name: "pricing_type_id") final int? pricingTypeId,
    @JsonKey(name: "customer_group_code") final String? customerGrouCode,
    @JsonKey(name: "created_by") final String? createdBy,
    @JsonKey(name: "pricing_group_name") final String? pricingGroupName,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,





  }) = _PricingTypeListModel;
  factory PricingTypeListModel.fromJson(Map<String, dynamic> json) =>
      _$PricingTypeListModelFromJson(json);
}
@freezed
class StockPartitionModel with _$StockPartitionModel {
  const factory StockPartitionModel({


    final String? description,
    final String? name,



    @JsonKey(name: "partition_code") final String? partitionCode,
    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,






  }) = _StockPartitionModel;
  factory StockPartitionModel.fromJson(Map<String, dynamic> json) =>
      _$StockPartitionModelFromJson(json);
}



@freezed
class ListingChnanelTableModel with _$ListingChnanelTableModel {
  const factory ListingChnanelTableModel({


    final String? description,
    final int? id,



    @JsonKey(name: "gp_percentage") final double? gpPrecentage,
    @JsonKey(name: "selling_price") final double? sellingPrice,
    @JsonKey(name: "pricing_group_id") final int? pricingGroupId,
    @JsonKey(name: "pricing_type_name") final String? pricingTypeName,

    @JsonKey(name: "pricing_group_name") final String? pricingGroupName,
    @JsonKey(name: "pricing_gp_type") final String? pricingGPType,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,





  }) = _ListingChnanelTableModel;
  factory ListingChnanelTableModel.fromJson(Map<String, dynamic> json) =>
      _$ListingChnanelTableModelFromJson(json);
}