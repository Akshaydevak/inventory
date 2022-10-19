import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'uomsate_state.dart';
part 'uomsate_cubit.freezed.dart';

class UomsateCubit extends Cubit<UomsateState> {
  UomsateCubit() : super(UomsateState.initial());
}
