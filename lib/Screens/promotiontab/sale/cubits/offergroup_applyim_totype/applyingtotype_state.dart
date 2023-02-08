part of 'applyingtotype_cubit.dart';


@freezed
class ApplyingtotypeState with _$ApplyingtotypeState {
  const factory ApplyingtotypeState.initial() = _Initial;
  const factory ApplyingtotypeState.loading() = _Loading;
  const factory ApplyingtotypeState.error() = _Error;
  const factory ApplyingtotypeState.success(ReadOfferPeriod data) =_Success;
}
