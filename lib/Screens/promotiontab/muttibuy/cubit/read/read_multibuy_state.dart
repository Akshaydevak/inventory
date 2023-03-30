part of 'read_multibuy_cubit.dart';


@freezed
class ReadMultibuyState with _$ReadMultibuyState {
  const factory ReadMultibuyState.initial() = _Initial;
  const factory ReadMultibuyState.loading() = _Loading;
  const factory ReadMultibuyState.error() = _Error;
  const factory ReadMultibuyState.success(PromotionMultiBuyReadModel data) =_Success;

}
