// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salesreturninvoiceread.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalesReturnGeneralInvoiceReadModel
    _$$_SalesReturnGeneralInvoiceReadModelFromJson(Map<String, dynamic> json) =>
        _$_SalesReturnGeneralInvoiceReadModel(
          id: json['id'] as int?,
          discount: (json['discount'] as num?)?.toDouble(),
          vat: (json['vat'] as num?)?.toDouble(),
          salesOrderCode: json['sales_order_code'] as String?,
          inventoryId: json['inventory_id'] as String?,
          customerId: json['customer_id'] as String?,
          trnNumber: json['trn_number'] as String?,
          paymentId: json['payment_id'] as String?,
          paymentStatus: json['payment_status'] as String?,
          orderStatus: json['order_satus'] as String?,
          unitCost: (json['unit_cost'] as num?)?.toDouble(),
          excessTax: (json['excess_tax'] as num?)?.toDouble(),
          taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
          sellingPriceTotal: (json['selling_price_total'] as num?)?.toDouble(),
          totalPrice: (json['total_price'] as num?)?.toDouble(),
          lines: (json['invoice_lines'] as List<dynamic>?)
              ?.map((e) =>
                  SalesReturnOrderLines.fromJson(e as Map<String, dynamic>))
              .toList(),
          invoicedData: json['invoice_data'] == null
              ? null
              : InvoicedDatas.fromJson(
                  json['invoice_data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_SalesReturnGeneralInvoiceReadModelToJson(
        _$_SalesReturnGeneralInvoiceReadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'discount': instance.discount,
      'vat': instance.vat,
      'sales_order_code': instance.salesOrderCode,
      'inventory_id': instance.inventoryId,
      'customer_id': instance.customerId,
      'trn_number': instance.trnNumber,
      'payment_id': instance.paymentId,
      'payment_status': instance.paymentStatus,
      'order_satus': instance.orderStatus,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'taxable_amount': instance.taxableAmount,
      'selling_price_total': instance.sellingPriceTotal,
      'total_price': instance.totalPrice,
      'invoice_lines': instance.lines,
      'invoice_data': instance.invoicedData,
    };

_$_OrderReturnLinesInvoice _$$_OrderReturnLinesInvoiceFromJson(
        Map<String, dynamic> json) =>
    _$_OrderReturnLinesInvoice(
      id: json['id'] as int?,
      quantity: json['quantity'] as int?,
      barcode: json['barcode'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      variantId: json['variant_id'] as String?,
      salesOrderLineCode: json['sales_order_line_code'] as String?,
      salesUom: json['sales_uom'] as String?,
      isInvoiced: json['is_invoiced'] as bool? ?? false,
      isActive: json['is_active'] as bool? ?? false,
      discountType: json['discount_type'] as String?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
      sellingPriceTotal: (json['selling_price'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      warrentyPrice: (json['warranty_price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_OrderReturnLinesInvoiceToJson(
        _$_OrderReturnLinesInvoice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'barcode': instance.barcode,
      'discount': instance.discount,
      'vat': instance.vat,
      'variant_id': instance.variantId,
      'sales_order_line_code': instance.salesOrderLineCode,
      'sales_uom': instance.salesUom,
      'is_invoiced': instance.isInvoiced,
      'is_active': instance.isActive,
      'discount_type': instance.discountType,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'taxable_amount': instance.taxableAmount,
      'selling_price': instance.sellingPriceTotal,
      'total_price': instance.totalPrice,
      'warranty_price': instance.warrentyPrice,
    };

_$_InvoicedDatas _$$_InvoicedDatasFromJson(Map<String, dynamic> json) =>
    _$_InvoicedDatas(
      id: json['id'] as int?,
      quantity: json['quantity'] as int?,
      barcode: json['barcode'] as String?,
      notes: json['notes'] as String?,
      remarks: json['remarks'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      slaesOrderId: json['sales_order_id'] as int?,
      invoiceCode: json['invoice_code'] as String?,
      inventoryId: json['inventory_id'] as String?,
      createdDate: json['created_date'] as String?,
      invoiceStatus: json['invoice_status'] as String?,
      assignedTo: json['assigned_to'] as String?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
      sellingPriceTotal: (json['selling_price_total'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      warrentyPrice: (json['warranty_price'] as num?)?.toDouble(),
      lines: (json['invoice_lines'] as List<dynamic>?)
          ?.map(
              (e) => SalesReturnOrderLines.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InvoicedDatasToJson(_$_InvoicedDatas instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'barcode': instance.barcode,
      'notes': instance.notes,
      'remarks': instance.remarks,
      'discount': instance.discount,
      'vat': instance.vat,
      'sales_order_id': instance.slaesOrderId,
      'invoice_code': instance.invoiceCode,
      'inventory_id': instance.inventoryId,
      'created_date': instance.createdDate,
      'invoice_status': instance.invoiceStatus,
      'assigned_to': instance.assignedTo,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'taxable_amount': instance.taxableAmount,
      'selling_price_total': instance.sellingPriceTotal,
      'total_price': instance.totalPrice,
      'warranty_price': instance.warrentyPrice,
      'invoice_lines': instance.lines,
    };
