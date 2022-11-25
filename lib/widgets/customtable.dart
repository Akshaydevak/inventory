import 'package:flutter/material.dart';
import 'package:inventory/commonWidget/Colors.dart';

import 'custom_inputdecoration.dart';
import 'custom_outlinebitton.dart';

Widget customTable({
  required List<TableRow> childrens,
  Map<int, TableColumnWidth>? widths,
  double tableWidth = 1,
  TableBorder? border,
}) =>
    Table(
      columnWidths: widths,
      border: border ??
          TableBorder(
            verticalInside: BorderSide(
                width: .5, color:   Color(0xff3E4F5B).withOpacity(.1), style: BorderStyle.solid),
            horizontalInside: BorderSide(
                width: .3,
                color:   Color(0xff3E4F5B).withOpacity(.1),
                // color: Colors.blue,
                style: BorderStyle.solid),
          ),
      children: childrens,
    );

Widget tableHeadtext(
    String label, {
      bool center=false,
      double height = 43,
      double? size,
      Color? textColor = Colors.white,
       Color? color =  Pellet.tableBlueHeaderPrint,
      EdgeInsets? padding,
    }) =>
    Container(
      alignment: center?Alignment.topLeft:Alignment.topLeft,
      height: height,
      padding: padding ?? EdgeInsets.only(left: 13,top: 12,bottom:2),
      color: color,
      child: Text(
        label,
        // textAlign: TextAlign.center,
        style: TextStyle(fontSize: size, color: textColor,),
      ),
    );
Widget textPadding(String label,
    {double fontSize = 14,
      EdgeInsets? padding,
      double? height,
      Color color= const Color(0xffF2F3F5),
      FontWeight fontWeight = FontWeight.w100}) =>
    Container(
      height: height,
      alignment: Alignment.center,

      color: color,
      padding: padding ?? EdgeInsets.fromLTRB(3, 3, 0, 0),
      child:label=="0"||label=="null"?Text(''):Text(
        label,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
Widget childPadding(Widget child, {EdgeInsets? padding}) => Padding(
  padding: padding ?? EdgeInsets.fromLTRB(3, 3, 0, 4),
  child: child,
);

Widget dataTableHead(BuildContext context, String label) => Row(
  children: [
    boldText(label),
    SizedBox(height: 5,),
    TextButton.icon(
      onPressed: () {},
      label: Text("add new"),
      icon: Icon(Icons.add),
    ),
    // DropDownLabel(),
    SizedBox(height: 5,),
    SizedBox(
        width: 100,
        child: underlinedSearchField())
  ],
);

underlinedSearchField() {}
Widget tableAddNewTitle(String label, VoidCallback onTap) => Row(
  children: [
    boldText(label),
    SizedBox(height: 5,),
    Transform.scale(
      scale: 0.8,
      child: CustomOutLinedButton(
        text: 'Add new',
        iconData: Icons.add,
        onTap: onTap,
      ),
    ),
  ],
);
Widget childCustomPadding(Widget child, {EdgeInsetsGeometry? padding}) =>
    Padding(
      padding: padding ?? EdgeInsets.all(2),
      child: child,
    );
