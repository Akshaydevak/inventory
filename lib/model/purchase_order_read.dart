// import 'package:freezed_annotation/freezed_annotation.dart';
//
// @freezed
// class PurchaseOrderRead with _$PurchaseOrderRead {
//   const factory PurchaseOrderRead({
//     @JsonKey(name: "data") final Data ? data,
//     @JsonKey(name: "types_of_purchasing") final List<String>? typesOfPurcasing,
//
//   }) = _PurchaseOrderRead;
//   factory PurchaseOrderRead.fromJson(Map<String, dynamic> json) =>
//       _$PurchaseOrderReadFromJson(json);
// }
// @freezed
// class Data with _$Data {
//   const factory Data({
//     @JsonKey(name: "vendor_code") final String? vendorCode,
//     @JsonKey(name: "vendor_reference_code") final String? vendorRefCode,
//   }) = _Data;
//   factory Data.fromJson(Map<String, dynamic> json) =>
//       _$DataFromJson(json);
// }