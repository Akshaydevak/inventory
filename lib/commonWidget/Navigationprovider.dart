
import 'package:flutter/material.dart';
import 'package:inventory/purchaserecievingmodel/purchaserecieving_read.dart';
import 'package:provider/provider.dart';

class NavigationProvider extends ChangeNotifier {
  bool _isCollapsed = false;
  int unitcost=0;
  bool _isLoadingSaveUpdate = false;
  bool _isLoadingDeleteClear = false;
  bool press=false;
  double ? totalUnitcost=0;
  int ? totalDiscount=0;
  int ? totalVariableAmount=0;
  List<RecievingLines> recievingLisnes = [];
  int ?totalExcesstax=0;
  int ? totalVat=0;
  int ? totalActualCost=0;
  int ?totalGrandTotal=0;
  int ? totalFoc=0;

  bool get isCollapsed => _isCollapsed;
  bool get isLoadingSaveupdate => _isLoadingSaveUpdate;
  bool get isLoadingDeleteClear => _isLoadingDeleteClear;
  void toggleIsCollapsed() {
    print("wts");
    _isCollapsed = !isCollapsed;
press=_isCollapsed;
    notifyListeners();
  }
  change(int v){
    unitcost=v;
    notifyListeners();
  }

  void setLoadingSaveUpdate(bool value) {
    _isLoadingSaveUpdate = value;
    notifyListeners();
  }void setLoadingDeleterClear(bool value) {
    _isLoadingDeleteClear = value;
    notifyListeners();
  }
  void setLoadingBoth(bool value) {
    _isLoadingDeleteClear = value;
    _isLoadingSaveUpdate = value;
    notifyListeners();
  }

}