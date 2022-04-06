import 'package:freezed_annotation/freezed_annotation.dart';
part 'purchaseorder.freezed.dart';
part  'purchaseorder.g.dart';


@freezed
class PurchaseOrder with _$PurchaseOrder {
  const factory PurchaseOrder({
    final int? id,
    @JsonKey(name:"order_code") final String? orderCode,

  }) =_PurchaseOrder;
  factory PurchaseOrder.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrderFromJson(json);
}