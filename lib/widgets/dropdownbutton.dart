import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inventory/widgets/popupcallwidgets/popupcallwidget.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class SelectableDropDownpopUp extends StatefulWidget {
  final String label;
  final String? bindType;
  final String? value;
  final TextEditingController? controller;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final bool required;
  final bool row;
  final List<String>? list;
  final String? type;
  final String? apiType;
  final bool enable;
  final bool restricted;
  final Function(String)? onchange;
  final int? id;

  const SelectableDropDownpopUp(
      {Key? key,
        this.value,
         this.bindType,
        this.type,
        this.apiType,
        this.id,
        required this.label,
        this.row=false,
        this.enable = false,
        this.onAddNew, this.controller,
        required this.onSelection,
        this.required = false,
        this.list,
        this.onchange,
        this.restricted = false})
      : super(key: key);

  @override
  _SelectableDropDownpopUpState createState() =>
      _SelectableDropDownpopUpState();
}

class _SelectableDropDownpopUpState extends State<SelectableDropDownpopUp> {


  @override
  Widget build(BuildContext context) {
    List<String> list = [];
    if (widget.list != null) list = widget.list!;

    return
      widget.row?
    SizedBox(

        child: ListTile(
            contentPadding: EdgeInsets.symmetric(
              //horizontal: 10,
                vertical: 5),
            leading: Container(

                width: 70,
                child: Text.rich(TextSpan(
                    text: widget.label,
                    style:  GoogleFonts.roboto(fontSize: 13,fontWeight: FontWeight.w600),
                    children: widget.required
                        ? [
                      TextSpan(
                          text: "*", style: TextStyle(color:Colors.grey))
                    ]
                        : []))),
            title:
            Container(
              height: 39,
              child:Container(  decoration: BoxDecoration(
                  color:
                  widget.restricted ? Colors.white.withOpacity(.2) : null,
                  border: Border.all(
                    color: Color(0xff3E4F5B).withOpacity(.1),
                    width: 0.5, //width of border
                  ),
                  borderRadius: BorderRadius.circular(5)

              ),


                child: widget.type != null
                    ? PopUpCall(
                    apiType:widget.apiType,
                  id:widget.id,
                  onchange:widget.onchange,
                    bindType:widget.bindType,


                    onSelection: widget.onSelection,
                    onAddNew: widget.onAddNew,
                    value: widget.value,
                    enable: widget.enable,
                    type: widget.type!)
                    :TypeAheadFormField(

                  textFieldConfiguration: TextFieldConfiguration(

                      controller: widget.controller,
                      onChanged: (va){
                        widget?.onchange!(va!);
                      },

                      decoration: InputDecoration(

                          enabledBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(2),


                              borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                          focusedBorder:   OutlineInputBorder(
                              borderRadius:BorderRadius.circular(2),

                              borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                          isDense: true,
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.more_horiz_rounded))),
                  onSuggestionSelected: (suggestion) {
                    widget.onSelection(suggestion);
                  },
                  itemBuilder: (context, suggestion) {
                    return ListTile(
                      // leading: Icon(Icons.shopping_cart_outlined),
                      title: Text(suggestion.toString()),
                    );
                  },
                  suggestionsCallback: (String? areas) async {
                    return list;
                  },
                ),
              ) ,
            ),
        )):
    Container(
        padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018),
     // height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.label,
              style:GoogleFonts.roboto(fontSize: 13,fontWeight: FontWeight.w600),
            ),
            SizedBox(height:3),
            Container(
              height: 39,
              child:Container(  decoration: BoxDecoration(
                  color:
                  widget.restricted ? Colors.white.withOpacity(.2) : null,
                  border: Border.all(
                    color: Color(0xff3E4F5B).withOpacity(.1),
                    width: 0.5, //width of border
                  ),
                  borderRadius: BorderRadius.circular(5)

              ),


                child: widget.type != null
                    ? PopUpCall(
                  apiType: widget.apiType,
                  bindType: widget.bindType,
                    onSelection: widget.onSelection,
                    onAddNew: widget.onAddNew,
                    value: widget.value,
                    id:widget.id,
                    onchange:widget.onchange,
                    enable: widget.enable,
                    type: widget.type!)
                    :
                TypeAheadFormField(


                  textFieldConfiguration: TextFieldConfiguration(

                      controller:
                      TextEditingController(text: widget.value),
                      onTap: () {},
                      decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(2),


                              borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                          focusedBorder:   OutlineInputBorder(
                              borderRadius:BorderRadius.circular(2),

                              borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                          isDense: true,
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.more_horiz_rounded))),
                  onSuggestionSelected: (suggestion) {
                    widget.onSelection(suggestion);
                  },
                  itemBuilder: (context, suggestion) {
                    return ListTile(
                      // leading: Icon(Icons.shopping_cart_outlined),
                      title: Text(suggestion.toString()),
                    );
                  },
                  suggestionsCallback: (String? areas) async {
                    return list;
                  },
                ),
              ) ,
            ),

            // ListTile(
            //     contentPadding: EdgeInsets.symmetric(
            //       //horizontal: 10,
            //         vertical: 5),
            //     leading: Container(
            //         // width: MediaQuery.of(context).size.width < 800
            //         //     ? context.blockSizeHorizontal * 20
            //         //     : context.blockSizeHorizontal * 5,
            //         child: Text.rich(TextSpan(
            //             text: widget.label,
            //             style: TextStyle(fontSize: 12),
            //             children: widget.required
            //                 ? [
            //               TextSpan(
            //                   text: "*",
            //                   style: TextStyle(color: Colors.grey))
            //             ]
            //                 : []))),
            //     title: Container(
            //       color:
            //       widget.restricted ? Colors.grey.withOpacity(.2) : null,
            //       child: widget.type != null
            //           ? PopUpCall(
            //           onSelection: widget.onSelection,
            //           onAddNew: widget.onAddNew,
            //           value: widget.value,
            //           enable: widget.enable,
            //           type: widget.type!)
            //           :TypeAheadFormField(
            //         textFieldConfiguration: TextFieldConfiguration(
            //             controller:
            //             TextEditingController(text: widget.value),
            //             onTap: () {},
            //             decoration: InputDecoration(
            //                 isDense: true,
            //                 border: OutlineInputBorder(),
            //                 suffixIcon: Icon(Icons.more_horiz_rounded))),
            //         onSuggestionSelected: (suggestion) {
            //           widget.onSelection(suggestion);
            //         },
            //         itemBuilder: (context, suggestion) {
            //           return ListTile(
            //             // leading: Icon(Icons.shopping_cart_outlined),
            //             title: Text(suggestion.toString()),
            //           );
            //         },
            //         suggestionsCallback: (String? areas) async {
            //           return list;
            //         },
            //       ),
            //     )),
          ],
        ));
  }
}