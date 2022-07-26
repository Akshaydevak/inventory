import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/inventory_creation_tab/inventory_read_model.dart';
part 'inventoryPostModel.freezed.dart';
part 'inventoryPostModel.g.dart';

@freezed
class InventoryPostModel with _$InventoryPostModel {
  const factory InventoryPostModel({
    final double? discount,
    final String? notes,
    final String? remarks,
    final double? foc,
    final double? vat,
    @JsonKey(name: "vatable_amount") final double? vatableAmount,
    @JsonKey(name: "purchase_order_code") final String? purchaseOrderCode,
    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "invoiced_by") final String? invoicedBy,
    @JsonKey(name: "grand_total") final double? grandtotal,
    @JsonKey(name: "actual_cost") final double? actualCost,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "invoice_lines") final List<Lines>? invoiceLines,

    // @JsonKey(name:"grand_total") final int?grandTotal,
  }) = _InventoryPostModel;
  factory InventoryPostModel.fromJson(Map<String, dynamic> json) =>
      _$InventoryPostModelFromJson(json);
}