import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'inventorysearch_state.dart';
part 'inventorysearch_cubit.freezed.dart';

class InventorysearchCubit extends Cubit<InventorysearchState> {
  final InventoryRepository _repos = InventoryRepositoryImpl();
  InventorysearchCubit() : super(InventorysearchState.initial());
  Future getInventorySearch(String code) async {
    final result = await _repos.getInventorySearch(code);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
  Future getSearch(String code) async {
    final result = await _repos.getSearch(code);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
