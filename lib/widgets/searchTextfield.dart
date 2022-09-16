import 'package:flutter/material.dart';

class SearchTextfiled extends StatefulWidget {
  final Color color;
  final String hintText;
  final double h;
  final double w;
  final Function(String )? onChanged;
  final VoidCallback? onComplete;
  final TextEditingController ctrlr;
  SearchTextfiled({required this.color,required this.hintText,required this.ctrlr,this.onComplete, this.onChanged,this.h=32,this.w=600});

  @override
  State<SearchTextfiled> createState() => _SearchTextfiledState();
}

class _SearchTextfiledState extends State<SearchTextfiled> {
  TextEditingController _controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
       // margin: EdgeInsets.only(top:3,),
        width: widget.w,
        height: widget.h,
        // color: Palette.white,
       // color:Color(0xFF423E3F),
        // padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 10),
        child: Theme(
          data: Theme.of(context).copyWith(primaryColor: Colors.blue),
          child: TextFormField(
            onEditingComplete:widget.onComplete,
            onChanged:widget.onChanged,

            style: TextStyle(color: Colors.black),
            controller: widget.ctrlr,
            maxLines: 1,
            autofocus: true,

            decoration: InputDecoration(


              fillColor: widget.color,
              isDense: true,
              contentPadding: EdgeInsets.all(12),
              filled: true,
              labelStyle: TextStyle(color: Colors.white),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(3),

                  // borderSide: BorderSide(color: Palette.fieldColor, width: 0.0),
                ),
                borderSide: BorderSide.none,
              ),


              // border: InputBorder.none,
              hintText: widget.hintText,
              suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: GestureDetector(
                    child: const Icon(
                      Icons.search,color: Colors.grey,
                    ),
                  )),
              hintStyle: const TextStyle(color: Colors.grey, fontSize: 12),
              // ),
            ),
          ),
        ));

  }
}
