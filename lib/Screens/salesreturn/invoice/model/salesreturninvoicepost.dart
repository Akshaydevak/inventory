import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/salesreturn/invoice/model/salesreturninvoiceread.dart';
import 'package:inventory/Screens/salesreturn/model/salesreturnpost.dart';

part 'salesreturninvoicepost.g.dart';
part 'salesreturninvoicepost.freezed.dart';

@freezed
  class SalesReturnInvoicePostModel2 with _$SalesReturnInvoicePostModel2 {
  const factory SalesReturnInvoicePostModel2({

    final double? discount,
    final double? vat,
    final String? reason,
    final String? remarks,
    final String? notes,

    @JsonKey(name: "sales_return_order_code") final String? salesReturnOrderCode,
    @JsonKey(name: "inventory_id") final String? inventoryid,
    @JsonKey(name: "customer_id") final String? customerId,
    @JsonKey(name: "customer_trn_number") final String? customerTrnNumber,
    @JsonKey(name: "invoiced_by") final String? inVoicedBy,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "taxable_amount") final double? taxableAmount,
    @JsonKey(name: "selling_price_total") final double? sellingPriceTotal,
    @JsonKey(name: "total_price") final double? totalPrice,
    @JsonKey(name: "assigned_to") final String? assignTo,

    @JsonKey(name: "invoice_lines") final List<SalesReturnLinesOrderLines>? orderLines
  }) = _SalesReturnInvoicePostModel2;
  factory SalesReturnInvoicePostModel2.fromJson(Map<String, dynamic> json) =>
      _$SalesReturnInvoicePostModel2FromJson(json);
}
