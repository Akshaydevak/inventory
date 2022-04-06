import 'package:flutter/material.dart';

class InputDataField extends StatefulWidget {
  final String label;
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
  const InputDataField({
    Key? key,
    this.isPrefix = false,
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
  _InputDataFieldState createState() => _InputDataFieldState();
}

class _InputDataFieldState extends State<InputDataField> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Expanded(
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          //horizontal: 10,
            vertical: 5),
        leading: Container(
            width: MediaQuery.of(context).size.width < 800
                ?width * 20
                : width * 5,
            child: Text.rich(TextSpan(
                text: widget.label,
                style: const TextStyle(fontSize: 12),
                children: widget.required
                    ? [
                  const TextSpan(
                      text: "*", style: TextStyle(color:Colors.red))
                ]
                    : []))),
        title:
        // widget.isTile
        //     ? DropDownTile(
        //   enable: true,
        //   // widget.enable,
        //   name: widget.tileName,
        //   items: widget.items,
        //   onChange: widget.onListChange,
        //   onAddNew: widget.onAddNew,
        // )
        //     :
        Container(
          color: widget.restricted ? Colors.grey.withOpacity(.2) : null,
          child: TextFormField(
            maxLines: widget.maxLines,
            controller: widget.controller,
            enabled: true,
            // widget.enable,
            onChanged: widget.onChanged,
            decoration: InputDecoration(
              prefixIconConstraints:
              const BoxConstraints(minWidth: 0, minHeight: 0),
              prefixIcon: widget.isPrefix
                  ? TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey[300],
                  ),
                  onPressed: () {},
                  child: Text(
                    widget.prefixLable,
                    style: const TextStyle(
                        color:Colors.black, fontSize: 10),
                  ))
                  : null,
              contentPadding: const EdgeInsets.all(10),
              isDense: true,
              hintText: widget.hintText,
              hintStyle: const TextStyle(fontSize: 10),
              border: const OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
