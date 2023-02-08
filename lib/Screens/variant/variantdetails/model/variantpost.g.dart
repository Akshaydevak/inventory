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
      image2: json['image2'] as String?,
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
      length: (json['length'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      Ingrediants: json['Ingrediants'] == null
          ? null
          : Storage.fromJson(json['Ingrediants'] as Map<String, dynamic>),
      storage: json['storage'] == null
          ? null
          : Storage.fromJson(json['storage'] as Map<String, dynamic>),
      inventoryId: json['inventory_id'] as String?,
      inventoryName: json['inventory_name'] as String?,
      weightUomId: json['weight_uom_id'] as int?,
      uomCode: json['uom_code'] as String?,
      varAlternativeRfid: json['var_alternative_rfid'] as String?,
      alternativeBarcode: (json['alternative_barcode'] as List<dynamic>?)
          ?.map((e) => AlternativeBarcode.fromJson(e as Map<String, dynamic>))
          .toList(),
      alternativeQrCodeBarcode: (json['alternative_qrcode'] as List<dynamic>?)
          ?.map((e) => AlternativeBarcode.fromJson(e as Map<String, dynamic>))
          .toList(),
      vendorDetails: (json['vendor_details'] as List<dynamic>?)
          ?.map((e) => VendorDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      vedioUrl: json['vedio_url'] as String?,
      searchName: json['search_name'] as String?,
      needMultipleIntegration: json['need_multiple_integration'] as bool?,
      posName: json['pos_name'] as String?,
      displayName: json['display_name'] as String?,
      producedCountry: json['produced_country'] as String?,
      arabicDescription: json['arabic_description'] as String?,
      additionalDescription: json['additional_description'] as String?,
      manuFacturedId: json['manufacture_id'] as int?,
      manuFacturedName: json['manufacture_name'] as String?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      weightUnit: json['weight_unit'] as String?,
      lengthUnit: json['length_unit'] as String?,
      widthUnit: json['width_unit'] as String?,
      heightUnit: json['height_unit'] as String?,
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
      seblingId: json['sebling_id'] as int?,
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
      haveStockPartitionGroup:
          json['have_stock_partition_group'] as bool? ?? false,
      haveStockPriority: json['have_stock_priority'] as bool? ?? false,
      stockPartitionGroupId: json['stock_partition_group_id'] as int?,
      stockWarning: json['stock_warning'] as bool? ?? false,
      isActive: json['is_active'] as bool? ?? false,
      itemCatelog: json['item_catalog'] as bool? ?? false,
      itemImage: json['item_image'] as bool? ?? false,
      ratioToEcommerce: json['ratio_to_eccommerce'] as String?,
      minMaxRatio: json['min_max_ratio'] as String?,
      returnType: json['return_type'] as String?,
      variantStatus: json['variant_status'] as String?,
      returnTime: json['return_time'] as int?,
      basePrize: (json['base_price'] as num?)?.toDouble(),
      aboutProducts: json['about_the_products'] == null
          ? null
          : Storage.fromJson(
              json['about_the_products'] as Map<String, dynamic>),
      productDetails: json['product_details'] == null
          ? null
          : ProductFeatures.fromJson(
              json['product_details'] as Map<String, dynamic>),
      productFeatures: json['product_features'] == null
          ? null
          : ProductFeatures.fromJson(
              json['product_features'] as Map<String, dynamic>),
      additionalInfo: json['Additional_info'] == null
          ? null
          : ProductFeatures.fromJson(
              json['Additional_info'] as Map<String, dynamic>),
      nutriantsFacts: json['Nutriants_facts'] == null
          ? null
          : ProductFeatures.fromJson(
              json['Nutriants_facts'] as Map<String, dynamic>),
      usageDirection: json['usage_direction'] == null
          ? null
          : Storage.fromJson(json['usage_direction'] as Map<String, dynamic>),
      importantInfo: json['important_info'] == null
          ? null
          : ProductFeatures.fromJson(
              json['important_info'] as Map<String, dynamic>),
      productBehavior: (json['product_behaviour'] as List<dynamic>?)
          ?.map((e) => productBehaviour.fromJson(e as Map<String, dynamic>))
          .toList(),
      shelfType: json['shelf_type'] as String?,
      shelfTime: json['shelf_time'] as int?,
      haveGiftOption: json['have_gift_option'] as bool? ?? false,
      haveWrapOption: json['have_wrap_option'] as bool? ?? false,
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
      'length': instance.length,
      'width': instance.width,
      'weight': instance.weight,
      'height': instance.height,
      'Ingrediants': instance.Ingrediants,
      'storage': instance.storage,
      'inventory_id': instance.inventoryId,
      'inventory_name': instance.inventoryName,
      'weight_uom_id': instance.weightUomId,
      'uom_code': instance.uomCode,
      'var_alternative_rfid': instance.varAlternativeRfid,
      'alternative_barcode': instance.alternativeBarcode,
      'alternative_qrcode': instance.alternativeQrCodeBarcode,
      'vendor_details': instance.vendorDetails,
      'vedio_url': instance.vedioUrl,
      'search_name': instance.searchName,
      'need_multiple_integration': instance.needMultipleIntegration,
      'pos_name': instance.posName,
      'display_name': instance.displayName,
      'produced_country': instance.producedCountry,
      'arabic_description': instance.arabicDescription,
      'additional_description': instance.additionalDescription,
      'manufacture_id': instance.manuFacturedId,
      'manufacture_name': instance.manuFacturedName,
      'unit_cost': instance.unitCost,
      'weight_unit': instance.weightUnit,
      'length_unit': instance.lengthUnit,
      'width_unit': instance.widthUnit,
      'height_unit': instance.heightUnit,
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
      'sebling_id': instance.seblingId,
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
      'have_stock_partition_group': instance.haveStockPartitionGroup,
      'have_stock_priority': instance.haveStockPriority,
      'stock_partition_group_id': instance.stockPartitionGroupId,
      'stock_warning': instance.stockWarning,
      'is_active': instance.isActive,
      'item_catalog': instance.itemCatelog,
      'item_image': instance.itemImage,
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
      'shelf_type': instance.shelfType,
      'shelf_time': instance.shelfTime,
      'have_gift_option': instance.haveGiftOption,
      'have_wrap_option': instance.haveWrapOption,
    };

_$_LinkedItemPostModel _$$_LinkedItemPostModelFromJson(
        Map<String, dynamic> json) =>
    _$_LinkedItemPostModel(
      title: json['title'] as String?,
      description: json['description'] as String?,
      inventoryId: json['inventory_id'] as String?,
      isActive: json['is_active'] as bool? ?? false,
      linkedItemListModel: (json['linked_item_id'] as List<dynamic>?)
          ?.map((e) => LinkedItemListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      variantId: json['variant_id'] as int?,
    );

Map<String, dynamic> _$$_LinkedItemPostModelToJson(
        _$_LinkedItemPostModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'inventory_id': instance.inventoryId,
      'is_active': instance.isActive,
      'linked_item_id': instance.linkedItemListModel,
      'variant_id': instance.variantId,
    };

_$_LinkedItemListModel _$$_LinkedItemListModelFromJson(
        Map<String, dynamic> json) =>
    _$_LinkedItemListModel(
      id: json['id'] as int?,
      code: json['code'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_LinkedItemListModelToJson(
        _$_LinkedItemListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
    };

_$_LinkedItemListReadModel _$$_LinkedItemListReadModelFromJson(
        Map<String, dynamic> json) =>
    _$_LinkedItemListReadModel(
      id: json['id'] as int?,
      code: json['code'] as String?,
      linkedItemListIdModel: (json['linked_item_id'] as List<dynamic>?)
          ?.map(
              (e) => LinkedItemListIdModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      linkedItemMetaModel: json['linkeditem_meta'] == null
          ? null
          : LinkedItemMetaModel.fromJson(
              json['linkeditem_meta'] as Map<String, dynamic>),
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_LinkedItemListReadModelToJson(
        _$_LinkedItemListReadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'linked_item_id': instance.linkedItemListIdModel,
      'linkeditem_meta': instance.linkedItemMetaModel,
      'is_active': instance.isActive,
    };

_$_LinkedItemListIdModel _$$_LinkedItemListIdModelFromJson(
        Map<String, dynamic> json) =>
    _$_LinkedItemListIdModel(
      id: json['id'] as int?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      title: json['title'] as String?,
      groupId: json['group_id'] as int?,
    );

Map<String, dynamic> _$$_LinkedItemListIdModelToJson(
        _$_LinkedItemListIdModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'title': instance.title,
      'group_id': instance.groupId,
    };

_$_LinkedItemMetaModel _$$_LinkedItemMetaModelFromJson(
        Map<String, dynamic> json) =>
    _$_LinkedItemMetaModel(
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_LinkedItemMetaModelToJson(
        _$_LinkedItemMetaModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };
