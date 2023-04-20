import 'package:freezed_annotation/freezed_annotation.dart';
part 'purchasereturninvoicemodel.freezed.dart';
part 'purchasereturninvoicemodel.g.dart';

@freezed
class PurchaseInvoiceReadModel with _$PurchaseInvoiceReadModel {
  const factory PurchaseInvoiceReadModel({
    final int? id,
    final double? vat,
    final double? foc,
    final double? discount,
    final String? notes,
    final String? remarks,
    @JsonKey(name: "return_order_code") final String? returnOrderCode,
    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "return_order_status") final String? returnOrderStatus,
    @JsonKey(name: "purchase_invoice_id") final String? purchaseInvoiceId,
    @JsonKey(name: "vendor_code") final String? vendorCode,
    @JsonKey(name: "vendor_address") final String? vendorAddress,
    @JsonKey(name: "vendor_trn_number") final String? vendorTrnNumber,
    @JsonKey(name: "vendor_mail_id") final String? vendorMailId,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "actual_cost") final double? actualCost,
    @JsonKey(name: "grand_total") final double? grandTotal,
    @JsonKey(name: "vatable_amount") final double? vatableAmount,
    @JsonKey(name: "invoice_data") final InvoiceDatas? invoicedata,
    @JsonKey(name: "order_lines")   final List<Order>? orderLiness,

    // @JsonKey(name:"grand_total") final int?grandTotal,
  }) = _PurchaseInvoiceReadModel;
  factory PurchaseInvoiceReadModel.fromJson(Map<String, dynamic> json) =>
      _$PurchaseInvoiceReadModelFromJson(json);
}

@freezed
class Order with _$Order {
  const factory Order({
    final int? id,
    final double? vat,
    final double? foc,
    final double? discount,
    final String? barcode,

    @JsonKey(name: "return_order_line_code") final String? returnOrderLineCode,
    @JsonKey(name: "variant_id") final String? variantId,
    @JsonKey(name: "variant_name") final String? variantName,
    @JsonKey(name: "purchase_invoice_line_id") final String? purchaseInvoiceId,
    @JsonKey(name: "quantity") final int? totalQty,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "vatable_amount") final double? vatableAmount,
    @JsonKey(name: "grand_total") final double? grandTotal,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "actual_cost") final double? actualCost,
    @JsonKey(name: "is_invoiced",defaultValue: false) final bool? isInvoiced,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name: "is_free",defaultValue: false) final bool? isFree,
    @JsonKey(name: "updateCheck",defaultValue: false) final bool? updateCheck,
    @JsonKey(name: "created_at") final String? createdAt,
    @JsonKey(name: "supplier_code") final String? suppliercode,
    @JsonKey(name: "purchase_uom") final String? purchaseUom,
    @JsonKey(name: "invoice_id") final int? invoiceId,
    @JsonKey(name: "vendor_reference_code") final String? vendorRefCode,





    // @JsonKey(name:"grand_total") final int?grandTotal,
  }) = _Order;
  factory Order.fromJson(Map<String, dynamic> json) =>
      _$OrderFromJson(json);
}

@freezed
class InvoiceDatas with _$InvoiceDatas {
  const factory InvoiceDatas({
    final int? id,
    final double? vat,
    final String? notes,
    final String? remarks,
    final double? foc,
    final double? discount,
    @JsonKey(name: "return_order_code") final String? returnOrderCode,
    @JsonKey(name: "purchase_invoice_id") final String? purchaseInvoiceId,
    @JsonKey(name: "invoice_code") final String? invoiceCode,
    @JsonKey(name: "payment_status") final String? paymentStatus,
    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "invoiced_by") final String? invoicedBy,
    @JsonKey(name: "payment_code") final String? payementCode,
    @JsonKey(name: "payment_method") final String? paymentMethod,
    @JsonKey(name: "vendor_id") final String? vendorId,
    @JsonKey(name: "invoice_status") final String? invoiceStatus,
    @JsonKey(name: "invoiced_date") final String? invoicedDate,
    @JsonKey(name: "vendor_address") final String? vendorAddress,
    @JsonKey(name: "vendor_trn_number") final String? vendorTrnNumber,
    @JsonKey(name: "vendor_mail_id") final String? vendorMailId,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "return_order_status") final String? returnOrderStatus,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "actual_cost") final double? actualCost,
    @JsonKey(name: "grand_total") final double? grandTotal,
    @JsonKey(name: "vatable_amount") final double? vatableAmount,

    @JsonKey(name: "invoice_lines")   final List<Order>? orderLiness,

    // @JsonKey(name:"grand_total") final int?grandTotal,
  }) = _InvoiceDatas;
  factory InvoiceDatas.fromJson(Map<String, dynamic> json) =>
      _$InvoiceDatasFromJson(json);
}