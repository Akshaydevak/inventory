

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class PopUpInputField extends StatefulWidget {
  final bool read;
  final String label;
  final double height;
  final String boarType;
  final bool required;
  final bool isPrefix;
  final String prefixLable;
  final bool enable;
  final bool restricted;
  final bool isTile;
  final String hintText;
  final String? tileName;
  final int maxLines;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final Function(String?)? onListChange;
  final List<String>? items;
  final List<String>? dropValues;
  final bool onAddNew;
  final Function? ontap;
  final bool readOnly;
  final bool icondrop;


  const PopUpInputField({
    Key? key,
    this.read=false,
    this.height=40,
    this.readOnly=false,
    this.isPrefix = false,
    this.boarType="",
    this.prefixLable = "",

    required this.label,

    this.required = false,
    this.enable = false,
    this.isTile = false,
    this.hintText = "",
    this.maxLines = 1,
    this.tileName,
    this.controller,
    this.onChanged,
    this.items,
    this.onListChange,
    this.dropValues,
    this.icondrop = false,
    this.restricted = false,
    this.onAddNew = false, this.ontap,
  }) : super(key: key);

  @override
  _PopUpInputFieldState createState() => _PopUpInputFieldState();
}

class _PopUpInputFieldState extends State<PopUpInputField> {
  @override
  Widget build(BuildContext context) {
    return
      SizedBox(

        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            //horizontal: 10,
              vertical: 5),
          leading: Container(

              width: 70,
              child: Text.rich(TextSpan(
                  text: widget.label,
                  style: GoogleFonts.roboto(fontSize:12,fontWeight: FontWeight.w600),
                  children: widget.required
                      ? [
                    TextSpan(
                        text: "*", style: TextStyle(color:Colors.black))
                  ]
                      : []))),
          title: widget.isTile
              ? DropDownTile(
            enable: widget.enable,
            name: widget.tileName,
            items: widget.items,
            onChange: widget.onListChange,
            onAddNew: widget.onAddNew,
          )
              : Container(
            height: widget.height,
              color: widget.restricted ? Colors.grey.withOpacity(.2) : null,
              child:
              widget.boarType=="int"?
              TextFormField(

                onTap: (){
                  widget.ontap!=null?widget.ontap!():null;
                },
                readOnly: widget.readOnly,


                maxLines: widget.maxLines,
                controller: widget.controller,
                enabled: !widget.restricted,
                onChanged: widget.onChanged,

                keyboardType:
                widget.boarType=="int"? TextInputType.number:null ,
                inputFormatters: widget.boarType=="int"?
                <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ]:null,




                decoration: InputDecoration(

                  prefixIconConstraints:
                  BoxConstraints(minWidth: 0, minHeight: 0),
                  prefixIcon: widget.isPrefix
                      ? TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                      ),
                      onPressed: () {},
                      child: Text(
                        '${widget.prefixLable}',
                        style:
                        TextStyle(color:Colors.grey, fontSize: 10),
                      ))
                      : null,
                  contentPadding: EdgeInsets.all(10),
                  isDense: true,
                  enabledBorder:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(2),


                      borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                  focusedBorder:   OutlineInputBorder(
                      borderRadius:BorderRadius.circular(2),

                      borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),

                  border: OutlineInputBorder(),
                  hintText: widget.hintText,
                  hintStyle: TextStyle(fontSize: 10),

                ),
              ):
              TextFormField(

                onTap: (){
                  widget.ontap!=null?widget.ontap!():null;
                },
                readOnly: widget.readOnly,
                maxLines: widget.maxLines,
                controller: widget.controller,
                enabled: !widget.restricted,
                onChanged: widget.onChanged,
                keyboardType:
                widget.boarType=="int"? TextInputType.number:null ,
                inputFormatters: widget.boarType=="int"?
                <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ]:null,
                // keyboardType: widget.boarType=="int"?TextInputType.number:TextInputType.text,
                //  inputFormatters: <TextInputFormatter>[
                //   widget.boarType=="int"?
                //   FilteringTextInputFormatter.digitsOnly: null
                // ],




                decoration: InputDecoration(
                  suffixIcon: widget.icondrop?IconButton(onPressed:(){
                    widget.ontap!=null?widget.ontap!():null;

                  }, icon: Icon(Icons.more_horiz_rounded)):null,
                  prefixIconConstraints:
                  BoxConstraints(minWidth: 0, minHeight: 0),
                  prefixIcon: widget.isPrefix
                      ? TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                      ),
                      onPressed: () {},
                      child: Text(
                        '${widget.prefixLable}',
                        style:
                        TextStyle(color: Colors.grey, fontSize: 10),
                      ))
                      : null,
                  contentPadding: EdgeInsets.all(10),
                  enabledBorder:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(2),


                      borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                  focusedBorder:   OutlineInputBorder(
                      borderRadius:BorderRadius.circular(2),

                      borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                  isDense: true,
                  border: OutlineInputBorder(),

                  hintText: widget.hintText,
                  hintStyle: TextStyle(fontSize: 10),

                ),
              )
          ),
        ));
  }
}
class DropDownTile extends StatefulWidget {
  final List<String>? items;
  final String? name;
  final bool enable;
  final Function(String?)? onChange;
  final bool onAddNew;

