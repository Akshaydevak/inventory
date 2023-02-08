// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variantpatch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VariantPatch _$$_VariantPatchFromJson(Map<String, dynamic> json) =>
    _$_VariantPatch(
      id: json['id'] as int?,
      code: json['code'] as String?,
      barcode: json['barcode'] as String?,
      qrcode: json['qrcode'] as String?,
      vat: (json['vat'] as num?)?.toDouble(),
      description: json['description'] as String?,
      name: json['name'] as String?,
      status: json['status'] as String?,
      image1: json['image1'] as String?,
      image2: json['image2'] as String?,
      height: (json['height'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      length: (json['length'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      image3: json['image3'] as String?,
      image4: json['image4'] as String?,
      image5: json['image5'] as String?,
      catalog1: json['catalog1'] as String?,
      catalog2: json['catalog2'] as String?,
      catalog3: json['catalog3'] as String?,
      catalog4: json['catalog4'] as String?,
      catalog5: json['catalog5'] as String?,
      catalog6: json['catalog6'] as String?,
      catalog7: json['catalog7'] as String?,
      catalog8: json['catalog8'] as String?,
      Ingrediants: json['Ingrediants'] == null
          ? null
          : Storage.fromJson(json['Ingrediants'] as Map<String, dynamic>),
      storage: json['storage'] == null
          ? null
          : Storage.fromJson(json['storage'] as Map<String, dynamic>),
      variantName: json['variant_name'] as String?,
      maxGp: (json['maximum_gp'] as num?)?.toDouble(),
      weightUnit: json['weight_unit'] as String?,
      lengthUnit: json['length_unit'] as String?,
      widthUnit: json['width_unit'] as String?,
      heightUnit: json['height_unit'] as String?,
      minGap: (json['minimum_gp'] as num?)?.toDouble(),
      weightUomId: json['weight_uom_id'] as int?,
      salesUom: json['sales_uom'] as String?,
      purchaseUom: json['purchase_uom'] as String?,
      searchName: json['search_name'] as String?,
      displayName: json['display_name'] as String?,
      variantValue: json['variant_value'] as String?,
      arabicDescription: json['arabic_description'] as String?,
      additionalDescription: json['additional_description'] as String?,
      posName: json['pos_name'] as String?,
      grossWeight: json['gross_weight'] as String?,
      netWeight: json['net_weight'] as String?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      needMultipleIntegration: json['need_multiple_integration'] as bool?,
      landingCost: (json['landing_cost'] as num?)?.toDouble(),
      basePrize: (json['base_price'] as num?)?.toDouble(),
      manuFacturedId: json['manufacture_id'] as int?,
      manuFacturedName: json['manufacture_name'] as String?,
      safetyStock: json['safty_stock'] as int?,
      reOrderPoint: json['reorder_point'] as int?,
      reorderQuantity: json['reorder_quantity'] as int?,
      salesBolock: json['sales_block'] as bool? ?? false,
      purchaseBlock: json['purchase_block'] as bool? ?? false,
      ratioToEcommerce: json['ratio_to_eccommerce'] as String?,
      minMaxRatio: json['min_max_ratio'] as String?,
      minSalesOrderLimit: json['min_sales_order_limit'] as int?,
      maxSalesOrderLimit: json['max_sales_order_limit'] as int?,
      seblingId: json['sebling_id'] as int?,
      sibilingCode: json['sibling_code'] as int?,
      wholeSaleStock: json['whole_sale_stock'] as int?,
      stockWarning: json['stock_warning'] as bool? ?? false,
      itemCatelog: json['item_catalog'] as bool? ?? false,
      itemImage: json['item_image'] as bool? ?? false,
      isActive: json['is_active'] as bool? ?? false,
      retailSellingPricePercentage:
          (json['retail_selling_price_percentage'] as num?)?.toDouble(),
      wholeSellingPricePercentage:
          (json['wholesale_selling_price_percentage'] as num?)?.toDouble(),
      onlineSellingPercenage:
          (json['online_selling_price_percentage'] as num?)?.toDouble(),
      haveStockPartitionGroup:
          json['have_stock_partition_group'] as bool? ?? false,
      haveStockPriority: json['have_stock_priority'] as bool? ?? false,
      stockPartitionGroupId: json['stock_partition_group_id'] as int?,
      vedioUrl: json['vedio_url'] as String?,
      avgGp: (json['average_gp'] as num?)?.toDouble(),
      targetedGp: (json['targeted_gp'] as num?)?.toDouble(),
      minPurchaseOrderLimit: json['min_purchase_order_limit'] as int?,
      maxPurchaseOrderLimit: json['max_purchase_order_limit'] as int?,
      importantInfo: json['important_info'] == null
          ? null
          : ProductFeatures.fromJson(
              json['important_info'] as Map<String, dynamic>),
      additionalInfo: json['Additional_info'] == null
          ? null
          : ProductFeatures.fromJson(
              json['Additional_info'] as Map<String, dynamic>),
      nutriantsFacts: json['Nutriants_facts'] == null
          ? null
          : ProductFeatures.fromJson(
              json['Nutriants_facts'] as Map<String, dynamic>),
      productDetails: json['product_details'] == null
          ? null
          : ProductFeatures.fromJson(
              json['product_details'] as Map<String, dynamic>),
      productFeatures: json['product_features'] == null
          ? null
          : ProductFeatures.fromJson(
              json['product_features'] as Map<String, dynamic>),
      aboutProducts: json['about_the_products'] == null
          ? null
          : Storage.fromJson(
              json['about_the_products'] as Map<String, dynamic>),
      productBehavior: (json['product_behaviour'] as List<dynamic>?)
          ?.map((e) => productBehaviour.fromJson(e as Map<String, dynamic>))
          .toList(),
      usageDirection: json['usage_direction'] == null
          ? null
          : Storage.fromJson(json['usage_direction'] as Map<String, dynamic>),
      vendorDetails: (json['vendor_details'] as List<dynamic>?)
          ?.map((e) => VendorDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      shelfType: json['shelf_type'] as String?,
      shelfTime: json['shelf_time'] as int?,
      haveGiftOption: json['have_gift_option'] as bool? ?? false,
      haveWrapOption: json['have_wrap_option'] as bool? ?? false,
      uomCode: json['uom_code'] as String?,
      alternativeBarcode: (json['alternative_barcode'] as List<dynamic>?)
          ?.map((e) => AlternativeBarcode.fromJson(e as Map<String, dynamic>))
          .toList(),
      alternativeQrCodeBarcode: (json['alternative_qrcode'] as List<dynamic>?)
          ?.map((e) => AlternativeBarcode.fromJson(e as Map<String, dynamic>))
          .toList(),
      inventoryId: json['inventory_id'] as String?,
      producedCountry: json['produced_country'] as String?,
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      returnType: json['return_type'] as String?,
      variantStatus: json['variant_status'] as String?,
      returnTime: json['return_time'] as int?,
    );

Map<String, dynamic> _$$_VariantPatchToJson(_$_VariantPatch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'barcode': instance.barcode,
      'qrcode': instance.qrcode,
      'vat': instance.vat,
      'description': instance.description,
      'name': instance.name,
      'status': instance.status,
      'image1': instance.image1,
      'image2': instance.image2,
      'height': instance.height,
      'width': instance.width,
      'length': instance.length,
      'weight': instance.weight,
      'image3': instance.image3,
      'image4': instance.image4,
      'image5': instance.image5,
      'catalog1': instance.catalog1,
      'catalog2': instance.catalog2,
      'catalog3': instance.catalog3,
      'catalog4': instance.catalog4,
      'catalog5': instance.catalog5,
      'catalog6': instance.catalog6,
      'catalog7': instance.catalog7,
      'catalog8': instance.catalog8,
      'Ingrediants': instance.Ingrediants,
      'storage': instance.storage,
      'variant_name': instance.variantName,
      'maximum_gp': instance.maxGp,
      'weight_unit': instance.weightUnit,
      'length_unit': instance.lengthUnit,
      'width_unit': instance.widthUnit,
      'height_unit': instance.heightUnit,
      'minimum_gp': instance.minGap,
      'weight_uom_id': instance.weightUomId,
      'sales_uom': instance.salesUom,
      'purchase_uom': instance.purchaseUom,
      'search_name': instance.searchName,
      'display_name': instance.displayName,
      'variant_value': instance.variantValue,
      'arabic_description': instance.arabicDescription,
      'additional_description': instance.additionalDescription,
      'pos_name': instance.posName,
      'gross_weight': instance.grossWeight,
      'net_weight': instance.netWeight,
      'unit_cost': instance.unitCost,
      'actual_cost': instance.actualCost,
      'need_multiple_integration': instance.needMultipleIntegration,
      'landing_cost': instance.landingCost,
      'base_price': instance.basePrize,
      'manufacture_id': instance.manuFacturedId,
      'manufacture_name': instance.manuFacturedName,
      'safty_stock': instance.safetyStock,
      'reorder_point': instance.reOrderPoint,
      'reorder_quantity': instance.reorderQuantity,
      'sales_block': instance.salesBolock,
      'purchase_block': instance.purchaseBlock,
      'ratio_to_eccommerce': instance.ratioToEcommerce,
      'min_max_ratio': instance.minMaxRatio,
      'min_sales_order_limit': instance.minSalesOrderLimit,
      'max_sales_order_limit': instance.maxSalesOrderLimit,
      'sebling_id': instance.seblingId,
      'sibling_code': instance.sibilingCode,
      'whole_sale_stock': instance.wholeSaleStock,
      'stock_warning': instance.stockWarning,
      'item_catalog': instance.itemCatelog,
      'item_image': instance.itemImage,
      'is_active': instance.isActive,
      'retail_selling_price_percentage': instance.retailSellingPricePercentage,
      'wholesale_selling_price_percentage':
          instance.wholeSellingPricePercentage,
      'online_selling_price_percentage': instance.onlineSellingPercenage,
      'have_stock_partition_group': instance.haveStockPartitionGroup,
      'have_stock_priority': instance.haveStockPriority,
      'stock_partition_group_id': instance.stockPartitionGroupId,
      'vedio_url': instance.vedioUrl,
      'average_gp': instance.avgGp,
      'targeted_gp': instance.targetedGp,
      'min_purchase_order_limit': instance.minPurchaseOrderLimit,
      'max_purchase_order_limit': instance.maxPurchaseOrderLimit,
      'important_info': instance.importantInfo,
      'Additional_info': instance.additionalInfo,
      'Nutriants_facts': instance.nutriantsFacts,
      'product_details': instance.productDetails,
      'product_features': instance.productFeatures,
      'about_the_products': instance.aboutProducts,
      'product_behaviour': instance.productBehavior,
      'usage_direction': instance.usageDirection,
      'vendor_details': instance.vendorDetails,
      'shelf_type': instance.shelfType,
      'shelf_time': instance.shelfTime,
      'have_gift_option': instance.haveGiftOption,
      'have_wrap_option': instance.haveWrapOption,
      'uom_code': instance.uomCode,
      'alternative_barcode': instance.alternativeBarcode,
      'alternative_qrcode': instance.alternativeQrCodeBarcode,
      'inventory_id': instance.inventoryId,
      'produced_country': instance.producedCountry,
      'excess_tax': instance.excessTax,
      'return_type': instance.returnType,
      'variant_status': instance.variantStatus,
      'return_time': instance.returnTime,
    };
