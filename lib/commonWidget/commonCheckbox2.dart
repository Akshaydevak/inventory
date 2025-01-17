import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {

  final bool value;

  final Function(bool)? onChange;



  const CustomCheckBox({Key? key, this.value = false, this.onChange})

      : super(key: key);



  @override

  _CustomCheckBoxState createState() => _CustomCheckBoxState();

}



class _CustomCheckBoxState extends State<CustomCheckBox> {

  late bool val;

  bool onChange = false;



  @override

  Widget build(BuildContext context) {

    if (!onChange) val = widget.value;

    onChange = false;

    return InkWell(

      onTap: () {

        val = !val;

        if (widget.onChange != null) widget.onChange!(val);

        onChange = true;

        setState(() {});

      },

      child: Container(

        alignment: Alignment.center,

        padding: EdgeInsets.only(top: 0),

        child: Center(

          child: val

              ? Icon(

            Icons.check_box,

            color: Colors.green,

          )

              : Icon(Icons.check_box_outline_blank),

        ),

      ),

    );

  }

}