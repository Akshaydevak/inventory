
import 'package:flutter/material.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/widgets/customtable.dart';

class CombinationTable extends StatefulWidget {
  final List<String>list;
  CombinationTable({required this.list});
  @override
  _CombinationTableState createState() => _CombinationTableState();
}

class _CombinationTableState extends State<CombinationTable> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
      width: 2200,
      padding: EdgeInsets.all(10),
      child: customTable(

        border:  TableBorder(

          verticalInside: BorderSide(
              width:.5,
              color: Colors.black45,
              style: BorderStyle.solid),
          horizontalInside: BorderSide(
              width:.3,
              color: Colors.black45,
              // color: Colors.blue,
              style: BorderStyle.solid),),

        tableWidth: .5,

        childrens:[
          TableRow(

            // decoration: BoxDecoration(

            //     color: Colors.green.shade200,

            //     shape: BoxShape.rectangle,

            //     border: const Border(bottom: BorderSide(color: Colors.grey))),

            children: [

              tableHeadtext(

                'Status',

                padding: EdgeInsets.all(7),

                height: 46,
                textColor: Colors.black,
                color: Color(0xffE5E5E5),

                size: 13,


              ),


              tableHeadtext(
                'Variant list',
                textColor: Colors.black,
                padding: EdgeInsets.all(7),
                height: 46,
                size: 13,
                color: Color(0xffE5E5E5),
              ),


            ],

          ), if(widget.list.isNotEmpty)
            for(var i=0;i<widget.list.length;i++)...[
          TableRow(
              decoration: BoxDecoration(
                  color: Colors.grey
                      .shade200,
                  shape: BoxShape
                      .rectangle,
                  border:const  Border(
                      left: BorderSide(
                          width: .5,
                          color: Colors
                              .grey,
                          style: BorderStyle
                              .solid),
                      bottom: BorderSide(
                          width: .5,
                          color: Colors
                              .grey,
                          style: BorderStyle
                              .solid),
                      right: BorderSide(
                          color: Colors
                              .grey,
                          width: .5,
                          style: BorderStyle
                              .solid))),
              children: [

                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,

                  child:   CheckedBoxs(
                      valueChanger: true,
                      onSelection:(va){

                      }

                  ),),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,

                  child:   Text(widget.list[i]


                  ),)

              ]),

]
        ],
        widths: {
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(4),


        },
      ),


    );
  }
}
