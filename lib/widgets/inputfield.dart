import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:inventory/commonWidget/common.dart';

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
class PopUpDateFormField extends StatefulWidget {
  final String label;
  final DateTime? initialValue;
  final bool enable;
  final bool required;
  final bool row;
  final bool isCreate;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  // final TextEditingController controller;
  final FormFieldSetter<DateTime>? onSaved;
  final DateFormat? format;
  const PopUpDateFormField(
      {Key? key,
        required this.label,
        this.controller,
        this.row=false,
        this.isCreate=false,

        this.enable = true,
        this.required = false,
        this.onSaved,
        this.format,
        this.initialValue, this.focusNode})
      : super(key: key);

  @override
  _PopUpDateFormFieldState createState() => _PopUpDateFormFieldState();
}

class _PopUpDateFormFieldState extends State<PopUpDateFormField> {
  @override
  Widget build(BuildContext context) {
    print("avalvaruvo"+widget.initialValue.toString());
    final mFormat = widget.format ?? DateFormat.yMd();
    return widget.row?
    SizedBox(

        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            //horizontal: 10,
              vertical: 5),
          leading: Container(

              width: 70,
              child: Text.rich(TextSpan(
                  text: widget.label,
                  style:CommonTextStyle.normalHeadingStyle,
                  children: widget.required
                      ? [
                    TextSpan(
                        text: "*", style: TextStyle(color:Colors.grey))
                  ]
                      : []))),
          title:  Container(
              height: 38,

              child:

              DateTimeField(
              initialValue: widget.initialValue,


               // controller: widget.controller,
                enabled: widget.enable,
                validator: (value) => value == null ? "* required" : null,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.calendar_today_outlined),
                  contentPadding: null,
                  labelStyle: TextStyle(color: Colors.black),
                  // labelText: widget.initialValue?.toString().split(" ")[0],
                  isDense: true,
                  label: null,
                  alignLabelWithHint: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(2),

                      borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),

                  focusedBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(2),

                      borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
                ),
                format: mFormat,
                style: TextStyle(fontSize: 14), onChanged: widget.onSaved,
                //  onFieldSubmitted: widget.onSaved,
                onShowPicker: (context, currentValue) async {
                  DateTime? date;
                  if (widget.enable)
                    date = await showDatePicker(
                        context: context,
                        firstDate: DateTime(1900),
                        initialDate: widget. isCreate?DateTime.now():currentValue ?? DateTime.now(),
                        lastDate: DateTime(2100));

                  return date!=null?date: widget. isCreate?DateTime.now(): currentValue;
                },
              )
          )
        )):  Padding(
      //height: 40,
    //  width: context.blockSizeHorizontal * 20,
      padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            widget.label,
              style:CommonTextStyle.normalHeadingStyle,
          ),

          SizedBox(height: 3,),

          DateTimeField(
            controller: widget.controller,
            // initialValue: widget.initialValue,
            enabled: widget.enable,
            validator: (value) => value == null ? "* required" : null,
            focusNode: widget.focusNode,
            onEditingComplete: () {
              // Display calendar when Enter key is pressed
              // showCalendar(context);
            },
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.calendar_today_outlined),
              contentPadding:  EdgeInsets.symmetric(horizontal: 10, vertical: 22),
              labelStyle: TextStyle(color: Colors.black),
              // labelText: widget.initialValue?.toString().split(" ")[0],
              isDense: true,
              label: null,
              alignLabelWithHint: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(2),

                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),

              focusedBorder: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(2),

                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
            ),
            format: mFormat,
            style: TextStyle(fontSize: 17), onChanged: widget.onSaved,
            //  onFieldSubmitted: widget.onSaved,
            onShowPicker: (context, currentValue) async {
              DateTime? date;
              if (widget.enable)
                date = await showDatePicker(
                    context: context,
                    firstDate: DateTime(1900),
                    initialDate:widget. isCreate?DateTime.now():currentValue ?? DateTime.now(),
                    lastDate: DateTime(2100));

              return date!=null?date :widget. isCreate?DateTime.now(): currentValue;
            },
          )

        ],
      ),
    );

  }
}
class Tabledate extends StatefulWidget {
  final String label;
  final bool initialCheck;
  final DateTime? initialValue;
  final bool enable;
  final bool required;
  final bool row;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  // final TextEditingController controller;
  final FormFieldSetter<DateTime>? onSaved;
  final VoidCallback? onSuffixIconPressed;
  final DateFormat? format;
  final VoidCallback? onEnterClick;
  const Tabledate(
      {Key? key,
        required this.label,
        this.controller,
        this.row=false,
        this.onSuffixIconPressed,
        this.initialCheck=false,
        this.focusNode,
        this.onEnterClick,

        this.enable = true,
        this.required = false,
        this.onSaved,
        this.format,
        this.initialValue})
      : super(key: key);

