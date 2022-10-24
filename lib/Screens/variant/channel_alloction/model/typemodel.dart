
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/itemread.dart';

part 'typemodel.g.dart';
part 'typemodel.freezed.dart';
@freezed
class ChannelTypeModel with _$ChannelTypeModel {
  const factory ChannelTypeModel({
    final int? id,
    final String? code,
    final String? name,
    final Barcode? barcode,

    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,





  }) = _ChannelTypeModel;
  factory ChannelTypeModel.fromJson(Map<String, dynamic> json) =>
      _$ChannelTypeModelFromJson(json);
}