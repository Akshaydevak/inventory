// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_discount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PromotionDiscountCreationModel _$$_PromotionDiscountCreationModelFromJson(
        Map<String, dynamic> json) =>
    _$_PromotionDiscountCreationModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      segments: (json['segments'] as List<dynamic>?)
          ?.map((e) => Segment.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String?,
      inventoryId: json['inventory_id'] as String?,
      basedOn: json['based_on'] as String?,
      offerPeriodId: json['offer_period_id'] as int?,
      offerGroupId: json['offer_group_id'] as int?,
      offerAppliedTo: json['offer_applied_to'] as String?,
      offerAppliedToId: json['offer_applied_to_id'] as int?,
      offerAppliedToCode: json['offer_applied_to_code'] as String?,
      createdBy: json['created_by'] as String?,
      availableCustomerGroups:
          (json['available_customer_groups'] as List<dynamic>?)
              ?.map((e) =>
                  AvailableCustomerGroups.fromJson(e as Map<String, dynamic>))
              .toList(),
      discountPercentageOrPrice:
          (json['discount_percentage_or_price'] as num?)?.toDouble(),
      isActive: json['is_active'] as bool? ?? false,
      isAvailableFor: json['is_available_for_all'] as bool? ?? false,
      offerLines: (json['offer_lines'] as List<dynamic>?)
          ?.map((e) => SaleLinesDiscount.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PromotionDiscountCreationModelToJson(
        _$_PromotionDiscountCreationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'segments': instance.segments,
      'title': instance.title,
      'inventory_id': instance.inventoryId,
      'based_on': instance.basedOn,
      'offer_period_id': instance.offerPeriodId,
      'offer_group_id': instance.offerGroupId,
      'offer_applied_to': instance.offerAppliedTo,
      'offer_applied_to_id': instance.offerAppliedToId,
      'offer_applied_to_code': instance.offerAppliedToCode,
      'created_by': instance.createdBy,
      'available_customer_groups': instance.availableCustomerGroups,
      'discount_percentage_or_price': instance.discountPercentageOrPrice,
      'is_active': instance.isActive,
      'is_available_for_all': instance.isAvailableFor,
      'offer_lines': instance.offerLines,
    };

_$_PromotionDiscountReadModel _$$_PromotionDiscountReadModelFromJson(
        Map<String, dynamic> json) =>
    _$_PromotionDiscountReadModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      title: json['title'] as String?,
      segments: (json['segments'] as List<dynamic>?)
          ?.map((e) => Segment.fromJson(e as Map<String, dynamic>))
          .toList(),
      offerPeriodName: json['offer_period_name'] as String?,
      inventoryId: json['inventory_id'] as String?,
      basedOn: json['based_on'] as String?,
      offerPeriodId: json['offer_period_id'] as int?,
      discountPercentageOrPrice: json['discount_percentage_or_price'] as int?,
      offerAppliedToId: json['offer_applied_to_id'] as String?,
      offerAppliedTo: json['offer_applied_to'] as String?,
      offerAppliedToCode: json['offer_applied_to_code'] as String?,
      discountCode: json['discount_code'] as String?,
      offerLines: (json['offer_lines'] as List<dynamic>?)
          ?.map((e) => SaleLinesDiscount.fromJson(e as Map<String, dynamic>))
          .toList(),
      offerGroupId: json['offer_group_id'] as int?,
      isActive: json['is_active'] as bool? ?? false,
      isAvailableForAll: json['is_available_for_all'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PromotionDiscountReadModelToJson(
        _$_PromotionDiscountReadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'title': instance.title,
      'segments': instance.segments,
      'offer_period_name': instance.offerPeriodName,
      'inventory_id': instance.inventoryId,
      'based_on': instance.basedOn,
      'offer_period_id': instance.offerPeriodId,
      'discount_percentage_or_price': instance.discountPercentageOrPrice,
      'offer_applied_to_id': instance.offerAppliedToId,
      'offer_applied_to': instance.offerAppliedTo,
      'offer_applied_to_code': instance.offerAppliedToCode,
      'discount_code': instance.discountCode,
      'offer_lines': instance.offerLines,
      'offer_group_id': instance.offerGroupId,
      'is_active': instance.isActive,
      'is_available_for_all': instance.isAvailableForAll,
    };

_$_OfferLines _$$_OfferLinesFromJson(Map<String, dynamic> json) =>
    _$_OfferLines(
      id: json['id'] as int?,
      title: json['title'] as String?,
      priority: json['priority'] as String?,
      customerGroupId: json['customer_group_id'] as int?,
      offerProductGroupCode: json['offer_product_group_code'] as String?,
      typeApplying: json['type_applying'] as String?,
      typeId: json['type_id'] as int?,
      maximumQuantity: json['maximum_qty'] as int?,
      offerProductGroupId: json['offer_product_group_id'] as int?,
      overridePriority: json['override_priority'] as bool? ?? false,
      isActive: json['is_active'] as bool? ?? false,
      typeCode: json['type_code'] as String?,
    );

Map<String, dynamic> _$$_OfferLinesToJson(_$_OfferLines instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'priority': instance.priority,
      'customer_group_id': instance.customerGroupId,
      'offer_product_group_code': instance.offerProductGroupCode,
      'type_applying': instance.typeApplying,
      'type_id': instance.typeId,
      'maximum_qty': instance.maximumQuantity,
      'offer_product_group_id': instance.offerProductGroupId,
      'override_priority': instance.overridePriority,
      'is_active': instance.isActive,
      'type_code': instance.typeCode,
    };

_$_AvailableCustomerGroups _$$_AvailableCustomerGroupsFromJson(
        Map<String, dynamic> json) =>
    _$_AvailableCustomerGroups(
      customerGroupId: json['customer_group_id'] as int?,
      customerGroupCode: json['customer_group_cod'] as String?,
    );

Map<String, dynamic> _$$_AvailableCustomerGroupsToJson(
        _$_AvailableCustomerGroups instance) =>
    <String, dynamic>{
      'customer_group_id': instance.customerGroupId,
      'customer_group_cod': instance.customerGroupCode,
    };

_$_SaleLinesDiscount _$$_SaleLinesDiscountFromJson(Map<String, dynamic> json) =>
    _$_SaleLinesDiscount(
      id: json['id'] as int?,
      image: json['image'] as String?,
      title: json['title'] as String?,
      variants: (json['variants'] as List<dynamic>?)
          ?.map(
              (e) => VariantsLinesDiscount.fromJson(e as Map<String, dynamic>))
          .toList(),
      typeId: json['type_id'] as int?,
      maximumQuantity: json['maximum_qty'] as int?,
      typeApplying: json['type_applying'] as String?,
      typeCode: json['type_code'] as String?,
      offerGroupCode: json['offer_group_code'] as String?,
      offerName: json['offer_name'] as String?,
      offerProductGroupCode: json['offer_product_group_code'] as String?,
      offerProductGroupId: json['offer_product_group_id'] as int?,
      typeData: json['type_data'] as String?,
      updateCheck: json['updateCheck'] as bool? ?? false,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_SaleLinesDiscountToJson(
        _$_SaleLinesDiscount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'title': instance.title,
      'variants': instance.variants,
      'type_id': instance.typeId,
      'maximum_qty': instance.maximumQuantity,
      'type_applying': instance.typeApplying,
      'type_code': instance.typeCode,
      'offer_group_code': instance.offerGroupCode,
      'offer_name': instance.offerName,
      'offer_product_group_code': instance.offerProductGroupCode,
      'offer_product_group_id': instance.offerProductGroupId,
      'type_data': instance.typeData,
      'updateCheck': instance.updateCheck,
      'is_active': instance.isActive,
    };

_$_VariantsLinesDiscount _$$_VariantsLinesDiscountFromJson(
        Map<String, dynamic> json) =>
    _$_VariantsLinesDiscount(
      id: json['id'] as int?,
      name: json['name'] as String?,
      barcode: json['barcode'] == null
          ? null
          : Barcode.fromJson(json['barcode'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VariantsLinesDiscountToJson(
        _$_VariantsLinesDiscount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'barcode': instance.barcode,
    };
