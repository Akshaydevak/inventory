part of 'statelist_cubit.dart';


@freezed
class StatelistInitial with _$StatelistInitial {
  const factory StatelistInitial.initial() = _Initial;
  const factory StatelistInitial.loading() = _Loading;
  const factory StatelistInitial.error() = _Error;
  const factory StatelistInitial.success(List<StateList> data) =
  _Success;

}
