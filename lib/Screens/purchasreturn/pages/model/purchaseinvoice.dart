


import 'package:freezed_annotation/freezed_annotation.dart';
part 'purchaseinvoice.freezed.dart';
part 'purchaseinvoice.g.dart';

@freezed
class PurchaseReturnGeneralRead with _$PurchaseReturnGeneralRead {
  const factory PurchaseReturnGeneralRead({
    final int? id,
    final double? foc,
    final double? discount,
    final double? vat,

    @JsonKey(name:"invoice_code") final String? invoiceCode,
    @JsonKey(name:"order_type") final String? orderType,

    @JsonKey(name:"inventory_id") final String? inventoryId,
    @JsonKey(name:"vendor_id") final String? vendorId,
    @JsonKey(name:"unit_cost") final double? unitCost,
    @JsonKey(name:"grand_total") final double? grandTotal,
    @JsonKey(name:"vatable_amount") final double? vatableAmount,
    @JsonKey(name:"excess_tax") final double? excessTax,
    @JsonKey(name:"actual_cost") final double? actualCost,
    @JsonKey(name:"vendor_trn_number") final String? vendorTrnNumber,
    @JsonKey(name:"vendor_mail_id") final String? vendorMailId,
    @JsonKey(name:"vendor_address") final String? vendorAddress,
    @JsonKey(name: "lines") final List<Liness>? lines,

  }) = _PurchaseReturnGeneralRead;
  factory PurchaseReturnGeneralRead.fromJson(Map<String, dynamic> json) =>
      _$PurchaseReturnGeneralReadFromJson(json);
}
@freezed
class Liness with _$Liness {
  const factory Liness({
    final int? id,
    final double? foc,
    final double? discount,
    final double? vat,

    @JsonKey(name:"invoice_line_code") final String? invoiceLineCode,
    @JsonKey(name:"purchase_invoice_line_code") final String? purchaseInvoiceLineCode,
    @JsonKey(name:"variant_id") final String? variantId,
    @JsonKey(name:"variant_name") final String? variantName,
    @JsonKey(name:"vendor_reference_code") final String? vendorRefrencecode,
    @JsonKey(name:"quantity") final int? totalQty,
    @JsonKey(name:"unit_cost") final double? unitCost,
    @JsonKey(name:"vatable_amount") final double? vatableAmount,
    @JsonKey(name:"excess_tax") final double? excessTax,
    @JsonKey(name:"actual_cost") final double? actualCost,
    @JsonKey(name:"grand_total") final double? grandTotal,
    @JsonKey(name:"barcode") final String? barcode,
    @JsonKey(name:"supplier_code") final String? supplierCode,
    @JsonKey(name:"purchase_uom") final String? purchaseUom,
    @JsonKey(name:"is_free",defaultValue: false) final bool? isFree,
    @JsonKey(name:"is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name:"is_invoiced",defaultValue: false) final bool? isInvoiced,





  }) = _Liness;
  factory Liness.fromJson(Map<String, dynamic> json) =>
      _$LinessFromJson(json);
}

@freezed
class ReturnGeneralRead with _$ReturnGeneralRead {
  const factory ReturnGeneralRead({
    final int? id,
    final String? note,
    final String? remarks,
    final double? foc,
    final double? discount,
    final double? vat,

    @JsonKey(name:"invoice_code") final String? invoiceCode,
    @JsonKey(name:"order_type") final String? orderType,

    @JsonKey(name:"inventory_id") final String? inventoryId,
    @JsonKey(name:"return_order_code") final String? returnOrderCode,
    @JsonKey(name:"return_order_date") final String? returnOrderDate,
    @JsonKey(name:"purchase_invoice_id") final String? purchaseInvoiceId,
    @JsonKey(name:"payment_status") final String? paymentStatus,
    @JsonKey(name:"payment_code") final String? paymentCode,
    @JsonKey(name:"return_order_status") final String? returnOrderStatus,
    @JsonKey(name:"return_invoice_status") final String? returnInvoiceStatus,
    @JsonKey(name:"vendor_code") final String? vendorCode,
    @JsonKey(name:"unit_cost") final double? unitCost,
    @JsonKey(name:"grand_total") final double? grandTotal,
    @JsonKey(name:"vatable_amount") final double? vatableAmount,
    @JsonKey(name:"excess_tax") final double? excessTax,
    @JsonKey(name:"actual_cost") final double? actualCost,
    @JsonKey(name:"vendor_trn_number") final String? vendorTrnNumber,
    @JsonKey(name:"vendor_mail_id") final String? vendorMailId,
    @JsonKey(name:"vendor_address") final String? vendorAddress,
    @JsonKey(name:"edited_by") final String? editedBy,

    @JsonKey(name: "order_lines") final List<Liness>? lines,

  }) = _ReturnGeneralRead;
  factory ReturnGeneralRead.fromJson(Map<String, dynamic> json) =>
      _$ReturnGeneralReadFromJson(json);
}