import 'package:flutter/material.dart';
import 'package:inventory/widgets/MenuIcon.dart';

class SideMenuScreen extends StatefulWidget {

  @override
  State<SideMenuScreen> createState() => _SideMenuScreenState();
}

class _SideMenuScreenState extends State<SideMenuScreen> {
  bool selected1=true;
  bool selected2=false;
  bool selected3=false;
  bool selected4=false;
  bool selected5=false;
  bool selected6=false;

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return  Container(height: double.infinity,
     //  width: 87,
        width: MediaQuery.of(context).size.width*.062,
        color: Color(0xffE6EAEE,),
        child:Column(
          children: [
            SizedBox(height:  size.height/6.5,),
            MenuIcon(iconurl: "asset/menuicon1.png",ontap: (){
              setState(() {
                selected1=!selected1;

                selected2=false;
                selected3=false;
                selected4=false;
                selected5=false;
                selected6=false;
              });

            },selected: selected1,
              size: .03,
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.002,),
            MenuIcon(iconurl: "asset/menuicon2.png"
              ,ontap: (){
                setState(() {
                  selected2=!selected2;
                   selected1=false;

                   selected3=false;
                   selected4=false;
                   selected5=false;
                   selected6=false;
                });

              },selected: selected2, size: .03,),
            MenuIcon(iconurl: "asset/menuicon3.png",ontap: (){
              setState(() {
                selected3=!selected3;
                selected1=false;

                selected2=false;
                selected4=false;
                selected5=false;
                selected6=false;
              });

            },selected: selected3, size: .03,),
            MenuIcon(iconurl: "asset/menuicon4.png",ontap: (){
              setState(() {
                selected4=!selected4;
                selected1=false;

                selected3=false;
                selected2=false;
                selected5=false;
                selected6=false;
              });

            },selected: selected4, size: .03,),
            MenuIcon(iconurl: "asset/menuicon5.png",ontap: (){
              setState(() {
                selected5=!selected5;
                selected1=false;

                selected3=false;
                selected4=false;
                selected2=false;
                selected6=false;
              });

            },selected: selected5, size: .03,),
            MenuIcon(iconurl: "asset/menuicon6.png",ontap: (){
              setState(() {
                selected6=!selected6;
                selected1=false;

                selected3=false;
                selected4=false;
                selected5=false;
                selected2=false;
              });

            },selected: selected6, size: .03,),

          ],
        )
    );
  }
}
