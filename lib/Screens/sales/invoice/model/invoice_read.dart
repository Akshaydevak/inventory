import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_read.g.dart';
part 'invoice_read.freezed.dart';

@freezed
class SalesReturnInvoiceReadModel with _$SalesReturnInvoiceReadModel {
  const factory SalesReturnInvoiceReadModel({
    final int? id,
    final double? discount,
    final double? vat,
    @JsonKey(name: "sales_order_code") final String? salesOrderCode,
    @JsonKey(name: "return_order_code") final String? returnOrderCode,
    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "customer_id") final String? customerId,
    @JsonKey(name: "trn_number") final String? trnNumber,
    @JsonKey(name: "payment_id") final String? paymentId,
    @JsonKey(name: "payment_status") final String? paymentStatus,
    @JsonKey(name: "order_satus") final String? orderStatus,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "taxable_amount") final double? taxableAmount,
    @JsonKey(name: "selling_price_total") final double? sellingPriceTotal,
    @JsonKey(name: "total_price") final double? totalPrice,
    @JsonKey(name: "order_lines") final List<OrderLinesInvoice>? lines,
    @JsonKey(name: "invoice_data") final InvoicedData? invoicedData,
  }) = _SalesReturnInvoiceReadModel;
  factory SalesReturnInvoiceReadModel.fromJson(Map<String, dynamic> json) =>
      _$SalesReturnInvoiceReadModelFromJson(json);
}

@freezed
class OrderLinesInvoice with _$OrderLinesInvoice {
  const factory OrderLinesInvoice({
    final int? id,
    final int? quantity,
    final String? barcode,
    final double? discount,
    final double? vat,
    @JsonKey(name: "variant_id") final String? variantId,
    @JsonKey(name: "sales_order_line_code") final String? salesOrderLineCode,
    @JsonKey(name: "sales_uom") final String? salesUom,
    @JsonKey(name: "return_type") final String? returnType,
    @JsonKey(name: "return_time") final int? returnTime,
    @JsonKey(name: "is_invoiced", defaultValue: false) final bool? isInvoiced,
    @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
    @JsonKey(name: "discount_type") final String? discountType,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "taxable_amount") final double? taxableAmount,
    @JsonKey(name: "selling_price") final double? sellingPriceTotal,
    @JsonKey(name: "total_price") final double? totalPrice,
    @JsonKey(name: "warranty_price") final double? warrentyPrice,
  }) = _OrderLinesInvoice;
  factory OrderLinesInvoice.fromJson(Map<String, dynamic> json) =>
      _$OrderLinesInvoiceFromJson(json);
}

@freezed
class InvoicedData with _$InvoicedData {
  const factory InvoicedData({
    final int? id,
    final int? quantity,
    final String? barcode,
    final String? notes,
    final String? remarks,
    final double? discount,
    final double? vat,
    @JsonKey(name: "sales_order_id") final int? slaesOrderId,
    @JsonKey(name: "invoice_code") final String? invoiceCode,
    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "created_date") final String? createdDate,
    @JsonKey(name: "invoice_status") final String? invoiceStatus,
    @JsonKey(name: "assigned_to") final String? assignedTo,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "taxable_amount") final double? taxableAmount,
    @JsonKey(name: "selling_price_total") final double? sellingPriceTotal,
    @JsonKey(name: "total_price") final double? totalPrice,
    @JsonKey(name: "warranty_price") final double? warrentyPrice,
    @JsonKey(name: "invoice_lines") final List<OrderLinesInvoice>? lines,
  }) = _InvoicedData;
  factory InvoicedData.fromJson(Map<String, dynamic> json) =>
      _$InvoicedDataFromJson(json);
}
