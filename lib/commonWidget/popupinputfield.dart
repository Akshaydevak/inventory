

import 'package:flutter/material.dart';

class PopUpInputField extends StatefulWidget {
  final bool read;
  final String label;
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

  const PopUpInputField({
    Key? key,
    this.read=false,
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
    this.restricted = false,
    this.onAddNew = false,
  }) : super(key: key);

  @override
  _PopUpInputFieldState createState() => _PopUpInputFieldState();
}

class _PopUpInputFieldState extends State<PopUpInputField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(

        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            //horizontal: 10,
              vertical: 5),
          leading: Container(

              width: 70,
              child: Text.rich(TextSpan(
                  text: widget.label,
                  style: TextStyle(fontSize: 12),
                  children: widget.required
                      ? [
                    TextSpan(
                        text: "*", style: TextStyle(color:Colors.grey))
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
            height: 40,
              color: widget.restricted ? Colors.grey.withOpacity(.2) : null,
              child:
              widget.boarType=="int"?
              TextFormField(
                readOnly: widget.read,

                maxLines: widget.maxLines,
                controller: widget.controller,
                enabled: !widget.restricted,
                onChanged: widget.onChanged,
                keyboardType: TextInputType.number,
                // inputFormatters: <TextInputFormatter>[
                //
                //   FilteringTextInputFormatter.digitsOnly
                // ],




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
                  hintText: widget.hintText,
                  hintStyle: TextStyle(fontSize: 10),
                  border: OutlineInputBorder(),
                ),
              ):
              TextFormField(
                readOnly: widget.read,
                maxLines: widget.maxLines,
                controller: widget.controller,
                enabled: !widget.restricted,
                onChanged: widget.onChanged,
                // keyboardType: widget.boarType=="int"?TextInputType.number:TextInputType.text,
                //  inputFormatters: <TextInputFormatter>[
                // //   widget.boarType=="int"?
                // //   FilteringTextInputFormatter.digitsOnly: ""
                // // ],




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
                        TextStyle(color: Colors.grey, fontSize: 10),
                      ))
                      : null,
                  contentPadding: EdgeInsets.all(10),
                  isDense: true,
                  hintText: widget.hintText,
                  hintStyle: TextStyle(fontSize: 10),
                  border: OutlineInputBorder(),
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
  final bool valueChanger;
  final Color color;
  final Function(bool?) onSelection;
  CheckedBoxs({required this.onSelection,this.valueChanger=false,this.color=Colors.white});

  @override
  _CheckedBoxState createState() => _CheckedBoxState();
}

class _CheckedBoxState extends State<CheckedBoxs> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: widget.color,
      value: widget.valueChanger,
      onChanged: widget.onSelection,
    );
  }
}
