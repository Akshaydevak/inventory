
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget customCommonButtonProgressIndiactor(bool islabelcolor){
  return SizedBox(
    height: 10,
    width: 10,
    child: Transform.scale(
      scale: 0.3,
      child: CircularProgressIndicator
        (

        color:islabelcolor?Colors.blue: Colors.white,
      ),
    ),
  );
}
Widget customCommonTAbleProgressIndiactor(){
  return Center(child:Lottie.asset('asset_json/loadingAnimation.json', ));
}