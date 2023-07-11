import 'package:freezed_annotation/freezed_annotation.dart';
part 'inventory_read_model.freezed.dart';
part 'inventory_read_model.g.dart';

@freezed
class InventoryRead with _$InventoryRead {
  const factory InventoryRead({
    @JsonKey(name: "order_code") final String? orderCode,
    @JsonKey(name: "ordered_date") final String? orderDate,
    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "payment_code") final String? paymentCode,
    @JsonKey(name: "payment_status") final String? payementStatus,
    @JsonKey(name: "order_status") final String? orderStatus,
    @JsonKey(name: "calculation_data") final CalculationData? calculationData,
    @JsonKey(name: "invoice_data") final InvoiceData? invoicedata,
    final List<Lines>? lines,

    // @JsonKey(name:"grand_total") final int?grandTotal,
  }) = _InventoryRead;
  factory InventoryRead.fromJson(Map<String, dynamic> json) =>
      _$InventoryReadFromJson(json);
}

@freezed
class CalculationData with _$CalculationData {
  const factory CalculationData({
    final double? discount,
    final double? foc,
    final double? vat,
    @JsonKey(name: "vatable_amount") final double? vatableAmount,
    @JsonKey(name: "grand_total") final double? grandtotal,
    @JsonKey(name: "actual_cost") final double? actualCost,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "unit_cost") final double? unitCost,

    // @JsonKey(name:"grand_total") final int?grandTotal,
  }) = _CalculationData;
  factory CalculationData.fromJson(Map<String, dynamic> json) =>
      _$CalculationDataFromJson(json);
}

@freezed
class InvoiceData with _$InvoiceData {
  const factory InvoiceData({
    final double? discount,
    final String? notes,
    final String? remarks,
    final int? id,
    final double? foc,
    final double? vat,
    @JsonKey(name: "vatable_amount") final double? vatableAmount,
    @JsonKey(name: "order_code") final String? orderCode,
    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "payment_code") final String? paymentCode,
    @JsonKey(name: "payment_status") final String? payementStatus,
    @JsonKey(name: "payment_method") final String? paymentMethod,
    @JsonKey(name: "invoiced_by") final String? invoicedBy,
    @JsonKey(name: "invoice_code") final String? invoicedCode,
    @JsonKey(name: "invoice_status") final String? invoiceStatus,
    @JsonKey(name: "order_status") final String? orderStatus,
    @JsonKey(name: "grand_total") final double? grandtotal,
    @JsonKey(name: "actual_cost") final double? actualCost,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "invoice_lines") final List<Lines>? invoiceLines,

    // @JsonKey(name:"grand_total") final int?grandTotal,
  }) = _InvoiceData;
  factory InvoiceData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceDataFromJson(json);
}

@freezed
class InvoiceLines with _$InvoiceLines {
  const factory InvoiceLines({
    final double? vat,
    final bool? isRecieved,
    final int? currentQty,
    final int? id,
    @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
    @JsonKey(name: "supplier_code") final String? supplierCode,
    @JsonKey(name: "receiving_line_code") final String? receiveLineCode,
    @JsonKey(name: "is_free") final bool? isFree,
    @JsonKey(name: "is_invoiced") final bool? isInvoiced,
    @JsonKey(name: "variant_id") final String? variantId,
    @JsonKey(name: "vendor_reference_code") final String? vendorRefCode,
    @JsonKey(name: "variant_name") final String? variantName,
    @JsonKey(name: "barcode") final String? barcode,
    @JsonKey(name: "purchase_uom") final String? purchaseuom,
    @JsonKey(name: "cvd") final String? cvd,
    @JsonKey(name: "foc") final double? foc,
    @JsonKey(name: "discount") final int? discount,
    @JsonKey(name: "requested_qty") final int? requestedQty,
    @JsonKey(name: "minimum_qty") final int? minimumQty,
    @JsonKey(name: "maximum_qty") final int? maximumQty,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "grand_total") final double? grandTotal,
    @JsonKey(name: "vatable_amount") final double? variableAmount,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "actual_cost") final double? actualCost,


    // @JsonKey(name:"grand_total") final int?grandTotal,
  }) = _InvoiceLines;
  factory InvoiceLines.fromJson(Map<String, dynamic> json) =>
      _$InvoiceLinesFromJson(json);
}

@freezed
class Lines with _$Lines {
  const factory Lines({
    final int? id,
    final double? foc,
    final double? discount,
    final double? vat,
    final String? barcode,
    @JsonKey(name: "receiving_line_code") final String? receiveLineCode,
    @JsonKey(name: "variant_id") final String? variantId,
    @JsonKey(name: "received_qty") final int? receivedQty,
    // @JsonKey(name: "invoice_id") final int? invoiceId,
    @JsonKey(name: "receiving_line_id") final int? receiveLineId,
    @JsonKey(name: "purchase_order_line_id") final int? purchaseOrderLineid,
    @JsonKey(name: "invoice_line_code") final String? invoiceLineCode,

    @JsonKey(name: "variant_name") final String? variantName,
    @JsonKey(name: "total_qty") final int? requestedQty,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "grand_total") final double? grandTotal,
    @JsonKey(name: "vatable_amount") final double? variableAmount,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "actual_cost") final double? actualCost,
    @JsonKey(name: "is_invoiced") final bool? isInvoiced,
    @JsonKey(name: "supplier_code") final int? supplierCode,
    @JsonKey(name: "purchase_uom") final String? purchaseUom,
    @JsonKey(name: "is_free") final bool? isFree,
    @JsonKey(name: "is_received") final bool? isReceived,

    // @JsonKey(name:"grand_total") final int?grandTotal,
  }) = _Lines;
  factory Lines.fromJson(Map<String, dynamic> json) => _$LinesFromJson(json);
}
