part of 'payment_transaction_success_post_cubit.dart';

@freezed
class PaymentTransactionSuccessPostState with _$PaymentTransactionSuccessPostState {
  const factory PaymentTransactionSuccessPostState.initial() = _Initial;
  const factory PaymentTransactionSuccessPostState.loading() = _Loading;
  const factory PaymentTransactionSuccessPostState.error() = _Error1;
  const factory PaymentTransactionSuccessPostState.success(DoubleResponse data) = _Success;
}
