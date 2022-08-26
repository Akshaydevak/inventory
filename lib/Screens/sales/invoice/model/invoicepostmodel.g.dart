// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoicepostmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalesReturnInvoicePostModel _$$_SalesReturnInvoicePostModelFromJson(
        Map<String, dynamic> json) =>
    _$_SalesReturnInvoicePostModel(
      discount: (json['discount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      notes: json['notes'] as String?,
      remarks: json['remarks'] as String?,
      salesOrderId: json['sales_order_id'] as int?,
      inventoryId: json['inventory_id'] as String?,
      invoicedBy: json['invoiced_by'] as String?,
      assignedTo: json['assigned_to'] as String?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
      sellingPriceTotal: (json['selling_price_total'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      ivoiceLines: (json['invoice_lines'] as List<dynamic>?)
          ?.map((e) => Postlines.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SalesReturnInvoicePostModelToJson(
        _$_SalesReturnInvoicePostModel instance) =>
    <String, dynamic>{
      'discount': instance.discount,
      'vat': instance.vat,
      'notes': instance.notes,
      'remarks': instance.remarks,
      'sales_order_id': instance.salesOrderId,
      'inventory_id': instance.inventoryId,
      'invoiced_by': instance.invoicedBy,
      'assigned_to': instance.assignedTo,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'taxable_amount': instance.taxableAmount,
      'selling_price_total': instance.sellingPriceTotal,
      'total_price': instance.totalPrice,
      'invoice_lines': instance.ivoiceLines,
    };

_$_Postlines _$$_PostlinesFromJson(Map<String, dynamic> json) => _$_Postlines(
      quantity: json['quantity'] as int?,
      vat: (json['vat'] as num?)?.toDouble(),
      isInvoiced: json['is_invoiced'] as bool? ?? false,
      isActive: json['is_active'] as bool? ?? false,
      salesOrderLineCode: json['sales_order_line_code'] as String?,
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      warrentyPrice: (json['warranty_price'] as num?)?.toDouble(),
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      taxableAmoubt: (json['taxable_amount'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PostlinesToJson(_$_Postlines instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'vat': instance.vat,
      'is_invoiced': instance.isInvoiced,
      'is_active': instance.isActive,
      'sales_order_line_code': instance.salesOrderLineCode,
      'total_price': instance.totalPrice,
      'warranty_price': instance.warrentyPrice,
      'selling_price': instance.sellingPrice,
      'taxable_amount': instance.taxableAmoubt,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
    };
