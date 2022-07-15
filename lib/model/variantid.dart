import 'package:freezed_annotation/freezed_annotation.dart';
part 'variantid.freezed.dart';
part 'variantid.g.dart';

@freezed
class VariantId with _$VariantId {
  const factory VariantId(
      {final int? id,
        final String? code,
        final String? category,
        final String? uom,
        // final double? unit_cost,
        final String? name,


      }) = _VariantId;
  factory VariantId.fromJson(Map<String, dynamic> json) =>
      _$VariantIdFromJson(json);
}
@freezed
class VendorCodeModel with _$VendorCodeModel {
  const factory VendorCodeModel(
      {
        final List<Result>? results,



      }) = _VendorCodeModel;
  factory VendorCodeModel.fromJson(Map<String, dynamic> json) =>
      _$VendorCodeModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result(
      {
        final int? id,
        @JsonKey(name: "user_login_id") final int? userLoginId,
        @JsonKey(name:"partner_code") final String? partnerCode,
        @JsonKey(name:"is_organization") final bool? isOrganization,



      }) = _Result;
  factory Result.fromJson(Map<String, dynamic> json) =>
      _$ResultFromJson(json);
}

@freezed
class VariantDetailsModel with _$VariantDetailsModel {
  const factory VariantDetailsModel(
      {
        @JsonKey(name: "partner_data") final PartnerData ? partnerData,
        @JsonKey(name: "partner_organization_data") final List<PartnerOrganizationData>? partnerOrganizationdata,
        @JsonKey(name: "partner_address_data") final List<PartnerAddressdata>? partnerAddressdata,
       // @JsonKey(name: "partner_document_data") final List<PartnerDocumnetData>? partnerDocumentData,




      }) = _VariantDetailsModel;
  factory VariantDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$VariantDetailsModelFromJson(json);
}
@freezed
class PartnerData with _$PartnerData {
  const factory PartnerData(
      {
        final int? id,
        @JsonKey(name: "user_login_id") final int? userLoginId,
        @JsonKey(name:"partner_code") final String? partnerCode,
        @JsonKey(name:"is_organization") final bool? isOrganization,



      }) = _PartnerData;
  factory PartnerData.fromJson(Map<String, dynamic> json) =>
      _$PartnerDataFromJson(json);
}
@freezed
class PartnerOrganizationData with _$PartnerOrganizationData {
  const factory PartnerOrganizationData(
      {
        final int? id,
        @JsonKey(name: "partner_code") final String? partnerCode,
        @JsonKey(name: "email_1") final String? email,
        @JsonKey(name: "trn_number") final String? trnNumber,
        @JsonKey(name: "display_name") final String? displayName,




      }) = _PartnerOrganizationData;
  factory PartnerOrganizationData.fromJson(Map<String, dynamic> json) =>
      _$PartnerOrganizationDataFromJson(json);
}

@freezed
class PartnerAddressdata with _$PartnerAddressdata {
  const factory PartnerAddressdata(
      {
        final int? id,
        @JsonKey(name: "address_type") final String? addressType,




      }) = _PartnerAddressdata;
  factory PartnerAddressdata.fromJson(Map<String, dynamic> json) =>
      _$PartnerAddressdataFromJson(json);
}
@freezed
class PurchaseInvoice with _$PurchaseInvoice {
  const factory PurchaseInvoice(
      {
        final int? id,
        @JsonKey(name: "invoice_code") final String? invoiceCode,
        @JsonKey(name: "inventory_id") final String? inventoryId,



      }) = _PurchaseInvoice;
  factory PurchaseInvoice.fromJson(Map<String, dynamic> json) =>
      _$PurchaseInvoiceFromJson(json);
}