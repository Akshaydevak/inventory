// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_order_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseOrderRead _$$_PurchaseOrderReadFromJson(Map<String, dynamic> json) =>
    _$_PurchaseOrderRead(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      typesOfPurcasing: (json['types_of_purchasing'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_PurchaseOrderReadToJson(
        _$_PurchaseOrderRead instance) =>
    <String, dynamic>{
      'data': instance.data,
      'types_of_purchasing': instance.typesOfPurcasing,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['id'] as int?,
      orderLines: (json['order_lines'] as List<dynamic>?)
          ?.map((e) => OrderLines.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderCode: json['order_code'] as String?,
      purchaseOrderType: json['purchase_order_type'] as String?,
      recievingStatus: json['recieving_status'] as String?,
      paymentcode: json['payment_code'] as String?,
      orderDate: json['ordered_date'] as String?,
      orderStatus: json['order_status'] as String?,
      invoiceStatus: json['invoice_status'] as String?,
      orderedPereson: json['ordered_person'] as String?,
      paymentStatus: json['payment_status'] as String?,
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
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      vat: json['vat'] as int?,
      grandTotal: (json['grand_total'] as num?)?.toDouble(),
      variableAmount: json['vatable_amount'] as int?,
      createdBy: json['created_by'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'order_lines': instance.orderLines,
      'order_code': instance.orderCode,
      'purchase_order_type': instance.purchaseOrderType,
      'recieving_status': instance.recievingStatus,
      'payment_code': instance.paymentcode,
      'ordered_date': instance.orderDate,
      'order_status': instance.orderStatus,
      'invoice_status': instance.invoiceStatus,
      'ordered_person': instance.orderedPereson,
      'payment_status': instance.paymentStatus,
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
    };
