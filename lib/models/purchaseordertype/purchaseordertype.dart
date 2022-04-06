import 'package:freezed_annotation/freezed_annotation.dart';
part 'purchaseordertype.freezed.dart';
part 'purchaseordertype.g.dart';

@freezed
class PurchaseOrdertype with _$PurchaseOrdertype {
  const factory PurchaseOrdertype({
    @JsonKey(name: "order_types") final List<String>? orderTypes,
  }) = _PurchaseOrdertype;
  factory PurchaseOrdertype.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrdertypeFromJson(json);
}
