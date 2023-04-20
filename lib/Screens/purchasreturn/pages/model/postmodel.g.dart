// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseReturnGeneralPost _$$_PurchaseReturnGeneralPostFromJson(
        Map<String, dynamic> json) =>
    _$_PurchaseReturnGeneralPost(
      id: json['id'] as int?,
      foc: (json['foc'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      note: json['note'] as String?,
      remarks: json['remarks'] as String?,
      invoiceCode: json['invoice_code'] as String?,
      orderType: json['order_type'] as String?,
      purchaseInvoiceId: json['purchase_invoice_id'] as String?,
      inventoryId: json['inventory_id'] as String?,
      vendorCode: json['vendor_code'] as String?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      grandTotal: (json['grand_total'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      vendorTrnNumber: json['vendor_trn_number'] as String?,
      vendorMailId: json['vendor_mail_id'] as String?,
      vendorAddress: json['vendor_address'] as String?,
      createdBy: json['created_by'] as String?,
      editedBy: json['edited_by'] as String?,
      paymentCode: json['payment_code'] as String?,
      paymentMethod: json['payment_method'] as String?,
      paymentStaus: json['payment_status'] as String?,
      lines: (json['order_lines'] as List<dynamic>?)
          ?.map((e) => Liness.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PurchaseReturnGeneralPostToJson(
        _$_PurchaseReturnGeneralPost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'foc': instance.foc,
      'discount': instance.discount,
      'vat': instance.vat,
      'note': instance.note,
      'remarks': instance.remarks,
      'invoice_code': instance.invoiceCode,
      'order_type': instance.orderType,
      'purchase_invoice_id': instance.purchaseInvoiceId,
      'inventory_id': instance.inventoryId,
      'vendor_code': instance.vendorCode,
      'unit_cost': instance.unitCost,
      'grand_total': instance.grandTotal,
      'vatable_amount': instance.vatableAmount,
      'excess_tax': instance.excessTax,
      'actual_cost': instance.actualCost,
      'vendor_trn_number': instance.vendorTrnNumber,
      'vendor_mail_id': instance.vendorMailId,
      'vendor_address': instance.vendorAddress,
      'created_by': instance.createdBy,
      'edited_by': instance.editedBy,
      'payment_code': instance.paymentCode,
      'payment_method': instance.paymentMethod,
      'payment_status': instance.paymentStaus,
      'order_lines': instance.lines,
    };
