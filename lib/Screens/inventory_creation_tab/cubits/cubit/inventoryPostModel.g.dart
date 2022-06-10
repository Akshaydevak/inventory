// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventoryPostModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InventoryPostModel _$$_InventoryPostModelFromJson(
        Map<String, dynamic> json) =>
    _$_InventoryPostModel(
      discount: (json['discount'] as num?)?.toDouble(),
      notes: json['notes'] as String?,
      remarks: json['remarks'] as String?,
      foc: (json['foc'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      purchaseOrderCode: json['purchase_order_code'] as String?,
      inventoryId: json['inventory_id'] as String?,
      invoicedBy: json['invoiced_by'] as String?,
      grandtotal: (json['grand_total'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      invoiceLines: (json['invoice_lines'] as List<dynamic>?)
          ?.map((e) => Lines.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InventoryPostModelToJson(
        _$_InventoryPostModel instance) =>
    <String, dynamic>{
      'discount': instance.discount,
      'notes': instance.notes,
      'remarks': instance.remarks,
      'foc': instance.foc,
      'vat': instance.vat,
      'vatable_amount': instance.vatableAmount,
      'purchase_order_code': instance.purchaseOrderCode,
      'inventory_id': instance.inventoryId,
      'invoiced_by': instance.invoicedBy,
      'grand_total': instance.grandtotal,
      'actual_cost': instance.actualCost,
      'excess_tax': instance.excessTax,
      'unit_cost': instance.unitCost,
      'invoice_lines': instance.invoiceLines,
    };
