import 'package:freezed_annotation/freezed_annotation.dart';
part 'purchaseordertype.freezed.dart';
part 'purchaseordertype.g.dart';

@freezed
class PurchaseOrdertype with _$PurchaseOrdertype {
  const factory PurchaseOrdertype({
    @JsonKey(name: "order_types") final List<String>? orderTypes,
    @JsonKey(name: "pricing_pg_type") final List<String>? pricingPgT,
    @JsonKey(name: "discount_type") final List<String>? discountType,
    @JsonKey(name: "order_modes") final List<String>? orderMode,
    @JsonKey(name: "virtual_stock_type") final List<String>? virtualStockType,

  }) = _PurchaseOrdertype;
  factory PurchaseOrdertype.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrdertypeFromJson(json);
}
