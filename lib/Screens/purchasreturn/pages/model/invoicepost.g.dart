// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoicepost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseReturnInvoicePostModel _$$_PurchaseReturnInvoicePostModelFromJson(
        Map<String, dynamic> json) =>
    _$_PurchaseReturnInvoicePostModel(
      foc: (json['foc'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      notes: json['notes'] as String?,
      remarks: json['remarks'] as String?,
      purchaseInvoiceId: json['purchase_invoice_id'] as String?,
      returnOrderCode: json['return_order_code'] as String?,
      inventoryId: json['inventory_id'] as String?,
      invoicedBy: json['invoiced_by'] as String?,
      venderId: json['vendor_id'] as String?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      grandTotal: (json['grand_total'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      vendorTrnNumber: json['vendor_trn_number'] as String?,
      lines: (json['invoice_lines'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PurchaseReturnInvoicePostModelToJson(
        _$_PurchaseReturnInvoicePostModel instance) =>
    <String, dynamic>{
      'foc': instance.foc,
      'discount': instance.discount,
      'vat': instance.vat,
      'notes': instance.notes,
      'remarks': instance.remarks,
      'purchase_invoice_id': instance.purchaseInvoiceId,
      'return_order_code': instance.returnOrderCode,
      'inventory_id': instance.inventoryId,
      'invoiced_by': instance.invoicedBy,
      'vendor_id': instance.venderId,
      'unit_cost': instance.unitCost,
      'grand_total': instance.grandTotal,
      'vatable_amount': instance.vatableAmount,
      'excess_tax': instance.excessTax,
      'actual_cost': instance.actualCost,
      'vendor_trn_number': instance.vendorTrnNumber,
      'invoice_lines': instance.lines,
    };
