
import 'package:flutter/material.dart';
import 'package:inventory/Screens/variant/general/productmodulegeneral.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/widgets/customtable.dart';

class CombinationTable extends StatefulWidget {
  List<CombinationListClass>list;
  CombinationTable({required this.list});
  @override
  _CombinationTableState createState() => _CombinationTableState();
}

class _CombinationTableState extends State<CombinationTable> {


  bool onChange=false;
  List<String>attributeNameList=[];

  @override
  Widget build(BuildContext context) {
    print(widget.list);




    return
      Container(
      width: 2200,
      padding: EdgeInsets.all(10),
      child: customTable(



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
                textColor: Colors.white,
                // color: Color(0xffE5E5E5),

                size: 13,


              ),


              tableHeadtext(
                'Variant list',
                textColor: Colors.white,
                padding: EdgeInsets.all(7),
                height: 46,
                size: 13,
                // color: Color(0xffE5E5E5),
              ),


            ],

          ), if(widget.list.isNotEmpty)...[
            for(var i=0;i<widget.list.length;i++)...[
          TableRow(
          decoration: BoxDecoration(
          color: Pellet.tableRowColor,
    shape: BoxShape.rectangle,
    border: Border(
    left: BorderSide(
    color: Color(0xff3E4F5B).withOpacity(.1),
    width: .4,
    style: BorderStyle.solid),
    bottom: BorderSide(
    color: Color(0xff3E4F5B).withOpacity(.1),
    style: BorderStyle.solid),
    right: BorderSide(
    color: Color(0xff3E4F5B).withOpacity(.1),
    width: .4,
    style: BorderStyle.solid))),
              children: [

                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,

                  child:   CheckedBoxs(
                      valueChanger: widget.list[i].isActive,
                      onSelection:(va){
                        setState(() {
                          widget.list[i].isActive=!widget.list[i].isActive;
                        });


                      }

                  ),),

                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,


                  child:Text(widget.list[i].value.toString())



    )


              ]),


],]else
          TableRow(
              decoration: BoxDecoration(
    color: Pellet.tableRowColor,
    shape: BoxShape.rectangle,
    border: Border(
    left: BorderSide(
    color: Color(0xff3E4F5B).withOpacity(.1),
    width: .4,
    style: BorderStyle.solid),
    bottom: BorderSide(
    color: Color(0xff3E4F5B).withOpacity(.1),
    style: BorderStyle.solid),
    right: BorderSide(
    color: Color(0xff3E4F5B).withOpacity(.1),
    width: .4,
    style: BorderStyle.solid))),
              children: [

                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,

                  child:  textPadding(""),),

                TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,


                    child:Container(height: 45)



                )


              ]),
        ],
        widths: {
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(4),
          1: FlexColumnWidth(2),


        },
      ),


    );
  }
}
