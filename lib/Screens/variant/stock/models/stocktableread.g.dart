// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stocktableread.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StockTableReadModel _$$_StockTableReadModelFromJson(
        Map<String, dynamic> json) =>
    _$_StockTableReadModel(
      id: json['id'] as int?,
      code: json['code'] as String?,
      invoicedCode: json['invoice_code'] as String?,
      invoicedLineCode: json['invoice_line_code'] as String?,
      totalQuantity: json['total_qty'] as int?,
      invoicedDate: json['invoiced_date'] as String?,
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_StockTableReadModelToJson(
        _$_StockTableReadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'invoice_code': instance.invoicedCode,
      'invoice_line_code': instance.invoicedLineCode,
      'total_qty': instance.totalQuantity,
      'invoiced_date': instance.invoicedDate,
      'actual_cost': instance.actualCost,
    };
