import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/sales/general/model/sales_general_post.dart';


part 'salesgeneralread.g.dart';
part 'salesgeneralread.freezed.dart';
@freezed
class SalesGeneralReadModel with _$SalesGeneralReadModel {
  const factory SalesGeneralReadModel({




    @JsonKey(name: "sales_order_data") final SalesOrderData? salesOrderData,
    @JsonKey(name: "order_types") final List<String>? orderTypes,
    @JsonKey(name: "discount_type") final List<String>? discountType,
  }) = _SalesGeneralReadModel;
  factory SalesGeneralReadModel.fromJson(Map<String, dynamic> json) =>
      _$SalesGeneralReadModelFromJson(json);
}
@freezed
class SalesOrderData with _$SalesOrderData {
  const factory SalesOrderData({

    final double? foc,
    final int? id,
    final double? discount,
    final double? vat,
    final String? note,
    final String? remarks,
    @JsonKey(name: "order_type") final String? orderType,
    @JsonKey(name: "order_mode") final String? orderMode,
    @JsonKey(name: "inventory_id") final String? inventoryid,
    @JsonKey(name: "customer_id") final String? customerId,
    @JsonKey(name: "trn_number") final String? trnNumber,
    @JsonKey(name: "shipping_address_id") final String? shippingAddressId,
    @JsonKey(name: "billing_address_id") final String? billingAddressId,
    @JsonKey(name: "ordered_date") final String? orderedDate,
    @JsonKey(name: "payment_id") final String? paymentId,
    @JsonKey(name: "payment_status") final String? paymentStatus,
    @JsonKey(name: "sales_order_code") final String? salesOrderCode,
    @JsonKey(name: "order_satus") final String? orderStatus,
    @JsonKey(name: "invoice_status") final String? invoiceStatus,
    @JsonKey(name: "sales_quotes_id") final String? salesQuotesId,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "taxable_amount") final double? taxableAmount,
    @JsonKey(name: "selling_price_total") final double? sellingPriceTotal,
    @JsonKey(name: "total_price") final double? totalPrice,




    @JsonKey(name: "order_lines") final List<SalesOrderLines>? orderLines,
  }) = _SalesOrderData;
  factory SalesOrderData.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderDataFromJson(json);
}