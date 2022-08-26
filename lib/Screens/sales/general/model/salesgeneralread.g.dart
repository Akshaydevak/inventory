// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salesgeneralread.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalesGeneralReadModel _$$_SalesGeneralReadModelFromJson(
        Map<String, dynamic> json) =>
    _$_SalesGeneralReadModel(
      salesOrderData: json['sales_order_data'] == null
          ? null
          : SalesOrderData.fromJson(
              json['sales_order_data'] as Map<String, dynamic>),
      orderTypes: (json['order_types'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      discountType: (json['discount_type'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_SalesGeneralReadModelToJson(
        _$_SalesGeneralReadModel instance) =>
    <String, dynamic>{
      'sales_order_data': instance.salesOrderData,
      'order_types': instance.orderTypes,
      'discount_type': instance.discountType,
    };

_$_SalesOrderData _$$_SalesOrderDataFromJson(Map<String, dynamic> json) =>
    _$_SalesOrderData(
      foc: (json['foc'] as num?)?.toDouble(),
      id: json['id'] as int?,
      discount: (json['discount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      note: json['note'] as String?,
      remarks: json['remarks'] as String?,
      orderType: json['order_type'] as String?,
      orderMode: json['order_mode'] as String?,
      inventoryid: json['inventory_id'] as String?,
      customerId: json['customer_id'] as String?,
      trnNumber: json['trn_number'] as String?,
      shippingAddressId: json['shipping_address_id'] as String?,
      billingAddressId: json['billing_address_id'] as String?,
      orderedDate: json['ordered_date'] as String?,
      paymentId: json['payment_id'] as String?,
      paymentStatus: json['payment_status'] as String?,
      salesOrderCode: json['sales_order_code'] as String?,
      orderStatus: json['order_satus'] as String?,
      invoiceStatus: json['invoice_status'] as String?,
      salesQuotesId: json['sales_quotes_id'] as String?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
      sellingPriceTotal: (json['selling_price_total'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      orderLines: (json['order_lines'] as List<dynamic>?)
          ?.map((e) => SalesOrderLines.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SalesOrderDataToJson(_$_SalesOrderData instance) =>
    <String, dynamic>{
      'foc': instance.foc,
      'id': instance.id,
      'discount': instance.discount,
      'vat': instance.vat,
      'note': instance.note,
      'remarks': instance.remarks,
      'order_type': instance.orderType,
      'order_mode': instance.orderMode,
      'inventory_id': instance.inventoryid,
      'customer_id': instance.customerId,
      'trn_number': instance.trnNumber,
      'shipping_address_id': instance.shippingAddressId,
      'billing_address_id': instance.billingAddressId,
      'ordered_date': instance.orderedDate,
      'payment_id': instance.paymentId,
      'payment_status': instance.paymentStatus,
      'sales_order_code': instance.salesOrderCode,
      'order_satus': instance.orderStatus,
      'invoice_status': instance.invoiceStatus,
      'sales_quotes_id': instance.salesQuotesId,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'taxable_amount': instance.taxableAmount,
      'selling_price_total': instance.sellingPriceTotal,
      'total_price': instance.totalPrice,
      'order_lines': instance.orderLines,
    };
