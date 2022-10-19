// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_order_table_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseOrderTableModel _$$_PurchaseOrderTableModelFromJson(
        Map<String, dynamic> json) =>
    _$_PurchaseOrderTableModel(
      id: json['id'] as int?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      vat: (json['vat'] as num?)?.toDouble(),
      purchaseUom: json['purchase_uom'] as String?,
      purchaseUomName: json['purchase_uom_name'] as String?,
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      returnType: json['return_type'] as String?,
      returnTime: json['return_time'] as int?,
      vendorDetails: (json['vendor_details'] as List<dynamic>?)
          ?.map((e) => VendorDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      barCode: json['barcode'] == null
          ? null
          : Barcode.fromJson(json['barcode'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PurchaseOrderTableModelToJson(
        _$_PurchaseOrderTableModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'vat': instance.vat,
      'purchase_uom': instance.purchaseUom,
      'purchase_uom_name': instance.purchaseUomName,
      'excess_tax': instance.excessTax,
      'unit_cost': instance.unitCost,
      'return_type': instance.returnType,
      'return_time': instance.returnTime,
      'vendor_details': instance.vendorDetails,
      'barcode': instance.barCode,
    };

_$_VendorDetails _$$_VendorDetailsFromJson(Map<String, dynamic> json) =>
    _$_VendorDetails(
      vendorCode: json['vendor_code'] as String?,
      vendorRefCode: json['vendor_reference_code'] as String?,
    );

Map<String, dynamic> _$$_VendorDetailsToJson(_$_VendorDetails instance) =>
    <String, dynamic>{
      'vendor_code': instance.vendorCode,
      'vendor_reference_code': instance.vendorRefCode,
    };

_$_Barcode _$$_BarcodeFromJson(Map<String, dynamic> json) => _$_Barcode(
      id: json['id'] as int?,
      fileName: json['file_name'] as String?,
      barcodeNumber: json['barcode_number'] as String?,
    );

Map<String, dynamic> _$$_BarcodeToJson(_$_Barcode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'file_name': instance.fileName,
      'barcode_number': instance.barcodeNumber,
    };
