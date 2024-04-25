import 'dart:convert';
import 'dart:html';
import 'dart:typed_data';

import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:file_picker_cross/file_picker_cross.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/common.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/widgets/popupcallwidgets/popupcallwidget.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart'as http;
import 'package:photo_view/photo_view.dart';
import 'package:screenshot/screenshot.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:url_launcher/url_launcher.dart' as urlLauncher;


import '../commonWidget/pellete.dart';
class NewInputCard extends StatefulWidget {
  final double fontsize;
  final double height;
  final bool readOnly;
  final bool formatter;
  final TextEditingController controller;
  final int maxLines;
   final Color colors;
  final String? label;
  final String? keyboardType;
  final Function? onChange;
  final Function? ontap;
  final int? textLimit;
  final EdgeInsetsGeometry? paddings;

  final String title;
  final String? hint;

  final bool password;
  final bool icondrop;
  final bool integerOnly;
  final  bool direction;
  const NewInputCard({
    Key? key,
    this.onChange,
    this.ontap,
    this.paddings,
    this.textLimit=100,
    this.integerOnly=false,
    required this.controller,
    this.label,
    this.keyboardType,

    this.hint,
    this.formatter=false,
    this.readOnly=false,
    this.password = false,
    this.icondrop = false,
    this.direction=false,
    required this.title,
     this.colors = const Color(0xffC3C7C9),
    this.maxLines = 1,
    this.height = 48.7,
    this.fontsize = 12,
  }) : super(key: key);

  @override
  State<NewInputCard> createState() => _NewInputCardState();
}

class _NewInputCardState extends State<NewInputCard> {
  bool show = false;
  bool onChange = false;
  bool limitOflength=false;
  bool isClear=false;
  @override
  void initState() {
    super.initState();
    show = widget.password;
  }


  @override
  Widget build(BuildContext context) {
    if(onChange==false){
      limitOflength=false;
    }
    onChange=false;

    widget.controller?.text=='null'|| widget.controller?.text==null?widget.controller?.text="":widget.controller?.text;

    return Padding(
      padding:  widget.paddings!=null?widget.paddings!:EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018),
      child:
      widget.direction==false?
      Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: GoogleFonts.roboto(fontSize: widget.fontsize,fontWeight: FontWeight.w500),
          ),
          SizedBox(height:3),
          widget.keyboardType=="int"?
          Container(
            alignment: Alignment.center,
            height: widget.height,


            // color: widget.colors,
            // color: Colors.grey.shade200,
            child: TextFormField(

              textAlignVertical: TextAlignVertical.center,
              onChanged:(va){widget?.onChange!(va);} ,



              readOnly: widget.readOnly,
              maxLines: widget.maxLines,
              controller: widget.controller,
              obscureText: show,

              keyboardType:widget.formatter?TextInputType.numberWithOptions(decimal: true):null,
            inputFormatters:widget.formatter? <TextInputFormatter>[widget.integerOnly?FilteringTextInputFormatter.allow(RegExp(r"[0-9:]")):  FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))]:null,
              decoration: InputDecoration(
                hintText:widget.icondrop?"-select-":"",


                filled: true,
                fillColor: widget.readOnly?Color(0xE3E3E3).withOpacity(.2):Colors.white,
                suffixIcon: widget.password
                    ? IconButton(
                  icon: show
                      ? const Icon(
                    Icons.visibility,
                    size: 18,
                  )
                      : const Icon(
                    Icons.visibility_off_outlined,
                    size: 18,
                  ),
                  onPressed: () {
                    show = !show;
                    setState(() {});
                  },
                )
                    : null,
                labelStyle: const TextStyle(
                    fontSize: 13,
                    //fontStyle: FontStyle.italic,
                    ),
                // label: Text(
                //   widget.label,
                // ),
                hintStyle: const TextStyle(fontSize: 15,color: Colors.black),
                // hintText: widget.label,
                enabledBorder:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(2),

                    borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                focusedBorder:   OutlineInputBorder(
                  borderRadius:BorderRadius.circular(2),

                borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
              ),
            ),
          ):
          Container(
            alignment: Alignment.center,
            // height: widget.height,


            // color: widget.colors,
            // color: Colors.grey.shade200,
            child: TextFormField(

              textAlignVertical: TextAlignVertical.center,
              onTap: (){
                print("www");
                if(widget.controller.text.isEmpty)
                  widget.ontap!=null?widget.ontap!():null;
              },
              onChanged:(va){
                if(widget.formatter==true){
                  if(widget.controller.text.length>10){
                    onChange=true;

                    setState(() {
                      limitOflength=true;
                    });
                  }

                }




                widget?.onChange!(va);




              } ,


              // readOnly:limitOflength?limitOflength: widget.readOnly,
              readOnly: widget.readOnly,


              maxLength: widget.formatter? 10:widget.maxLines!=3?widget.textLimit:null,
              maxLines: widget.maxLines,
              controller: widget.controller.text=="null"?TextEditingController(text: ""):widget.controller,
              obscureText: show,
              keyboardType:widget.formatter?TextInputType.numberWithOptions(decimal: true):null,
              inputFormatters:widget.formatter? <TextInputFormatter>[widget.integerOnly?FilteringTextInputFormatter.allow(RegExp(r"[0-9:]")):  FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))]:null,

              decoration: InputDecoration(
                hintText:widget.icondrop?"-select-":"",
                counterText: '',

                contentPadding: EdgeInsets.symmetric(horizontal: 17, vertical: 16.5),



                filled: true,
                fillColor: widget.readOnly?Color(0xE3E3E3).withOpacity(.2):Colors.white,
                suffixIcon: widget.password
                    ? IconButton(
                  icon: show
                      ? const Icon(
                    Icons.visibility,
                    size: 18,
                  )
                      : const Icon(
                    Icons.visibility_off_outlined,
                    size: 18,
                  ),
                  onPressed: () {
                    show = !show;
                    setState(() {});
                  },
                )
                    : widget.icondrop?Transform.scale(
                  scale: 0.5,
                      child: Material(


                        child: InkWell(onTap:(){
                          setState(() {

                            widget.ontap!=null?widget.ontap!():null;
                          });

                  // if(widget.controller.text.isNotEmpty){
                  //   isClear=true;
                  // }
                  // else
                  //   isClear=false;



                }, child:widget.controller.text.isNotEmpty?Icon(Icons.clear): Icon(Icons.more_horiz_rounded)),
                      ),
                    ):null,
                labelStyle: const TextStyle(
                  fontSize: 13,
                  //fontStyle: FontStyle.italic,
                ),
                // label: Text(
                //   widget.label,
                // ),
                hintStyle: const TextStyle(fontSize: 15,color: Colors.grey),
                // hintText: widget.label,
                enabledBorder:OutlineInputBorder(
                    borderRadius:BorderRadius.circular(2),

                    borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                focusedBorder:   OutlineInputBorder(
                    borderRadius:BorderRadius.circular(2),

                    borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
              ),
            ),
          ),
        ],
      ):
      Container(
        height: 300,
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Text(
    widget.title,
    style: GoogleFonts.roboto(fontSize: widget.fontsize,fontWeight:  FontWeight.w600),
    ),
    SizedBox(width:MediaQuery.of(context).size.width*.003),
    Container(
    height: widget.height,
    // color: widget.colors,
    // color: Colors.grey.shade200,
    child: TextFormField(
      textAlignVertical: TextAlignVertical.center,
    maxLines: widget.maxLines,
    controller: widget.controller.text=="null"?TextEditingController(text: ""):widget.controller,
    obscureText: show,
    decoration: InputDecoration(
    suffixIcon: widget.password
    ? IconButton(
    icon: show
    ? const Icon(
    Icons.visibility,
    size: 18,
    )
          : const Icon(
    Icons.visibility_off_outlined,
    size: 18,
    ),
    onPressed: () {
    show = !show;
    setState(() {});
    },
    )
          : null,
    labelStyle: const TextStyle(
    fontSize: 13,
    //fontStyle: FontStyle.italic,
    ),
    // label: Text(
    //   widget.label,
    // ),
    hintStyle: const TextStyle(fontSize: 12,color: Colors.black),
    hintText: widget.label,
    border: OutlineInputBorder(
    borderSide: BorderSide(color: widget.colors)),
    ),
    ),
    ),
    ],

    ),
      ));
  }
}


