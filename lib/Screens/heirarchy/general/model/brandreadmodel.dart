import 'package:freezed_annotation/freezed_annotation.dart';


part 'brandreadmodel.g.dart';
part 'brandreadmodel.freezed.dart';

@freezed
class BrandReadModel with _$BrandReadModel {
  const factory BrandReadModel({

    final String? description,
    final String? name,
    final String? code,
    final String? image,
    final int? id,

    @JsonKey(name: "brand_identifier_url") final String? brandIdentifierUrl,
    @JsonKey(name: "parent_code") final String? parentCode,
    @JsonKey(name: "parent_name") final String? parentName,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,



  }) = _BrandReadModel;
  factory BrandReadModel.fromJson(Map<String, dynamic> json) =>
      _$BrandReadModelFromJson(json);
}
