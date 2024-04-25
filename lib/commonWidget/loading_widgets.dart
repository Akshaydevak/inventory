
import 'package:flutter/material.dart';

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