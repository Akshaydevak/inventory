import 'package:flutter/material.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/common.dart';

import 'custom_inputdecoration.dart';
import 'custom_outlinebitton.dart';

Widget customTable({
  required List<TableRow> childrens,
  Map<int, TableColumnWidth>? widths,
  double tableWidth = 1,
  TableBorder? border,
}) =>
    Container(

      child: Table(
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
      ),
    );
class tableHeadtext extends StatelessWidget {
  final String label;
  final bool center;
  final double height;
  final double? size;
  final Color textColor;
  final Color? color;
  final EdgeInsets? padding;
  tableHeadtext( this.label,{this.center=false,this.height=46,this.size,this.textColor=Colors.white,this.color =  Pellet.tableBlueHeaderPrint,this.padding});

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return Container(  alignment: center?Alignment.topLeft:Alignment.topLeft,
      height: height,
      padding: padding ?? EdgeInsets.only(left: 12,top: 12,bottom:h*.002,right:  5),
      color: color,
      child: Text(
        label,
        // textAlign: TextAlign.center,
        style: TextStyle(fontSize: size, color: textColor,),
      ),);
  }
}


// Widget tableHeadtext(
//     String label, {
//       bool center=false,
//       double height = 46,
//       double? size,
//       Color? textColor = Colors.white,
//        Color? color =  Pellet.tableBlueHeaderPrint,
//       EdgeInsets? padding,
//     }) =>
//     Container(
//       alignment: center?Alignment.topLeft:Alignment.topLeft,
//       height: height,
//       padding: padding ?? EdgeInsets.only(left: 12,top: 12,bottom:5,right:  12),
//       color: color,
//       child: Text(
//         label,
//         // textAlign: TextAlign.center,
//         style: TextStyle(fontSize: size, color: textColor,),
//       ),
//     );
Widget textPadding(String label,
    {double fontSize = 14,
      EdgeInsets? padding,
      double? height,
      Color color= const Color(0xffF2F3F5),
      FontWeight fontWeight = FontWeight.w100}) =>
    Container(
      height: height,
      alignment: Alignment.topLeft,

      color: color,
      padding: padding ?? EdgeInsets.fromLTRB(15, 3, 0, 0),
      child:label=="0"||label=="null"?Text(''):Text(
        label,
        textAlign: TextAlign.left,
        style: CommonTextStyle.normalTableFieldStyle,
      ),
    );
class VariantIdTAble extends StatelessWidget {
  final String? text;
  final VoidCallback onTap;
  VariantIdTAble({required this.text,required this.onTap});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTap();
      },
      child: ListTile(
        title:Text(text=="null"?"": text??""),
        trailing: Icon(Icons.arrow_drop_down,size: 15,),

      ),
    );
  }
}



class textOnclickPadding extends StatefulWidget {
 final String? text;
 final Function ontap;
 textOnclickPadding({required this.text,required this. ontap});

  @override
  State<textOnclickPadding> createState() => _textOnclickPaddingState();
}

class _textOnclickPaddingState extends State<textOnclickPadding> {
  bool isHover=false;
  @override
  Widget build(BuildContext context) {
    return  Container(


  child: MouseRegion(
    onEnter: (event) {
      isHover = true;
      setState(() {});
    },
    onExit: (event) {
      isHover = false;
      setState(() {});
    },
    child: InkWell(
    onTap: () {
    widget.  ontap();

},
child: Container(
  color:isHover?Colors.grey.shade200:Colors.transparent,
padding: EdgeInsets.all(11),
child:
Text(widget.text??"",style: TextStyle(fontSize: 13.5),),
),
),
  ),
);;
  }
}




// Widget textOnclickPadding(
// {String? text,Function? ontap }
//
//     ){
//   return  Container(
//
//
//   child: MouseRegion(
//     child: InkWell(
//     onTap: () {
//       ontap!();
//
// },
// child: Container(
// padding: EdgeInsets.all(11),
// child:
// Text(text??""),
// height: 45),
// ),
//   ),
// );
//
// }



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
