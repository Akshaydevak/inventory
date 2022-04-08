import 'package:freezed_annotation/freezed_annotation.dart';
part 'purchaseOrderPost.freezed.dart';
part 'purchaseOrderPost.g.dart';

@freezed
class PurchaseOrderPost with _$PurchaseOrderPost {
  const factory PurchaseOrderPost({
    @JsonKey(name: "purchase_order_type") final String? purchaseOrderType,
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
    @JsonKey(name: "discount") final int? discount,
    @JsonKey(name: "foc") final int? foc,
    @JsonKey(name: "unit_cost") final int? unitcost,
    @JsonKey(name: "excess_tax") final int? excessTax,
    @JsonKey(name: "actual_cost") final int? actualCost,
    @JsonKey(name: "vat") final int? vat,
    @JsonKey(name: "grand_total") final int? grandTotal,
    @JsonKey(name: "vatable_amount") final int? variableAmount,
    @JsonKey(name: "created_by") final String? createdBy,
    @JsonKey(name: "order_lines") final List<OrderLines>? orderLines,
    // @JsonKey(name:"grand_total") final int?grandTotal,
  }) = _PurchaseOrderPost;
  factory PurchaseOrderPost.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrderPostFromJson(json);
}

@freezed
class OrderLines with _$OrderLines {
  const factory OrderLines({
    final int? vat,
    @JsonKey(name: "supplier_code") final String? supplierCode,
    @JsonKey(name: "variant_id") final String? variantId,
    @JsonKey(name: "variant_name") final String? variantName,
    @JsonKey(name: "barcode") final String? barcode,
    @JsonKey(name: "purchase_uom") final String? purchaseuom,
    @JsonKey(name: "cvd") final String? cvd,
    @JsonKey(name: "foc") final int? foc,
    @JsonKey(name: "discount") final int? discount,
    @JsonKey(name: "requested_qty") final int? requestedQty,
    @JsonKey(name: "minimum_qty") final int? minimumQty,
    @JsonKey(name: "maximum_qty") final int? maximumQty,
    @JsonKey(name: "unit_cost") final int? unitCost,
    @JsonKey(name: "grand_total") final int? grandTotal,
    @JsonKey(name: "vatable_amount") final int? variableAmount,
    @JsonKey(name: "excess_tax") final int? excessTax,

    @JsonKey(name: "actual_cost") final int? actualCost,
  }) = _OrderLines;
  factory OrderLines.fromJson(Map<String, dynamic> json) =>
      _$OrderLinesFromJson(json);
}
