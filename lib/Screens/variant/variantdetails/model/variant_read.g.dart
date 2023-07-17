// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VariantReadModel _$$_VariantReadModelFromJson(Map<String, dynamic> json) =>
    _$_VariantReadModel(
      id: json['id'] as int?,
      code: json['code'] as String?,
      vat: (json['vat'] as num?)?.toDouble(),
      description: json['description'] as String?,
      name: json['name'] as String?,
      image1: json['image1'] as String?,
      image2: json['image2'] as String?,
      image3: json['image3'] as String?,
      barcode: json['barcode'] == null
          ? null
          : Barcode.fromJson(json['barcode'] as Map<String, dynamic>),
      qrcode: json['qrcode'] == null
          ? null
          : QrCode.fromJson(json['qrcode'] as Map<String, dynamic>),
      dimension: json['dimension'] == null
          ? null
          : Dimension.fromJson(json['dimension'] as Map<String, dynamic>),
      uomCode: json['uom_code'] as String?,
      variantFrameWorkId: json['variantframework_id'] as int?,
      uomId: json['uom_id'] as String?,
      inventoryId: json['inventory_id'] as String?,
      partitionGroupName: json['partition_group_name'] as String?,
      uomGroupName: json['uom_group_name'] as String?,
      reOrderPoint: json['reorder_point'] as int?,
      siblingCode: json['sibling_code'] as String?,
      reOrderQuantity: json['reorder_quantity'] as int?,
      linkedItem: json['linked_item'] as String?,
      alterNativeBarcode: (json['var_alternative_barcode'] as List<dynamic>?)
          ?.map((e) => AlternativeBarcode.fromJson(e as Map<String, dynamic>))
          .toList(),
      alterNativeQrCode: (json['var_alternative_qrcode'] as List<dynamic>?)
          ?.map((e) => AlternativeBarcode.fromJson(e as Map<String, dynamic>))
          .toList(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      weightUomId: json['weight_uom_id'] as int?,
      maxSaleOrderLimit: json['max_sales_order_limit'] as int?,
      minSaleOrderLimit: json['min_sales_order_limit'] as int?,
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      returType: (json['return_type_options'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      safetyStock: json['safty_stock'] as int?,
      minPurchaseOrderLimit: json['min_purchase_order_limit'] as int?,
      maxPurchaseOrderLimit: json['max_purchase_order_limit'] as int?,
      manuFacturedId: json['manufacture_id'] as int?,
      manuFacturedName: json['manufacture_name'] as String?,
      needMultipleIntegration: json['need_multiple_integration'] as bool?,
      avgGp: (json['avrg_gp'] as num?)?.toDouble(),
      basePrize: (json['base_price'] as num?)?.toDouble(),
      returnType: json['return_type'] as String?,
      returnTime: json['return_time'] as int?,
      haveStockPartitionGroup:
          json['have_stock_partition_group'] as bool? ?? false,
      haveStockPriority: json['have_stock_priority'] as bool? ?? false,
      stockPartitionGroupId: json['stock_partition_group_id'] as int?,
      maxGp: (json['max_gp'] as num?)?.toDouble(),
      minGap: (json['min_gp'] as num?)?.toDouble(),
      targetedGp: (json['targeted_gp'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      landingCost: (json['landing_cost'] as num?)?.toDouble(),
      uomNameData: json['uom_name_data'] == null
          ? null
          : UomNameData.fromJson(json['uom_name_data'] as Map<String, dynamic>),
      salesUomData: json['sales_uom_data'] == null
          ? null
          : SalesUomData.fromJson(
              json['sales_uom_data'] as Map<String, dynamic>),
      vendorDetails: (json['vendor_details'] as List<dynamic>?)
          ?.map((e) => VendorDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      purchaseUomdata: json['purchase_uom_data'] == null
          ? null
          : PurchaseUomData.fromJson(
              json['purchase_uom_data'] as Map<String, dynamic>),
      variantframeWork: json['variant_framework_data'] == null
          ? null
          : VariantFrameWork.fromJson(
              json['variant_framework_data'] as Map<String, dynamic>),
      variantMeta: json['variant_meta'] == null
          ? null
          : VariantMeta.fromJson(json['variant_meta'] as Map<String, dynamic>),
      itemData: json['item_data'] == null
          ? null
          : ItemData.fromJson(json['item_data'] as Map<String, dynamic>),
      searchName: json['search_name'] as String?,
      SalesUom: json['sales_uom'] as String?,
      grossWeight: json['gross_weight'] as String?,
      producedCountry: json['produced_country'] as String?,
      netWeight: json['net_weight'] as String?,
      posName: json['pos_name'] as String?,
      displayname: json['display_name'] as String?,
      purchaseuom: json['purchase_uom'] as String?,
      vdeioUrl: json['vedio_url'] as String?,
      arabicDescription: json['arabic_description'] as String?,
      additionalDescription: json['additional_description'] as String?,
      isActive: json['is_active'] as bool? ?? false,
      salesBlock: json['sales_block'] as bool? ?? false,
      purchaseBlock: json['purchase_block'] as bool? ?? false,
      itemCatalog: json['item_catalog'] as bool? ?? false,
      itemImage: json['item_image'] as bool? ?? false,
      stockWarning: json['stock_warning'] as bool? ?? false,
      itemCatelog1: json['item_cataloge1'] as String?,
      itemCatelog2: json['item_cataloge2'] as String?,
      itemCatelog3: json['item_cataloge3'] as String?,
      itemCatelog4: json['item_cataloge4'] as String?,
      shelfType: json['shelf_type'] as String?,
      shelfTime: json['shelf_time'] as int?,
      haveGiftOption: json['have_gift_option'] as bool? ?? false,
      haveWrapOption: json['have_wrap_option'] as bool? ?? false,
    );

Map<String, dynamic> _$$_VariantReadModelToJson(_$_VariantReadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'vat': instance.vat,
      'description': instance.description,
      'name': instance.name,
      'image1': instance.image1,
      'image2': instance.image2,
      'image3': instance.image3,
      'barcode': instance.barcode,
      'qrcode': instance.qrcode,
      'dimension': instance.dimension,
      'uom_code': instance.uomCode,
      'variantframework_id': instance.variantFrameWorkId,
      'uom_id': instance.uomId,
      'inventory_id': instance.inventoryId,
      'partition_group_name': instance.partitionGroupName,
      'uom_group_name': instance.uomGroupName,
      'reorder_point': instance.reOrderPoint,
      'sibling_code': instance.siblingCode,
      'reorder_quantity': instance.reOrderQuantity,
      'linked_item': instance.linkedItem,
      'var_alternative_barcode': instance.alterNativeBarcode,
      'var_alternative_qrcode': instance.alterNativeQrCode,
      'unit_cost': instance.unitCost,
      'weight_uom_id': instance.weightUomId,
      'max_sales_order_limit': instance.maxSaleOrderLimit,
      'min_sales_order_limit': instance.minSaleOrderLimit,
      'actual_cost': instance.actualCost,
      'return_type_options': instance.returType,
      'safty_stock': instance.safetyStock,
      'min_purchase_order_limit': instance.minPurchaseOrderLimit,
      'max_purchase_order_limit': instance.maxPurchaseOrderLimit,
      'manufacture_id': instance.manuFacturedId,
      'manufacture_name': instance.manuFacturedName,
      'need_multiple_integration': instance.needMultipleIntegration,
      'avrg_gp': instance.avgGp,
      'base_price': instance.basePrize,
      'return_type': instance.returnType,
      'return_time': instance.returnTime,
      'have_stock_partition_group': instance.haveStockPartitionGroup,
      'have_stock_priority': instance.haveStockPriority,
      'stock_partition_group_id': instance.stockPartitionGroupId,
      'max_gp': instance.maxGp,
      'min_gp': instance.minGap,
      'targeted_gp': instance.targetedGp,
      'excess_tax': instance.excessTax,
      'landing_cost': instance.landingCost,
      'uom_name_data': instance.uomNameData,
      'sales_uom_data': instance.salesUomData,
      'vendor_details': instance.vendorDetails,
      'purchase_uom_data': instance.purchaseUomdata,
      'variant_framework_data': instance.variantframeWork,
      'variant_meta': instance.variantMeta,
      'item_data': instance.itemData,
      'search_name': instance.searchName,
      'sales_uom': instance.SalesUom,
      'gross_weight': instance.grossWeight,
      'produced_country': instance.producedCountry,
      'net_weight': instance.netWeight,
      'pos_name': instance.posName,
      'display_name': instance.displayname,
      'purchase_uom': instance.purchaseuom,
      'vedio_url': instance.vdeioUrl,
      'arabic_description': instance.arabicDescription,
      'additional_description': instance.additionalDescription,
      'is_active': instance.isActive,
      'sales_block': instance.salesBlock,
      'purchase_block': instance.purchaseBlock,
      'item_catalog': instance.itemCatalog,
      'item_image': instance.itemImage,
      'stock_warning': instance.stockWarning,
      'item_cataloge1': instance.itemCatelog1,
      'item_cataloge2': instance.itemCatelog2,
      'item_cataloge3': instance.itemCatelog3,
      'item_cataloge4': instance.itemCatelog4,
      'shelf_type': instance.shelfType,
      'shelf_time': instance.shelfTime,
      'have_gift_option': instance.haveGiftOption,
      'have_wrap_option': instance.haveWrapOption,
    };

_$_Returntypemodel _$$_ReturntypemodelFromJson(Map<String, dynamic> json) =>
    _$_Returntypemodel(
      returnType: (json['return_type'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      shelfType: (json['shelf_type'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lengthUnit: (json['length_unit'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      weightUnit: (json['weight_unit'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      widthUnit: (json['width_unit'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      heightUnit: (json['height_unit'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ReturntypemodelToJson(_$_Returntypemodel instance) =>
    <String, dynamic>{
      'return_type': instance.returnType,
      'shelf_type': instance.shelfType,
      'length_unit': instance.lengthUnit,
      'weight_unit': instance.weightUnit,
      'width_unit': instance.widthUnit,
      'height_unit': instance.heightUnit,
    };

_$_SalesUomData _$$_SalesUomDataFromJson(Map<String, dynamic> json) =>
    _$_SalesUomData(
      key: json['key'] as int?,
      salesUomName: json['sales_uom_name'] as String?,
      salesUomCode: json['sales_uom_code'] as String?,
    );

Map<String, dynamic> _$$_SalesUomDataToJson(_$_SalesUomData instance) =>
    <String, dynamic>{
      'key': instance.key,
      'sales_uom_name': instance.salesUomName,
      'sales_uom_code': instance.salesUomCode,
    };

_$_Dimension _$$_DimensionFromJson(Map<String, dynamic> json) => _$_Dimension(
      height: (json['height'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      length: (json['length'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DimensionToJson(_$_Dimension instance) =>
    <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'length': instance.length,
      'weight': instance.weight,
    };

_$_VendorDetails _$$_VendorDetailsFromJson(Map<String, dynamic> json) =>
    _$_VendorDetails(
      vendorReerenceCode: json['vendor_reference_code'] as String?,
      vendorName: json['vendor_name'] as String?,
      vendorCode: json['vendor_code'] as String?,
    );

Map<String, dynamic> _$$_VendorDetailsToJson(_$_VendorDetails instance) =>
    <String, dynamic>{
      'vendor_reference_code': instance.vendorReerenceCode,
      'vendor_name': instance.vendorName,
      'vendor_code': instance.vendorCode,
    };

_$_UomNameData _$$_UomNameDataFromJson(Map<String, dynamic> json) =>
    _$_UomNameData(
      key: json['key'] as int?,
      uomName: json['uom_name'] as String?,
      uomCode: json['uom_code'] as String?,
    );

Map<String, dynamic> _$$_UomNameDataToJson(_$_UomNameData instance) =>
    <String, dynamic>{
      'key': instance.key,
      'uom_name': instance.uomName,
      'uom_code': instance.uomCode,
    };

_$_PurchaseUomData _$$_PurchaseUomDataFromJson(Map<String, dynamic> json) =>
    _$_PurchaseUomData(
      key: json['key'] as int?,
      purchaseUomName: json['purchase_uom_name'] as String?,
      purchaseUomCode: json['purchase_uom_code'] as String?,
    );

Map<String, dynamic> _$$_PurchaseUomDataToJson(_$_PurchaseUomData instance) =>
    <String, dynamic>{
      'key': instance.key,
      'purchase_uom_name': instance.purchaseUomName,
      'purchase_uom_code': instance.purchaseUomCode,
    };

_$_VariantFrameWork _$$_VariantFrameWorkFromJson(Map<String, dynamic> json) =>
    _$_VariantFrameWork(
      key: json['key'] as int?,
      variantFrameWork: json['variant_framewrok_name'] as String?,
      variantFrameWorkCode: json['variant_framewrok_code'] as String?,
    );

Map<String, dynamic> _$$_VariantFrameWorkToJson(_$_VariantFrameWork instance) =>
    <String, dynamic>{
      'key': instance.key,
      'variant_framewrok_name': instance.variantFrameWork,
      'variant_framewrok_code': instance.variantFrameWorkCode,
    };

_$_ItemData _$$_ItemDataFromJson(Map<String, dynamic> json) => _$_ItemData(
      itemName: json['item_name'] as String?,
      itemCode: json['item_code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_ItemDataToJson(_$_ItemData instance) =>
    <String, dynamic>{
      'item_name': instance.itemName,
      'item_code': instance.itemCode,
      'description': instance.description,
    };

_$_VariantMeta _$$_VariantMetaFromJson(Map<String, dynamic> json) =>
    _$_VariantMeta(
      catelog: json['catelog'] == null
          ? null
          : Catelog.fromJson(json['catelog'] as Map<String, dynamic>),
      storage: json['storage'] == null
          ? null
          : Storage.fromJson(json['storage'] as Map<String, dynamic>),
      Ingrediants: json['Ingrediants'] == null
          ? null
          : Storage.fromJson(json['Ingrediants'] as Map<String, dynamic>),
      description: json['description'] as String?,
      image: json['var_image'] == null
          ? null
          : VarImage.fromJson(json['var_image'] as Map<String, dynamic>),
      importantInfo: json['important_info'] == null
          ? null
          : ProductFeatures.fromJson(
              json['important_info'] as Map<String, dynamic>),
      productBehave: (json['product_behaviour'] as List<dynamic>?)
          ?.map((e) => productBehaviour.fromJson(e as Map<String, dynamic>))
          .toList(),
      additionalInfo: json['Additional_info'] == null
          ? null
          : ProductFeatures.fromJson(
              json['Additional_info'] as Map<String, dynamic>),
      nutriantFacts: json['Nutriants_facts'] == null
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
      usageDirection: json['usage_direction'] == null
          ? null
          : Storage.fromJson(json['usage_direction'] as Map<String, dynamic>),
      oldSystemCode: json['old_system_code'] as String?,
    );

Map<String, dynamic> _$$_VariantMetaToJson(_$_VariantMeta instance) =>
    <String, dynamic>{
      'catelog': instance.catelog,
      'storage': instance.storage,
      'Ingrediants': instance.Ingrediants,
      'description': instance.description,
      'var_image': instance.image,
      'important_info': instance.importantInfo,
      'product_behaviour': instance.productBehave,
      'Additional_info': instance.additionalInfo,
      'Nutriants_facts': instance.nutriantFacts,
      'product_details': instance.productDetails,
      'product_features': instance.productFeatures,
      'about_the_products': instance.aboutProducts,
      'usage_direction': instance.usageDirection,
      'old_system_code': instance.oldSystemCode,
    };

_$_Storage _$$_StorageFromJson(Map<String, dynamic> json) => _$_Storage(
      name: json['name'] as String?,
      keyValues: json['key_values'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_StorageToJson(_$_Storage instance) =>
    <String, dynamic>{
      'name': instance.name,
      'key_values': instance.keyValues,
    };

_$_VarImage _$$_VarImageFromJson(Map<String, dynamic> json) => _$_VarImage(
      name: json['name'] as String?,
      keyValues: json['key_values'] == null
          ? null
          : KeyValues1.fromJson(json['key_values'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VarImageToJson(_$_VarImage instance) =>
    <String, dynamic>{
      'name': instance.name,
      'key_values': instance.keyValues,
    };

_$_Catelog _$$_CatelogFromJson(Map<String, dynamic> json) => _$_Catelog(
      name: json['name'] as String?,
      keyValues: json['key_values'] == null
          ? null
          : KeyValues.fromJson(json['key_values'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CatelogToJson(_$_Catelog instance) =>
    <String, dynamic>{
      'name': instance.name,
      'key_values': instance.keyValues,
    };

_$_KeyValues _$$_KeyValuesFromJson(Map<String, dynamic> json) => _$_KeyValues(
      catelog1: json['catelog1'] as String?,
      catelog2: json['catelog2'] as String?,
      catelog3: json['catelog3'] as String?,
      catelog4: json['catelog4'] as String?,
      catelog5: json['catelog5'] as String?,
      catelog6: json['catelog6'] as String?,
      catelog7: json['catelog7'] as String?,
      catelog8: json['catelog8'] as String?,
    );

Map<String, dynamic> _$$_KeyValuesToJson(_$_KeyValues instance) =>
    <String, dynamic>{
      'catelog1': instance.catelog1,
      'catelog2': instance.catelog2,
      'catelog3': instance.catelog3,
      'catelog4': instance.catelog4,
      'catelog5': instance.catelog5,
      'catelog6': instance.catelog6,
      'catelog7': instance.catelog7,
      'catelog8': instance.catelog8,
    };

_$_KeyValues1 _$$_KeyValues1FromJson(Map<String, dynamic> json) =>
    _$_KeyValues1(
      image2: json['image_2'] as String?,
      image3: json['image_3'] as String?,
      image4: json['image_4'] as String?,
      image5: json['image_5'] as String?,
    );

Map<String, dynamic> _$$_KeyValues1ToJson(_$_KeyValues1 instance) =>
    <String, dynamic>{
      'image_2': instance.image2,
      'image_3': instance.image3,
      'image_4': instance.image4,
      'image_5': instance.image5,
    };

_$_ProductFeatures _$$_ProductFeaturesFromJson(Map<String, dynamic> json) =>
    _$_ProductFeatures(
      name: json['name'] as String?,
      keyValues: (json['key_values'] as List<dynamic>?)
          ?.map((e) => Keys.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductFeaturesToJson(_$_ProductFeatures instance) =>
    <String, dynamic>{
      'name': instance.name,
      'key_values': instance.keyValues,
    };

_$_Keys _$$_KeysFromJson(Map<String, dynamic> json) => _$_Keys(
      key: json['key'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_KeysToJson(_$_Keys instance) => <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

_$_AlternativeBarcode _$$_AlternativeBarcodeFromJson(
        Map<String, dynamic> json) =>
    _$_AlternativeBarcode(
      id: json['id'] as int?,
      barcode: json['barcode'] as String?,
      qrcode: json['qrcode'] as String?,
      isActive: json['is_active'] as bool?,
    );

Map<String, dynamic> _$$_AlternativeBarcodeToJson(
        _$_AlternativeBarcode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'barcode': instance.barcode,
      'qrcode': instance.qrcode,
      'is_active': instance.isActive,
    };

_$_NameStorage _$$_NameStorageFromJson(Map<String, dynamic> json) =>
    _$_NameStorage(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_NameStorageToJson(_$_NameStorage instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_productBehaviour _$$_productBehaviourFromJson(Map<String, dynamic> json) =>
    _$_productBehaviour(
      genderGroup: json['genderGroup'] as String?,
      ageGroup: json['ageGroup'] as String?,
      ethinik: json['ethinik'] as String?,
      countries: json['countries'] as String?,
      purpose: json['purpose'] as String?,
    );

Map<String, dynamic> _$$_productBehaviourToJson(_$_productBehaviour instance) =>
    <String, dynamic>{
      'genderGroup': instance.genderGroup,
      'ageGroup': instance.ageGroup,
      'ethinik': instance.ethinik,
      'countries': instance.countries,
      'purpose': instance.purpose,
    };

_$_StateList _$$_StateListFromJson(Map<String, dynamic> json) => _$_StateList(
      code: json['code'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_StateListToJson(_$_StateList instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };
