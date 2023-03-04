// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customeridlistmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerIdCreationModel _$$_CustomerIdCreationModelFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerIdCreationModel(
      id: json['id'] as int?,
      fname: json['fname'] as String?,
      lname: json['lname'] as String?,
      customerUserCode: json['customer_usercode'] as String?,
      customerName: json['customer_name'] as String?,
      isActive: json['is_active'] as bool? ?? false,
      isDeleted: json['is_delete'] as bool? ?? false,
      isBuisnessUser: json['is_business_user'] as bool? ?? false,
      loginId: json['login_id'] as int?,
      taxId: json['tax_id'] as String?,
    );

Map<String, dynamic> _$$_CustomerIdCreationModelToJson(
        _$_CustomerIdCreationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fname': instance.fname,
      'lname': instance.lname,
      'customer_usercode': instance.customerUserCode,
      'customer_name': instance.customerName,
      'is_active': instance.isActive,
      'is_delete': instance.isDeleted,
      'is_business_user': instance.isBuisnessUser,
      'login_id': instance.loginId,
      'tax_id': instance.taxId,
    };

_$_PaymentListSalesModel _$$_PaymentListSalesModelFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentListSalesModel(
      id: json['id'] as int?,
      order: json['order'] as String?,
      lname: json['lname'] as String?,
      created: json['created'] as String?,
      updated: json['updated'] as String?,
      userCode: json['user_code'] as String?,
      paymentMethod: json['payment_method'] as String?,
      transactionCode: json['transaction_code'] as String?,
      customerCode: json['customer_code'] as String?,
      paymentStatus: json['payment_status'] as String?,
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
      updateCheck: json['update_check'] as bool? ?? false,
      postResponse: json['post_response'] == null
          ? null
          : PostResponse.fromJson(
              json['post_response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PaymentListSalesModelToJson(
        _$_PaymentListSalesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'lname': instance.lname,
      'created': instance.created,
      'updated': instance.updated,
      'user_code': instance.userCode,
      'payment_method': instance.paymentMethod,
      'transaction_code': instance.transactionCode,
      'customer_code': instance.customerCode,
      'payment_status': instance.paymentStatus,
      'total_amount': instance.totalAmount,
      'update_check': instance.updateCheck,
      'post_response': instance.postResponse,
    };

_$_PostResponse _$$_PostResponseFromJson(Map<String, dynamic> json) =>
    _$_PostResponse(
      contact: json['contact'] as String?,
      updated: json['updated'] as String?,
      orderId: json['order_id'] as String?,
      customerName: json['customer_name'] as String?,
    );

Map<String, dynamic> _$$_PostResponseToJson(_$_PostResponse instance) =>
    <String, dynamic>{
      'contact': instance.contact,
      'updated': instance.updated,
      'order_id': instance.orderId,
      'customer_name': instance.customerName,
    };

_$_CustomerIdListModel _$$_CustomerIdListModelFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerIdListModel(
      id: json['id'] as int?,
      fname: json['fname'] as String?,
      lname: json['lname'] as String?,
      customerUserCode: json['customer_usercode'] as String?,
      customerName: json['customer_name'] as String?,
      isActive: json['is_active'] as bool? ?? false,
      isDeleted: json['is_delete'] as bool? ?? false,
      isBuisnessUser: json['is_business_user'] as bool? ?? false,
      businessData: json['business_data'] == null
          ? null
          : BusinessData.fromJson(
              json['business_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CustomerIdListModelToJson(
        _$_CustomerIdListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fname': instance.fname,
      'lname': instance.lname,
      'customer_usercode': instance.customerUserCode,
      'customer_name': instance.customerName,
      'is_active': instance.isActive,
      'is_delete': instance.isDeleted,
      'is_business_user': instance.isBuisnessUser,
      'business_data': instance.businessData,
    };

_$_BusinessData _$$_BusinessDataFromJson(Map<String, dynamic> json) =>
    _$_BusinessData(
      taxId: json['tax_id'] as String?,
      buisnessMeta: json['business_meta'] == null
          ? null
          : BusinessMeta.fromJson(
              json['business_meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BusinessDataToJson(_$_BusinessData instance) =>
    <String, dynamic>{
      'tax_id': instance.taxId,
      'business_meta': instance.buisnessMeta,
    };

_$_BusinessMeta _$$_BusinessMetaFromJson(Map<String, dynamic> json) =>
    _$_BusinessMeta(
      fullmae: json['fullname'] as String?,
    );

Map<String, dynamic> _$$_BusinessMetaToJson(_$_BusinessMeta instance) =>
    <String, dynamic>{
      'fullname': instance.fullmae,
    };
