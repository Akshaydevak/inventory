import 'package:freezed_annotation/freezed_annotation.dart';

part 'stockverticallist.g.dart';
part 'stockverticallist.freezed.dart';

@freezed
class StockVerticalReadModel with _$StockVerticalReadModel {
  const factory StockVerticalReadModel({
    final Category? category,
    final String? name,
  }) = _StockVerticalReadModel;
  factory StockVerticalReadModel.fromJson(Map<String, dynamic> json) =>
      _$StockVerticalReadModelFromJson(json);
}


@freezed
class channelAllocatesRead with _$channelAllocatesRead {
  const factory channelAllocatesRead({
final List<Category>?results,
    @JsonKey(name: "channel_type_id") final int? channelTypeId,

    @JsonKey(name: "channel_type_code") final String? channelTypeCode,
  }) = _channelAllocatesRead;
  factory channelAllocatesRead.fromJson(Map<String, dynamic> json) =>
      _$channelAllocatesReadFromJson(json);
}


@freezed
class Category with _$Category {
  const factory Category({
    final String? name,
    final String? description,
    final int? id,
    @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
    @JsonKey(name: "legal_unit_type") final String? legalUnitType,
    @JsonKey(name: "channel_code") final String? channelCode,
    @JsonKey(name: "channel_stock_type") final String? channelStockType,
    @JsonKey(name: "channel_type_code") final String? channelTypeCode,
  }) = _Category;
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
