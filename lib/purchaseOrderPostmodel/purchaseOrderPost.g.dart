// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchaseOrderPost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseOrderPost _$$_PurchaseOrderPostFromJson(Map<String, dynamic> json) =>
    _$_PurchaseOrderPost(
      purchaseOrderType: json['purchase_order_type'] as String?,
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
      discount: json['discount'] as int?,
      foc: json['foc'] as int?,
      unitcost: json['unit_cost'] as int?,
      excessTax: json['excess_tax'] as int?,
      actualCost: json['actual_cost'] as int?,
      vat: json['vat'] as int?,
      grandTotal: json['grand_total'] as int?,
      variableAmount: json['vatable_amount'] as int?,
      createdBy: json['created_by'] as String?,
      orderLines: (json['order_lines'] as List<dynamic>?)
          ?.map((e) => OrderLines.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PurchaseOrderPostToJson(
        _$_PurchaseOrderPost instance) =>
    <String, dynamic>{
      'purchase_order_type': instance.purchaseOrderType,
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
      'order_lines': instance.orderLines,
    };

_$_OrderLines _$$_OrderLinesFromJson(Map<String, dynamic> json) =>
    _$_OrderLines(
      supplierCode: json['supplier_code'] as String?,
      variantId: json['variant_id'] as String?,
      variantName: json['variant_name'] as String?,
      barcode: json['barcode'] as String?,
      purchaseuom: json['purchase_uom'] as String?,
      cvd: json['cvd'] as String?,
      foc: json['foc'] as int?,
      discount: json['discount'] as int?,
      requestedQty: json['requested_qty'] as int?,
      minimumQty: json['minimum_qty'] as int?,
      maximumQty: json['maximum_qty'] as int?,
      unitCost: json['unit_cost'] as int?,
      grandTotal: json['grand_total'] as int?,
      variableAmount: json['vatable_amount'] as int?,
      excessTax: json['excess_tax'] as int?,
      actualCost: json['actual_cost'] as int?,
    );

Map<String, dynamic> _$$_OrderLinesToJson(_$_OrderLines instance) =>
    <String, dynamic>{
      'supplier_code': instance.supplierCode,
      'variant_id': instance.variantId,
      'variant_name': instance.variantName,
      'barcode': instance.barcode,
      'purchase_uom': instance.purchaseuom,
      'cvd': instance.cvd,
      'foc': instance.foc,
      'discount': instance.discount,
      'requested_qty': instance.requestedQty,
      'minimum_qty': instance.minimumQty,
      'maximum_qty': instance.maximumQty,
      'unit_cost': instance.unitCost,
      'grand_total': instance.grandTotal,
      'vatable_amount': instance.variableAmount,
      'excess_tax': instance.excessTax,
      'actual_cost': instance.actualCost,
    };
