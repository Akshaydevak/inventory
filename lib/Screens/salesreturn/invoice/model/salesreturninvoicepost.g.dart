// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salesreturninvoicepost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalesReturnInvoicePostModel2 _$$_SalesReturnInvoicePostModel2FromJson(
        Map<String, dynamic> json) =>
    _$_SalesReturnInvoicePostModel2(
      discount: (json['discount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      reason: json['reason'] as String?,
      remarks: json['remarks'] as String?,
      notes: json['notes'] as String?,
      salesReturnOrderCode: json['sales_return_order_code'] as String?,
      inventoryid: json['inventory_id'] as String?,
      customerId: json['customer_id'] as String?,
      customerTrnNumber: json['customer_trn_number'] as String?,
      inVoicedBy: json['invoiced_by'] as String?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
      sellingPriceTotal: (json['selling_price_total'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      assignTo: json['assigned_to'] as String?,
      orderLines: (json['invoice_lines'] as List<dynamic>?)
          ?.map((e) =>
              SalesReturnLinesOrderLines.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SalesReturnInvoicePostModel2ToJson(
        _$_SalesReturnInvoicePostModel2 instance) =>
    <String, dynamic>{
      'discount': instance.discount,
      'vat': instance.vat,
      'reason': instance.reason,
      'remarks': instance.remarks,
      'notes': instance.notes,
      'sales_return_order_code': instance.salesReturnOrderCode,
      'inventory_id': instance.inventoryid,
      'customer_id': instance.customerId,
      'customer_trn_number': instance.customerTrnNumber,
      'invoiced_by': instance.inVoicedBy,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'taxable_amount': instance.taxableAmount,
      'selling_price_total': instance.sellingPriceTotal,
      'total_price': instance.totalPrice,
      'assigned_to': instance.assignTo,
      'invoice_lines': instance.orderLines,
    };
