import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/cubits/cubit/cubit/general_purchase_read_cubit.dart';

class ItemCard<T> extends StatefulWidget {
  final String id;
  final int selectedVertical;
  final int index;
  final bool select;
  //final String name;
  final T item;
 final VoidCallback onClick;
 // final VoidCallback? onDelete;
 // final bool isSelected;
  const ItemCard(
      {Key? key,
        required  this.index,
        this.select=false,
     required  this.selectedVertical,
       required this.onClick,
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
    return BlocBuilder<GeneralPurchaseReadCubit, GeneralPurchaseReadState>(
  builder: (context, state) {
    return MouseRegion(
      onEnter: (event) {
        isHover = true;
        setState(() {});
      },
      onExit: (event) {
        isHover = false;
        setState(() {});
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap:widget.onClick,
          //widget.onClick,
          child: Container(
            // height: height * .084,
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

              decoration:BoxDecoration(
                border: widget.select?Border(left:  BorderSide(width:0, color:Colors.transparent),):widget.selectedVertical==widget.index? Border(
                  left:  BorderSide(width: 4.0, color: Color(0xff3E4F5B)),
                ):  Border(left:  BorderSide(width:0, color:Colors.transparent),),
                color:widget.select?Color(0xffEDF1F2): widget.selectedVertical==widget.index?Color(0xff3E4F5B).withOpacity(.1):isHover?Colors.grey.shade300:Color(0xffEDF1F2),
              ),

              child: Center(
    child: ListTile(
    title: Column(
    children: [
    SizedBox(
    height: height * .010,
    ),
    Container(
    alignment:
    Alignment.topLeft,
    child: Text(
   widget.id.toString(),
    style: TextStyle(
    color:
    Color(
    0xff838383,
    ),
    fontWeight:
    FontWeight
          .bold,
    fontSize: height *
    .018),
    ),
    ),
        SizedBox(
          height: height * .002,
        ),
    Container(
    alignment:
    Alignment.topLeft,
    child: Text(
    widget.item.toString(),
    style: TextStyle(
        fontWeight: FontWeight.w400,
    color:Colors.black,
    // Color(
    // 0x000000,
    // ),
    fontSize:
    height *
    .0215),
    )),
      SizedBox(
        height: height * .010,
      ),
    ],
    ),
    // subtitle:
    key: UniqueKey(),
    ),
            ),
          ),
        ),),
      )
    );
  },
);
  }
}



class ItemCardPayment<T> extends StatefulWidget {
  final String id;
  final int selectedVertical;
  final int index;
  final bool select;
  //final String name;
  final T item;
 final VoidCallback onClick;
 // final VoidCallback? onDelete;
 // final bool isSelected;
  const ItemCardPayment(
      {Key? key,
        required  this.index,
        this.select=false,
     required  this.selectedVertical,
       required this.onClick,
        required this.item,
        required this.id,
       // this.onDelete,
       // required this.name
      })
      : super(key: key);

  @override
  _ItemCardPaymentState createState() => _ItemCardPaymentState();
}

class _ItemCardPaymentState extends State<ItemCardPayment> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return BlocBuilder<GeneralPurchaseReadCubit, GeneralPurchaseReadState>(
  builder: (context, state) {
    return MouseRegion(
      onEnter: (event) {
        isHover = true;
        setState(() {});
      },
      onExit: (event) {
        isHover = false;
        setState(() {});
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap:widget.onClick,
          //widget.onClick,
          child: Container(
            // height: height * .084,
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

              decoration:BoxDecoration(
                border: widget.select?Border(left:  BorderSide(width:0, color:Colors.transparent),):widget.selectedVertical==widget.index? Border(
                  left:  BorderSide(width: 4.0, color: Color(0xff3E4F5B)),
                ):  Border(left:  BorderSide(width:0, color:Colors.transparent),),
                color:widget.selectedVertical==widget.index?Color(0xff3E4F5B).withOpacity(.1):isHover?Colors.grey.shade300:Colors.white,
              ),

              child: Center(
    child: ListTile(
    title: Column(
    children: [
    SizedBox(
    height: height * .010,
    ),
    Container(
    alignment:
    Alignment.topLeft,
    child: Text(
   widget.id.toString(),
    style: TextStyle(
    color:
    Color(
    0xff838383,
    ),
    fontWeight:
    FontWeight
          .bold,
    fontSize: height *
    .018),
    ),
    ),
        SizedBox(
          height: height * .002,
        ),
    Container(
    alignment:
    Alignment.topLeft,
    child: Text(
    widget.item.toString(),
    style: TextStyle(
        fontWeight: FontWeight.w400,
    color:Colors.black,
    // Color(
    // 0x000000,
    // ),
    fontSize:
    height *
    .0215),
    )),
      SizedBox(
        height: height * .010,
      ),
    ],
    ),
    // subtitle:
    key: UniqueKey(),
    ),
            ),
          ),
        ),),
      )
    );
  },
);
  }
}