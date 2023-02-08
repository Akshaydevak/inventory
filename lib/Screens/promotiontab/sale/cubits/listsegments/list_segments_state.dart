part of 'list_segments_cubit.dart';


@freezed
class ListSegmentsState with  _$ListSegmentsState {
  const factory ListSegmentsState.initial() = _Initial;
  const factory ListSegmentsState.success(PaginatedResponse data) = _Success;
  const factory ListSegmentsState.error() = _Error;
}
