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

_$_salesOrderTypeModel _$$_salesOrderTypeModelFromJson(
        Map<String, dynamic> json) =>
    _$_salesOrderTypeModel(
      id: json['id'] as int?,
      salesOrderCode: json['sales_order_code'] as String?,
      salesReturnOrderCode: json['sales_return_order_code'] as String?,
    );

Map<String, dynamic> _$$_salesOrderTypeModelToJson(
        _$_salesOrderTypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sales_order_code': instance.salesOrderCode,
      'sales_return_order_code': instance.salesReturnOrderCode,
    };
