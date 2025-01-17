import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final bool marginCheck;

  TextWidget( {required this.text,this.marginCheck=false, this.color=Colors.black, this.size=16}) ;
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return Container(
      margin:marginCheck?EdgeInsets.symmetric(horizontal:0 ): EdgeInsets.symmetric(horizontal:w *.0175 ),
        child: Text(text,style: TextStyle(color: color,fontWeight: FontWeight.bold,fontSize: size),));
  }
}
