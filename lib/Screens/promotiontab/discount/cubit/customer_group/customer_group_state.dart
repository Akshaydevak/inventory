part of 'customer_group_cubit.dart';



@freezed
class CustomerGroupState with _$CustomerGroupState {
  const factory CustomerGroupState.initial() = _Initial;
  const factory CustomerGroupState.loading() = _Loading;
  const factory CustomerGroupState.error() = _Error;
  const factory CustomerGroupState.success(PaginatedResponse data) =_Success;


}
