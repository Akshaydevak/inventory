// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchaseinvoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseReturnGeneralRead _$$_PurchaseReturnGeneralReadFromJson(
        Map<String, dynamic> json) =>
    _$_PurchaseReturnGeneralRead(
      id: json['id'] as int?,
      foc: (json['foc'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      invoiceCode: json['invoice_code'] as String?,
      orderType: json['order_type'] as String?,
      inventoryId: json['inventory_id'] as String?,
      vendorId: json['vendor_id'] as String?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      grandTotal: (json['grand_total'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      vendorTrnNumber: json['vendor_trn_number'] as String?,
      vendorMailId: json['vendor_mail_id'] as String?,
      vendorAddress: json['vendor_address'] as String?,
      lines: (json['lines'] as List<dynamic>?)
          ?.map((e) => Liness.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PurchaseReturnGeneralReadToJson(
        _$_PurchaseReturnGeneralRead instance) =>
    <String, dynamic>{
      'id': instance.id,
      'foc': instance.foc,
      'discount': instance.discount,
      'vat': instance.vat,
      'invoice_code': instance.invoiceCode,
      'order_type': instance.orderType,
      'inventory_id': instance.inventoryId,
      'vendor_id': instance.vendorId,
      'unit_cost': instance.unitCost,
      'grand_total': instance.grandTotal,
      'vatable_amount': instance.vatableAmount,
      'excess_tax': instance.excessTax,
      'actual_cost': instance.actualCost,
      'vendor_trn_number': instance.vendorTrnNumber,
      'vendor_mail_id': instance.vendorMailId,
      'vendor_address': instance.vendorAddress,
      'lines': instance.lines,
    };

_$_Liness _$$_LinessFromJson(Map<String, dynamic> json) => _$_Liness(
      id: json['id'] as int?,
      foc: (json['foc'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      invoiceLineCode: json['invoice_line_code'] as String?,
      variantId: json['variant_id'] as String?,
      variantName: json['variant_name'] as String?,
      totalQty: json['total_qty'] as int?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      grandTotal: (json['grand_total'] as num?)?.toDouble(),
      barcode: json['barcode'] as String?,
      supplierCode: json['supplier_code'] as String?,
      purchaseUom: json['purchase_uom'] as String?,
      isFree: json['is_free'] as bool?,
      isActive: json['is_active'] as bool?,
    );

Map<String, dynamic> _$$_LinessToJson(_$_Liness instance) => <String, dynamic>{
      'id': instance.id,
      'foc': instance.foc,
      'discount': instance.discount,
      'vat': instance.vat,
      'invoice_line_code': instance.invoiceLineCode,
      'variant_id': instance.variantId,
      'variant_name': instance.variantName,
      'total_qty': instance.totalQty,
      'unit_cost': instance.unitCost,
      'vatable_amount': instance.vatableAmount,
      'excess_tax': instance.excessTax,
      'actual_cost': instance.actualCost,
      'grand_total': instance.grandTotal,
      'barcode': instance.barcode,
      'supplier_code': instance.supplierCode,
      'purchase_uom': instance.purchaseUom,
      'is_free': instance.isFree,
      'is_active': instance.isActive,
    };

_$_ReturnGeneralRead _$$_ReturnGeneralReadFromJson(Map<String, dynamic> json) =>
    _$_ReturnGeneralRead(
      id: json['id'] as int?,
      note: json['note'] as String?,
      remarks: json['remarks'] as String?,
      foc: (json['foc'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      invoiceCode: json['invoice_code'] as String?,
      orderType: json['order_type'] as String?,
      inventoryId: json['inventory_id'] as String?,
      returnOrderCode: json['return_order_code'] as String?,
      returnOrderDate: json['return_order_date'] as String?,
      purchaseInvoiceId: json['purchase_invoice_id'] as String?,
      paymentStatus: json['payment_status'] as String?,
      paymentCode: json['payment_code'] as String?,
      returnOrderStatus: json['return_order_status'] as String?,
      returnInvoiceStatus: json['return_invoice_status'] as String?,
      vendorCode: json['vendor_code'] as String?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      grandTotal: (json['grand_total'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      vendorTrnNumber: json['vendor_trn_number'] as String?,
      vendorMailId: json['vendor_mail_id'] as String?,
      vendorAddress: json['vendor_address'] as String?,
      editedBy: json['edited_by'] as String?,
      lines: (json['order_lines'] as List<dynamic>?)
          ?.map((e) => Liness.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ReturnGeneralReadToJson(
        _$_ReturnGeneralRead instance) =>
    <String, dynamic>{
      'id': instance.id,
      'note': instance.note,
      'remarks': instance.remarks,
      'foc': instance.foc,
      'discount': instance.discount,
      'vat': instance.vat,
      'invoice_code': instance.invoiceCode,
      'order_type': instance.orderType,
      'inventory_id': instance.inventoryId,
      'return_order_code': instance.returnOrderCode,
      'return_order_date': instance.returnOrderDate,
      'purchase_invoice_id': instance.purchaseInvoiceId,
      'payment_status': instance.paymentStatus,
      'payment_code': instance.paymentCode,
      'return_order_status': instance.returnOrderStatus,
      'return_invoice_status': instance.returnInvoiceStatus,
      'vendor_code': instance.vendorCode,
      'unit_cost': instance.unitCost,
      'grand_total': instance.grandTotal,
      'vatable_amount': instance.vatableAmount,
      'excess_tax': instance.excessTax,
      'actual_cost': instance.actualCost,
      'vendor_trn_number': instance.vendorTrnNumber,
      'vendor_mail_id': instance.vendorMailId,
      'vendor_address': instance.vendorAddress,
      'edited_by': instance.editedBy,
      'order_lines': instance.lines,
    };