  const DropDownTile(
      {Key? key,
        required this.name,
        this.items,
        this.onChange,
        this.enable = false,
        this.onAddNew = false})
      : super(key: key);

  @override
  _DropDownTileState createState() => _DropDownTileState();
}

class _DropDownTileState extends State<DropDownTile> {
  @override
  Widget build(BuildContext context) {
    List<String> data = [];
    widget.items?.forEach((element) {
      data.add(element);
    });
    // if (widget.onAddNew && !data.contains(Variable.addNew))
    //   data.add(Variable.addNew);

    String? dummy;
    if (widget.name != null && widget.name!.isNotEmpty) dummy = widget.name;
    return IgnorePointer(
      ignoring: !widget.enable,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.all(4.0),
        child: DropdownButton<String>(
          underline: Container(
            color: Colors.transparent,
          ),
          isExpanded: true,
          value: dummy,
          onTap: () {},
          onChanged: widget.onChange,
          iconDisabledColor: Colors.grey,
          selectedItemBuilder: (context) => data.isEmpty
              ? [
            DropdownMenuItem<String>(
              child: Text(""),
            )
          ]
              : List.generate(
              data.length,
                  (index) => DropdownMenuItem<String>(
                value: data[index],
                child: Text(data[index]),
              )).toList(),
          items: data.isEmpty
              ? [
            DropdownMenuItem<String>(
              child:
              Container(color: Colors.grey[300], child: Text("none")),
            )
          ]
              : List.generate(
              data.length,
                  (index) => DropdownMenuItem<String>(
                value: data[index],
                child: Container(
                    margin: EdgeInsets.all(8),
                    child: Text(data[index])),
              )).toList(),
          isDense: true,
        ),
      ),
    );
  }
}
class CheckedBoxs extends StatefulWidget {
  final bool? valueChanger;
  final Color color;
  final double hght;
  final Function(bool?) onSelection;
  CheckedBoxs({required this.onSelection,this.valueChanger=false,this.color=Colors.transparent,this.hght=50});

  @override
  _CheckedBoxState createState() => _CheckedBoxState();
}

class _CheckedBoxState extends State<CheckedBoxs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
      height: widget.hght,
      child: Checkbox(
       side: BorderSide(
         width: 1,
         color:  Color(0xff3E4F5B).withOpacity(.5)




       ),


        activeColor: Color(0xff3E4F5B),
        value: widget.valueChanger,
        onChanged: widget.onSelection,
      ),
    );
  }
}



class CustomDivider extends StatelessWidget {
  final double thickness;
  final Color clr;
  CustomDivider({
    this.clr=Colors.grey,
    this.thickness=1,
});


  @override
  Widget build(BuildContext context) {
    double? width=MediaQuery.of(context).size.width;
    return Divider(
      thickness: thickness,
      color: clr,
      indent: width*.017, //spacing at the start of divider
      endIndent: width*.017,


    );
  }
}


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
        height: 46,
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