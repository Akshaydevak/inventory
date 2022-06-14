// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_read_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InventoryRead _$$_InventoryReadFromJson(Map<String, dynamic> json) =>
    _$_InventoryRead(
      orderCode: json['order_code'] as String?,
      orderDate: json['ordered_date'] as String?,
      inventoryId: json['inventory_id'] as String?,
      paymentCode: json['payment_code'] as String?,
      payementStatus: json['payment_status'] as String?,
      orderStatus: json['order_status'] as String?,
      calculationData: json['calculation_data'] == null
          ? null
          : CalculationData.fromJson(
              json['calculation_data'] as Map<String, dynamic>),
      invoicedata: json['invoice_data'] == null
          ? null
          : InvoiceData.fromJson(json['invoice_data'] as Map<String, dynamic>),
      lines: (json['lines'] as List<dynamic>?)
          ?.map((e) => Lines.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InventoryReadToJson(_$_InventoryRead instance) =>
    <String, dynamic>{
      'order_code': instance.orderCode,
      'ordered_date': instance.orderDate,
      'inventory_id': instance.inventoryId,
      'payment_code': instance.paymentCode,
      'payment_status': instance.payementStatus,
      'order_status': instance.orderStatus,
      'calculation_data': instance.calculationData,
      'invoice_data': instance.invoicedata,
      'lines': instance.lines,
    };

_$_CalculationData _$$_CalculationDataFromJson(Map<String, dynamic> json) =>
    _$_CalculationData(
      discount: (json['discount'] as num?)?.toDouble(),
      foc: (json['foc'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      grandtotal: (json['grand_total'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CalculationDataToJson(_$_CalculationData instance) =>
    <String, dynamic>{
      'discount': instance.discount,
      'foc': instance.foc,
      'vat': instance.vat,
      'vatable_amount': instance.vatableAmount,
      'grand_total': instance.grandtotal,
      'actual_cost': instance.actualCost,
      'excess_tax': instance.excessTax,
      'unit_cost': instance.unitCost,
    };

_$_InvoiceData _$$_InvoiceDataFromJson(Map<String, dynamic> json) =>
    _$_InvoiceData(
      discount: (json['discount'] as num?)?.toDouble(),
      notes: json['notes'] as String?,
      remarks: json['remarks'] as String?,
      foc: (json['foc'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      orderCode: json['order_code'] as String?,
      inventoryId: json['inventory_id'] as String?,
      invoicedBy: json['invoiced_by'] as String?,
      grandtotal: (json['grand_total'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      invoiceLines: (json['invoice_lines'] as List<dynamic>?)
          ?.map((e) => Lines.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InvoiceDataToJson(_$_InvoiceData instance) =>
    <String, dynamic>{
      'discount': instance.discount,
      'notes': instance.notes,
      'remarks': instance.remarks,
      'foc': instance.foc,
      'vat': instance.vat,
      'vatable_amount': instance.vatableAmount,
      'order_code': instance.orderCode,
      'inventory_id': instance.inventoryId,
      'invoiced_by': instance.invoicedBy,
      'grand_total': instance.grandtotal,
      'actual_cost': instance.actualCost,
      'excess_tax': instance.excessTax,
      'unit_cost': instance.unitCost,
      'invoice_lines': instance.invoiceLines,
    };

_$_InvoiceLines _$$_InvoiceLinesFromJson(Map<String, dynamic> json) =>
    _$_InvoiceLines(
      vat: (json['vat'] as num?)?.toDouble(),
      isRecieved: json['isRecieved'] as bool?,
      currentQty: json['currentQty'] as int?,
      id: json['id'] as int?,
      isActive: json['is_active'] as bool? ?? false,
      supplierCode: json['supplier_code'] as String?,
      receiveLineCode: json['receiving_line_code'] as String?,
      isFree: json['is_free'] as bool?,
      isInvoiced: json['is_invoiced'] as bool?,
      variantId: json['variant_id'] as String?,
      vendorRefCode: json['vendor_reference_code'] as String?,
      variantName: json['variant_name'] as String?,
      barcode: json['barcode'] as String?,
      purchaseuom: json['purchase_uom'] as String?,
      cvd: json['cvd'] as String?,
      foc: (json['foc'] as num?)?.toDouble(),
      discount: json['discount'] as int?,
      requestedQty: json['requested_qty'] as int?,
      minimumQty: json['minimum_qty'] as int?,
      maximumQty: json['maximum_qty'] as int?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      grandTotal: (json['grand_total'] as num?)?.toDouble(),
      variableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_InvoiceLinesToJson(_$_InvoiceLines instance) =>
    <String, dynamic>{
      'vat': instance.vat,
      'isRecieved': instance.isRecieved,
      'currentQty': instance.currentQty,
      'id': instance.id,
      'is_active': instance.isActive,
      'supplier_code': instance.supplierCode,
      'receiving_line_code': instance.receiveLineCode,
      'is_free': instance.isFree,
      'is_invoiced': instance.isInvoiced,
      'variant_id': instance.variantId,
      'vendor_reference_code': instance.vendorRefCode,
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

_$_Lines _$$_LinesFromJson(Map<String, dynamic> json) => _$_Lines(
      id: json['id'] as int?,
      foc: (json['foc'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      barcode: json['barcode'] as String?,
      receiveLineCode: json['receiving_line_code'] as String?,
      variantId: json['variant_id'] as String?,
      receivedQty: json['received_qty'] as int?,
      receiveLineId: json['receiving_line_id'] as int?,
      purchaseOrderLineid: json['purchase_order_line_id'] as int?,
      invoiceLineCode: json['invoice_line_code'] as String?,
      variantName: json['variant_name'] as String?,
      totalQty: json['total_qty'] as int?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      grandTotal: (json['grand_total'] as num?)?.toDouble(),
      variableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      isInvoiced: json['is_invoiced'] as bool?,
      supplierCode: json['supplier_code'] as int?,
      purchaseUom: json['purchase_uom'] as String?,
      isFree: json['is_free'] as bool?,
      isReceived: json['is_received'] as bool?,
    );

Map<String, dynamic> _$$_LinesToJson(_$_Lines instance) => <String, dynamic>{
      'id': instance.id,
      'foc': instance.foc,
      'discount': instance.discount,
      'vat': instance.vat,
      'barcode': instance.barcode,
      'receiving_line_code': instance.receiveLineCode,
      'variant_id': instance.variantId,
      'received_qty': instance.receivedQty,
      'receiving_line_id': instance.receiveLineId,
      'purchase_order_line_id': instance.purchaseOrderLineid,
      'invoice_line_code': instance.invoiceLineCode,
      'variant_name': instance.variantName,
      'total_qty': instance.totalQty,
      'unit_cost': instance.unitCost,
      'grand_total': instance.grandTotal,
      'vatable_amount': instance.variableAmount,
      'excess_tax': instance.excessTax,
      'actual_cost': instance.actualCost,
      'is_invoiced': instance.isInvoiced,
      'supplier_code': instance.supplierCode,
      'purchase_uom': instance.purchaseUom,
      'is_free': instance.isFree,
      'is_received': instance.isReceived,
    };
