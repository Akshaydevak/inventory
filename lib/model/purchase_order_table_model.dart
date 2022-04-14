import 'package:freezed_annotation/freezed_annotation.dart';
part 'purchase_order_table_model.freezed.dart';
part 'purchase_order_table_model.g.dart';

@freezed
class PurchaseOrderTableModel with _$PurchaseOrderTableModel {
  const factory PurchaseOrderTableModel({
    final int? id,
    final String? code,
    final String? name,
    final String? vat,
    @JsonKey(name: "purchase_uom") final String? purchaseUom,
    @JsonKey(name: "purchase_uom_name") final String? purchaseUomName,
    @JsonKey(name: "excess_tax") final String? excessTax,
    @JsonKey(name: "unit_cost") final String? unitCost,
    @JsonKey(name: "return_type") final String? returnType,
    @JsonKey(name: "return_time") final String? returnTime,
    @JsonKey(name: "vendor_details") final VendorDetails? vendorDetails,
    @JsonKey(name: "barcode") final Barcode? barCode,
  }) = _PurchaseOrderTableModel;
  factory PurchaseOrderTableModel.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrderTableModelFromJson(json);
}

@freezed
class VendorDetails with _$VendorDetails {
  const factory VendorDetails({
    @JsonKey(name: "vendor_code") final String? vendorCode,
    @JsonKey(name: "vendor_reference_code") final String? vendorRefCode,
  }) = _VendorDetails;
  factory VendorDetails.fromJson(Map<String, dynamic> json) =>
      _$VendorDetailsFromJson(json);
}

@freezed
class Barcode with _$Barcode {
  const factory Barcode({
    final int? id,
    @JsonKey(name: "file_name") final String? fileName,
    @JsonKey(name: "barcode_number") final String? barcodeNumber,
  }) = _Barcode;
  factory Barcode.fromJson(Map<String, dynamic> json) =>
      _$BarcodeFromJson(json);
}