class NewInputPopupField extends StatefulWidget {
  final String label;
  final TextEditingController contrroller;
  final TextEditingController contrrollerUnit;
  final String initialvalue;
  final String type;
  final double fontsize;
  final Function(String?) onChange;
  NewInputPopupField({ required this.label,this.fontsize=12,
    required this.contrroller, required this.type,this.initialvalue="",
    required this.onChange, required this.contrrollerUnit,});



  @override
  State<NewInputPopupField> createState() => _NewInputPopupFieldState();
}

class _NewInputPopupFieldState extends State<NewInputPopupField> {
  @override
  Widget build(BuildContext context) {
    return   Container(
      padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018),
      // height: 100,
      // width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: GoogleFonts.roboto(fontSize: widget.fontsize,fontWeight: FontWeight.w500),
          ),
          Container(
            // height: 70,
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    // height: 70,
                    // width:150,
                    child: TextFormField(
                      controller: widget.contrroller,
                      keyboardType:TextInputType.numberWithOptions(decimal: true),
                      inputFormatters:
                      <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))
                      ]
                      ,
                      decoration:  InputDecoration(
                        labelStyle: const TextStyle(
                          fontSize: 13,
                          //fontStyle: FontStyle.italic,
                        ),
                        // label: Text(
                        //   widget.label,
                        // ),
                        hintStyle: const TextStyle(fontSize: 12,color: Colors.black),

                        // hintText: widget.label,
                        enabledBorder:OutlineInputBorder(
                            borderRadius:BorderRadius.circular(2),

                            borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                        focusedBorder:   OutlineInputBorder(
                            borderRadius:BorderRadius.circular(2),

                            borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                      ),
                      // contentPadding: EdgeInsets.all(20)
                    ),

                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    // height: 70,
                    // width: 100,
                    child: PopUpCall(
                      initialValue: widget.initialvalue,


                      type:widget.type,

                      value: widget.contrrollerUnit.text,
                      onSelection: (String? va) {
                       widget.onChange(va);
                      },


                    ),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}




class CustomScrollBar extends StatefulWidget {
  final Widget childs;
  final AutoScrollController controller;
  CustomScrollBar({required this.childs,required this.controller});

  @override
  State<CustomScrollBar> createState() => _CustomScrollBarState();
}

class _CustomScrollBarState extends State<CustomScrollBar> {
  late AutoScrollController scontroller;

  @override
  void initState() {
    scontroller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
     double width=MediaQuery.of(context).size.width;
    return Container(
      margin:  EdgeInsets.symmetric(horizontal:width *.0155 ),
      child: Scrollbar(
        // isAlwaysShown: true,
        thickness: 5,
        controller: widget.controller,
        child: widget.childs,

      ),

    );
  }
}



class NewInputCreateCard extends StatefulWidget {
  final double fontsize;
  final double height;
  final bool readOnly;
  final bool formatter;
  final TextEditingController controller;
  final int maxLines;
  final Color colors;
  final Color fontColors;
  final String? label;
  final String? keyboardType;
  final Function ontap;
  final Function? onChange;

  final String title;
  final String? subTitle;
  final String? hint;

  final bool password;
  final  bool direction;
  const NewInputCreateCard({
    Key? key,
    this.onChange,
    this.fontColors=Colors.black,
    required this.ontap,
    this.subTitle="Create New",
    required this.controller,
    this.label,
    this.keyboardType,
    this.hint,
    this.formatter=false,
    this.readOnly=false,
    this.password = false,
    this.direction=false,
    required this.title,
    this.colors = const Color(0xffC3C7C9),
    this.maxLines = 1,
    this.height = 47,
    this.fontsize = 13,
  }) : super(key: key);

  @override
  State<NewInputCreateCard> createState() => _NewInputCreateCardState();
}

class _NewInputCreateCardState extends State<NewInputCreateCard> {
  bool show = false;
  @override
  void initState() {
    super.initState();
    show = widget.password;
  }


  @override
  Widget build(BuildContext context) {
    widget.controller?.text=="null"|| widget.controller?.text==null?widget.controller?.text="":widget.controller?.text;

    return Padding(
        padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018),
        child:widget.direction==false?
        Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: CommonTextStyle.normalHeadingStyle,
                ),
                TextButton(onPressed: (){
                  widget.ontap();
                }, child: Text(widget.subTitle.toString())),
              ],
            ),
            SizedBox(height:3),


            Container(
              alignment: Alignment.center,
              height: widget.height,


              // color: widget.colors,
              // color: Colors.grey.shade200,
              child: TextFormField(
                style: TextStyle(color: widget.fontColors),
                onTap: (){
                  print("asss");
                  widget.onChange!();
                },
                textAlignVertical: TextAlignVertical.center,


                readOnly: widget.readOnly,
                maxLines: widget.maxLines,
                controller: widget.controller,
                obscureText: show, keyboardType:

                widget.formatter? TextInputType.phone:null ,
                inputFormatters:widget.formatter?
                <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r"[0-9.:]"))
                ]:null,


                decoration: InputDecoration(


                  filled: true,
                  fillColor: widget.readOnly?Color(0xffF2F3F5).withOpacity(.2):Colors.white,
                  suffixIcon: widget.password
                      ? IconButton(
                    icon: show
                        ? const Icon(
                      Icons.visibility,
                      size: 18,
                    )
                        : const Icon(
                      Icons.visibility_off_outlined,
                      size: 18,
                    ),
                    onPressed: () {
                      show = !show;
                      setState(() {});
                    },
                  )
                      : null,
                  labelStyle: const TextStyle(
                    fontSize: 13,
                    //fontStyle: FontStyle.italic,
                  ),
                  // label: Text(
                  //   widget.label,
                  // ),
                  hintStyle: const TextStyle(fontSize: 12,color: Colors.black),
                  hintText: widget.label,
                  enabledBorder:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(2),

                      borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                  focusedBorder:   OutlineInputBorder(
                      borderRadius:BorderRadius.circular(2),

                      borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                ),
              ),
            ),
          ],
        ): Container(
          height: 300,
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: TextStyle(fontSize: widget.fontsize,fontWeight: FontWeight.bold),
              ),
              SizedBox(width:MediaQuery.of(context).size.width*.003),
              Container(
                height: widget.height,
                // color: widget.colors,
                // color: Colors.grey.shade200,
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  maxLines: widget.maxLines,
                  controller: widget.controller,
                  obscureText: show,
                  decoration: InputDecoration(
                    suffixIcon: widget.password
                        ? IconButton(
                      icon: show
                          ? const Icon(
                        Icons.visibility,
                        size: 18,
                      )
                          : const Icon(
                        Icons.visibility_off_outlined,
                        size: 18,
                      ),
                      onPressed: () {
                        show = !show;
                        setState(() {});
                      },
                    )
                        : null,
                    labelStyle: const TextStyle(
                      fontSize: 13,
                      //fontStyle: FontStyle.italic,
                    ),
                    // label: Text(
                    //   widget.label,
                    // ),
                    hintStyle: const TextStyle(fontSize: 12,color: Colors.black),
                    hintText: widget.label,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: widget.colors)),
                  ),
                ),
              ),
            ],

          ),
        ));
  }
}




