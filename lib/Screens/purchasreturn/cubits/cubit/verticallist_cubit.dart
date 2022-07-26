import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verticallist_state.dart';
part 'verticallist_cubit.freezed.dart';

class VerticallistCubit extends Cubit<VerticallistState> {
  VerticallistCubit() : super(VerticallistState.initial());
}
