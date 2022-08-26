import 'package:freezed_annotation/freezed_annotation.dart';

part 'salesreturnpost.g.dart';
part 'salesreturnpost.freezed.dart';

@freezed
class SalesReturnGeneralPostModel with _$SalesReturnGeneralPostModel {
  const factory SalesReturnGeneralPostModel({

    final double? discount,
    final double? vat,
    final String? reason,
    final String? remarks,
    @JsonKey(name: "order_type") final String? orderType,

    @JsonKey(name: "order_mode") final String? orderMode,
    @JsonKey(name: "sales_return_order_code") final String? salesReturnOrderCode,
    @JsonKey(name: "returned_date") final String? returnOrderDate,
    @JsonKey(name: "inventory_id") final String? inventoryid,
    @JsonKey(name: "payment_id") final String? payementId,
    @JsonKey(name: "payment_status") final String? paymentStatus,
    @JsonKey(name: "order_satus") final String? orderStatus,
    @JsonKey(name: "invoice_status") final String? invoiceStatus,
    @JsonKey(name: "customer_id") final String? customerId,
    @JsonKey(name: "trn_number") final String? trnNumber,
    @JsonKey(name: "sales_invoice_id") final String? salesInvoiceId,
    @JsonKey(name: "shipping_address_id") final String? shippingAddressId,
    @JsonKey(name: "billing_address_id") final String? billingAddressId,

    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "taxable_amount") final double? taxableAmount,
    @JsonKey(name: "selling_price_total") final double? sellingPriceTotal,
    @JsonKey(name: "total_price") final double? totalPrice,
    @JsonKey(name: "created_by") final String? createdBy,
    // @JsonKey(name: "edited_by") final String? editedBy,/
    @JsonKey(name: "order_lines") final List<SalesReturnOrderLines>? orderLines,
  }) = _SalesReturnGeneralPostModel;
  factory SalesReturnGeneralPostModel.fromJson(Map<String, dynamic> json) =>
      _$SalesReturnGeneralPostModelFromJson(json);
}

@freezed
class SalesReturnOrderLines with _$SalesReturnOrderLines {
  const factory SalesReturnOrderLines({
    final int? id,
    final int? qty,

    final int? quantity,
    final double? discount,
    final double? vat,
    final String? barcode,
    final String? remarks,
    @JsonKey(name: "sales_order_line_code") final String? salesOrderLineCode,
    @JsonKey(name: "variant_id") final String? variantId,
    @JsonKey(name: "stock_id") final String? stockId,
    @JsonKey(name: "warranty_id") final String? warrentyId,
    @JsonKey(name: "sales_uom") final String? salesUom,
    @JsonKey(name: "discount_type") final String? discountType,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "taxable_amount") final double? taxableAmount,
    @JsonKey(name: "warranty_price") final double? warrentyPrice,
    @JsonKey(name: "selling_price") final double? sellingPrice,
    @JsonKey(name: "total_price") final double? totalPrice,
    @JsonKey(name: "return_type") final String? returnType,
    @JsonKey(name: "return_time") final int? returnTime,
    @JsonKey(name: "invoiced_date") final String? invoicedDate,
    @JsonKey(name: "invoiced_time") final String? invoicedTime,
    @JsonKey(name: "invoice_line_code") final String? invoicedLineCode,



    @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
    @JsonKey(name: "is_invoiced", defaultValue: false) final bool? isInvoiced,

    @JsonKey(name: "updatecheck", defaultValue: false) final bool? updatecheck,
  }) = _SalesReturnOrderLines;
  factory SalesReturnOrderLines.fromJson(Map<String, dynamic> json) =>
      _$SalesReturnOrderLinesFromJson(json);
}