class BuildDateFormField extends StatefulWidget {
  final String label;
  final DateTime? initialValue;
  final bool enable;
  final bool required;
  final Color color;
  final FormFieldSetter<DateTime>? onSaved;
 final DateFormat? format;
  final TextEditingController? controller;
  const BuildDateFormField(
      {Key? key,
        required this.label,
        this.enable = true,
        this.required = false,
        this.onSaved,
        this.format,
        this.initialValue,this.color= const Color(0xffC3C7C9),
        this.controller})
      : super(key: key);

  @override
  _BuildDateFormFieldState createState() => _BuildDateFormFieldState();
}

class _BuildDateFormFieldState extends State<BuildDateFormField> {

bool initialdatecheck=false;
@override
  void initState() {
  if(widget.initialValue!=null&&widget.initialValue!=""){
    setState(() {
      initialdatecheck=true;
    });
  }
    
  }


  @override
  Widget build(BuildContext context) {
    print("widget.initialValue"+widget.initialValue.toString());
    // final mFormat = DateFormat("12,08,2021");
    final mFormat =
        widget.format ??
            DateFormat("yyyy,MM,dd");
    return
         Padding(
           padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 widget.label,
                 style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
               ),
               SizedBox(height:3),
           DateTimeField(

                    initialValue:widget.initialValue,
                       controller: widget.controller,
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
                       style: TextStyle(fontSize: 12),
                       // onChanged: widget.onSaved,
                        onFieldSubmitted: widget.onSaved,
                       onShowPicker: (context, currentValue) async {
                         DateTime? date;

                         date = await showDatePicker(
                               context: context,
                               firstDate: DateTime(1900),
                               initialDate: currentValue ?? DateTime.now(),
                               lastDate: DateTime(2100));return date?? currentValue;

                       })


             ],
           ),
         );
   
  }
}
class underlineTextForm extends StatefulWidget {
  final double h;
  final double w;
  final TextEditingController controller;
  final Function onChange;
  underlineTextForm({this.h=30,this.w=200,required this.controller,required this.onChange});

  @override
  _underlineTextFormState createState() => _underlineTextFormState();
}

class _underlineTextFormState extends State<underlineTextForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.h,
      width: widget.w,
      margin: EdgeInsets.all(10),
      child:  TextFormField(
        style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),
        cursorColor: Colors.black,
        controller: widget.controller,
        onChanged: (va){
          widget.onChange(va);
        },

        decoration: new InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            contentPadding:
            EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
            hintText: "Heading ",),
      ),
    );
  }
}



class UnderLinedInput extends StatefulWidget {
  //  final String label;
  // final bool required;
  final VoidCallback? onClick;
  final bool enable;
  final bool  initialCheck;
  final bool  integerOnly;
  final  String  initial;
  final String ? last;
  final bool restricted;
  final String hintText;
  final bool formatter;
  final bool suffixIconEnable;
  final bool readOnly;
  final Color filledColour;
  final AlignmentGeometry alignment;
  final TextAlign textAlighn;
  // final String? tileName;
  final int maxLines;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final VoidCallback? onComplete;
  // final List<String>? items;
  const
  UnderLinedInput(
      {Key? key,
        this.last="",
        this.readOnly=false,
        this.integerOnly=false,
        this.alignment=Alignment.topRight,
        this.filledColour=const Color(0xffF2F3F5),
        this.suffixIconEnable=false,
        this.enable = true,
        this.initial='',
        this.hintText = "Enter..",
        this.maxLines = 1,
        this.controller,
        this.onChanged,
        this.textAlighn=TextAlign.right,
        this.onComplete,
        this.initialCheck=false,
        this.formatter= true,

        this.restricted = false,
        this.onClick})
      : super(key: key);

  @override
  _UnderLinedInputState createState() => _UnderLinedInputState();
}

class _UnderLinedInputState extends State<UnderLinedInput> {

