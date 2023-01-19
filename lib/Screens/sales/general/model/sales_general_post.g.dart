// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_general_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalesGeneralPostModel _$$_SalesGeneralPostModelFromJson(
        Map<String, dynamic> json) =>
    _$_SalesGeneralPostModel(
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
      salesQuotesId: json['sales_quotes_id'] as String?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
      sellingPriceTotal: (json['selling_price_total'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      createdBy: json['created_by'] as String?,
      editedBy: json['edited_by'] as String?,
      orderLines: (json['order_lines'] as List<dynamic>?)
          ?.map((e) => SalesOrderLines.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SalesGeneralPostModelToJson(
        _$_SalesGeneralPostModel instance) =>
    <String, dynamic>{
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
      'sales_quotes_id': instance.salesQuotesId,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'taxable_amount': instance.taxableAmount,
      'selling_price_total': instance.sellingPriceTotal,
      'total_price': instance.totalPrice,
      'created_by': instance.createdBy,
      'edited_by': instance.editedBy,
      'order_lines': instance.orderLines,
    };

_$_SalesOrderLines _$$_SalesOrderLinesFromJson(Map<String, dynamic> json) =>
    _$_SalesOrderLines(
      id: json['id'] as int?,
      qty: json['qty'] as int?,
      quantity: json['quantity'] as int?,
      discount: (json['discount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      barcode: json['barcode'] as String?,
      remarks: json['remarks'] as String?,
      variantId: json['variant_id'] as String?,
      salesOrderLineCode: json['sales_order_line_code'] as String?,
      variaNtname: json['variant_name'] as String?,
      stockId: json['stock_id'] as String?,
      warrentyId: json['warranty_id'] as String?,
      salesUom: json['sales_uom'] as String?,
      discountType: json['discount_type'] as String?,
      returnType: json['return_type'] as String?,
      returnTime: json['return_time'] as int?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      warrentyPrice: (json['warranty_price'] as num?)?.toDouble(),
      isActive: json['is_active'] as bool? ?? false,
      isInvoiced: json['is_invoiced'] as bool? ?? false,
      updatecheck: json['updatecheck'] as bool? ?? false,
    );

Map<String, dynamic> _$$_SalesOrderLinesToJson(_$_SalesOrderLines instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qty': instance.qty,
      'quantity': instance.quantity,
      'discount': instance.discount,
      'vat': instance.vat,
      'barcode': instance.barcode,
      'remarks': instance.remarks,
      'variant_id': instance.variantId,
      'sales_order_line_code': instance.salesOrderLineCode,
      'variant_name': instance.variaNtname,
      'stock_id': instance.stockId,
      'warranty_id': instance.warrentyId,
      'sales_uom': instance.salesUom,
      'discount_type': instance.discountType,
      'return_type': instance.returnType,
      'return_time': instance.returnTime,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'taxable_amount': instance.taxableAmount,
      'selling_price': instance.sellingPrice,
      'total_price': instance.totalPrice,
      'warranty_price': instance.warrentyPrice,
      'is_active': instance.isActive,
      'is_invoiced': instance.isInvoiced,
      'updatecheck': instance.updatecheck,
    };

_$_ShippingAddressCreationModel _$$_ShippingAddressCreationModelFromJson(
        Map<String, dynamic> json) =>
    _$_ShippingAddressCreationModel(
      country: json['country'] as String?,
      state: json['state'] as String?,
      city: json['city'] as String?,
      contact: json['contact'] as String?,
      landmark: json['landmark'] as String?,
      instructions: json['instructions'] as String?,
      addressType: json['address_type'] as String?,
      fullName: json['full_name'] as String?,
      streetName: json['street_name'] as String?,
      buillingName: json['building_name'] as String?,
      addressTag: json['address_tag'] as String?,
      userCode: json['user_code'] as String?,
    );

Map<String, dynamic> _$$_ShippingAddressCreationModelToJson(
        _$_ShippingAddressCreationModel instance) =>
    <String, dynamic>{
      'country': instance.country,
      'state': instance.state,
      'city': instance.city,
      'contact': instance.contact,
      'landmark': instance.landmark,
      'instructions': instance.instructions,
      'address_type': instance.addressType,
      'full_name': instance.fullName,
      'street_name': instance.streetName,
      'building_name': instance.buillingName,
      'address_tag': instance.addressTag,
      'user_code': instance.userCode,
    };
