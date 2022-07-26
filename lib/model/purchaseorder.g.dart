// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchaseorder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseOrder _$$_PurchaseOrderFromJson(Map<String, dynamic> json) =>
    _$_PurchaseOrder(
      id: json['id'] as int?,
      orderCode: json['order_code'] as String?,
      returnOrderCode: json['return_order_code'] as String?,
    );

Map<String, dynamic> _$$_PurchaseOrderToJson(_$_PurchaseOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_code': instance.orderCode,
      'return_order_code': instance.returnOrderCode,
    };
