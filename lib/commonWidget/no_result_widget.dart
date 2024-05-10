import 'package:flutter/material.dart';

class NoDataResult extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.all(5),
        child: Text("No Data Found",style: TextStyle(color: Colors.grey,fontSize: 18),));
  }
}
