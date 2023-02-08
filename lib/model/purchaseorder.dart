import 'package:freezed_annotation/freezed_annotation.dart';
part 'purchaseorder.freezed.dart';
part  'purchaseorder.g.dart';


@freezed
class PurchaseOrder with _$PurchaseOrder {
  const factory PurchaseOrder({
    final int? id,
    @JsonKey(name:"order_code") final String? orderCode,
    @JsonKey(name:"return_order_code") final String? returnOrderCode,

  }) =_PurchaseOrder;
  factory PurchaseOrder.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrderFromJson(json);
}

@freezed
class salesOrderTypeModel with _$salesOrderTypeModel {
  const factory salesOrderTypeModel({
    final int? id,
    final String? name,
    final String? title,
    final String? code,
    final String? image,
    @JsonKey(name: "sales_order_code") final String? salesOrderCode,
    @JsonKey(name: "sales_return_order_code") final String? salesReturnOrderCode,
    @JsonKey(name: "sale_code") final String? saleCode,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name: "updatecheck", defaultValue: false) final bool? updatecheck,
  }) = _salesOrderTypeModel;
  factory salesOrderTypeModel.fromJson(Map<String, dynamic> json) =>
      _$salesOrderTypeModelFromJson(json);
}@freezed
class salesOrderNamePostModel with _$salesOrderNamePostModel {
  const factory salesOrderNamePostModel({
    final int? id,
    final String? type,

    @JsonKey(name: "search_element") final String? searchElemet,
    @JsonKey(name: "type_applying_on") final String? typeAllyingOn,
    @JsonKey(name: "segment_list") final List<String>? segmentList,
    @JsonKey(name: "inventory_id") final String? inventoryId,
  }) = _salesOrderNamePostModel;
  factory salesOrderNamePostModel.fromJson(Map<String, dynamic> json) =>
      _$salesOrderNamePostModelFromJson(json);
}
