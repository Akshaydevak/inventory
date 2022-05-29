import 'package:flutter/material.dart';

void showDailogPopUp(BuildContext context, Widget child) {
  showDialog(
    context: context,
    builder: (context) => child,
  );
}
Widget gapWidthColumn({double width = 20}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: width),
    child: Column(
      children: [],
    ),
  );
}