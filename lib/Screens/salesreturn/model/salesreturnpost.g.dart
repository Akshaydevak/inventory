// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salesreturnpost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalesReturnGeneralPostModel _$$_SalesReturnGeneralPostModelFromJson(
        Map<String, dynamic> json) =>
    _$_SalesReturnGeneralPostModel(
      discount: (json['discount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      reason: json['reason'] as String?,
      remarks: json['remarks'] as String?,
      orderType: json['order_type'] as String?,
      orderMode: json['order_mode'] as String?,
      salesReturnOrderCode: json['sales_return_order_code'] as String?,
      returnOrderDate: json['returned_date'] as String?,
      inventoryid: json['inventory_id'] as String?,
      payementId: json['payment_id'] as String?,
      paymentStatus: json['payment_status'] as String?,
      orderStatus: json['order_satus'] as String?,
      invoiceStatus: json['invoice_status'] as String?,
      customerId: json['customer_id'] as String?,
      trnNumber: json['trn_number'] as String?,
      salesInvoiceId: json['sales_invoice_id'] as String?,
      shippingAddressId: json['shipping_address_id'] as String?,
      billingAddressId: json['billing_address_id'] as String?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
      sellingPriceTotal: (json['selling_price_total'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      createdBy: json['created_by'] as String?,
      editedBy: json['edited_by'] as String?,
      orderLines: (json['order_lines'] as List<dynamic>?)
          ?.map(
              (e) => SalesReturnOrderLines.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SalesReturnGeneralPostModelToJson(
        _$_SalesReturnGeneralPostModel instance) =>
    <String, dynamic>{
      'discount': instance.discount,
      'vat': instance.vat,
      'reason': instance.reason,
      'remarks': instance.remarks,
      'order_type': instance.orderType,
      'order_mode': instance.orderMode,
      'sales_return_order_code': instance.salesReturnOrderCode,
      'returned_date': instance.returnOrderDate,
      'inventory_id': instance.inventoryid,
      'payment_id': instance.payementId,
      'payment_status': instance.paymentStatus,
      'order_satus': instance.orderStatus,
      'invoice_status': instance.invoiceStatus,
      'customer_id': instance.customerId,
      'trn_number': instance.trnNumber,
      'sales_invoice_id': instance.salesInvoiceId,
      'shipping_address_id': instance.shippingAddressId,
      'billing_address_id': instance.billingAddressId,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'taxable_amount': instance.taxableAmount,
      'selling_price_total': instance.sellingPriceTotal,
      'total_price': instance.totalPrice,
      'created_by': instance.createdBy,
      'edited_by': instance.editedBy,
      'order_lines': instance.orderLines,
    };

_$_SalesReturnOrderLines _$$_SalesReturnOrderLinesFromJson(
        Map<String, dynamic> json) =>
    _$_SalesReturnOrderLines(
      id: json['id'] as int?,
      qty: json['qty'] as int?,
      quantity: json['quantity'] as int?,
      discount: (json['discount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      barcode: json['barcode'] as String?,
      remarks: json['remarks'] as String?,
      salesOrderLineCode: json['sales_order_line_code'] as String?,
      variantId: json['variant_id'] as String?,
      stockId: json['stock_id'] as String?,
      warrentyId: json['warranty_id'] as String?,
      salesUom: json['sales_uom'] as String?,
      discountType: json['discount_type'] as String?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
      warrentyPrice: (json['warranty_price'] as num?)?.toDouble(),
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      returnType: json['return_type'] as String?,
      returnTime: json['return_time'] as int?,
      invoicedDate: json['invoiced_date'] as String?,
      invoicedTime: json['invoiced_time'] as String?,
      invoicedLineCode: json['invoice_line_code'] as String?,
      isActive: json['is_active'] as bool? ?? false,
      isInvoiced: json['is_invoiced'] as bool? ?? false,
      updatecheck: json['updatecheck'] as bool? ?? false,
    );

Map<String, dynamic> _$$_SalesReturnOrderLinesToJson(
        _$_SalesReturnOrderLines instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qty': instance.qty,
      'quantity': instance.quantity,
      'discount': instance.discount,
      'vat': instance.vat,
      'barcode': instance.barcode,
      'remarks': instance.remarks,
      'sales_order_line_code': instance.salesOrderLineCode,
      'variant_id': instance.variantId,
      'stock_id': instance.stockId,
      'warranty_id': instance.warrentyId,
      'sales_uom': instance.salesUom,
      'discount_type': instance.discountType,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'taxable_amount': instance.taxableAmount,
      'warranty_price': instance.warrentyPrice,
      'selling_price': instance.sellingPrice,
      'total_price': instance.totalPrice,
      'return_type': instance.returnType,
      'return_time': instance.returnTime,
      'invoiced_date': instance.invoicedDate,
      'invoiced_time': instance.invoicedTime,
      'invoice_line_code': instance.invoicedLineCode,
      'is_active': instance.isActive,
      'is_invoiced': instance.isInvoiced,
      'updatecheck': instance.updatecheck,
    };
