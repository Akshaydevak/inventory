// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchaseordertype.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseOrdertype _$$_PurchaseOrdertypeFromJson(Map<String, dynamic> json) =>
    _$_PurchaseOrdertype(
      orderTypes: (json['order_types'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      pricingPgT: (json['pricing_pg_type'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      discountType: (json['discount_type'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      orderMode: (json['order_modes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_PurchaseOrdertypeToJson(
        _$_PurchaseOrdertype instance) =>
    <String, dynamic>{
      'order_types': instance.orderTypes,
      'pricing_pg_type': instance.pricingPgT,
      'discount_type': instance.discountType,
      'order_modes': instance.orderMode,
    };
