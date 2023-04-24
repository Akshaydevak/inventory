import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopUpSwitchTile extends StatefulWidget {
  final bool value;
  final String title;
  final Color color;
  final Function(bool) onClick;
  const PopUpSwitchTile(
      {Key? key,
        required this.value,
        required this.title,
        this.color=Colors.black,
        required this.onClick})
      : super(key: key);

  @override
  _PopUpSwitchTileState createState() => _PopUpSwitchTileState();
}

class _PopUpSwitchTileState extends State<PopUpSwitchTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.symmetric(
          //horizontal: 10,
          //vertical: 5
        ),
        leading: Container(
            width: 300,
            padding: EdgeInsets.only(top: 10),
            child: Text(
              widget.title,
              style: TextStyle(fontSize: 12),
            )),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Transform.scale(
            scale: 0.6,
            child: CupertinoSwitch(
              activeColor: widget.color,
              value: widget.value,
              onChanged: widget.onClick,
            ),
          ),
        ));
  }
}