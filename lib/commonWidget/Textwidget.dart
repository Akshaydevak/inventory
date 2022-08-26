import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

  TextWidget( {required this.text, this.color=Colors.black, this.size=15}) ;
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal:w *.02 ),
        child: Text(text,style: TextStyle(color: color,fontSize: size),));
  }
}
