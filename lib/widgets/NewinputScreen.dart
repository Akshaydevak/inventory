import 'package:flutter/material.dart';

class NewInputCard extends StatefulWidget {
  final double fontsize;
  final double height;
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
    this.password = false,
    this.direction=false,
    required this.title,
     this.colors = const Color(0xffC3C7C9),
    this.maxLines = 1,
    this.height = 35,
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
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.018),
      child:widget.direction==false? Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(fontSize: widget.fontsize,fontWeight: FontWeight.bold),
          ),
          SizedBox(height:3),
          Container(
            height: widget.height,


            // color: widget.colors,
            // color: Colors.grey.shade200,
            child: TextFormField(
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