  @override
  Widget build(BuildContext context) {
    widget.controller?.text=="null"|| widget.controller?.text==null?widget.controller?.text="":widget.controller?.text;


    return Column(
      children: [
        Container(

          alignment: Alignment.topCenter,
          // color: Colors.grey.shade200,
          child:widget.initialCheck?
          Center(
            child: TextFormField(
              textAlign: widget.textAlighn,
              readOnly: widget.readOnly,
              style:CommonTextStyle.normalTableFieldStyle,

              initialValue:widget.last=="0"||widget.last==null||widget.last=="null"?"":widget.last,
              onTap: () {
                if (widget.onClick != null) widget.onClick!();
              },
              maxLines: widget.maxLines,

              //controller: widget.controller,
              enabled: widget.enable,
                keyboardType:widget.formatter?TextInputType.numberWithOptions(decimal: true):null,
                inputFormatters:widget.formatter? <TextInputFormatter>[widget.integerOnly?FilteringTextInputFormatter.allow(RegExp(r"[0-9:]")):  FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))]:null,
              onEditingComplete: widget.onComplete,
              onChanged: widget.onChanged,
              decoration: InputDecoration(
                filled: true,
                fillColor: widget.filledColour,
                isCollapsed: true,


                contentPadding: EdgeInsets.all(10),
                isDense: true,
                hintText: widget.hintText,
                hintStyle: TextStyle(fontSize: 14),
                border:InputBorder.none,
              ).copyWith(isDense: true),
            ),
          ):
          Container(

            alignment: widget.alignment,
            child: Center(
              child: TextFormField(
                textAlign: widget.textAlighn,
                readOnly: widget.readOnly,
                style: CommonTextStyle.normalTableFieldStyle,
                // initialValue:widget.last=="0"?"":widget.last,
                onTap: () {
                  if (widget.onClick != null) widget.onClick!();
                },
                maxLines: widget.maxLines,
                controller: widget.controller,
                enabled: widget.enable,
                keyboardType:widget.formatter?TextInputType.numberWithOptions(decimal: true):null,
                inputFormatters:widget.formatter? <TextInputFormatter>[widget.integerOnly?FilteringTextInputFormatter.allow(RegExp(r"[0-9:]")):  FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))]:null,
                onEditingComplete: widget.onComplete,
                onChanged: widget.onChanged,
                decoration: InputDecoration(
                  isCollapsed: true,
                  filled: true,
                  fillColor: widget.filledColour,
                  suffixIcon: widget.suffixIconEnable?Icon(Icons.arrow_downward_outlined):null,
                  contentPadding: EdgeInsets.all(10),
                  isDense: true,
                  hintText: widget.hintText,
                  hintStyle: TextStyle(fontSize: 12),
                  border:InputBorder.none,
                ).copyWith(isDense: true),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
// class UnderLinedInput extends StatefulWidget {
//   //  final String label;
//   // final bool required;
//   final bool formatter;
//   final VoidCallback? onClick;
//   final bool enable;
//   final TextInputType? type;
//   final bool  initialCheck;
//   final  String  initial;
//   final String ? last;
//   final bool restricted;
//   final String hintText;
//   // final String? tileName;
//   final List<TextInputFormatter>? textFormat;
//   final int maxLines;
//   final TextEditingController? controller;
//   final Function(String)? onChanged;
//   final VoidCallback? onComplete;
//   // final List<String>? items;
//   const
//   UnderLinedInput(
//       {Key? key,
//         this.last="",
//         this.enable = true,
//          this.initial='',
//         this.hintText = "",
//         this.maxLines = 1,
//         this.type,
//         this.controller,
//         this.onChanged,
//         this.onComplete,
//         this.initialCheck=false,
//
//         this.restricted = false,
//         this.onClick, this.formatter= true, this.textFormat})
//       : super(key: key);
//
//   @override
//   _UnderLinedInputState createState() => _UnderLinedInputState();
// }
//
// class _UnderLinedInputState extends State<UnderLinedInput> {
//
//   @override
//   Widget build(BuildContext context) {
//     widget.controller?.text=="null"|| widget.controller?.text==null?widget.controller?.text="":widget.controller?.text;
//
//
//     return Column(
//       children: [
//         Container(
//
//           alignment: Alignment.center,
//           // color: Colors.grey.shade200,
//           child:
//           Center(
//             child: TextFormField(
//
//              initialValue:widget.last=="0"||widget.last==null||widget.last=="null"?"":widget.last,
//               onTap: () {
//                 if (widget.onClick != null) widget.onClick!();
//               },
//               maxLines: widget.maxLines,
//
//               //controller: widget.controller,
//               enabled: widget.enable,
//               keyboardType:widget.formatter? TextInputType.number:null ,
//               inputFormatters:widget.formatter?
//               <TextInputFormatter>[
//                 FilteringTextInputFormatter.digitsOnly
//               ]:null,
//               onEditingComplete: widget.onComplete,
//               onChanged: widget.onChanged,
//               decoration: InputDecoration(
//                 isCollapsed: true,
//
//
//                 contentPadding: EdgeInsets.all(20),
//                 isDense: true,
//                 hintText: widget.hintText,
//                 hintStyle: TextStyle(fontSize: 10),
//                 border:InputBorder.none,
//               ).copyWith(isDense: true),
//             ),
//           )
//          //  Container(
//          //
//          //    alignment: Alignment.center,
//          //    child: Center(
//          //      child: TextFormField(
//          //
//          //       // initialValue:widget.last=="0"?"":widget.last,
//          //        onTap: () {
//          //          if (widget.onClick != null) widget.onClick!();
//          //        },
//          //        maxLines: widget.maxLines,
//          //
//          // controller: widget.controller,
//          //        enabled: widget.enable,
//          //        keyboardType:widget.formatter? TextInputType.number:null,
//          //        inputFormatters: <TextInputFormatter>[
//          //          FilteringTextInputFormatter.digitsOnly
//          //        ],
//          //        onEditingComplete: widget.onComplete,
//          //        onChanged: widget.onChanged,
//          //        decoration: InputDecoration(
//          //          isCollapsed: true,
//          //
//          //
//          //          contentPadding: EdgeInsets.all(20),
//          //          isDense: true,
//          //          hintText: widget.hintText,
//          //          hintStyle: TextStyle(fontSize: 10),
//          //          border:InputBorder.none,
//          //        ).copyWith(isDense: true),
//          //      ),
//          //    ),
//          //  ),
//         ),
//       ],
//     );
//   }
// }
// class CustomCheckBox extends StatefulWidget {
//   final bool value;
//   final Function(bool?)? change;
//   CustomCheckBox({required this.value,required this.change})
//   @override
//   _CustomCheckBoxState createState() => _CustomCheckBoxState();
// }
//
// class _CustomCheckBoxState extends State<CustomCheckBox> {
//   @override
//   Widget build(BuildContext context) {
//     return  Checkbox(
//       value:widget.value,
//       onChanged:(){widget.change()}
//
//     );
//   }
// }
class FileUploadField2 extends StatefulWidget {
  final Function(MultipartFile)? changeMultiFile;
  final Function(PlatformFile)? onChanePlatformFile;
  final VoidCallback? onNewTap;
  final Function(bool)? onChangeTap;
  final Function(String)? onChange;
  final Function(Uint8List)? onImageChange;
  final String? fileUrl;
  final bool row;
  final VoidCallback? onCancel;
  final bool onCreate;
  final String label;
  final bool required;
  final bool isFile;
  final bool enable;
  final bool tableCheck;
  final double fontsize;
  final String fileName;
  const FileUploadField2(
      {Key? key,
        this.onChange,
        this.row=false,
        this.fileUrl,
        this.onCancel,
        this.fontsize=12,
        this.tableCheck=false,
        this.onCreate = false,
        this.enable = false,
        this.isFile = false,
        required this.label,
        this.required = false,
        required this.fileName,
        this.onImageChange,
        this.onNewTap,
        this.onChangeTap,
        this.onChanePlatformFile,
        this.changeMultiFile})
      : super(key: key);

  @override
  _FileUploadField2State createState() => _FileUploadField2State();
}

class _FileUploadField2State extends State<FileUploadField2> {
  String? filename = "no attachments";
  bool fileChange = false;
  bool clearedImage = false;
  PickedFile imageFile=PickedFile("");
  File? file;


  @override
  Widget build(BuildContext context) {
    // print(filename);

    if (!fileChange && widget.fileUrl != null &&!fileChange && widget.fileUrl != "null") {
      filename = widget.fileUrl;
      print("searching"+filename.toString());
    } else {
      if (!fileChange && widget.fileName.isEmpty)
        // print("false");
        filename = "no attachments";
    }
    fileChange = false;
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
                  style: GoogleFonts.roboto(fontSize: 13,fontWeight: FontWeight.w600),
                  children: widget.required
                      ? [
                    TextSpan(
                        text: "*", style: TextStyle(color:Colors.grey))
                  ]
                      : []))),
          title:
          Container(

            child: TextFormField(
              onTap: () {
                widget.onChangeTap!(true);
                filePicker();
                // chooseFileUsingFilePicker();
                // imagePicker();
              },
              // widget.fileUrl!=null?

              // :() async {
              //  widget.isFile?
              //             launchUrl(widget.fileUrl ?? "")
              //             :showImage(
              //               widget.fileUrl??"",context
              //            );
              //            setState(() {

              //            });
              // },
              controller: TextEditingController(text: filename),
              decoration: InputDecoration(
                prefixIcon: IconButton(
                    onPressed: widget.fileUrl != null
                        ? ()  {
                      // imageFile!=null?dispalyImage( imageFile,context):null;
                      // print("file url is ${widget.fileUrl}");
                      widget.isFile


                          ? launchUrl(widget.fileUrl ?? "")
                          : showImage(widget.fileUrl ?? "", context);

                    }
                        : null,
                    icon: Icon(Icons.attach_file)),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                // isDense: true,
                hintStyle: TextStyle(fontSize: 10),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.red,
                      width: 1.0),
                )
                ,
                suffixIcon: IconButton(
                    onPressed: () {


                      print("""""""""""""shamnaaaaaaaaaaaaaaaaaaa");

                      filename = "no attachments";
                      clearedImage = true;
                      widget.onCancel != null ? widget.onCancel!() : null;
                      setState(() {});
                    },
                    icon: Icon(Icons.clear)),
              ),
            ),
          ),
        )):
      Container(
      padding: widget.tableCheck==false?  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018):EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[

    widget.tableCheck==false?
    Container(

            child: Text.rich(TextSpan(
                text: widget.label,
                style: GoogleFonts.roboto(fontSize: widget.fontsize,fontWeight: FontWeight.w500),
                children: widget.required
                    ? [
                  TextSpan(
                      text: "*", style: TextStyle(color: Palette.DANGER))
                ]
                    : []))):Container(),
          SizedBox(height:3),
     Container(



          child: TextFormField(

            onTap: () {
              widget.onChangeTap!(true);
              filePicker();
              // chooseFileUsingFilePicker();
              // imagePicker();
            },
            // widget.fileUrl!=null?

            // :() async {
            //  widget.isFile?
            //             launchUrl(widget.fileUrl ?? "")
            //             :showImage(
            //               widget.fileUrl??"",context
            //            );
            //            setState(() {

            //            });
            // },
            controller: TextEditingController(text: filename),
            decoration: InputDecoration(
              prefixIcon: IconButton(
                  onPressed: widget.fileUrl != null
                      ? () async {
                    // imageFile!=null?dispalyImage( imageFile,context):null;
                    // print("file url is ${widget.fileUrl}");
                    widget.isFile


                        ? launchUrl(widget.fileUrl ?? "")
                        : showImage(widget.fileUrl ?? "", context);

                  }
                      : null,
                  icon: Icon(Icons.attach_file)),
              contentPadding:
              EdgeInsets.symmetric(horizontal: 10, vertical: 18.7),
              isDense: true,
              hintStyle: TextStyle(fontSize: 10),
              border: widget.tableCheck==true? InputBorder.none:OutlineInputBorder(
                borderRadius:BorderRadius.circular(2),
    borderSide: BorderSide(

    color:Colors.red,
   ),
    ),
              enabledBorder:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(2),

                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
              focusedBorder:   OutlineInputBorder(
                  borderRadius:BorderRadius.circular(2),

                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
              suffixIcon: IconButton(
                  onPressed: () {
                   print("aakkakakkakak");


                    filename = "no attachments";
                    clearedImage = true;
                    widget.onCancel != null ? widget.onCancel!() : null;
                    setState(() {});
                  },
                  icon: Icon(Icons.clear)),
            ),
          ),
        ),
      ],
      ),
    );
  }

  PlatformFile? objFile = null;
  void chooseFileUsingFilePicker() async {
    //-----pick file by file picker,
    var result = await FilePicker.platform.pickFiles(
      withReadStream:
      true, // this will return PlatformFile object with read stream
    );
    if (result != null) {
      setState(() {
        objFile = result.files.single;
        widget.onChanePlatformFile!(objFile!);
      });
    }
  }

  void uploadSelectedFile() async {
    //---Create http package multipart request object
    final request = http.MultipartRequest(
      "POST",
      Uri.parse("Your API URL"),
    );
    //-----add other fields if needed
    request.fields["id"] = "abc";
    //-----add selected file with request
    request.files.add(new http.MultipartFile(
        "Your parameter name on server side",
        objFile!.readStream!,
        objFile!.size,
        filename: objFile!.name));
    //-------Send request
    var resp = await request.send();
    //------Read response
    String result = await resp.stream.bytesToString();
    //-------Your response
    print(result);
  }

  void filePicker() async {
    widget.onNewTap;
    final pickedFile = await FilePicker.platform.pickFiles(type: FileType.custom,
      allowedExtensions: ['jpg', "png"],);
    print(pickedFile?.files.first.name);
    Uint8List? bytes;


    if (pickedFile != null) {
       bytes = pickedFile.files.first.bytes;
       filename =pickedFile?.files.first.name;
       print("aaa"+filename.toString());
       Variable.imageName=filename;
       fileChange = true;
       widget.onChange!(filename??"");
       widget.onImageChange!(bytes!);
       setState(() {});
    }

    // String newPath = await myFile.exportToStorage() ?? "";
    // print(newPath);


  }

  void imagePicker() async {
    // final pickedFile = await ImagePicker().getImage(
    //   source: ImageSource.gallery ,
    // );
    final fromPicker = await ImagePicker().getImage(source: ImageSource.gallery);
    print("dsdsdsdssssssssssssssssssss${fromPicker}");
    if (fromPicker != null) {
      final bytes = await fromPicker.readAsBytes();
      // widget.onChange!(bytes);
      widget.onImageChange!(bytes);
    }


// print(fromPicker.)
    Uint8List? bytesFromPicker = await ImagePickerWeb.getImageAsBytes();
    fileChange = true;
    widget.onImageChange!(bytesFromPicker!);
    imageFile = fromPicker!;


    setState(() {});
    // widget.onChange(bytesFromPicker);
  }
  void launchUrl(String url) {

    urlLauncher.canLaunch(url).then((value) {

      if (value) urlLauncher.launch(url);

    });

  }


  void showImage(String url, BuildContext context) {

    // print("image url is $url");

    ScreenshotController screenshotController = ScreenshotController();

    //  Uint8List? _imageFile;

    //  final pdf = pw.Document();

    showDialog(

        context: context,

        builder: (context) => AlertDialog(

          content: Container(

            height: 500,

            width: 700,

            child: Screenshot(

              controller: screenshotController,

              child: PhotoView(

                enablePanAlways: true,



                // tightMode: true,

                imageProvider: NetworkImage(url),

              ),

            ),

          ),



        ));

  }
}



