import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoicepostmodel.g.dart';
part 'invoicepostmodel.freezed.dart';

@freezed
class SalesReturnInvoicePostModel with _$SalesReturnInvoicePostModel {
  const factory SalesReturnInvoicePostModel({
    // final int? id,
    final double? discount,
    final double? vat,
    final String? notes,
    final String? remarks,
    @JsonKey(name: "sales_order_id") final int? salesOrderId,
    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "invoiced_by") final String? invoicedBy,
    @JsonKey(name: "assigned_to") final String? assignedTo,
    // @JsonKey(name: "return_order_code") final String? returnOrderCode,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "taxable_amount") final double? taxableAmount,
    @JsonKey(name: "selling_price_total") final double? sellingPriceTotal,
    @JsonKey(name: "total_price") final double? totalPrice,
    @JsonKey(name: "invoice_lines") final List<Postlines>? ivoiceLines,
  }) = _SalesReturnInvoicePostModel;
  factory SalesReturnInvoicePostModel.fromJson(Map<String, dynamic> json) =>
      _$SalesReturnInvoicePostModelFromJson(json);
}

@freezed
class Postlines with _$Postlines {
  const factory Postlines({

    final int? quantity,
    final double? vat,
    @JsonKey(name: "is_invoiced", defaultValue: false) final bool? isInvoiced,
    @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,

    @JsonKey(name: "sales_order_line_code") final String? salesOrderLineCode,
    @JsonKey(name: "total_price") final double? totalPrice,
    @JsonKey(name: "warranty_price") final double? warrentyPrice,
    @JsonKey(name: "selling_price") final double? sellingPrice,
    @JsonKey(name: "taxable_amount") final double? taxableAmoubt,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "excess_tax") final double? excessTax,
  }) = _Postlines;
  factory Postlines.fromJson(Map<String, dynamic> json) =>
      _$PostlinesFromJson(json);
}
