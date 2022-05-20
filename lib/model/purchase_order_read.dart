import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
part 'purchase_order_read.freezed.dart';
part 'purchase_order_read.g.dart';

@freezed
class PurchaseOrderRead with _$PurchaseOrderRead {
  const factory PurchaseOrderRead({
    @JsonKey(name: "data") final Data ? data,
    @JsonKey(name: "types_of_purchasing") final List<String>? typesOfPurcasing,

  }) = _PurchaseOrderRead;
  factory PurchaseOrderRead.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrderReadFromJson(json);
}
@freezed
class Data with _$Data {
  const factory Data({
  final  int? id,
    @JsonKey(name: "order_lines") final List<OrderLines>? orderLines,
    @JsonKey(name: "order_code") final String? orderCode,
    @JsonKey(name: "purchase_order_type") final String? purchaseOrderType,
    @JsonKey(name: "recieving_status") final String? recievingStatus,
    @JsonKey(name: "payment_code") final String? paymentcode,


    @JsonKey(name: "payment_status") final String? paymentStatus,
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
    @JsonKey(name: "actual_cost") final double? actualCost,
    @JsonKey(name: "vat") final int? vat,
    @JsonKey(name: "grand_total") final double? grandTotal,
    @JsonKey(name: "vatable_amount") final int? variableAmount,
    @JsonKey(name: "created_by") final String? createdBy,
  }) = _Data;
  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
}