class FileUploadField extends StatefulWidget {
  final Function(MultipartFile)? changeMultiFile;
  final Function(PlatformFile)? onChanePlatformFile;
  final VoidCallback? onNewTap;
  final Function(bool)? onChangeTap;
  final Function(FilePickerCross)? onChange;
  final Function(Uint8List)? onImageChange;
  final String? fileUrl;
  final bool row;
  final VoidCallback? onCancel;
  final bool onCreate;
  final String label;
  final bool required;
  final bool isFile;
  final bool enable;
  final bool tableCheck;
  final double fontsize;
  final String fileName;
  const FileUploadField(
      {Key? key,
        this.onChange,
        this.row=false,
        this.fileUrl,
        this.onCancel,
        this.fontsize=12,
        this.tableCheck=false,
        this.onCreate = false,
        this.enable = false,
        this.isFile = false,
        required this.label,
        this.required = false,
        required this.fileName,
        this.onImageChange,
        this.onNewTap,
        this.onChangeTap,
        this.onChanePlatformFile,
        this.changeMultiFile})
      : super(key: key);

  @override
  _FileUploadFieldState createState() => _FileUploadFieldState();
}

class _FileUploadFieldState extends State<FileUploadField> {
  String? filename = "no attachments";
  bool fileChange = false;
  bool clearedImage = false;
  PickedFile imageFile=PickedFile("");
  File? file;


