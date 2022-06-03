import 'package:freezed_annotation/freezed_annotation.dart';
part 'variantid.freezed.dart';
part 'variantid.g.dart';

@freezed
class VariantId with _$VariantId {
  const factory VariantId(
      {final int? id,
        final String? code,
        final String? category,
        final String? uom,
        final double? unit_cost,
        final String? name,


      }) = _VariantId;
  factory VariantId.fromJson(Map<String, dynamic> json) =>
      _$VariantIdFromJson(json);
}
