import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:inventory/Screens/purchasreturn/pages/model/purchaseinvoice.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/purchasereturninvoicemodel.dart';
part 'invoicepost.g.dart';
part 'invoicepost.freezed.dart';

@freezed
class PurchaseReturnInvoicePostModel with _$PurchaseReturnInvoicePostModel {
  const factory PurchaseReturnInvoicePostModel({

    final double? foc,
    final double? discount,
    final double? vat,
    final String? notes,
    final String? remarks,
    @JsonKey(name: "purchase_invoice_id") final String? purchaseInvoiceId,
    @JsonKey(name: "return_order_code") final String? returnOrderCode,
    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "invoiced_by") final String? invoicedBy,
    @JsonKey(name: "vendor_id") final String? venderId,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "grand_total") final double? grandTotal,
    @JsonKey(name: "vatable_amount") final double? vatableAmount,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "actual_cost") final double? actualCost,
    @JsonKey(name: "vendor_trn_number") final String? vendorTrnNumber,
    // @JsonKey(name: "purchase_invoice_line_id") final String? purchaseInvoiceLineId,

    @JsonKey(name: "invoice_lines") final List<Order>? lines,
  }) = _PurchaseReturnInvoicePostModel;
  factory PurchaseReturnInvoicePostModel.fromJson(Map<String, dynamic> json) =>
      _$PurchaseReturnInvoicePostModelFromJson(json);
}