  @override
  Widget build(BuildContext context) {
    // print(filename);

    if (!fileChange && widget.fileUrl != null &&!fileChange && widget.fileUrl != "null") {
      filename = widget.fileUrl;
      print("searching"+filename.toString());
    } else {
      if (!fileChange && widget.fileName.isEmpty)
        // print("false");
        filename = "no attachments";
    }
    fileChange = false;
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
                  style: GoogleFonts.roboto(fontSize: 13,fontWeight: FontWeight.w600),
                  children: widget.required
                      ? [
                    TextSpan(
                        text: "*", style: TextStyle(color:Colors.grey))
                  ]
                      : []))),
          title:
          Container(

            child: TextFormField(
              onTap: () {
                widget.onChangeTap!(true);
                filePicker();
                // chooseFileUsingFilePicker();
                // imagePicker();
              },
              // widget.fileUrl!=null?

              // :() async {
              //  widget.isFile?
              //             launchUrl(widget.fileUrl ?? "")
              //             :showImage(
              //               widget.fileUrl??"",context
              //            );
              //            setState(() {

              //            });
              // },
              controller: TextEditingController(text: filename),
              decoration: InputDecoration(
                prefixIcon: IconButton(
                    onPressed: widget.fileUrl != null
                        ? ()  {
                      // imageFile!=null?dispalyImage( imageFile,context):null;
                      // print("file url is ${widget.fileUrl}");
                      widget.isFile


                          ? launchUrl(widget.fileUrl ?? "")
                          : showImage(widget.fileUrl ?? "", context);

                    }
                        : null,
                    icon: Icon(Icons.attach_file)),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                // isDense: true,
                hintStyle: TextStyle(fontSize: 10),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.red,
                      width: 1.0),
                )
                ,
                suffixIcon: IconButton(
                    onPressed: () {


                      print("""""""""""""shamnaaaaaaaaaaaaaaaaaaa");

                      filename = "no attachments";
                      clearedImage = true;
                      widget.onCancel != null ? widget.onCancel!() : null;
                      setState(() {});
                    },
                    icon: Icon(Icons.clear)),
              ),
            ),
          ),
        )):
      Container(
      padding: widget.tableCheck==false?  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018):EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[

    widget.tableCheck==false?
    Container(

            child: Text.rich(TextSpan(
                text: widget.label,
                style: GoogleFonts.roboto(fontSize: widget.fontsize,fontWeight: FontWeight.w500),
                children: widget.required
                    ? [
                  TextSpan(
                      text: "*", style: TextStyle(color: Palette.DANGER))
                ]
                    : []))):Container(),
          SizedBox(height:3),
     Container(



          child: TextFormField(

            onTap: () {
              widget.onChangeTap!(true);
              filePicker();
              // chooseFileUsingFilePicker();
              // imagePicker();
            },
            // widget.fileUrl!=null?

            // :() async {
            //  widget.isFile?
            //             launchUrl(widget.fileUrl ?? "")
            //             :showImage(
            //               widget.fileUrl??"",context
            //            );
            //            setState(() {

            //            });
            // },
            controller: TextEditingController(text: filename),
            decoration: InputDecoration(
              prefixIcon: IconButton(
                  onPressed: widget.fileUrl != null
                      ? () async {
                    // imageFile!=null?dispalyImage( imageFile,context):null;
                    // print("file url is ${widget.fileUrl}");
                    widget.isFile


                        ? launchUrl(widget.fileUrl ?? "")
                        : showImage(widget.fileUrl ?? "", context);

                  }
                      : null,
                  icon: Icon(Icons.attach_file)),
              contentPadding:
              EdgeInsets.symmetric(horizontal: 10, vertical: 18.7),
              isDense: true,
              hintStyle: TextStyle(fontSize: 10),
              border: widget.tableCheck==true? InputBorder.none:OutlineInputBorder(
                borderRadius:BorderRadius.circular(2),
    borderSide: BorderSide(

    color:Colors.red,
   ),
    ),
              enabledBorder:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(2),

                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
              focusedBorder:   OutlineInputBorder(
                  borderRadius:BorderRadius.circular(2),

                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
              suffixIcon: IconButton(
                  onPressed: () {
                   print("aakkakakkakak");


                    filename = "no attachments";
                    clearedImage = true;
                    widget.onCancel != null ? widget.onCancel!() : null;
                    setState(() {});
                  },
                  icon: Icon(Icons.clear)),
            ),
          ),
        ),
      ],
      ),
    );
  }

  PlatformFile? objFile = null;
  void chooseFileUsingFilePicker() async {
    //-----pick file by file picker,
    var result = await FilePicker.platform.pickFiles(
      withReadStream:
      true, // this will return PlatformFile object with read stream
    );
    if (result != null) {
      setState(() {
        objFile = result.files.single;
        widget.onChanePlatformFile!(objFile!);
      });
    }
  }

  void uploadSelectedFile() async {
    //---Create http package multipart request object
    final request = http.MultipartRequest(
      "POST",
      Uri.parse("Your API URL"),
    );
    //-----add other fields if needed
    request.fields["id"] = "abc";
    //-----add selected file with request
    request.files.add(new http.MultipartFile(
        "Your parameter name on server side",
        objFile!.readStream!,
        objFile!.size,
        filename: objFile!.name));
    //-------Send request
    var resp = await request.send();
    //------Read response
    String result = await resp.stream.bytesToString();
    //-------Your response
    print(result);
  }

  void filePicker() async {
    widget.onNewTap;
    FilePickerCross myFile = await FilePickerCross.importFromStorage(
      type: FileTypeCross.any,
    );

    // String newPath = await myFile.exportToStorage() ?? "";
    // print(newPath);
    Uint8List newFile = myFile.toUint8List();
    filename = myFile.fileName;
    print("aaa"+filename.toString());
    Variable.imageName=filename;
    fileChange = true;
    widget.onChange!(myFile);
    widget.onImageChange!(newFile);
    setState(() {});
  }

  void imagePicker() async {
    // final pickedFile = await ImagePicker().getImage(
    //   source: ImageSource.gallery ,
    // );
    final fromPicker = await ImagePicker().getImage(source: ImageSource.gallery);
    print("dsdsdsdssssssssssssssssssss${fromPicker}");
    if (fromPicker != null) {
      final bytes = await fromPicker.readAsBytes();
      // widget.onChange!(bytes);
      widget.onImageChange!(bytes);
    }


// print(fromPicker.)
    Uint8List? bytesFromPicker = await ImagePickerWeb.getImageAsBytes();
    fileChange = true;
    widget.onImageChange!(bytesFromPicker!);
    imageFile = fromPicker!;


    setState(() {});
    // widget.onChange(bytesFromPicker);
  }
  void launchUrl(String url) {

    urlLauncher.canLaunch(url).then((value) {

      if (value) urlLauncher.launch(url);

    });

  }


  void showImage(String url, BuildContext context) {

    // print("image url is $url");

    ScreenshotController screenshotController = ScreenshotController();

    //  Uint8List? _imageFile;

    //  final pdf = pw.Document();

    showDialog(

        context: context,

        builder: (context) => AlertDialog(

          content: Container(

            height: 500,

            width: 700,

            child: Screenshot(

              controller: screenshotController,

              child: PhotoView(

                enablePanAlways: true,



                // tightMode: true,

                imageProvider: NetworkImage(url),

              ),

            ),

          ),



        ));

  }
}



class ImageUploadField extends StatefulWidget {
  final Function(MultipartFile)? changeMultiFile;
  final Function(PlatformFile)? onChanePlatformFile;
  final VoidCallback? onNewTap;
  final Function(bool)? onChangeTap;
  final Function(String)? onChange;
  final Function(Uint8List)? onImageChange;
  final String? fileUrl;
  final String imagePostType;
  final bool row;
  final VoidCallback? onCancel;
  final bool onCreate;
  final String label;
  final bool required;
  final bool isFile;
  final bool enable;

  final bool tableCheck;
  final double fontsize;
  final String fileName;
  const ImageUploadField(
      {Key? key,
        this.onChange,
        this.row=false,
        this.fileUrl,
        this.onCancel,
        this.fontsize=12,
        this.tableCheck=false,
        this.onCreate = false,
        this.enable = false,
        this.isFile = false,
        required this.label,
        this.required = false,
        required this.fileName,
        this.onImageChange,
        this.onNewTap,
        this.onChangeTap,
        this.onChanePlatformFile,
        this.changeMultiFile, required this.imagePostType,})
      : super(key: key);

  @override
  _ImageUploadFieldState createState() => _ImageUploadFieldState();
}

class _ImageUploadFieldState extends State<ImageUploadField> {
  String? filename = "no attachments";
  bool fileChange = false;
  bool clearedImage = false;
  PickedFile imageFile=PickedFile("");
  File? file;


