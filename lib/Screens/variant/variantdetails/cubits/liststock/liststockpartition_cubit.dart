import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'liststockpartition_state.dart';

class ListstockpartitionCubit extends Cubit<ListstockpartitionState> {
  ListstockpartitionCubit() : super(ListstockpartitionInitial());
}
