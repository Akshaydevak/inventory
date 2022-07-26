import 'package:freezed_annotation/freezed_annotation.dart';
part 'purchase_current_stock_qty.freezed.dart';
part 'purchase_current_stock_qty.g.dart';

@freezed
class PurchaseCureentStockQty with _$PurchaseCureentStockQty {
  const factory PurchaseCureentStockQty({
    @JsonKey(name:"stock_qty") final int? StockQty,
    @JsonKey(name:"stock_code") final String? Stockcode,
    @JsonKey(name:"stock_id") final int? StockId,
  }) = _PurchaseCureentStockQty;
  factory PurchaseCureentStockQty.fromJson(Map<String, dynamic> json) =>
      _$PurchaseCureentStockQtyFromJson(json);
}
