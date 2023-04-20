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
  String? prev;
  String? next;
  Future getInventorySearch(String code,{String? tab=""}) async {
    next = null;
    prev = null;
    emit(InventorysearchState.initial());
    final result = await _repos.getInventorySearch(code,tab:tab);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }
  Future getSearch(String code,{String? tab=""}) async {
    emit(InventorysearchState.initial());
    final result = await _repos.getSearch("code="+code,tab:tab);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }
  Future nextslotSectionPageList(String nextURL) async {
    emit(InventorysearchState.initial());
    final result = await _repos.getSearch(next==null?nextURL:next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    emit(InventorysearchState.initial());
    final result = await _repos.getSearch(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(InventorysearchState.initial());
    getSearch("");
  }




}
