
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget customCommonButtonProgressIndiactor(bool islabelcolor,{double scale=0.3}){
  return SizedBox(
    height: 10,
    width: 10,
    child: Transform.scale(
      scale: scale,
      child: CircularProgressIndicator
        (

        color:islabelcolor?Colors.blue: Colors.white,
      ),
    ),
  );
}
Widget customCommonTAbleProgressIndiactor(){
  return Center(child:Lottie.asset('asset_json/loadingAnimation.json', ));
}Widget customCommonVerticalProgressIndiactor(){
  return Container(
    color: Colors.white,

      child: Column(
        children: List.generate(30, (index) =>  Lottie.asset(

          'asset_json/loadingAnimation.json',fit: BoxFit.fitWidth ,width: 400,),)


      ));
}