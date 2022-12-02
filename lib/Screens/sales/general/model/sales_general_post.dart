import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_general_post.g.dart';
part 'sales_general_post.freezed.dart';

@freezed
class SalesGeneralPostModel with _$SalesGeneralPostModel {
  const factory SalesGeneralPostModel({

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
    @JsonKey(name: "sales_quotes_id") final String? salesQuotesId,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "taxable_amount") final double? taxableAmount,
    @JsonKey(name: "selling_price_total") final double? sellingPriceTotal,
    @JsonKey(name: "total_price") final double? totalPrice,
    @JsonKey(name: "created_by") final String? createdBy,
    // @JsonKey(name: "edited_by") final String? editedBy,/
    @JsonKey(name: "order_lines") final List<SalesOrderLines>? orderLines,
  }) = _SalesGeneralPostModel;
  factory SalesGeneralPostModel.fromJson(Map<String, dynamic> json) =>
      _$SalesGeneralPostModelFromJson(json);
}

@freezed
class SalesOrderLines with _$SalesOrderLines {
  const factory SalesOrderLines({
    final int? id,
    final int? qty,

    final int? quantity,
    final double? discount,
    final double? vat,
    final String? barcode,
    final String? remarks,

    @JsonKey(name: "variant_id") final String? variantId,
    @JsonKey(name: "sales_order_line_code") final String? salesOrderLineCode,
    @JsonKey(name: "variant_name") final String? variaNtname,
    @JsonKey(name: "stock_id") final String? stockId,
    @JsonKey(name: "warranty_id") final String? warrentyId,
    @JsonKey(name: "sales_uom") final String? salesUom,
    @JsonKey(name: "discount_type") final String? discountType,
    @JsonKey(name: "return_type") final String? returnType,
    @JsonKey(name: "return_time") final int? returnTime,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "taxable_amount") final double? taxableAmount,
    @JsonKey(name: "selling_price") final double? sellingPrice,
    @JsonKey(name: "total_price") final double? totalPrice,
    @JsonKey(name: "warranty_price") final double? warrentyPrice,
    @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
    @JsonKey(name: "is_invoiced", defaultValue: false) final bool? isInvoiced,
    @JsonKey(name: "updatecheck", defaultValue: false) final bool? updatecheck,
  }) = _SalesOrderLines;
  factory SalesOrderLines.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderLinesFromJson(json);
}
@freezed
class ShippingAddressCreationModel with _$ShippingAddressCreationModel {
  const factory ShippingAddressCreationModel({

    final String? country,
    final String? state,
    final String? city,
    final String? contact,
    final String? landmark,
    final String? instructions,
    @JsonKey(name: "address_type") final String? addressType,
    @JsonKey(name: "full_name") final String? fullName,
    @JsonKey(name: "street_name") final String? streetName,
    @JsonKey(name: "building_name") final String? buillingName,
    @JsonKey(name: "address_tag") final String? addressTag,
    @JsonKey(name: "user_code") final String? userCode,

  }) = _ShippingAddressCreationModel;
  factory ShippingAddressCreationModel.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressCreationModelFromJson(json);
}