// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shippinfaddressmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShippingAddressModel _$$_ShippingAddressModelFromJson(
        Map<String, dynamic> json) =>
    _$_ShippingAddressModel(
      id: json['id'] as int?,
      discount: (json['discount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      note: json['note'] as String?,
      remarks: json['remarks'] as String?,
      fullName: json['full_name'] as String?,
      buildingName: json['building_name'] as String?,
      streetName: json['street_name'] as String?,
      customerId: json['customer_id'] as String?,
    );

Map<String, dynamic> _$$_ShippingAddressModelToJson(
        _$_ShippingAddressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'discount': instance.discount,
      'vat': instance.vat,
      'note': instance.note,
      'remarks': instance.remarks,
      'full_name': instance.fullName,
      'building_name': instance.buildingName,
      'street_name': instance.streetName,
      'customer_id': instance.customerId,
    };

_$_SalesInvoiceCodeModel _$$_SalesInvoiceCodeModelFromJson(
        Map<String, dynamic> json) =>
    _$_SalesInvoiceCodeModel(
      id: json['id'] as int?,
      inventoryId: json['inventory_id'] as String?,
      invoiceCode: json['invoice_code'] as String?,
    );

Map<String, dynamic> _$$_SalesInvoiceCodeModelToJson(
        _$_SalesInvoiceCodeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inventory_id': instance.inventoryId,
      'invoice_code': instance.invoiceCode,
    };
