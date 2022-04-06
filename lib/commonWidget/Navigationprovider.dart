
import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier {
  bool _isCollapsed = false;
  int unitcost=0;
  bool press=false;

  bool get isCollapsed => _isCollapsed;
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

}