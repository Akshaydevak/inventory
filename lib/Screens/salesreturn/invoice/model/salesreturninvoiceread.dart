import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/salesreturn/model/salesreturnpost.dart';

part 'salesreturninvoiceread.g.dart';
part 'salesreturninvoiceread.freezed.dart';

@freezed
class SalesReturnInvoiceReadModel2 with _$SalesReturnInvoiceReadModel2{
  const factory SalesReturnInvoiceReadModel2({
    final int? id,
    final double? discount,
    final double? vat,

    @JsonKey(name: "sales_return_order_code") final String? salesReturnOrderCode,
    @JsonKey(name: "returned_date") final String? returnedDate,
    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "payment_id") final String? paymentId,
    @JsonKey(name: "payment_status") final String? paymentStatus,
    @JsonKey(name: "customer_id") final String? customerId,
    @JsonKey(name: "trn_number") final String? trnNumber,
    @JsonKey(name: "order_satus") final String? orderStatus,
    @JsonKey(name: "invoice_status") final String? invoiceStatus,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "taxable_amount") final double? taxableAmount,
    @JsonKey(name: "selling_price_total") final double? sellingPriceTotal,
    @JsonKey(name: "total_price") final double? totalPrice,
    @JsonKey(name: "return_order_lines") final List<SalesReturnLinesOrderLines>? returnOrrder,
    @JsonKey(name: "invoice_data") final InvoicedDatasSalesReturn? invoicedData,
  }) = _SalesReturnInvoiceReadModel2;
  factory SalesReturnInvoiceReadModel2.fromJson(Map<String, dynamic> json) =>
      _$SalesReturnInvoiceReadModel2FromJson(json);
}

@freezed
class SalesReturnLinesOrderLines with _$SalesReturnLinesOrderLines {
  const factory SalesReturnLinesOrderLines({
    final int? id,
    final int? quantity,
    final String? barcode,
    final double? discount,
    final double? vat,
    @JsonKey(name: "variant_id") final String? variantId,
    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "invoice_line_id") final String? invoiceLineId,
    @JsonKey(name: "sales_return_order_line_code") final String? salesReturnOrderLineCode,
    @JsonKey(name: "invoice_return_line_code") final String? invoiceReturnLineCode,
    @JsonKey(name: "stock_id") final String? stockId,
    @JsonKey(name: "warranty_id") final String? warrantyId,
    @JsonKey(name: "sales_uom") final String? salesUOM,
    @JsonKey(name: "discount_type") final String? discountType,
    @JsonKey(name: "return_type") final String? returnType,
    @JsonKey(name: "return_time") final String? returnTime,
    @JsonKey(name: "total_qty") final int? totalQty,
    @JsonKey(name: "sales_return_order_id") final int? salesReturnOrderLineId,
    @JsonKey(name: "is_invoiced",defaultValue: false) final bool? isInvoiced,



    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "taxable_amount") final double? taxableAmount,
    @JsonKey(name: "selling_price") final double? sellingPriceTotal,
    @JsonKey(name: "total_price") final double? totalPrice,
    @JsonKey(name: "warranty_price") final double? warrentyPrice,
  }) = _SalesReturnLinesOrderLines;
  factory SalesReturnLinesOrderLines.fromJson(Map<String, dynamic> json) =>
      _$SalesReturnLinesOrderLinesFromJson(json);
}

@freezed
class InvoicedDatasSalesReturn with _$InvoicedDatasSalesReturn {
  const factory InvoicedDatasSalesReturn({
    final int? id,
    final int? quantity,
    final String? barcode,
    final String? notes,
    final String? remarks,
    final double? discount,
    final double? vat,
    @JsonKey(name: "sales_return_order_code") final String? salesReturnOrderCode,
    @JsonKey(name: "sales_return_invoice_code") final String? salesReturnInvoiceCode,
    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "customer_id") final String? customerId,
    @JsonKey(name: "customer_trn_number") final String? customerTrnNumber,
    @JsonKey(name: "invoiced_by") final String? invoicedBy,
    @JsonKey(name: "created_date") final String? createdDate,
    @JsonKey(name: "invoice_status") final String? invoiceStatus,
    @JsonKey(name: "payment_method") final String? paymentMethod,
    @JsonKey(name: "payment_status") final String? paymentStatus,
    @JsonKey(name: "payment_code") final String? paymentCode,
    @JsonKey(name: "assigned_to") final String? assignedTo,

    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "taxable_amount") final double? taxableAmount,
    @JsonKey(name: "selling_price_total") final double? sellingPriceTotal,
    @JsonKey(name: "total_price") final double? totalPrice,
    @JsonKey(name: "warranty_price") final double? warrentyPrice,
    @JsonKey(name: "invoice_lines") final List<SalesReturnLinesOrderLines>? lines,
  }) = _InvoicedDatasSalesReturn;
  factory InvoicedDatasSalesReturn.fromJson(Map<String, dynamic> json) =>
      _$InvoicedDatasSalesReturnFromJson(json);
}
