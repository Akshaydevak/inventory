import 'package:flutter/material.dart';
import 'package:inventory/Screens/variant/channel_stockAllocation/model/channelstock_allocationlist.dart';
import 'package:inventory/commonWidget/buttons.dart';

class ChannelScrollableScreen extends StatefulWidget {
  final List<dynamic> list;
  final Function(int?) onPress;
  ChannelScrollableScreen({required this.list,required this.onPress});

  @override
  _ChannelScrollableScreenState createState() => _ChannelScrollableScreenState();
}

class _ChannelScrollableScreenState extends State<ChannelScrollableScreen> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Container(
      height: height*.08,
      margin:   EdgeInsets.symmetric(horizontal:width *.0155 ),

      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            // width:40 ,
              child: TextButtonLarge(onPress:(){
                widget.onPress(index);}



              ,text:widget.list[index].channeltypeName??""));

        },
        itemCount: widget.list.length,
        separatorBuilder:(context, index) {
          return SizedBox(width: 10);
        },


      ),
    );
  }
}
