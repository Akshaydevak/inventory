import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuIcon extends StatelessWidget {
  final String iconurl;
  final bool ? selected;
  final VoidCallback ? ontap;
  final double size;
  final double hieght;
  final bool svg;

  MenuIcon({required this.iconurl, this.selected=false, this.ontap,this.size=.02,this.hieght=.0780,this.svg=false});

  @override
  Widget build(BuildContext context) {
    double hieghts=MediaQuery.of(context).size.height;
    double widths=MediaQuery.of(context).size.width;
    return InkWell(
      onTap:ontap,

      child: Container(
        height:hieghts*hieght,
        width: MediaQuery.of(context).size.width*.062,
        decoration: BoxDecoration(
          border:selected==true? Border(
            left:  BorderSide(width: 7.0, color: Color(0xff3E4F5B)),
          ):  Border(left:  BorderSide(width:0, color:Colors.transparent),),
          color:selected==true? Colors.white:Colors.transparent,
        ),
        alignment: Alignment.center,


        child: Container(


          height:hieghts*size,
            width: widths*size,
            child:svg?SvgPicture.string(iconurl,):Image.asset(iconurl,)),

      ),
    );

  }
}
