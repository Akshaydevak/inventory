


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/purchaseinvoice.dart';
part 'postmodel.freezed.dart';
part 'postmodel.g.dart';

@freezed
class PurchaseReturnGeneralPost with _$PurchaseReturnGeneralPost {
  const factory PurchaseReturnGeneralPost({
    final int? id,
    final double? foc,
    final double? discount,
    final double? vat,
    final String? note,
    final String? remarks,

    @JsonKey(name:"invoice_code") final String? invoiceCode,
    @JsonKey(name:"order_type") final String? orderType,
    @JsonKey(name:"purchase_invoice_id") final String? purchaseInvoiceId,

    @JsonKey(name:"inventory_id") final String? inventoryId,
    @JsonKey(name:"vendor_code") final String? vendorCode,
    @JsonKey(name:"unit_cost") final double? unitCost,
    @JsonKey(name:"grand_total") final double? grandTotal,
    @JsonKey(name:"vatable_amount") final double? vatableAmount,
    @JsonKey(name:"excess_tax") final double? excessTax,
    @JsonKey(name:"actual_cost") final double? actualCost,
    @JsonKey(name:"vendor_trn_number") final String? vendorTrnNumber,
    @JsonKey(name:"vendor_mail_id") final String? vendorMailId,
    @JsonKey(name:"vendor_address") final String? vendorAddress,
    @JsonKey(name:"created_by") final String? createdBy,
    @JsonKey(name:"edited_by") final String? editedBy,


    @JsonKey(name: "order_lines") final List<Liness>? lines,

  }) = _PurchaseReturnGeneralPost;
  factory PurchaseReturnGeneralPost.fromJson(Map<String, dynamic> json) =>
      _$PurchaseReturnGeneralPostFromJson(json);
}
// @freezed
// class Liness with _$Liness {
//   const factory Liness({
//     final int? id,
//     final double? foc,
//     final double? discount,
//     final double? vat,
//
//     @JsonKey(name:"invoice_line_code") final String? invoiceLineCode,
//     @JsonKey(name:"variant_id") final String? variantId,
//     @JsonKey(name:"variant_name") final String? variantName,
//     @JsonKey(name:"vendor_reference_code") final String? vendorRefCode,
//     @JsonKey(name:"total_qty") final int? totalQty,
//     @JsonKey(name:"unit_cost") final double? unitCost,
//     @JsonKey(name:"vatable_amount") final double? vatableAmount,
//     @JsonKey(name:"excess_tax") final double? excessTax,
//     @JsonKey(name:"actual_cost") final double? actualCost,
//     @JsonKey(name:"grand_total") final double? grandTotal,
//     @JsonKey(name:"barcode") final String? barcode,
//     @JsonKey(name:"supplier_code") final String? supplierCode,
//     @JsonKey(name:"purchase_uom") final String? purchaseUom,
//     @JsonKey(name:"is_free") final bool? isFree,
//     @JsonKey(name:"is_active") final bool? isActive,
//
//
//
//
//
//   }) = _Liness;
//   factory Liness.fromJson(Map<String, dynamic> json) =>
//       _$LinessFromJson(json);
// }
