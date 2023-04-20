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
      notes: json['notes'] as String?,
      remarks: json['remarks'] as String?,
      returnOrderCode: json['return_order_code'] as String?,
      inventoryId: json['inventory_id'] as String?,
      returnOrderStatus: json['return_order_status'] as String?,
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
      'notes': instance.notes,
      'remarks': instance.remarks,
      'return_order_code': instance.returnOrderCode,
      'inventory_id': instance.inventoryId,
      'return_order_status': instance.returnOrderStatus,
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
      purchaseInvoiceId: json['purchase_invoice_line_id'] as String?,
      totalQty: json['quantity'] as int?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      grandTotal: (json['grand_total'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      isInvoiced: json['is_invoiced'] as bool? ?? false,
      isActive: json['is_active'] as bool? ?? false,
      isFree: json['is_free'] as bool? ?? false,
      updateCheck: json['updateCheck'] as bool? ?? false,
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
      'purchase_invoice_line_id': instance.purchaseInvoiceId,
      'quantity': instance.totalQty,
      'unit_cost': instance.unitCost,
      'vatable_amount': instance.vatableAmount,
      'grand_total': instance.grandTotal,
      'excess_tax': instance.excessTax,
      'actual_cost': instance.actualCost,
      'is_invoiced': instance.isInvoiced,
      'is_active': instance.isActive,
      'is_free': instance.isFree,
      'updateCheck': instance.updateCheck,
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
      notes: json['notes'] as String?,
      remarks: json['remarks'] as String?,
      foc: (json['foc'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      returnOrderCode: json['return_order_code'] as String?,
      purchaseInvoiceId: json['purchase_invoice_id'] as String?,
      invoiceCode: json['invoice_code'] as String?,
      paymentStatus: json['payment_status'] as String?,
      inventoryId: json['inventory_id'] as String?,
      invoicedBy: json['invoiced_by'] as String?,
      payementCode: json['payment_code'] as String?,
      paymentMethod: json['payment_method'] as String?,
      vendorId: json['vendor_id'] as String?,
      invoiceStatus: json['invoice_status'] as String?,
      invoicedDate: json['invoiced_date'] as String?,
      vendorAddress: json['vendor_address'] as String?,
      vendorTrnNumber: json['vendor_trn_number'] as String?,
      vendorMailId: json['vendor_mail_id'] as String?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      returnOrderStatus: json['return_order_status'] as String?,
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      grandTotal: (json['grand_total'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      orderLiness: (json['invoice_lines'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InvoiceDatasToJson(_$_InvoiceDatas instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vat': instance.vat,
      'notes': instance.notes,
      'remarks': instance.remarks,
      'foc': instance.foc,
      'discount': instance.discount,
      'return_order_code': instance.returnOrderCode,
      'purchase_invoice_id': instance.purchaseInvoiceId,
      'invoice_code': instance.invoiceCode,
      'payment_status': instance.paymentStatus,
      'inventory_id': instance.inventoryId,
      'invoiced_by': instance.invoicedBy,
      'payment_code': instance.payementCode,
      'payment_method': instance.paymentMethod,
      'vendor_id': instance.vendorId,
      'invoice_status': instance.invoiceStatus,
      'invoiced_date': instance.invoicedDate,
      'vendor_address': instance.vendorAddress,
      'vendor_trn_number': instance.vendorTrnNumber,
      'vendor_mail_id': instance.vendorMailId,
      'unit_cost': instance.unitCost,
      'return_order_status': instance.returnOrderStatus,
      'excess_tax': instance.excessTax,
      'actual_cost': instance.actualCost,
      'grand_total': instance.grandTotal,
      'vatable_amount': instance.vatableAmount,
      'invoice_lines': instance.orderLiness,
    };
