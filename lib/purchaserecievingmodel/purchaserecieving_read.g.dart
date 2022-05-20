// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchaserecieving_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseRecievingRead _$$_PurchaseRecievingReadFromJson(
        Map<String, dynamic> json) =>
    _$_PurchaseRecievingRead(
      id: json['id'] as int?,
      foc: (json['foc'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      orderCode: json['order_code'] as String?,
      receivingCode: json['receiving_code'] as String?,
      inventoryId: json['inventory_id'] as String?,
      orderStatus: json['order_status'] as String?,
      receivingStatus: json['receiving_status'] as String?,
      invoiceStatus: json['invoice_status'] as String?,
      orderCreatedDate: json['order_created_date'] as String?,
      unitCost: json['unit_cost'] as int?,
      grandTotal: (json['grand_total'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      is_invoiced: json['is_invoiced'] as bool?,
      isActive: json['is_active'] as bool?,
      isFree: json['is_free'] as bool?,
      receivingLines: (json['receiving_lines'] as List<dynamic>?)
          ?.map((e) => RecievingLines.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PurchaseRecievingReadToJson(
        _$_PurchaseRecievingRead instance) =>
    <String, dynamic>{
      'id': instance.id,
      'foc': instance.foc,
      'discount': instance.discount,
      'vat': instance.vat,
      'order_code': instance.orderCode,
      'receiving_code': instance.receivingCode,
      'inventory_id': instance.inventoryId,
      'order_status': instance.orderStatus,
      'receiving_status': instance.receivingStatus,
      'invoice_status': instance.invoiceStatus,
      'order_created_date': instance.orderCreatedDate,
      'unit_cost': instance.unitCost,
      'grand_total': instance.grandTotal,
      'vatable_amount': instance.vatableAmount,
      'excess_tax': instance.excessTax,
      'actual_cost': instance.actualCost,
      'is_invoiced': instance.is_invoiced,
      'is_active': instance.isActive,
      'is_free': instance.isFree,
      'receiving_lines': instance.receivingLines,
    };

_$_RecievingLines _$$_RecievingLinesFromJson(Map<String, dynamic> json) =>
    _$_RecievingLines(
      id: json['id'] as int?,
      barcode: json['barcode'] as String?,
      foc: (json['foc'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      orderLineCode: json['order_line_code'] as String?,
      receivinglineCode: json['receiving_line_code'] as String?,
      variantId: json['variant_id'] as String?,
      variantName: json['variant_name'] as String?,
      supplierCode: json['supplier_code'] as String?,
      purchaseUom: json['purchase_uom'] as String?,
      isReceived: json['is_received'] as bool?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      grandTotal: (json['grand_total'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      isInvoiced: json['is_invoiced'] as bool?,
      isActive: json['is_active'] as bool?,
      isFree: json['is_free'] as bool?,
      purchaseOrderLineId: json['purchase_order_line_id'] as int?,
    );

Map<String, dynamic> _$$_RecievingLinesToJson(_$_RecievingLines instance) =>
    <String, dynamic>{
      'id': instance.id,
      'barcode': instance.barcode,
      'foc': instance.foc,
      'discount': instance.discount,
      'vat': instance.vat,
      'order_line_code': instance.orderLineCode,
      'receiving_line_code': instance.receivinglineCode,
      'variant_id': instance.variantId,
      'variant_name': instance.variantName,
      'supplier_code': instance.supplierCode,
      'purchase_uom': instance.purchaseUom,
      'is_received': instance.isReceived,
      'unit_cost': instance.unitCost,
      'grand_total': instance.grandTotal,
      'vatable_amount': instance.vatableAmount,
      'excess_tax': instance.excessTax,
      'actual_cost': instance.actualCost,
      'is_invoiced': instance.isInvoiced,
      'is_active': instance.isActive,
      'is_free': instance.isFree,
      'purchase_order_line_id': instance.purchaseOrderLineId,
    };
