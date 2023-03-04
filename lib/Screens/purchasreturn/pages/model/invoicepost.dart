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


@freezed
class PurchasePaymentModel with _$PurchasePaymentModel {
  const factory PurchasePaymentModel({

    final String? tittle,
    final String? notes,
    final String? code,


  }) = _PurchasePaymentModel;
  factory PurchasePaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PurchasePaymentModelFromJson(json);
}


@freezed
class PurchasePaymentPostModel with _$PurchasePaymentPostModel {
  const factory PurchasePaymentPostModel({


    final String? contact,
    final String? status,
    @JsonKey(name: "customer_code") final String? customerCode,
    @JsonKey(name: "process_id") final int? processId,
    @JsonKey(name: "method_code") final String? methodCode,
    @JsonKey(name: "order_id") final String? orderId,
    @JsonKey(name: "transaction_code") final String? tranSactionCode,
    @JsonKey(name: "customer_name") final String? customerName,
    @JsonKey(name: "total_amount") final double? totalAmount,


  }) = _PurchasePaymentPostModel;
  factory PurchasePaymentPostModel.fromJson(Map<String, dynamic> json) =>
      _$PurchasePaymentPostModelFromJson(json);
}
