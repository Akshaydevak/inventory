part of 'payment_list_cubit.dart';


@freezed
class PaymentListState with _$PaymentListState {
  const factory PaymentListState.initial() = _Initial;
  const factory PaymentListState.success(PaginatedResponse data) = _Success;
  const factory PaymentListState.error() = _Error;
}
