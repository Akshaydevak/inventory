// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchasereturninvoicemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseInvoiceReadModel _$$_PurchaseInvoiceReadModelFromJson(
        Map<String, dynamic> json) =>
    _$_PurchaseInvoiceReadModel(
      id: json['id'] as int?,
      vat: (json['vat'] as num?)?.toDouble(),
      foc: (json['foc'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      returnOrderCode: json['return_order_code'] as String?,
      inventoryId: json['inventory_id'] as String?,
      purchaseInvoiceId: json['purchase_invoice_id'] as String?,
      vendorCode: json['vendor_code'] as String?,
      vendorAddress: json['vendor_address'] as String?,
      vendorTrnNumber: json['vendor_trn_number'] as String?,
      vendorMailId: json['vendor_mail_id'] as String?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      grandTotal: (json['grand_total'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      invoicedata: json['invoice_data'] == null
          ? null
          : InvoiceDatas.fromJson(json['invoice_data'] as Map<String, dynamic>),
      orderLiness: (json['order_lines'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PurchaseInvoiceReadModelToJson(
        _$_PurchaseInvoiceReadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vat': instance.vat,
      'foc': instance.foc,
      'discount': instance.discount,
      'return_order_code': instance.returnOrderCode,
      'inventory_id': instance.inventoryId,
      'purchase_invoice_id': instance.purchaseInvoiceId,
      'vendor_code': instance.vendorCode,
      'vendor_address': instance.vendorAddress,
      'vendor_trn_number': instance.vendorTrnNumber,
      'vendor_mail_id': instance.vendorMailId,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'actual_cost': instance.actualCost,
      'grand_total': instance.grandTotal,
      'vatable_amount': instance.vatableAmount,
      'invoice_data': instance.invoicedata,
      'order_lines': instance.orderLiness,
    };

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      id: json['id'] as int?,
      vat: (json['vat'] as num?)?.toDouble(),
      foc: (json['foc'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      barcode: json['barcode'] as String?,
      returnOrderLineCode: json['return_order_line_code'] as String?,
      variantId: json['variant_id'] as String?,
      variantName: json['variant_name'] as String?,
      purchaseInvoiceId: json['purchase_invoice_id'] as String?,
      totalQty: json['total_qty'] as int?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      isInvoiced: json['is_invoiced'] as bool?,
      isActive: json['is_active'] as bool?,
      isFree: json['is_free'] as bool?,
      createdAt: json['created_at'] as String?,
      suppliercode: json['supplier_code'] as String?,
      purchaseUom: json['purchase_uom'] as String?,
      invoiceId: json['invoice_id'] as int?,
      vendorRefCode: json['vendor_reference_code'] as String?,
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'id': instance.id,
      'vat': instance.vat,
      'foc': instance.foc,
      'discount': instance.discount,
      'barcode': instance.barcode,
      'return_order_line_code': instance.returnOrderLineCode,
      'variant_id': instance.variantId,
      'variant_name': instance.variantName,
      'purchase_invoice_id': instance.purchaseInvoiceId,
      'total_qty': instance.totalQty,
      'unit_cost': instance.unitCost,
      'vatable_amount': instance.vatableAmount,
      'excess_tax': instance.excessTax,
      'actual_cost': instance.actualCost,
      'is_invoiced': instance.isInvoiced,
      'is_active': instance.isActive,
      'is_free': instance.isFree,
      'created_at': instance.createdAt,
      'supplier_code': instance.suppliercode,
      'purchase_uom': instance.purchaseUom,
      'invoice_id': instance.invoiceId,
      'vendor_reference_code': instance.vendorRefCode,
    };

_$_InvoiceDatas _$$_InvoiceDatasFromJson(Map<String, dynamic> json) =>
    _$_InvoiceDatas(
      id: json['id'] as int?,
      vat: (json['vat'] as num?)?.toDouble(),
      foc: (json['foc'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      returnOrderCode: json['return_order_code'] as String?,
      inventoryId: json['inventory_id'] as String?,
      purchaseInvoiceId: json['purchase_invoice_id'] as String?,
      vendorCode: json['vendor_code'] as String?,
      vendorAddress: json['vendor_address'] as String?,
      vendorTrnNumber: json['vendor_trn_number'] as String?,
      vendorMailId: json['vendor_mail_id'] as String?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      grandTotal: (json['grand_total'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      invoicedata: json['invoice_data'] == null
          ? null
          : InvoiceDatas.fromJson(json['invoice_data'] as Map<String, dynamic>),
      orderLiness: (json['nvoice_lines'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InvoiceDatasToJson(_$_InvoiceDatas instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vat': instance.vat,
      'foc': instance.foc,
      'discount': instance.discount,
      'return_order_code': instance.returnOrderCode,
      'inventory_id': instance.inventoryId,
      'purchase_invoice_id': instance.purchaseInvoiceId,
      'vendor_code': instance.vendorCode,
      'vendor_address': instance.vendorAddress,
      'vendor_trn_number': instance.vendorTrnNumber,
      'vendor_mail_id': instance.vendorMailId,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'actual_cost': instance.actualCost,
      'grand_total': instance.grandTotal,
      'vatable_amount': instance.vatableAmount,
      'invoice_data': instance.invoicedata,
      'nvoice_lines': instance.orderLiness,
    };
