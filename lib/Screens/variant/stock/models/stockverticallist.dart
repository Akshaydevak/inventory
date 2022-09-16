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
class Category with _$Category {
  const factory Category({
    final String? name,
    final String? description,
    final int? id,
    @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
    @JsonKey(name: "legal_unit_type") final String? legalUnitType,
  }) = _Category;
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
