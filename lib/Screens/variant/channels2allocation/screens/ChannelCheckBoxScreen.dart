import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inventory/Screens/variant/channels2allocation/models/channelsreadmodel.dart';
import 'package:inventory/Screens/variant/general/productmodulegeneral.dart';

class ChannelCheckBoxScreen extends StatefulWidget {
  final List<ChannelListModel>list;
  final List<bool?>selection;
  final Function(int) onTap;
  ChannelCheckBoxScreen({required this.list,required this.onTap,required this.selection});

  @override
  _ChannelCheckBoxScreenState createState() => _ChannelCheckBoxScreenState();
}

class _ChannelCheckBoxScreenState extends State<ChannelCheckBoxScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: h/18,
      margin:  EdgeInsets.symmetric(horizontal:w *.0155 ),
      // width: 120,

      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
        return
          NewCheckBoxText(
          label: widget.list[index].channelName??"",
          valueChanger:widget.selection[index],
          onChange: (va) {
            setState(() {
              widget.onTap(index);
              // onChange=true;
              // selection[index]=va;
              //
              //
              // widget.filterTable(selection);
            });


          },
          labelI1st: true,
        );
      },

          separatorBuilder: (context, index) {
        return SizedBox(width: 10,);
    } ,
          itemCount: widget.list.length),
    );
  }
}
