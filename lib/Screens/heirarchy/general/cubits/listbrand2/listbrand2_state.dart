part of 'listbrand2_cubit.dart';

@freezed
class Listbrand2State with _$Listbrand2State {
  const factory Listbrand2State.initial() = _Initial;
  const factory Listbrand2State.success(PaginatedResponse data) = _Success;
  const factory Listbrand2State.error() = _Error;
}
