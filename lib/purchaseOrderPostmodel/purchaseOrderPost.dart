import 'package:freezed_annotation/freezed_annotation.dart';
part 'purchaseOrderPost.freezed.dart';
part 'purchaseOrderPost.g.dart';

@freezed
class PurchaseOrderPost with _$PurchaseOrderPost {
  const factory PurchaseOrderPost({
    @JsonKey(name: "purchase_order_type") final String? purchaseOrderType,
    @JsonKey(name: "ordered_person") final String? orderedPerson,
    @JsonKey(name: "inventory_id") final String? iventoryId,
    @JsonKey(name: "vendor_id") final String? vendorId,
    @JsonKey(name: "vendor_trn_number") final String? vendorTrnNumber,
    @JsonKey(name: "vendor_mail_id") final String? vendorMailId,
    @JsonKey(name: "vendor_address") final String? vendorAddress,
    @JsonKey(name: "address_1") final String? address1,
    @JsonKey(name: "address_2") final String? address2,
    @JsonKey(name: "promised_receipt_date") final String? promisedReceiptdate,
    @JsonKey(name: "planned_receipt_date") final String? plannedRecieptDate,
    @JsonKey(name: "note") final String? note,
    @JsonKey(name: "remarks") final String? remarks,
    @JsonKey(name: "discount") final double? discount,
    @JsonKey(name: "foc") final double? foc,
    @JsonKey(name: "unit_cost") final double? unitcost,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "actual_cost") final double? actualCost,
    @JsonKey(name: "vat") final double? vat,
    @JsonKey(name: "grand_total") final double? grandTotal,
    @JsonKey(name: "vatable_amount") final double? variableAmount,
    @JsonKey(name: "created_by") final String? createdBy,
    @JsonKey(name: "edited_by") final String? edited_by,
    @JsonKey(name: "order_lines") final List<OrderLines>? orderLines,
    // @JsonKey(name:"grand_total") final int?grandTotal,
  }) = _PurchaseOrderPost;
  factory PurchaseOrderPost.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrderPostFromJson(json);
}

@freezed
class OrderLines with _$OrderLines {
  const factory OrderLines({
    final double? vat,
    final int? currentQty,
    final int? id,
    @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
    @JsonKey(name: "is_received", defaultValue: false) final bool? isRecieved,
    @JsonKey(name: "supplier_code") final String? supplierCode,
    @JsonKey(name: "is_free") final bool? isFree,
    @JsonKey(name: "is_invoiced") final bool? isInvoiced,
    @JsonKey(name: "variant_id") final String? variantId,
    @JsonKey(name: "vendor_reference_code") final String? vendorRefCode,
    @JsonKey(name: "variant_name") final String? variantName,
    @JsonKey(name: "barcode") final String? barcode,
    @JsonKey(name: "purchase_uom") final String? purchaseUom,
    @JsonKey(name: "cvd") final String? cvd,
    @JsonKey(name: "foc") final double? foc,
    @JsonKey(name: "discount") final double? discount,
    @JsonKey(name: "requested_qty") final int? requestedQty,
    @JsonKey(name: "minimum_qty") final int? minimumQty,
    @JsonKey(name: "maximum_qty") final int? maximumQty,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "grand_total") final double? grandTotal,
    @JsonKey(name: "vatable_amount") final double? vatableAmount,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "actual_cost") final double? actualCost,
    @JsonKey(name: "updatecheck", defaultValue: false) final bool? updateCheck,
  }) = _OrderLines;

  factory OrderLines.fromJson(Map<String, dynamic> json) =>
      _$OrderLinesFromJson(json);
}
