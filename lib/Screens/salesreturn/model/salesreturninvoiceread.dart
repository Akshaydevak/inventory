import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/salesreturn/model/salesreturnpost.dart';

part 'salesreturninvoiceread.g.dart';
part 'salesreturninvoiceread.freezed.dart';

@freezed
class SalesReturnGeneralInvoiceReadModel with _$SalesReturnGeneralInvoiceReadModel {
  const factory SalesReturnGeneralInvoiceReadModel({
    final int? id,
    final double? discount,
    final double? vat,
    @JsonKey(name: "sales_order_code") final String? salesOrderCode,
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
    @JsonKey(name: "invoice_lines") final List<SalesReturnOrderLines>? lines,
    @JsonKey(name: "invoice_data") final InvoicedDatas? invoicedData,
  }) = _SalesReturnGeneralInvoiceReadModel;
  factory SalesReturnGeneralInvoiceReadModel.fromJson(Map<String, dynamic> json) =>
      _$SalesReturnGeneralInvoiceReadModelFromJson(json);
}

@freezed
class OrderReturnLinesInvoice with _$OrderReturnLinesInvoice {
  const factory OrderReturnLinesInvoice({
    final int? id,
    final int? quantity,
    final String? barcode,
    final double? discount,
    final double? vat,
    @JsonKey(name: "variant_id") final String? variantId,
    @JsonKey(name: "sales_order_line_code") final String? salesOrderLineCode,
    @JsonKey(name: "sales_uom") final String? salesUom,
    @JsonKey(name: "is_invoiced", defaultValue: false) final bool? isInvoiced,
    @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
    @JsonKey(name: "discount_type") final String? discountType,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "taxable_amount") final double? taxableAmount,
    @JsonKey(name: "selling_price") final double? sellingPriceTotal,
    @JsonKey(name: "total_price") final double? totalPrice,
    @JsonKey(name: "warranty_price") final double? warrentyPrice,
  }) = _OrderReturnLinesInvoice;
  factory OrderReturnLinesInvoice.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnLinesInvoiceFromJson(json);
}

@freezed
class InvoicedDatas with _$InvoicedDatas {
  const factory InvoicedDatas({
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
    @JsonKey(name: "invoice_lines") final List<SalesReturnOrderLines>? lines,
  }) = _InvoicedDatas;
  factory InvoicedDatas.fromJson(Map<String, dynamic> json) =>
      _$InvoicedDatasFromJson(json);
}