  @override
  Widget build(BuildContext context) {
    // print(filename);

    if (!fileChange && widget.fileUrl != null &&!fileChange && widget.fileUrl != "null") {
      filename = widget.fileUrl;
      print("searching"+filename.toString());
    } else {
      if (!fileChange && widget.fileName.isEmpty)
        // print("false");
        filename = "no attachments";
    }
    fileChange = false;
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
                  style: GoogleFonts.roboto(fontSize: 13,fontWeight: FontWeight.w600),
                  children: widget.required
                      ? [
                    TextSpan(
                        text: "*", style: TextStyle(color:Colors.grey))
                  ]
                      : []))),
          title:
          Container(

            child: TextFormField(
              onTap: () {
                widget.onChangeTap!(true);
                imagePicker();
                // chooseFileUsingFilePicker();
                // imagePicker();
              },
              // widget.fileUrl!=null?

              // :() async {
              //  widget.isFile?
              //             launchUrl(widget.fileUrl ?? "")
              //             :showImage(
              //               widget.fileUrl??"",context
              //            );
              //            setState(() {

              //            });
              // },
              controller: TextEditingController(text: filename),
              decoration: InputDecoration(
                prefixIcon: IconButton(
                    onPressed: widget.fileUrl != null
                        ? ()  {
                      // imageFile!=null?dispalyImage( imageFile,context):null;
                      // print("file url is ${widget.fileUrl}");
                      widget.isFile


                          ? launchUrl(widget.fileUrl ?? "")
                          : showImage(widget.fileUrl ?? "", context);

                    }
                        : null,
                    icon: Icon(Icons.attach_file)),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                // isDense: true,
                hintStyle: TextStyle(fontSize: 10),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.red,
                      width: 1.0),
                )
                ,
                suffixIcon: IconButton(
                    onPressed: () {


                      print("""""""""""""shamnaaaaaaaaaaaaaaaaaaa");

                      filename = "no attachments";
                      clearedImage = true;
                      widget.onCancel != null ? widget.onCancel!() : null;
                      setState(() {});
                    },
                    icon: Icon(Icons.clear)),
              ),
            ),
          ),
        )):
    Container(
      padding: widget.tableCheck==false?  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018):EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[

          widget.tableCheck==false?
          Container(

              child: Text.rich(TextSpan(
                  text: widget.label,
                  style: GoogleFonts.roboto(fontSize: widget.fontsize,fontWeight: FontWeight.w500),
                  children: widget.required
                      ? [
                    TextSpan(
                        text: "*", style: TextStyle(color: Palette.DANGER))
                  ]
                      : []))):Container(),
          SizedBox(height:3),
          Container(



            child: TextFormField(

              onTap: () {
                // widget.onChangeTap!(true);
                _uploadImage();
                // chooseFileUsingFilePicker();
                // imagePicker();
              },
              // widget.fileUrl!=null?

              // :() async {
              //  widget.isFile?
              //             launchUrl(widget.fileUrl ?? "")
              //             :showImage(
              //               widget.fileUrl??"",context
              //            );
              //            setState(() {

              //            });
              // },
              controller: TextEditingController(text: filename),
              decoration: InputDecoration(
                prefixIcon: IconButton(
                    onPressed: widget.fileUrl != null
                        ? () async {
                      // imageFile!=null?dispalyImage( imageFile,context):null;
                      // print("file url is ${widget.fileUrl}");
                      widget.isFile


                          ? launchUrl(widget.fileUrl ?? "")
                          : showImage(widget.fileUrl ?? "", context);

                    }
                        : null,
                    icon: Icon(Icons.attach_file)),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 18.7),
                isDense: true,
                hintStyle: TextStyle(fontSize: 10),
                border: widget.tableCheck==true? InputBorder.none:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(2),
                  borderSide: BorderSide(

                    color:Colors.red,
                  ),
                ),
                enabledBorder:OutlineInputBorder(
                    borderRadius:BorderRadius.circular(2),

                    borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                focusedBorder:   OutlineInputBorder(
                    borderRadius:BorderRadius.circular(2),

                    borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                suffixIcon: IconButton(
                    onPressed: () {
                      print("aakkakakkakak");


                      filename = "no attachments";
                      clearedImage = true;
                      widget.onCancel != null ? widget.onCancel!() : null;
                      setState(() {});
                    },
                    icon: Icon(Icons.clear)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  PlatformFile? objFile = null;
  void chooseFileUsingFilePicker() async {
    //-----pick file by file picker,
    var result = await FilePicker.platform.pickFiles(
      withReadStream:
      true, // this will return PlatformFile object with read stream
    );
    if (result != null) {
      setState(() {
        objFile = result.files.single;
        widget.onChanePlatformFile!(objFile!);
      });
    }
  }

  void uploadSelectedFile() async {
    //---Create http package multipart request object
    final request = http.MultipartRequest(
      "POST",
      Uri.parse("Your API URL"),
    );
    //-----add other fields if needed
    request.fields["id"] = "abc";
    //-----add selected file with request
    request.files.add(new http.MultipartFile(
        "Your parameter name on server side",
        objFile!.readStream!,
        objFile!.size,
        filename: objFile!.name));
    //-------Send request
    var resp = await request.send();
    //------Read response
    String result = await resp.stream.bytesToString();
    //-------Your response
    print(result);
  }

  void filePicker() async {
    widget.onNewTap;
    FilePickerCross myFile = await FilePickerCross.importFromStorage(
      type: FileTypeCross.any,
    );

    // String newPath = await myFile.exportToStorage() ?? "";
    // print(newPath);
    Uint8List newFile = myFile.toUint8List();
    filename = myFile.fileName;
    print("aaa"+filename.toString());
    Variable.imageName=filename;
    fileChange = true;
    widget.onChange!(myFile.directory);
    widget.onImageChange!(newFile);
    setState(() {});
  }


  Future<void> _uploadImage() async {

    final url = Uri.parse('https://api-uat-inv-inventory.sidrabusiness.com/inventory-product/upload-image-clone');
    final headers = {'Content-Type': 'application/json'};
    final request = http.MultipartRequest('POST', url);
    // request.headers.addAll(headers);
    final pickedFile = await FilePicker.platform.pickFiles(type: FileType.custom,
      allowedExtensions: ['jpg', 'pdf', 'doc', 'docx', 'xls', 'xlsx', 'txt'],);
    print(pickedFile?.files.first.name);


    if (pickedFile != null) {
      Uint8List? bytes =  pickedFile.files.first.bytes;

     if( bytes!=null) widget.onImageChange!(bytes);

      if(bytes!=null) {
        final imageFile = http.MultipartFile.fromBytes(
          'image',
          bytes,
          filename: 'doc.pdf',
        );
        print("pickedFile${imageFile}");

        request.files.add(imageFile);
        final response = await request.send();
//  final responseBody = await response.stream.bytesToString();


        // final completer = Completer<void>();

        final responseStream =
        Stream.fromIterable(await response.stream.toList());
        print("rressspondseee stream ${responseStream.transform(utf8.decoder).first}");


        try
        {
          // await completer.future;
          final responseBody = await responseStream.transform(utf8.decoder).join();
          Map valueMap = jsonDecode(responseBody);
          print(valueMap);

          setState(() {
            print("hrrrrrrrrrrr found");
            widget.onChange!(valueMap["image_url"]);
            if (widget.imagePostType != null || widget.imagePostType != "") {
              switch (widget.imagePostType) {
                case 'image1':
                  print("ist image");
                  Variable.img1 = valueMap["data"];
                  //  print(Variable.img1);
                  //   Variable.img?.image1 != response.data["data"];

                  break;

                case 'image2':
                  print('2st image');
                  // Variable.img= ImagesModel(image2: response.data);
                  Variable.img2 =valueMap["data"];
                  break;

                case 'image3':
                  print('3st image');
                  // Variable.img= ImagesModel(image3: response.data);
                  Variable.img3 = valueMap["data"];
                  break;
                case 'image4':
                  print('4st image');
                  // Variable.img= ImagesModel(itemCatelog1: response.data);
                  Variable.img4 = valueMap["data"];
                  break;
                case 'image5':
                  print('5st image');
                  // Variable.img= ImagesModel(itemCatelog2: response.data);
                  Variable.img5 = valueMap["data"];
                  break;
                case 'image6':
                  print('6st image');
                  // Variable.img= ImagesModel(itemCatelog3: response.data);
                  Variable.img6 = valueMap["data"];
                  break;
                case 'image7':
                  print('7st image');
                  // Variable.img= ImagesModel(itemCatelog4: response.data);
                  Variable.img7 = valueMap["data"];
                  break;
                case 'image8':
                  print('8st image');
                  // Variable.img= ImagesModel(itemCatelog5: response.data);
                  Variable.img8 =valueMap["data"];
                  break;
                case '1':
                  print('8st image');
                  // Variable.img= ImagesModel(itemCatelog5: response.data);
                  Variable.catalog1 = valueMap["data"];
                  break;
                case '2':
                // Variable.img= ImagesModel(itemCatelog5: response.data);
                  Variable.catalog2 = valueMap["data"];
                  break;
                case '3':
                // Variable.img= ImagesModel(itemCatelog5: response.data);
                  Variable.catalog3 = valueMap["data"];
                  break;
                case '4':
                // Variable.img= ImagesModel(itemCatelog5: response.data);
                  Variable.catalog4 = valueMap["data"];
                  break;
                case '5':
                // Variable.img= ImagesModel(itemCatelog5: response.data);
                  Variable.catalog5 = valueMap["data"];
                  break;
                case '6':
                // Variable.img= ImagesModel(itemCatelog5: response.data);
                  Variable.catalog6 =valueMap["data"];
                  break;
                case '7':
                // Variable.img= ImagesModel(itemCatelog5: response.data);
                  Variable.catalog7 = valueMap["data"];
                  break;
                case '8':
                // Variable.img= ImagesModel(itemCatelog5: response.data);
                  Variable.catalog8 =valueMap["data"];
                  break;
              }
            }




          });
        }
        catch(e) {
          print("response stream exceotiojn $e");
        }
      }

    }


  }

  void imagePicker() async {
    // final pickedFile = await ImagePicker().getImage(
    //   source: ImageSource.gallery ,
    // );
    final fromPicker = await ImagePicker().getImage(source: ImageSource.gallery);
    print("dsdsdsdssssssssssssssssssss${fromPicker}");
    if (fromPicker != null) {
      final bytes = await fromPicker.readAsBytes();
      widget.onChange!(fromPicker.path);
      widget.onImageChange!(bytes);
    }


// print(fromPicker.)
    Uint8List? bytesFromPicker = await ImagePickerWeb.getImageAsBytes();
    fileChange = true;
    widget.onImageChange!(bytesFromPicker!);
    imageFile = fromPicker!;


    setState(() {});
    // widget.onChange(bytesFromPicker);
  }
  void launchUrl(String url) {

    urlLauncher.canLaunch(url).then((value) {

      if (value) urlLauncher.launch(url);

    });

  }


  void showImage(String url, BuildContext context) {

    // print("image url is $url");

    ScreenshotController screenshotController = ScreenshotController();

    //  Uint8List? _imageFile;

    //  final pdf = pw.Document();

    showDialog(

        context: context,

        builder: (context) => AlertDialog(

          content: Container(

            height: 500,

            width: 700,

            child: Screenshot(

              controller: screenshotController,

              child: PhotoView(

                enablePanAlways: true,



                // tightMode: true,

                imageProvider: NetworkImage(url),

              ),

            ),

          ),



        ));

  }
}









//
// void dispalyImage(PickedFile imageFile, BuildContext context) {
//
//   // print("image url is $url");
//
//   ScreenshotController screenshotController = ScreenshotController();
//
//   //  Uint8List? _imageFile;
//
//   //  final pdf = pw.Document();
//
//   showDialog(
//
//       context: context,
//
//       builder: (context) => AlertDialog(
//
//         content: Container(
//
//           height: 500,
//
//           width: 700,
//
//           child: imageFile != null
//               ? Container(
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       image: FileImage(File(imageFile))
//                   )
//               )
//           )
//
//               : Container(
//             decoration: BoxDecoration(
//                 color: Colors.grey[200],
//                 borderRadius: BorderRadius.circular(50)),
//             width: 100,
//             height: 100,
//             child: Icon(
//               Icons.camera_alt,
//               color: Colors.grey[800],
//             ),
//           ),
//
//         ),
//
//
//
//       ));
//
// }




class PopUpSwitchTile extends StatefulWidget {
  final bool value;
  final String title;
  final Color color;
  final bool paddingCheck;
  final Function(bool) onClick;
  const PopUpSwitchTile(
      {Key? key,
        required this.value,
        this.paddingCheck=true,
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
    return  Container(
      // color: Colors.red,
      padding: widget.paddingCheck? EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.007):EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width*.12,


              padding: EdgeInsets.only(top: 3,left:MediaQuery.of(context).size.width*.009),
              child: Text(
                widget.title,
                style:  GoogleFonts.roboto(fontSize: 13,fontWeight: FontWeight.w600),
              )),
          Align(
            alignment: Alignment.centerLeft,
            child: Transform.scale(
              scale: 0.6,
              child: CupertinoSwitch(
                activeColor: widget.color,
                value: widget.value,
                onChanged: widget.onClick,
              ),
            ),
          )
          // ListTile(
          //     contentPadding: EdgeInsets.symmetric(
          //       //horizontal: 10,
          //       //vertical: 5
          //     ),
          //     leading:
          //     Container(
          //         width: 300,
          //         padding: EdgeInsets.only(top: 10),
          //         child: Text(
          //           widget.title,
          //           style: TextStyle(fontSize: 12),
          //         )),
          //     title:
          //     Align(
          //       alignment: Alignment.centerLeft,
          //       child: Transform.scale(
          //         scale: 0.6,
          //         child: CupertinoSwitch(
          //           activeColor: widget.color,
          //           value: widget.value,
          //           onChanged: widget.onClick,
          //         ),
          //       ),
          //     )),
        ],
      ),
    );
  }
}





class CustomDropDown extends StatefulWidget {
   String? choosenValue;
   final Function onChange;
   final List <String>items;
   final bool border;
   final Color clr;
   final double? width;

  CustomDropDown({required this.choosenValue,this.width, required this.onChange,required this.items,this.border=false,this.clr=Colors.grey});



  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {


  bool value=true;

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Container(

      height: height*.049,
      width:widget.width!=null?widget.width: width*.085,

      alignment: Alignment.center,
      decoration: BoxDecoration(
        // color: Colors.red,


        borderRadius: BorderRadius.all(Radius.circular(5)),
       // color:   widget.clr,
        border: widget.border?Border.all(
          color: Colors.grey,
          width: .4
        ):null
      ),
      child:Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: height*.049,
          // width: width*.085,
          child:
   // value?
   DropdownButtonHideUnderline(

     child: DropdownButton(
       iconEnabledColor: Colors.grey,
       // value:"widget.choosenValue"??"" ,
       iconDisabledColor: Pellet.tableBlueHeaderPrint,

       borderRadius:BorderRadius.zero ,

       focusColor: Pellet.bagroundColor,
          dropdownColor: Colors.white,



          // Initial Value
          // value: "widget.choosenValue"??"",

          // Down Arrow Icon
          icon: const Icon(Icons.keyboard_arrow_down,size: 13,),
       hint: Container(
         // width: 150,

         child: Text(widget.choosenValue.toString(),style: TextStyle(color: widget.choosenValue!="_Select_"?Colors.black:Colors.grey,fontSize:widget.choosenValue!="_Select_"?16:13 ),overflow: TextOverflow.ellipsis, ),
       ),

          // Array list of items
          items: widget.items.map((String items) {
            return DropdownMenuItem(


              value: items,
              child: Text(items),
            );
          }).toList(),
          // After selecting the desired option,it will
          // change button value to selected value
          onChanged: (String? newValue) {
            setState(() {
              widget.choosenValue = newValue!;
              widget.onChange(newValue);
              value=false;
              setState(() {

              });
            });
          },
        ),
   ))
       // :

    //  Container(
    //    height: 30,
    //      width: 80,
    //      padding: EdgeInsets.symmetric(horizontal: 6),
    //      child:  InkWell(
    //      onTap: (){
    //        value=true;
    //        setState(() {
    //
    //        });
    //      },
    //      child: Text(widget.choosenValue??""),)
    // )
    );
  }
}
