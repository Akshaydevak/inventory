
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stocktableread.g.dart';
part 'stocktableread.freezed.dart';
@freezed
class StockTableReadModel with _$StockTableReadModel {
  const factory StockTableReadModel({
    final int? id,
    final String? code,

    @JsonKey(name: "invoice_code") final String? invoicedCode,
    @JsonKey(name: "invoice_line_code") final String? invoicedLineCode,
    @JsonKey(name: "total_qty") final int? totalQuantity,
    @JsonKey(name: "invoiced_date") final String? invoicedDate,
    @JsonKey(name: "actual_cost") final double? actualCost,

  }) = _StockTableReadModel;
  factory StockTableReadModel.fromJson(Map<String, dynamic> json) =>
      _$StockTableReadModelFromJson(json);
}