  @override
  _Tabledate createState() => _Tabledate();
}

class _Tabledate extends State<Tabledate> {
  DateTime? date;
   calenderPopupFunc() async {

    if (widget.enable)
      date = await showDatePicker(
        context: context,
        firstDate: DateTime(1900),
        initialDate:  DateTime.now(),
        lastDate: DateTime(2100));
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print("wiiiii"+widget.controller!.text);
    widget.controller?.text= widget.controller!.text==null||widget.controller!.text=="null"?"":widget.controller!.text;

    final mFormat = widget.format ?? DateFormat.yMd();
    return widget.initialCheck?
    DateTimeField(
      initialValue: widget.initialValue,
      // controller: widget.controller,
      enabled: widget.enable,
      focusNode: widget.focusNode,

      validator: (value) => value == null ? "* required" : null,
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.calendar_today_outlined),
        contentPadding: null,
        labelStyle:  CommonTextStyle.normalTableFieldStyle,
        // labelText: widget.initialValue?.toString().split(" ")[0],
        isDense: true,
        label: null,
        alignLabelWithHint: true,
        enabledBorder: OutlineInputBorder(
            borderRadius:BorderRadius.circular(2),

            borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),

        focusedBorder: OutlineInputBorder(
            borderRadius:BorderRadius.circular(2),

            borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
      ),
      format: mFormat,
      style: TextStyle(fontSize: 12), onChanged: widget.onSaved,
      //  onFieldSubmitted: widget.onSaved,
      onShowPicker: (context, currentValue) async {
        DateTime? date;
        if (widget.enable)
          date = await showDatePicker(
              context: context,
              firstDate: DateTime(1900),
              initialDate: currentValue ?? DateTime.now(),
              lastDate: DateTime(2100));

        return date ?? currentValue;
      },
    ):
    Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Container(
        // width: width*.049,
        height: 34,


        child: DateTimeField(
         // initialValue: widget.initialValue,
          controller: widget.controller,
          enabled: widget.enable,
          onFieldSubmitted: (date)async{
            print("okkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk0");
            date = await showDatePicker(
                context: context,
                firstDate: DateTime(1900),
                initialDate: DateTime.now(),
                lastDate: DateTime(2100));
            widget.controller?.text=date.toString()??"";
            if(widget.onEnterClick!=null){
              widget.onEnterClick!();
            }
          },

          focusNode: widget.focusNode,
          validator: (value) => value == null ? "* required" : null,
          decoration: InputDecoration(
            isDense: true,
            suffixIcon: Icon(Icons.calendar_today_outlined),
            // suffix: IconButton(
            //   icon: Icon(Icons.visibility_rounded),
            //   onPressed: () {
            //
            //     setState(() {
            //       print("Akshayayyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy");
            //       // hideState = !hideState;
            //     });
            //   },
            // ),

//                 suffixIcon: Container(
//                   height: 40,
//                   width: 40,
//                   color: Colors.red,
//                   child: GestureDetector(onTap: () {
// print("colsed");
// setState(() {
//   widget.controller?.clear();
// });
//
//
//
//                   },
//                   child:Icon(Icons.clear),),
//                 ),
            contentPadding: null,
            labelStyle: CommonTextStyle.normalTableFieldStyle,
            // labelText: widget.initialValue?.toString().split(" ")[0],

            label: null,
            alignLabelWithHint: true,
            enabledBorder: UnderlineInputBorder(

                borderRadius:BorderRadius.circular(2),


                borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1), width: 3, )),

            focusedBorder: UnderlineInputBorder(
                borderRadius:BorderRadius.circular(2),

                borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1),width: 3, )),
            // border: InputBorder.none,
          ),
          format: mFormat,
          style: TextStyle(fontSize: 12), onChanged: widget.onSaved,

          //  onFieldSubmitted: widget.onSaved,
          onShowPicker: (context, currentValue) async {
            print("okkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk1");
            // DateTime? date;
            if (widget.enable)
              // calenderPopupFunc();
              date = await showDatePicker(
                okButtonEvent: widget.onEnterClick,
                  context: context,
                  firstDate: DateTime(1900),
                  initialDate: currentValue ?? DateTime.now(),
                  lastDate: DateTime(2100));

            return date ?? currentValue;
          },
        ),
      ),
    );



  }
}
