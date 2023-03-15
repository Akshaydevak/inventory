part of 'list_coupon_all_cubit.dart';


@freezed
class ListCouponAllState with _$ListCouponAllState {
  const factory ListCouponAllState.initial() = _Initial;
  const factory ListCouponAllState.loading() = _Loading;
  const factory ListCouponAllState.error() = _Error;
  const factory ListCouponAllState.success(listAllSalesApis data) = _Success;
}
