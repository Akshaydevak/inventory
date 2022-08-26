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
    @JsonKey(name: "sales_order_code") final String? salesOrderCode,
    @JsonKey(name: "sales_return_order_code")
    final String? salesReturnOrderCode,
  }) = _salesOrderTypeModel;
  factory salesOrderTypeModel.fromJson(Map<String, dynamic> json) =>
      _$salesOrderTypeModelFromJson(json);
}
