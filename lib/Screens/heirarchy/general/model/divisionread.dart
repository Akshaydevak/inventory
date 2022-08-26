import 'package:freezed_annotation/freezed_annotation.dart';


part 'divisionread.g.dart';
part 'divisionread.freezed.dart';

@freezed
class DevisionReadModel with _$DevisionReadModel {
  const factory DevisionReadModel({
   final int? id,
    final String? description,
    final String? status,
    final String? name,
    final String? image,
    final String? code,

    @JsonKey(name: "search_name") final String? searchNmae,
    @JsonKey(name: "display_name") final String? displayName,
    @JsonKey(name: "short_name") final String? shortName,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,




  }) = _DevisionReadModel;
  factory DevisionReadModel.fromJson(Map<String, dynamic> json) =>
      _$DevisionReadModelFromJson(json);
}
