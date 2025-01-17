import 'package:freezed_annotation/freezed_annotation.dart';
part 'generatemissing.freezed.dart';
part 'generatemissing.g.dart';

@freezed
class GenerateMissing with _$GenerateMissing {
  const factory GenerateMissing({
    final int? id,

    final String? remarks,
    final String? note,

    @JsonKey(name:"promised_receipt_date") final String? promisedRecieptDate,
    @JsonKey(name:"planned_receipt_date") final String? plannedRecieptDate,
    @JsonKey(name:"vendor_trn_number") final String? vendorTrnNumber,
    @JsonKey(name:"vendor_mail_id") final String? vendorMailId,
    @JsonKey(name:"created_by") final String? createdBy,
    @JsonKey(name:"vendor_id") final String? vendorId,
    @JsonKey(name:"vendor_address") final String? vendorAddress,

    @JsonKey(name:"inventory_id") final String? inventoryId,

    @JsonKey(name:"receiving_id") final int? receivinglineId,



    @JsonKey(name: "order_lines") final List<OrderLiness>? orderLinses,

  }) = _GenerateMissing;
  factory GenerateMissing.fromJson(Map<String, dynamic> json) =>
      _$GenerateMissingFromJson(json);
}
@freezed
class OrderLiness with _$OrderLiness {
  const factory OrderLiness({

    @JsonKey(name:"order_line_id") final int? orderLineId,
    @JsonKey(name:"receiving_line_id") final int? receivinglineId,




  }) = _OrderLines;
  factory OrderLiness.fromJson(Map<String, dynamic> json) =>
      _$OrderLinessFromJson(json);
}
@freezed
class OrderedPersonModel with _$OrderedPersonModel {
  const factory OrderedPersonModel({
    final int? id,
    final String? fname,
    final String? lname,
    @JsonKey(name:"user_login_id") final int? userLoginId,
    @JsonKey(name:"employee_usercode") final String? employeeUserCode,
    @JsonKey(name:"employee_code") final String? employeeCode,
    @JsonKey(name:"organization_code") final String? organisationCode,
    @JsonKey(name:"designation_id") final int? designationId,
    @JsonKey(name:"is_active") final bool? isActive,
  }) = _OrderedPersonModel;
  factory OrderedPersonModel.fromJson(Map<String, dynamic> json) =>
      _$OrderedPersonModelFromJson(json);
}