part of 'bogo_read_cubit.dart';


@freezed
class BogoReadState with _$BogoReadState {
  const factory BogoReadState.initial() = _Initial;
  const factory BogoReadState.loading() = _Loading;
  const factory BogoReadState.error() = _Error;
  const factory BogoReadState.success(PromotionBogoReadModel data) =_Success;
}
