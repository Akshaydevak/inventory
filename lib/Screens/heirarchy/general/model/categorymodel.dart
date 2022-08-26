import 'package:freezed_annotation/freezed_annotation.dart';


part 'categorymodel.g.dart';
part 'categorymodel.freezed.dart';

@freezed
class CategoryCreationtModel with _$CategoryCreationtModel {
  const factory CategoryCreationtModel({

    final String? description,
    final String? name,
    final String? code,
    final int? image,

    @JsonKey(name: "alternative_name") final String? alternativeName,
    @JsonKey(name: "parent_code") final String? parentCode,
    @JsonKey(name: "division_code") final String? divisionCode,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,



  }) = _CategoryCreationtModel;
  factory CategoryCreationtModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryCreationtModelFromJson(json);
}
