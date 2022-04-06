import 'package:flutter/material.dart';

class ItemCard<T> extends StatefulWidget {
  final String id;
  //final String name;
  final T item;
 // final VoidCallback onClick;
 // final VoidCallback? onDelete;
 // final bool isSelected;
  const ItemCard(
      {Key? key,
        //required this.isSelected,
      //  required this.onClick,
        required this.item,
        required this.id,
       // this.onDelete,
       // required this.name
      })
      : super(key: key);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MouseRegion(
      onEnter: (event) {
        isHover = true;
        setState(() {});
      },
      onExit: (event) {
        isHover = false;
        setState(() {});
      },
      child: InkWell(
        onTap:(){},
        //widget.onClick,
        child: Container(
          height: height * .084,
          // decoration: BoxDecoration(
          //   // color: Colors.red,
          //     color: widget.isSelected
          //         ? Palette.searchInputColor.withOpacity(0.2)
          //         : isHover
          //         ? Palette.searchInputColor.withOpacity(0.2)
          //         : null,
          //     border: widget.isSelected
          //         ? Border(
          //         left: BorderSide(
          //             color: Palette.Grey.withOpacity(.4), width: 2))
          //         : null),
          child: Container(
            // color: Colors.green,
            // alignment: Alignment.topCenter,
            // padding: EdgeInsets.only(bottom: 29),
            // margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
            child: Center(
    child: ListTile(
    title: Column(
    children: [
    SizedBox(
    height: height * .012,
    ),
    Container(
    alignment:
    Alignment.topLeft,
    child: Text(
   widget.id.toString(),
    style: TextStyle(
    color: Color(
    0xffCED7DE,
    ),
    fontWeight:
    FontWeight
        .bold,
    fontSize: height *
    .018),
    ),
    ),
    Container(
    alignment:
    Alignment.topLeft,
    child: Text(
    widget.item.toString(),
    style: TextStyle(
    color: Color(
    0xffFFFFFF,
    ),
    fontSize:
    height *
    .0215),
    )),
    ],
    ),
    // subtitle:
    key: UniqueKey(),
    ),
          ),
        ),
      ),)
    );
  }
}