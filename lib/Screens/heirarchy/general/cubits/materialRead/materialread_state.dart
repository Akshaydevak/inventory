part of 'materialread_cubit.dart';

@freezed
class MaterialreadState with _$MaterialreadState {
  const factory MaterialreadState.initial() = _Initial;
  const factory MaterialreadState.loading() = _Loading;
  const factory MaterialreadState.error() = _Error;
  const factory MaterialreadState.success(MaterialReadModel data) = _Success;
}
