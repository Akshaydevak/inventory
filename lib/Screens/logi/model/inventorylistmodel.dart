import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventorylistmodel.g.dart';
part 'inventorylistmodel.freezed.dart';

@freezed
class InventoryListModel with _$InventoryListModel {
  const factory InventoryListModel({
    final String? name,
    final int? id,

    final bool? status,
    final String? state,
    final String? email,
    @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
    @JsonKey(name: "is_offline", defaultValue: false) final bool? isOffline,
    @JsonKey(name: "business_unit_code", ) final String? businessUnitCode,
    @JsonKey(name: "user_id", ) final String? userId,
    @JsonKey(name: "business_addres", ) final int? businessAddress,
  }) = _InventoryListModel;
  factory InventoryListModel.fromJson(Map<String, dynamic> json) =>
      _$InventoryListModelFromJson(json);
}
