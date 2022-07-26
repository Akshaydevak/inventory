import 'package:flutter/material.dart';
import 'package:inventory/assets/imagesSvg.dart';
import 'package:inventory/widgets/MenuIcon.dart';

class RightMenuScreen extends StatefulWidget {

  @override
  _RightMenuScreenState createState() => _RightMenuScreenState();
}

class _RightMenuScreenState extends State<RightMenuScreen> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return   Container(

        width:MediaQuery.of(context).size.width*.04,
        height: double.infinity,
        color:Color(0xffFAFAFA),
        child:Column(
          children: [
            // MenuIcon(iconurl:ImageSvg().Licon2,hieght: .07,),
            // MenuIcon(iconurl:ImageSvg().Licon2,hieght: .07,),
            // MenuIcon(iconurl:ImageSvg().Licon2,hieght: .07,),
            // MenuIcon(iconurl:ImageSvg().Licon2,hieght: .07,),
            // MenuIcon(iconurl:ImageSvg().Licon2,hieght: .07,),
            // MenuIcon(iconurl:ImageSvg().Licon2,hieght: .07,),
            MenuIcon(iconurl: "asset/righticon3s.png",hieght: .07,),
            MenuIcon(iconurl:ImageSvg().Licon2,hieght: .07,svg: true,),
            MenuIcon(iconurl: "asset/rightmenu1s.png",hieght: .07,),
            MenuIcon(iconurl: "asset/rightmenu4.png",hieght: .07,),
            MenuIcon(iconurl: "asset/rightmenu5.png",hieght: .07,),
            MenuIcon(iconurl: "asset/rightmenu6.png",hieght: .07,),

          ],
        )
    )
    ;
  }
}
