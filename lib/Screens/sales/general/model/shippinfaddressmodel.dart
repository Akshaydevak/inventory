import 'package:freezed_annotation/freezed_annotation.dart';

part 'shippinfaddressmodel.g.dart';
part 'shippinfaddressmodel.freezed.dart';

@freezed
class ShippingAddressModel with _$ShippingAddressModel {
  const factory ShippingAddressModel({
    final int? id,
    final double? discount,
    final double? vat,
    final String? note,
    final String? remarks,
    @JsonKey(name: "full_name") final String? fullName,
    @JsonKey(name: "building_name") final String? buildingName,
    @JsonKey(name: "street_name") final String? streetName,
    @JsonKey(name: "customer_id") final String? customerId,

  }) = _ShippingAddressModel;
  factory ShippingAddressModel.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressModelFromJson(json);
}


@freezed
class SalesInvoiceCodeModel with _$SalesInvoiceCodeModel {
  const factory SalesInvoiceCodeModel({
    final int? id,

    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "invoice_code") final String? invoiceCode,


  }) = _SalesInvoiceCodeModel;
  factory SalesInvoiceCodeModel.fromJson(Map<String, dynamic> json) =>
      _$SalesInvoiceCodeModelFromJson(json);
}