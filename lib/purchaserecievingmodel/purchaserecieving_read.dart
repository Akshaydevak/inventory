import 'package:freezed_annotation/freezed_annotation.dart';
part 'purchaserecieving_read.freezed.dart';
part 'purchaserecieving_read.g.dart';

@freezed
class PurchaseRecievingRead with _$PurchaseRecievingRead {
  const factory PurchaseRecievingRead({
    final int? id,
    final double? foc,
    final double? discount,
    final double? vat,
    final String? remarks,
    final String? note,
    @JsonKey(name:"order_code") final String? orderCode,

    @JsonKey(name:"promised_receipt_date") final String? promisedRecieptDate,
    @JsonKey(name:"received_by") final String? receivedBy,
    @JsonKey(name:"planned_receipt_date") final String? plannedRecieptDate,
    @JsonKey(name:"vendor_trn_number") final String? vendorTrnNumber,
    @JsonKey(name:"vendor_mail_id") final String? vendorMailId,
    @JsonKey(name:"created_by") final String? createdBy,
    @JsonKey(name:"vendor_code") final String? vendorId,
    @JsonKey(name:"vendor_address") final String? vendorAddress,
    @JsonKey(name:"receiving_code") final String? receivingCode,
    @JsonKey(name:"inventory_id") final String? inventoryId,
    @JsonKey(name:"payment_status") final String? paymentStatus,
    @JsonKey(name:"receiving_id") final int? receivinglineId,




    @JsonKey(name:"order_status") final String? orderStatus,
    @JsonKey(name:"receiving_status") final String? receivingStatus,
    @JsonKey(name:"invoice_status") final String? invoiceStatus,
    @JsonKey(name:"order_created_date") final String? orderCreatedDate,
    @JsonKey(name:"unit_cost") final int? unitCost,
    @JsonKey(name:"grand_total") final double? grandTotal,
    @JsonKey(name:"vatable_amount") final double? vatableAmount,
    @JsonKey(name:"excess_tax") final double? excessTax,
    @JsonKey(name:"actual_cost") final double? actualCost,
    @JsonKey(name:"is_invoiced") final bool? is_invoiced,
    @JsonKey(name:"is_active") final bool? isActive,
    @JsonKey(name:"is_free") final bool? isFree,
    @JsonKey(name: "receiving_lines") final List<RecievingLines>? receivingLines,

  }) = _PurchaseRecievingRead;
  factory PurchaseRecievingRead.fromJson(Map<String, dynamic> json) =>
      _$PurchaseRecievingReadFromJson(json);
}
@freezed
class RecievingLines with _$RecievingLines {
  const factory RecievingLines({
   final int? id,
   final int? currentStock,
    final String? barcode,
    final double? foc,
    final double? discount,
    final double? vat,

    @JsonKey(name:"order_line_code") final String? orderLineCode,
    @JsonKey(name:"receiving_line_code") final String? receivinglineCode,
    @JsonKey(name:"vendor_reference_code") final String? vendorRefCode,

    @JsonKey(name:"variant_id") final String? variantId,
    @JsonKey(name:"variant_name") final String? variantName,
    @JsonKey(name:"supplier_code") final String? supplierCode,
    @JsonKey(name:"purchase_uom") final String? purchaseUom,
    @JsonKey(name:"is_received") final bool? isReceived,
    @JsonKey(name:"unit_cost") final double? unitCost,
    @JsonKey(name:"grand_total") final double? grandTotal,
    @JsonKey(name:"received_qty") final int? requestedQty,
    @JsonKey(name:"expiry_date") final String? expiryDate,
    @JsonKey(name:"vendor_id") final String? vendorId,
    @JsonKey(name:"vendor_trn_number") final String? vendorTrnNumber,
    @JsonKey(name:"vendor_address") final String? vendorAddress,

    @JsonKey(name:"vatable_amount") final double? vatableAmount,
    @JsonKey(name:"excess_tax") final double? excessTax,
    @JsonKey(name:"actual_cost") final double? actualCost,
    @JsonKey(name:"is_invoiced") final bool? isInvoiced,
    @JsonKey(name:"is_active") final bool? isActive,
    @JsonKey(name:"is_free") final bool? isFree,
    @JsonKey(name:"purchase_order_line_id") final int? purchaseOrderLineId,
    @JsonKey(name:"updateCheck",defaultValue: false) final bool? updateCheck,


  }) = _RecievingLines;
  factory RecievingLines.fromJson(Map<String, dynamic> json) =>
      _$RecievingLinesFromJson(json);
}
@freezed
class AdditionalGenerateModel with _$AdditionalGenerateModel {
  const factory AdditionalGenerateModel({
    // final String? remarks,
    // final String? note,
    // final int? id,





    @JsonKey(name:"receiving_id") final int? receivingId,
    @JsonKey(name:"created_by") final String? createdBy,
    @JsonKey(name:"purchase_order_id") final int? purchaseOrderId,
    @JsonKey(name: "order_lines") final List<RecievingLines>? orderLines,







  }) = _AdditionalGenerateModel;
  factory AdditionalGenerateModel.fromJson(Map<String, dynamic> json) =>
      _$AdditionalGenerateModelFromJson(json);
}
@freezed
class RequestReceivingPatch with _$RequestReceivingPatch {
  const factory RequestReceivingPatch({
    final int? id,
    final double? foc,
    final double? discount,
    final double? vat,
    final String? remarks,
    final String? note,
    @JsonKey(name:"received_by") final String? receivedBy,











    @JsonKey(name:"unit_cost") final double? unitCost,
    @JsonKey(name:"grand_total") final double? grandTotal,
    @JsonKey(name:"vatable_amount") final double? vatableAmount,
    @JsonKey(name:"excess_tax") final double? excessTax,
    @JsonKey(name:"actual_cost") final double? actualCost,


    @JsonKey(name: "receiving_lines") final List<RecievingLines>? receivingLines,

  }) = _RequestReceivingPatch;
  factory RequestReceivingPatch.fromJson(Map<String, dynamic> json) =>
      _$RequestReceivingPatchFromJson(json);
}