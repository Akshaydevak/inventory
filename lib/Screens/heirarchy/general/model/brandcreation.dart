import 'package:freezed_annotation/freezed_annotation.dart';


part 'brandcreation.g.dart';
part 'brandcreation.freezed.dart';

@freezed
class BrandCreationtModel with _$BrandCreationtModel {
  const factory BrandCreationtModel({

    final String? description,
    final String? name,
    final String? image,

    @JsonKey(name: "brand_identifier_url") final String? brandIdentifierUrl,
    @JsonKey(name: "parent_code") final String? parentCode,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,



  }) = _BrandCreationtModel;
  factory BrandCreationtModel.fromJson(Map<String, dynamic> json) =>
      _$BrandCreationtModelFromJson(json);
}
