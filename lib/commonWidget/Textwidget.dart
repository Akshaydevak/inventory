import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

  TextWidget( {required this.text, this.color=Colors.black, this.size=15}) ;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: color,fontSize: size),);
  }
}
