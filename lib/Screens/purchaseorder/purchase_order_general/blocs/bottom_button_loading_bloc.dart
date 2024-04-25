import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_button_loading_event.dart';
part 'bottom_button_loading_state.dart';

class BottomButtonLoadingBloc extends Bloc<BottomButtonLoadingEvent, BottomButtonLoadingState> {
  BottomButtonLoadingBloc() : super(BottomButtonLoadingState()) {
    on<SaveupdateButtonEvent>((event, emit) {
emit (state.copyWith(updateSave: event.val));
    });
    on<deleteClearButtonEvent>((event, emit) {
emit (state.copyWith(deleteClear: event.val));
    });
  }
}
