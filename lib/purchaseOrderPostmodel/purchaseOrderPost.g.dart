// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchaseOrderPost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseOrderPost _$$_PurchaseOrderPostFromJson(Map<String, dynamic> json) =>
    _$_PurchaseOrderPost(
      purchaseOrderType: json['purchase_order_type'] as String?,
      orderedPerson: json['ordered_person'] as String?,
      iventoryId: json['inventory_id'] as String?,
      vendorId: json['vendor_id'] as String?,
      vendorTrnNumber: json['vendor_trn_number'] as String?,
      vendorMailId: json['vendor_mail_id'] as String?,
      vendorAddress: json['vendor_address'] as String?,
      address1: json['address_1'] as String?,
      address2: json['address_2'] as String?,
      promisedReceiptdate: json['promised_receipt_date'] as String?,
      plannedRecieptDate: json['planned_receipt_date'] as String?,
      note: json['note'] as String?,
      remarks: json['remarks'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      foc: (json['foc'] as num?)?.toDouble(),
      unitcost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      grandTotal: (json['grand_total'] as num?)?.toDouble(),
      variableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      createdBy: json['created_by'] as String?,
      edited_by: json['edited_by'] as String?,
      orderLines: (json['order_lines'] as List<dynamic>?)
          ?.map((e) => OrderLines.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PurchaseOrderPostToJson(
        _$_PurchaseOrderPost instance) =>
    <String, dynamic>{
      'purchase_order_type': instance.purchaseOrderType,
      'ordered_person': instance.orderedPerson,
      'inventory_id': instance.iventoryId,
      'vendor_id': instance.vendorId,
      'vendor_trn_number': instance.vendorTrnNumber,
      'vendor_mail_id': instance.vendorMailId,
      'vendor_address': instance.vendorAddress,
      'address_1': instance.address1,
      'address_2': instance.address2,
      'promised_receipt_date': instance.promisedReceiptdate,
      'planned_receipt_date': instance.plannedRecieptDate,
      'note': instance.note,
      'remarks': instance.remarks,
      'discount': instance.discount,
      'foc': instance.foc,
      'unit_cost': instance.unitcost,
      'excess_tax': instance.excessTax,
      'actual_cost': instance.actualCost,
      'vat': instance.vat,
      'grand_total': instance.grandTotal,
      'vatable_amount': instance.variableAmount,
      'created_by': instance.createdBy,
      'edited_by': instance.edited_by,
      'order_lines': instance.orderLines,
    };

_$_OrderLines _$$_OrderLinesFromJson(Map<String, dynamic> json) =>
    _$_OrderLines(
      vat: (json['vat'] as num?)?.toDouble(),
      currentQty: json['currentQty'] as int?,
      id: json['id'] as int?,
      isActive: json['is_active'] as bool? ?? false,
      isRecieved: json['is_received'] as bool? ?? false,
      supplierCode: json['supplier_code'] as String?,
      isFree: json['is_free'] as bool?,
      isInvoiced: json['is_invoiced'] as bool?,
      variantId: json['variant_id'] as String?,
      vendorRefCode: json['vendor_reference_code'] as String?,
      variantName: json['variant_name'] as String?,
      barcode: json['barcode'] as String?,
      purchaseUom: json['purchase_uom'] as String?,
      cvd: json['cvd'] as String?,
      foc: (json['foc'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      requestedQty: json['requested_qty'] as int?,
      minimumQty: json['minimum_qty'] as int?,
      maximumQty: json['maximum_qty'] as int?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      grandTotal: (json['grand_total'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      updateCheck: json['updatecheck'] as bool? ?? false,
    );

Map<String, dynamic> _$$_OrderLinesToJson(_$_OrderLines instance) =>
    <String, dynamic>{
      'vat': instance.vat,
      'currentQty': instance.currentQty,
      'id': instance.id,
      'is_active': instance.isActive,
      'is_received': instance.isRecieved,
      'supplier_code': instance.supplierCode,
      'is_free': instance.isFree,
      'is_invoiced': instance.isInvoiced,
      'variant_id': instance.variantId,
      'vendor_reference_code': instance.vendorRefCode,
      'variant_name': instance.variantName,
      'barcode': instance.barcode,
      'purchase_uom': instance.purchaseUom,
      'cvd': instance.cvd,
      'foc': instance.foc,
      'discount': instance.discount,
      'requested_qty': instance.requestedQty,
      'minimum_qty': instance.minimumQty,
      'maximum_qty': instance.maximumQty,
      'unit_cost': instance.unitCost,
      'grand_total': instance.grandTotal,
      'vatable_amount': instance.vatableAmount,
      'excess_tax': instance.excessTax,
      'actual_cost': instance.actualCost,
      'updatecheck': instance.updateCheck,
    };
