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
      name: json['name'] as String?,
      title: json['title'] as String?,
      code: json['code'] as String?,
      image: json['image'] as String?,
      salesOrderCode: json['sales_order_code'] as String?,
      salesReturnOrderCode: json['sales_return_order_code'] as String?,
      saleCode: json['sale_code'] as String?,
      isActive: json['is_active'] as bool? ?? false,
      updatecheck: json['updatecheck'] as bool? ?? false,
    );

Map<String, dynamic> _$$_salesOrderTypeModelToJson(
        _$_salesOrderTypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'title': instance.title,
      'code': instance.code,
      'image': instance.image,
      'sales_order_code': instance.salesOrderCode,
      'sales_return_order_code': instance.salesReturnOrderCode,
      'sale_code': instance.saleCode,
      'is_active': instance.isActive,
      'updatecheck': instance.updatecheck,
    };

_$_salesOrderNamePostModel _$$_salesOrderNamePostModelFromJson(
        Map<String, dynamic> json) =>
    _$_salesOrderNamePostModel(
      id: json['id'] as int?,
      type: json['type'] as String?,
      searchElemet: json['search_element'] as String?,
      typeAllyingOn: json['type_applying_on'] as String?,
      segmentList: (json['segment_list'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      inventoryId: json['inventory_id'] as String?,
    );

Map<String, dynamic> _$$_salesOrderNamePostModelToJson(
        _$_salesOrderNamePostModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'search_element': instance.searchElemet,
      'type_applying_on': instance.typeAllyingOn,
      'segment_list': instance.segmentList,
      'inventory_id': instance.inventoryId,
    };
