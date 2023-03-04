import 'package:freezed_annotation/freezed_annotation.dart';
part 'customeridlistmodel.g.dart';
part 'customeridlistmodel.freezed.dart';

@freezed
class CustomerIdCreationModel with _$CustomerIdCreationModel {
  const factory CustomerIdCreationModel({

    final int? id,
    final String? fname,
    final String? lname,

    @JsonKey(name: "customer_usercode") final String? customerUserCode,
    @JsonKey(name: "customer_name") final String? customerName,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name: "is_delete",defaultValue: false) final bool? isDeleted,
    @JsonKey(name: "is_business_user",defaultValue: false) final bool? isBuisnessUser,
    @JsonKey(name: "login_id") final int? loginId,
    @JsonKey(name: "tax_id") final String? taxId,


  }) = _CustomerIdCreationModel;
  factory CustomerIdCreationModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerIdCreationModelFromJson(json);
}


@freezed
class PaymentListSalesModel with _$PaymentListSalesModel {
  const factory PaymentListSalesModel({

    final int? id,
    final String? order,
    final String? lname,
    final String? created,
    final String? updated,

    @JsonKey(name: "user_code") final String? userCode,
    @JsonKey(name: "payment_method") final String? paymentMethod,
    @JsonKey(name: "transaction_code") final String? transactionCode,
    @JsonKey(name: "customer_code") final String? customerCode,
    @JsonKey(name: "payment_status") final String? paymentStatus,
    @JsonKey(name: "total_amount") final double? totalAmount,
    @JsonKey(name: "update_check",defaultValue: false) final bool? updateCheck,
    @JsonKey(name: "post_response",) final PostResponse? postResponse,



  }) = _PaymentListSalesModel;
  factory PaymentListSalesModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentListSalesModelFromJson(json);
}


@freezed
class PostResponse with _$PostResponse {
  const factory PostResponse({


    final String? contact,
    final String? updated,


    @JsonKey(name: "order_id") final String? orderId,
    @JsonKey(name: "customer_name") final String? customerName,





  }) = _PostResponse;
  factory PostResponse.fromJson(Map<String, dynamic> json) =>
      _$PostResponseFromJson(json);
}


@freezed
class CustomerIdListModel with _$CustomerIdListModel {
  const factory CustomerIdListModel({

    final int? id,
    final String? fname,
    final String? lname,

    @JsonKey(name: "customer_usercode") final String? customerUserCode,
    @JsonKey(name: "customer_name") final String? customerName,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name: "is_delete",defaultValue: false) final bool? isDeleted,
    @JsonKey(name: "is_business_user",defaultValue: false) final bool? isBuisnessUser,
    @JsonKey(name: "business_data",) final BusinessData? businessData,



  }) = _CustomerIdListModel;
  factory CustomerIdListModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerIdListModelFromJson(json);
}
@freezed
class BusinessData with _$BusinessData {
  const factory BusinessData({


    @JsonKey(name: "tax_id") final String? taxId,
    @JsonKey(name: "business_meta") final BusinessMeta? buisnessMeta,



  }) = _BusinessData;
  factory BusinessData.fromJson(Map<String, dynamic> json) =>
      _$BusinessDataFromJson(json);
}
@freezed
class BusinessMeta with _$BusinessMeta {
  const factory BusinessMeta({


    @JsonKey(name: "fullname") final String? fullmae,




  }) = _BusinessMeta;
  factory BusinessMeta.fromJson(Map<String, dynamic> json) =>
      _$BusinessMetaFromJson(json);
}