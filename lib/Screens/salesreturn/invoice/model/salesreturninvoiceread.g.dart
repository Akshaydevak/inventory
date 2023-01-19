// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salesreturninvoiceread.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalesReturnInvoiceReadModel2 _$$_SalesReturnInvoiceReadModel2FromJson(
        Map<String, dynamic> json) =>
    _$_SalesReturnInvoiceReadModel2(
      id: json['id'] as int?,
      discount: (json['discount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      salesReturnOrderCode: json['sales_return_order_code'] as String?,
      returnedDate: json['returned_date'] as String?,
      inventoryId: json['inventory_id'] as String?,
      paymentId: json['payment_id'] as String?,
      paymentStatus: json['payment_status'] as String?,
      customerId: json['customer_id'] as String?,
      trnNumber: json['trn_number'] as String?,
      orderStatus: json['order_satus'] as String?,
      invoiceStatus: json['invoice_status'] as String?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
      sellingPriceTotal: (json['selling_price_total'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      returnOrrder: (json['return_order_lines'] as List<dynamic>?)
          ?.map((e) =>
              SalesReturnLinesOrderLines.fromJson(e as Map<String, dynamic>))
          .toList(),
      invoicedData: json['invoice_data'] == null
          ? null
          : InvoicedDatasSalesReturn.fromJson(
              json['invoice_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SalesReturnInvoiceReadModel2ToJson(
        _$_SalesReturnInvoiceReadModel2 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'discount': instance.discount,
      'vat': instance.vat,
      'sales_return_order_code': instance.salesReturnOrderCode,
      'returned_date': instance.returnedDate,
      'inventory_id': instance.inventoryId,
      'payment_id': instance.paymentId,
      'payment_status': instance.paymentStatus,
      'customer_id': instance.customerId,
      'trn_number': instance.trnNumber,
      'order_satus': instance.orderStatus,
      'invoice_status': instance.invoiceStatus,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'taxable_amount': instance.taxableAmount,
      'selling_price_total': instance.sellingPriceTotal,
      'total_price': instance.totalPrice,
      'return_order_lines': instance.returnOrrder,
      'invoice_data': instance.invoicedData,
    };

_$_SalesReturnLinesOrderLines _$$_SalesReturnLinesOrderLinesFromJson(
        Map<String, dynamic> json) =>
    _$_SalesReturnLinesOrderLines(
      id: json['id'] as int?,
      quantity: json['quantity'] as int?,
      barcode: json['barcode'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      variantId: json['variant_id'] as String?,
      inventoryId: json['inventory_id'] as String?,
      invoiceLineId: json['invoice_line_id'] as String?,
      salesReturnOrderLineCode: json['sales_return_order_line_code'] as String?,
      invoiceReturnLineCode: json['invoice_return_line_code'] as String?,
      stockId: json['stock_id'] as String?,
      warrantyId: json['warranty_id'] as String?,
      salesUOM: json['sales_uom'] as String?,
      discountType: json['discount_type'] as String?,
      returnType: json['return_type'] as String?,
      returnTime: json['return_time'] as String?,
      totalQty: json['total_qty'] as int?,
      salesReturnOrderLineId: json['sales_return_order_id'] as int?,
      isInvoiced: json['is_invoiced'] as bool? ?? false,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
      sellingPriceTotal: (json['selling_price'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      warrentyPrice: (json['warranty_price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_SalesReturnLinesOrderLinesToJson(
        _$_SalesReturnLinesOrderLines instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'barcode': instance.barcode,
      'discount': instance.discount,
      'vat': instance.vat,
      'variant_id': instance.variantId,
      'inventory_id': instance.inventoryId,
      'invoice_line_id': instance.invoiceLineId,
      'sales_return_order_line_code': instance.salesReturnOrderLineCode,
      'invoice_return_line_code': instance.invoiceReturnLineCode,
      'stock_id': instance.stockId,
      'warranty_id': instance.warrantyId,
      'sales_uom': instance.salesUOM,
      'discount_type': instance.discountType,
      'return_type': instance.returnType,
      'return_time': instance.returnTime,
      'total_qty': instance.totalQty,
      'sales_return_order_id': instance.salesReturnOrderLineId,
      'is_invoiced': instance.isInvoiced,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'taxable_amount': instance.taxableAmount,
      'selling_price': instance.sellingPriceTotal,
      'total_price': instance.totalPrice,
      'warranty_price': instance.warrentyPrice,
    };

_$_InvoicedDatasSalesReturn _$$_InvoicedDatasSalesReturnFromJson(
        Map<String, dynamic> json) =>
    _$_InvoicedDatasSalesReturn(
      id: json['id'] as int?,
      quantity: json['quantity'] as int?,
      barcode: json['barcode'] as String?,
      notes: json['notes'] as String?,
      remarks: json['remarks'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      salesReturnOrderCode: json['sales_return_order_code'] as String?,
      salesReturnInvoiceCode: json['sales_return_invoice_code'] as String?,
      inventoryId: json['inventory_id'] as String?,
      customerId: json['customer_id'] as String?,
      customerTrnNumber: json['customer_trn_number'] as String?,
      invoicedBy: json['invoiced_by'] as String?,
      createdDate: json['created_date'] as String?,
      invoiceStatus: json['invoice_status'] as String?,
      paymentMethod: json['payment_method'] as String?,
      paymentStatus: json['payment_status'] as String?,
      paymentCode: json['payment_code'] as String?,
      assignedTo: json['assigned_to'] as String?,
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
      sellingPriceTotal: (json['selling_price_total'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      warrentyPrice: (json['warranty_price'] as num?)?.toDouble(),
      lines: (json['invoice_lines'] as List<dynamic>?)
          ?.map((e) =>
              SalesReturnLinesOrderLines.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InvoicedDatasSalesReturnToJson(
        _$_InvoicedDatasSalesReturn instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'barcode': instance.barcode,
      'notes': instance.notes,
      'remarks': instance.remarks,
      'discount': instance.discount,
      'vat': instance.vat,
      'sales_return_order_code': instance.salesReturnOrderCode,
      'sales_return_invoice_code': instance.salesReturnInvoiceCode,
      'inventory_id': instance.inventoryId,
      'customer_id': instance.customerId,
      'customer_trn_number': instance.customerTrnNumber,
      'invoiced_by': instance.invoicedBy,
      'created_date': instance.createdDate,
      'invoice_status': instance.invoiceStatus,
      'payment_method': instance.paymentMethod,
      'payment_status': instance.paymentStatus,
      'payment_code': instance.paymentCode,
      'assigned_to': instance.assignedTo,
      'excess_tax': instance.excessTax,
      'unit_cost': instance.unitCost,
      'taxable_amount': instance.taxableAmount,
      'selling_price_total': instance.sellingPriceTotal,
      'total_price': instance.totalPrice,
      'warranty_price': instance.warrentyPrice,
      'invoice_lines': instance.lines,
    };
