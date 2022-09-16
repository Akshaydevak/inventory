// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variantpost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VariantPost _$$_VariantPostFromJson(Map<String, dynamic> json) =>
    _$_VariantPost(
      id: json['id'] as int?,
      code: json['code'] as String?,
      vat: (json['vat'] as num?)?.toDouble(),
      description: json['description'] as String?,
      name: json['name'] as String?,
      image1: json['image1'] as String?,
      image2: json['image2'] as int?,
      image3: json['image3'] as int?,
      image4: json['image4'] as int?,
      image5: json['image5'] as int?,
      catalog1: json['catalog1'] as int?,
      catalog2: json['catalog2'] as int?,
      catalog3: json['catalog3'] as int?,
      catalog4: json['catalog4'] as int?,
      catalog5: json['catalog5'] as int?,
      catalog6: json['catalog6'] as int?,
      catalog7: json['catalog7'] as int?,
      catalog8: json['catalog8'] as int?,
      Ingrediants: (json['Ingrediants'] as List<dynamic>?)
          ?.map((e) => Storage.fromJson(e as Map<String, dynamic>))
          .toList(),
      storage: (json['storage'] as List<dynamic>?)
          ?.map((e) => Storage.fromJson(e as Map<String, dynamic>))
          .toList(),
      uomCode: json['uom_code'] as String?,
      alternativeBarcode: (json['alternative_barcode'] as List<dynamic>?)
          ?.map((e) => AlternativeBarcode.fromJson(e as Map<String, dynamic>))
          .toList(),
      alternativeQrCodeBarcode: (json['alternative_qrcode'] as List<dynamic>?)
          ?.map((e) => AlternativeBarcode.fromJson(e as Map<String, dynamic>))
          .toList(),
      inventoryId: json['inventory_id'] as String?,
      vedioUrl: json['vedio_url'] as String?,
      searchName: json['search_name'] as String?,
      posName: json['pos_name'] as String?,
      displayName: json['display_name'] as String?,
      producedCountry: json['produced_country'] as String?,
      arabicDescription: json['arabic_description'] as String?,
      additionalDescription: json['additional_description'] as String?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      landingCost: (json['landing_cost'] as num?)?.toDouble(),
      grossWeight: (json['gross_weight'] as num?)?.toDouble(),
      netWeight: (json['net_weight'] as num?)?.toDouble(),
      avgGp: (json['average_gp'] as num?)?.toDouble(),
      maxGp: (json['maximum_gp'] as num?)?.toDouble(),
      minGap: (json['minimum_gp'] as num?)?.toDouble(),
      targetedGp: (json['targeted_gp'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      retailSellingPricePercentage:
          (json['retail_selling_price_percentage'] as num?)?.toDouble(),
      wholeSellingPricePercentage:
          (json['wholesale_selling_price_percentage'] as num?)?.toDouble(),
      onlineSellingPercenage:
          (json['online_selling_price_percentage'] as num?)?.toDouble(),
      safetyStock: json['safty_stock'] as int?,
      salesUom: json['sales_uom'] as int?,
      purchaseUom: json['purchase_uom'] as int?,
      reOrderPoint: json['reorder_point'] as int?,
      reorderQuantity: json['reorder_quantity'] as int?,
      wholeSaleStock: json['whole_sale_stock'] as int?,
      minSalesOrderLimit: json['min_sales_order_limit'] as int?,
      maxSalesOrderLimit: json['max_sales_order_limit'] as int?,
      minPurchaseOrderLimit: json['min_purchase_order_limit'] as int?,
      maxPurchaseOrderLimit: json['max_purchase_order_limit'] as int?,
      purchaseBlock: json['purchase_block'] as bool? ?? false,
      salesBolock: json['sales_block'] as bool? ?? false,
      stockWarning: json['stock_warning'] as bool? ?? false,
      isActive: json['is_active'] as bool? ?? false,
      ratioToEcommerce: json['ratio_to_eccommerce'] as String?,
      minMaxRatio: json['min_max_ratio'] as String?,
      returnType: json['return_type'] as String?,
      variantStatus: json['variant_status'] as String?,
      returnTime: json['return_time'] as int?,
      basePrize: (json['base_price'] as num?)?.toDouble(),
      aboutProducts: (json['about_the_products'] as List<dynamic>?)
          ?.map((e) => Storage.fromJson(e as Map<String, dynamic>))
          .toList(),
      productDetails: (json['product_details'] as List<dynamic>?)
          ?.map((e) => ProductFeatures.fromJson(e as Map<String, dynamic>))
          .toList(),
      productFeatures: (json['product_features'] as List<dynamic>?)
          ?.map((e) => ProductFeatures.fromJson(e as Map<String, dynamic>))
          .toList(),
      additionalInfo: (json['Additional_info'] as List<dynamic>?)
          ?.map((e) => ProductFeatures.fromJson(e as Map<String, dynamic>))
          .toList(),
      nutriantsFacts: (json['Nutriants_facts'] as List<dynamic>?)
          ?.map((e) => ProductFeatures.fromJson(e as Map<String, dynamic>))
          .toList(),
      usageDirection: (json['usage_direction'] as List<dynamic>?)
          ?.map((e) => Storage.fromJson(e as Map<String, dynamic>))
          .toList(),
      importantInfo: (json['important_info'] as List<dynamic>?)
          ?.map((e) => ProductFeatures.fromJson(e as Map<String, dynamic>))
          .toList(),
      productBehavior: (json['product_behaviour'] as List<dynamic>?)
          ?.map((e) => ProductFeatures.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VariantPostToJson(_$_VariantPost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'vat': instance.vat,
      'description': instance.description,
      'name': instance.name,
      'image1': instance.image1,
      'image2': instance.image2,
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
      'uom_code': instance.uomCode,
      'alternative_barcode': instance.alternativeBarcode,
      'alternative_qrcode': instance.alternativeQrCodeBarcode,
      'inventory_id': instance.inventoryId,
      'vedio_url': instance.vedioUrl,
      'search_name': instance.searchName,
      'pos_name': instance.posName,
      'display_name': instance.displayName,
      'produced_country': instance.producedCountry,
      'arabic_description': instance.arabicDescription,
      'additional_description': instance.additionalDescription,
      'unit_cost': instance.unitCost,
      'actual_cost': instance.actualCost,
      'landing_cost': instance.landingCost,
      'gross_weight': instance.grossWeight,
      'net_weight': instance.netWeight,
      'average_gp': instance.avgGp,
      'maximum_gp': instance.maxGp,
      'minimum_gp': instance.minGap,
      'targeted_gp': instance.targetedGp,
      'excess_tax': instance.excessTax,
      'retail_selling_price_percentage': instance.retailSellingPricePercentage,
      'wholesale_selling_price_percentage':
          instance.wholeSellingPricePercentage,
      'online_selling_price_percentage': instance.onlineSellingPercenage,
      'safty_stock': instance.safetyStock,
      'sales_uom': instance.salesUom,
      'purchase_uom': instance.purchaseUom,
      'reorder_point': instance.reOrderPoint,
      'reorder_quantity': instance.reorderQuantity,
      'whole_sale_stock': instance.wholeSaleStock,
      'min_sales_order_limit': instance.minSalesOrderLimit,
      'max_sales_order_limit': instance.maxSalesOrderLimit,
      'min_purchase_order_limit': instance.minPurchaseOrderLimit,
      'max_purchase_order_limit': instance.maxPurchaseOrderLimit,
      'purchase_block': instance.purchaseBlock,
      'sales_block': instance.salesBolock,
      'stock_warning': instance.stockWarning,
      'is_active': instance.isActive,
      'ratio_to_eccommerce': instance.ratioToEcommerce,
      'min_max_ratio': instance.minMaxRatio,
      'return_type': instance.returnType,
      'variant_status': instance.variantStatus,
      'return_time': instance.returnTime,
      'base_price': instance.basePrize,
      'about_the_products': instance.aboutProducts,
      'product_details': instance.productDetails,
      'product_features': instance.productFeatures,
      'Additional_info': instance.additionalInfo,
      'Nutriants_facts': instance.nutriantsFacts,
      'usage_direction': instance.usageDirection,
      'important_info': instance.importantInfo,
      'product_behaviour': instance.productBehavior,
    };
