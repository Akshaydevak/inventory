part of 'payment_sale_post_cubit.dart';

@freezed
class PaymentSalePostState with _$PaymentSalePostState {
  const factory PaymentSalePostState.initial() = _Initial;
  const factory PaymentSalePostState.loading() = _Loading;
  const factory PaymentSalePostState.error() = _Error1;
  const factory PaymentSalePostState.success(DoubleResponse data) = _Success;


}
