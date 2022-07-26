import 'package:flutter/material.dart';

class TitleIcon extends StatelessWidget {
  final String image;
  final Color color;
  final double top;
  final double size;

  TitleIcon({required this.image,this.color=Colors.white,this.top=28,this.size=.012});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top:  MediaQuery.of(context).size.height*.034,),
        child: Image.asset(image,color: color,
            height:
            MediaQuery.of(context).size.width*size,
          width:
          //size
          MediaQuery.of(context).size.width*size,
      ));
  }
}
