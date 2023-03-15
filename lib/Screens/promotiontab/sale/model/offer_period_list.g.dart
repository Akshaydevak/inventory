// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_period_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfferPeriodList _$$_OfferPeriodListFromJson(Map<String, dynamic> json) =>
    _$_OfferPeriodList(
      id: json['id'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      title: json['title'] as String?,
      offerPeriodCode: json['offer_period_code'] as String?,
      buyMoreCode: json['buy_more_code'] as String?,
      bogoCode: json['bogo_code'] as String?,
    );

Map<String, dynamic> _$$_OfferPeriodListToJson(_$_OfferPeriodList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'title': instance.title,
      'offer_period_code': instance.offerPeriodCode,
      'buy_more_code': instance.buyMoreCode,
      'bogo_code': instance.bogoCode,
    };

_$_CreateOfferPeriod _$$_CreateOfferPeriodFromJson(Map<String, dynamic> json) =>
    _$_CreateOfferPeriod(
      fromDate: json['from_date'] as String?,
      toDate: json['to_date'] as String?,
      fromTime: json['from_time'] as String?,
      toTime: json['to_time'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      isActive: json['is_active'] as bool?,
      notes: json['notes'] as String?,
      createdBy: json['created_by'] as String?,
    );

Map<String, dynamic> _$$_CreateOfferPeriodToJson(
        _$_CreateOfferPeriod instance) =>
    <String, dynamic>{
      'from_date': instance.fromDate,
      'to_date': instance.toDate,
      'from_time': instance.fromTime,
      'to_time': instance.toTime,
      'title': instance.title,
      'description': instance.description,
      'is_active': instance.isActive,
      'notes': instance.notes,
      'created_by': instance.createdBy,
    };

_$_ReadOfferPeriod _$$_ReadOfferPeriodFromJson(Map<String, dynamic> json) =>
    _$_ReadOfferPeriod(
      id: json['id'] as int?,
      fromTime: json['from_time'] as String?,
      toTime: json['to_time'] as String?,
      fromDate: json['from_date'] as String?,
      toDate: json['to_date'] as String?,
      title: json['title'] as String?,
      offerPeriodCode: json['offer_period_code'] as String?,
      description: json['description'] as String?,
      isActive: json['is_active'] as bool?,
      notes: json['notes'] as String?,
      createdAt: json['created_at'] as String?,
      createdBy: json['created_by'] as String?,
      offerAppliedTo: (json['offer_applied_to_type'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ReadOfferPeriodToJson(_$_ReadOfferPeriod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from_time': instance.fromTime,
      'to_time': instance.toTime,
      'from_date': instance.fromDate,
      'to_date': instance.toDate,
      'title': instance.title,
      'offer_period_code': instance.offerPeriodCode,
      'description': instance.description,
      'is_active': instance.isActive,
      'notes': instance.notes,
      'created_at': instance.createdAt,
      'created_by': instance.createdBy,
      'offer_applied_to_type': instance.offerAppliedTo,
    };

_$_OfferGroupList _$$_OfferGroupListFromJson(Map<String, dynamic> json) =>
    _$_OfferGroupList(
      id: json['id'] as int?,
      title: json['title'] as String?,
      offerGroupCode: json['offer_group_code'] as String?,
    );

Map<String, dynamic> _$$_OfferGroupListToJson(_$_OfferGroupList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'offer_group_code': instance.offerGroupCode,
    };

_$_CreateOfferGroup _$$_CreateOfferGroupFromJson(Map<String, dynamic> json) =>
    _$_CreateOfferGroup(
      offerAppliedToType: json['offer_applied_to_type'] as String?,
      offerAppliedToId: json['offer_applied_to_id'] as String?,
      image: json['image'] as String?,
      offerAppliedToCode: json['offer_applied_to_code'] as String?,
      title: json['title'] as String?,
      inventoryId: json['inventory_id'] as String?,
      description: json['description'] as String?,
      createdBy: json['created_by'] as String?,
      isActive: json['is_active'] as bool?,
    );

Map<String, dynamic> _$$_CreateOfferGroupToJson(_$_CreateOfferGroup instance) =>
    <String, dynamic>{
      'offer_applied_to_type': instance.offerAppliedToType,
      'offer_applied_to_id': instance.offerAppliedToId,
      'image': instance.image,
      'offer_applied_to_code': instance.offerAppliedToCode,
      'title': instance.title,
      'inventory_id': instance.inventoryId,
      'description': instance.description,
      'created_by': instance.createdBy,
      'is_active': instance.isActive,
    };

_$_OfferGroupData _$$_OfferGroupDataFromJson(Map<String, dynamic> json) =>
    _$_OfferGroupData(
      offerGroupCode: json['offer_group_code'] as String?,
      offerAppliedToType: json['offer_applied_to_type'] as String?,
      offerAppliedToId: json['offer_applied_to_id'] as String?,
      image: json['image'] as String?,
      offerAppliedToCode: json['offer_applied_to_code'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      isActive: json['is_active'] as bool?,
      createdBy: json['created_by'] as String?,
    );

Map<String, dynamic> _$$_OfferGroupDataToJson(_$_OfferGroupData instance) =>
    <String, dynamic>{
      'offer_group_code': instance.offerGroupCode,
      'offer_applied_to_type': instance.offerAppliedToType,
      'offer_applied_to_id': instance.offerAppliedToId,
      'image': instance.image,
      'offer_applied_to_code': instance.offerAppliedToCode,
      'title': instance.title,
      'description': instance.description,
      'is_active': instance.isActive,
      'created_by': instance.createdBy,
    };

_$_ReadOfferGroup _$$_ReadOfferGroupFromJson(Map<String, dynamic> json) =>
    _$_ReadOfferGroup(
      offerAppliedToType: (json['offer_applied_to_type'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      offerGroupData: json['offer_group_data'] == null
          ? null
          : OfferGroupData.fromJson(
              json['offer_group_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReadOfferGroupToJson(_$_ReadOfferGroup instance) =>
    <String, dynamic>{
      'offer_applied_to_type': instance.offerAppliedToType,
      'offer_group_data': instance.offerGroupData,
    };

_$_listAllSalesApis _$$_listAllSalesApisFromJson(Map<String, dynamic> json) =>
    _$_listAllSalesApis(
      saleApplyingOn: (json['sale_applying_on'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      basedOn: (json['based_on'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      saleApplyingTo: (json['sale_applying_to'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      offerApplyingTo: (json['offer_applying_to'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      bogoApplyingOn: (json['bogo_applying_on'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      couponType: (json['coupon_type'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      couponApplyingTo: (json['coupon_applying_to'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      couponApplyingOn: (json['coupon_applying_on'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      couponBasedOn: (json['coupon_based_on'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_listAllSalesApisToJson(_$_listAllSalesApis instance) =>
    <String, dynamic>{
      'sale_applying_on': instance.saleApplyingOn,
      'based_on': instance.basedOn,
      'sale_applying_to': instance.saleApplyingTo,
      'offer_applying_to': instance.offerApplyingTo,
      'bogo_applying_on': instance.bogoApplyingOn,
      'coupon_type': instance.couponType,
      'coupon_applying_to': instance.couponApplyingTo,
      'coupon_applying_on': instance.couponApplyingOn,
      'coupon_based_on': instance.couponBasedOn,
    };

_$_PromotionSaleCreateModel _$$_PromotionSaleCreateModelFromJson(
        Map<String, dynamic> json) =>
    _$_PromotionSaleCreateModel(
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      offerAppliedToType: json['offer_applied_to_type'] as String?,
      offerPeriodId: json['offer_period_id'] as int?,
      totalPrice: json['total_price'] as int?,
      offerGroupId: json['offer_group'] as int?,
      salesApplyingPlace: json['sales_applying_place'] as String?,
      maximumCount: json['maximum_count'] as int?,
      salesApplyingOnId: json['sales_applying_on_id'] as int?,
      salesApplyingPlaceCode: json['sales_applying_place_code'] as String?,
      salesApplyingPlaceName: json['sales_applying_place_name'] as String?,
      availableCustomerGroup: json['available_customer_groups'] as String?,
      salesApplyingOn: json['sales_applying_on'] as String?,
      offerAppliedToCode: json['offer_applied_to_code'] as String?,
      salesApplyingOnName: json['sales_applying_on_name'] as String?,
      createdBy: json['created_by'] as String?,
      salesApplyingOnCode: json['sales_applying_on_code'] as String?,
      discountPercentageOrPrice: json['discount_percentage_or_price'] as int?,
      isAvailableForAll: json['is_available_for_all'] as bool? ?? false,
      isAdminBased: json['is_admin_based'] as bool? ?? false,
      isActive: json['is_active'] as bool? ?? false,
      basedOn: json['based_on'] as String?,
      inventoryId: json['inventory_id'] as String?,
      saleLines: (json['sale_lines'] as List<dynamic>?)
          ?.map((e) => SaleLines.fromJson(e as Map<String, dynamic>))
          .toList(),
      segments: (json['segments'] as List<dynamic>?)
          ?.map((e) => Segment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PromotionSaleCreateModelToJson(
        _$_PromotionSaleCreateModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'offer_applied_to_type': instance.offerAppliedToType,
      'offer_period_id': instance.offerPeriodId,
      'total_price': instance.totalPrice,
      'offer_group': instance.offerGroupId,
      'sales_applying_place': instance.salesApplyingPlace,
      'maximum_count': instance.maximumCount,
      'sales_applying_on_id': instance.salesApplyingOnId,
      'sales_applying_place_code': instance.salesApplyingPlaceCode,
      'sales_applying_place_name': instance.salesApplyingPlaceName,
      'available_customer_groups': instance.availableCustomerGroup,
      'sales_applying_on': instance.salesApplyingOn,
      'offer_applied_to_code': instance.offerAppliedToCode,
      'sales_applying_on_name': instance.salesApplyingOnName,
      'created_by': instance.createdBy,
      'sales_applying_on_code': instance.salesApplyingOnCode,
      'discount_percentage_or_price': instance.discountPercentageOrPrice,
      'is_available_for_all': instance.isAvailableForAll,
      'is_admin_based': instance.isAdminBased,
      'is_active': instance.isActive,
      'based_on': instance.basedOn,
      'inventory_id': instance.inventoryId,
      'sale_lines': instance.saleLines,
      'segments': instance.segments,
    };

_$_SaleLines _$$_SaleLinesFromJson(Map<String, dynamic> json) => _$_SaleLines(
      id: json['id'] as int?,
      barcode: json['barcode'] == null
          ? null
          : Barcode.fromJson(json['barcode'] as Map<String, dynamic>),
      variantId: json['variant_id'] as int?,
      variantCode: json['variant_code'] as String?,
      variantName: json['variant_name'] as String?,
      offerGroupCode: json['offer_group_code'] as String?,
      offerName: json['offer_name'] as String?,
      typeData: json['type_data'] as String?,
      updateCheck: json['updateCheck'] as bool? ?? false,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_SaleLinesToJson(_$_SaleLines instance) =>
    <String, dynamic>{
      'id': instance.id,
      'barcode': instance.barcode,
      'variant_id': instance.variantId,
      'variant_code': instance.variantCode,
      'variant_name': instance.variantName,
      'offer_group_code': instance.offerGroupCode,
      'offer_name': instance.offerName,
      'type_data': instance.typeData,
      'updateCheck': instance.updateCheck,
      'is_active': instance.isActive,
    };

_$_PromotionSaleReadModel _$$_PromotionSaleReadModelFromJson(
        Map<String, dynamic> json) =>
    _$_PromotionSaleReadModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      test: json['test'] as String?,
      barcode: json['barcode'] == null
          ? null
          : Barcode.fromJson(json['barcode'] as Map<String, dynamic>),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      discountPercentage:
          (json['discount_percentage_or_price'] as num?)?.toDouble(),
      inventoryId: json['inventory_id'] as String?,
      saleCode: json['sale_code'] as String?,
      createdAt: json['created_at'] as String?,
      salesApplyingPlaceCode: json['sales_applying_place_code'] as String?,
      salesApplyingPlaceName: json['sales_applying_place_name'] as String?,
      salesApplyingPlaceId: json['sales_applying_place_id'] as int?,
      salesApplyingOn: json['sales_applying_on'] as String?,
      basedOn: json['based_on'] as String?,
      salesApplyingOnName: json['sales_applying_on_name'] as String?,
      salesApplyingPlace: json['sales_applying_place'] as String?,
      salesApplyingOnId: json['sales_applying_on_id'] as int?,
      offerPriodId: json['offer_period_id'] as int?,
      offerGroupId: json['offer_group_id'] as int?,
      salesApplyingOnCode: json['sales_applying_on_code'] as String?,
      maximumCount: json['maximum_count'] as int?,
      isAvailableForAll: json['is_available_for_all'] as bool? ?? false,
      overridePriority: json['override_priority'] as bool? ?? false,
      isApplyingToAllProducts:
          json['is_applying_to_all_products'] as bool? ?? false,
      isAdminBased: json['is_admin_based'] as bool? ?? false,
      isActive: json['is_active'] as bool? ?? false,
      segments: (json['segments'] as List<dynamic>?)
          ?.map((e) => Segment.fromJson(e as Map<String, dynamic>))
          .toList(),
      saleLines: (json['sale_line'] as List<dynamic>?)
          ?.map((e) => SaleLines.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PromotionSaleReadModelToJson(
        _$_PromotionSaleReadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'test': instance.test,
      'barcode': instance.barcode,
      'total_price': instance.totalPrice,
      'discount_percentage_or_price': instance.discountPercentage,
      'inventory_id': instance.inventoryId,
      'sale_code': instance.saleCode,
      'created_at': instance.createdAt,
      'sales_applying_place_code': instance.salesApplyingPlaceCode,
      'sales_applying_place_name': instance.salesApplyingPlaceName,
      'sales_applying_place_id': instance.salesApplyingPlaceId,
      'sales_applying_on': instance.salesApplyingOn,
      'based_on': instance.basedOn,
      'sales_applying_on_name': instance.salesApplyingOnName,
      'sales_applying_place': instance.salesApplyingPlace,
      'sales_applying_on_id': instance.salesApplyingOnId,
      'offer_period_id': instance.offerPriodId,
      'offer_group_id': instance.offerGroupId,
      'sales_applying_on_code': instance.salesApplyingOnCode,
      'maximum_count': instance.maximumCount,
      'is_available_for_all': instance.isAvailableForAll,
      'override_priority': instance.overridePriority,
      'is_applying_to_all_products': instance.isApplyingToAllProducts,
      'is_admin_based': instance.isAdminBased,
      'is_active': instance.isActive,
      'segments': instance.segments,
      'sale_line': instance.saleLines,
    };

_$_Barcode _$$_BarcodeFromJson(Map<String, dynamic> json) => _$_Barcode(
      barcodeNumber: json['barcode_number'] as String?,
      fileName: json['file_name'] as String?,
    );

Map<String, dynamic> _$$_BarcodeToJson(_$_Barcode instance) =>
    <String, dynamic>{
      'barcode_number': instance.barcodeNumber,
      'file_name': instance.fileName,
    };

_$_ChannelListModel _$$_ChannelListModelFromJson(Map<String, dynamic> json) =>
    _$_ChannelListModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      channelCode: json['channel_code'] as String?,
    );

Map<String, dynamic> _$$_ChannelListModelToJson(_$_ChannelListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'channel_code': instance.channelCode,
    };

_$_Segment _$$_SegmentFromJson(Map<String, dynamic> json) => _$_Segment(
      id: json['id'] as int?,
      segmentCode: json['segment_code'] as String?,
      segmentName: json['segment_name'] as String?,
      isActive: json['is_active'] as bool? ?? false,
      updatecheck: json['updatecheck'] as bool? ?? false,
    );

Map<String, dynamic> _$$_SegmentToJson(_$_Segment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'segment_code': instance.segmentCode,
      'segment_name': instance.segmentName,
      'is_active': instance.isActive,
      'updatecheck': instance.updatecheck,
    };

_$_PromotionVariantModel _$$_PromotionVariantModelFromJson(
        Map<String, dynamic> json) =>
    _$_PromotionVariantModel(
      id: json['id'] as int?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      barCode: json['barCode'] == null
          ? null
          : Barcode.fromJson(json['barCode'] as Map<String, dynamic>),
      segmentCode: json['segment_code'] as String?,
      isActve: json['is_active'] as bool? ?? false,
      updateCheck: json['updateCheck'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PromotionVariantModelToJson(
        _$_PromotionVariantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'barCode': instance.barCode,
      'segment_code': instance.segmentCode,
      'is_active': instance.isActve,
      'updateCheck': instance.updateCheck,
    };

_$_PromotionVariantPostModel _$$_PromotionVariantPostModelFromJson(
        Map<String, dynamic> json) =>
    _$_PromotionVariantPostModel(
      applyinType: json['applying_type'] as String?,
      segmentList: (json['segment_list'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      searchElement: json['search_element'] as String?,
      applyingTypeCode: json['applying_type_code'] as String?,
      inventoryId: json['inventory_id'] as String?,
    );

Map<String, dynamic> _$$_PromotionVariantPostModelToJson(
        _$_PromotionVariantPostModel instance) =>
    <String, dynamic>{
      'applying_type': instance.applyinType,
      'segment_list': instance.segmentList,
      'search_element': instance.searchElement,
      'applying_type_code': instance.applyingTypeCode,
      'inventory_id': instance.inventoryId,
    };

_$_VariantModel _$$_VariantModelFromJson(Map<String, dynamic> json) =>
    _$_VariantModel(
      id: json['id'] as int?,
      barcode: json['barcode'] as String?,
      variantId: json['variant_id'] as int?,
      buyMoreId: json['buy_more_id'] as int?,
      variantCode: json['variant_code'] as String?,
      variantName: json['variant_name'] as String?,
      offerGroupCode: json['offer_group_code'] as String?,
      buyMoreLineCode: json['buy_more_line_code'] as String?,
      couponLineCode: json['coupon_line_code'] as String?,
      offerName: json['offer_name'] as String?,
      typeData: json['type_data'] as String?,
      updatedAt: json['updated_at'] as String?,
      updateCheck: json['updateCheck'] as bool? ?? false,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_VariantModelToJson(_$_VariantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'barcode': instance.barcode,
      'variant_id': instance.variantId,
      'buy_more_id': instance.buyMoreId,
      'variant_code': instance.variantCode,
      'variant_name': instance.variantName,
      'offer_group_code': instance.offerGroupCode,
      'buy_more_line_code': instance.buyMoreLineCode,
      'coupon_line_code': instance.couponLineCode,
      'offer_name': instance.offerName,
      'type_data': instance.typeData,
      'updated_at': instance.updatedAt,
      'updateCheck': instance.updateCheck,
      'is_active': instance.isActive,
    };
