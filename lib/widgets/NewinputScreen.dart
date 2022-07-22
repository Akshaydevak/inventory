import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class NewInputCard extends StatefulWidget {
  final double fontsize;
  final double height;
  final bool readOnly;
  final TextEditingController controller;
  final int maxLines;
   final Color colors;
  final String? label;
  final String title;
  final String? hint;
  final bool password;
  final  bool direction;
  const NewInputCard({
    Key? key,
    required this.controller,
    this.label,
    this.hint,
    this.readOnly=false,
    this.password = false,
    this.direction=false,
    required this.title,
     this.colors = const Color(0xffC3C7C9),
    this.maxLines = 1,
    this.height = 40,
    this.fontsize = 13,
  }) : super(key: key);

  @override
  State<NewInputCard> createState() => _NewInputCardState();
}

class _NewInputCardState extends State<NewInputCard> {
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
      child:widget.direction==false? Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(fontSize: widget.fontsize,fontWeight: FontWeight.w300),
          ),
          SizedBox(height:3),
          Container(
            alignment: Alignment.center,
            height: widget.height,


            // color: widget.colors,
            // color: Colors.grey.shade200,
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,

              readOnly: widget.readOnly,
              maxLines: widget.maxLines,
              controller: widget.controller,
              obscureText: show,
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
class UnderLinedInput extends StatefulWidget {
  //  final String label;
  // final bool required;
  final VoidCallback? onClick;
  final bool enable;
  final bool  initialCheck;
  final  String  initial;
  final String ? last;
  final bool restricted;
  final String hintText;
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
        this.enable = true,
         this.initial='',
        this.hintText = "",
        this.maxLines = 1,
        this.controller,
        this.onChanged,
        this.onComplete,
        this.initialCheck=false,

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

          alignment: Alignment.center,
          // color: Colors.grey.shade200,
          child:widget.initialCheck?
          Center(
            child: TextFormField(

             initialValue:widget.last=="0"||widget.last==null||widget.last=="null"?"":widget.last,
              onTap: () {
                if (widget.onClick != null) widget.onClick!();
              },
              maxLines: widget.maxLines,

              //controller: widget.controller,
              enabled: widget.enable,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              onEditingComplete: widget.onComplete,
              onChanged: widget.onChanged,
              decoration: InputDecoration(
                isCollapsed: true,


                contentPadding: EdgeInsets.all(20),
                isDense: true,
                hintText: widget.hintText,
                hintStyle: TextStyle(fontSize: 10),
                border:InputBorder.none,
              ).copyWith(isDense: true),
            ),
          ):
          Container(

            alignment: Alignment.center,
            child: Center(
              child: TextFormField(

               // initialValue:widget.last=="0"?"":widget.last,
                onTap: () {
                  if (widget.onClick != null) widget.onClick!();
                },
                maxLines: widget.maxLines,

         controller: widget.controller,
                enabled: widget.enable,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                onEditingComplete: widget.onComplete,
                onChanged: widget.onChanged,
                decoration: InputDecoration(
                  isCollapsed: true,


                  contentPadding: EdgeInsets.all(20),
                  isDense: true,
                  hintText: widget.hintText,
                  hintStyle: TextStyle(fontSize: 10),
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
