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
      uomCode: json['uom_code'] as String?,
      inventoryId: json['inventory_id'] as String?,
      alterNativeBarcode: (json['var_alternative_barcode'] as List<dynamic>?)
          ?.map((e) => AlternativeBarcode.fromJson(e as Map<String, dynamic>))
          .toList(),
      alterNativeQrCode: (json['var_alternative_qrcode'] as List<dynamic>?)
          ?.map((e) => AlternativeBarcode.fromJson(e as Map<String, dynamic>))
          .toList(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      avgGp: (json['avrg_gp'] as num?)?.toDouble(),
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
      manufacturedName: json['manufacture_name'] as String?,
      SalesUom: json['sales_uom'] as String?,
      grossWeight: json['gross_weight'] as String?,
      producedCountry: json['produced_country'] as String?,
      netWeight: json['net_weight'] as String?,
      posName: json['pos_name'] as String?,
      displayname: json['display_name'] as String?,
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
      'uom_code': instance.uomCode,
      'inventory_id': instance.inventoryId,
      'var_alternative_barcode': instance.alterNativeBarcode,
      'var_alternative_qrcode': instance.alterNativeQrCode,
      'unit_cost': instance.unitCost,
      'actual_cost': instance.actualCost,
      'avrg_gp': instance.avgGp,
      'max_gp': instance.maxGp,
      'min_gp': instance.minGap,
      'targeted_gp': instance.targetedGp,
      'excess_tax': instance.excessTax,
      'landing_cost': instance.landingCost,
      'uom_name_data': instance.uomNameData,
      'sales_uom_data': instance.salesUomData,
      'purchase_uom_data': instance.purchaseUomdata,
      'variant_framework_data': instance.variantframeWork,
      'variant_meta': instance.variantMeta,
      'item_data': instance.itemData,
      'search_name': instance.searchName,
      'manufacture_name': instance.manufacturedName,
      'sales_uom': instance.SalesUom,
      'gross_weight': instance.grossWeight,
      'produced_country': instance.producedCountry,
      'net_weight': instance.netWeight,
      'pos_name': instance.posName,
      'display_name': instance.displayname,
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

_$_VendorDetails _$$_VendorDetailsFromJson(Map<String, dynamic> json) =>
    _$_VendorDetails(
      key: json['key'] as int?,
      vendorReerenceCode: json['vendor_reference_code'] as String?,
      vendorCode: json['vendor_code'] as String?,
    );

Map<String, dynamic> _$$_VendorDetailsToJson(_$_VendorDetails instance) =>
    <String, dynamic>{
      'key': instance.key,
      'vendor_reference_code': instance.vendorReerenceCode,
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
      storage: (json['storage'] as List<dynamic>?)
          ?.map((e) => Storage.fromJson(e as Map<String, dynamic>))
          .toList(),
      Ingrediants: (json['Ingrediants'] as List<dynamic>?)
          ?.map((e) => Storage.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      image: json['var_image'] == null
          ? null
          : VarImage.fromJson(json['var_image'] as Map<String, dynamic>),
      importantInfo: (json['important_info'] as List<dynamic>?)
          ?.map((e) => ProductFeatures.fromJson(e as Map<String, dynamic>))
          .toList(),
      additionalInfo: (json['Additional_info'] as List<dynamic>?)
          ?.map((e) => ProductFeatures.fromJson(e as Map<String, dynamic>))
          .toList(),
      nutriantFacts: (json['Nutriants_facts'] as List<dynamic>?)
          ?.map((e) => ProductFeatures.fromJson(e as Map<String, dynamic>))
          .toList(),
      productDetails: (json['product_details'] as List<dynamic>?)
          ?.map((e) => ProductFeatures.fromJson(e as Map<String, dynamic>))
          .toList(),
      productFeatures: (json['product_features'] as List<dynamic>?)
          ?.map((e) => ProductFeatures.fromJson(e as Map<String, dynamic>))
          .toList(),
      productBehaviour: (json['product_behaviour'] as List<dynamic>?)
          ?.map((e) => ProductFeatures.fromJson(e as Map<String, dynamic>))
          .toList(),
      aboutProducts: (json['about_the_products'] as List<dynamic>?)
          ?.map((e) => Storage.fromJson(e as Map<String, dynamic>))
          .toList(),
      usageDirection: (json['usage_direction'] as List<dynamic>?)
          ?.map((e) => Storage.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'Additional_info': instance.additionalInfo,
      'Nutriants_facts': instance.nutriantFacts,
      'product_details': instance.productDetails,
      'product_features': instance.productFeatures,
      'product_behaviour': instance.productBehaviour,
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