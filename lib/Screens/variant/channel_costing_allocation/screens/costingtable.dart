import 'package:flutter/material.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/widgets/customtable.dart';

class CostingGrowableTable extends StatefulWidget {
  final  List<ListingChnanelTableModel> table;
  final  Function(int?) ontap;
  // final  bool addNew;
  // final  Key? key;
  CostingGrowableTable({required this.table,required this.ontap});
  @override
  CostingGrowableTableState createState() => CostingGrowableTableState();
}

class CostingGrowableTableState extends State<CostingGrowableTable> {

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    // if(!onChange){
    //   print("welcome to the entire place");
    //   setState(() {
    //     keys=[];
    //   });
    //
    //
    //   if(widget.aboutProducts?.isNotEmpty==true){
    //
    //
    //     setState(() {
    //
    //       headingController.text=widget.addNew?"":widget.aboutProducts?[0].name??"";
    //     });
    //     aboutProducts= widget.aboutProducts??[];
    //     if(aboutProducts?[0].keyValues?.isNotEmpty==true)
    //       keys=aboutProducts?[0].keyValues??[];
    //
    //   }
    //
    //
    //
    //
    //
    // }
    // onChange=false;
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            // width: w/5,
            margin: EdgeInsets.symmetric(horizontal: w*.02),
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

                      'Pricing Type',


                      textColor: Colors.white,


                      size: 13,


                    ),
                    tableHeadtext(

                      'Pricing Group',


                      textColor: Colors.white,


                      size: 13,


                    ),
                    tableHeadtext(

                      'Applied GP',


                      textColor: Colors.white,


                      size: 13,


                    ),
                    tableHeadtext(

                      'Applied GT type',


                      textColor: Colors.white,


                      size: 13,


                    ),
                    tableHeadtext(

                      'Selling Price',


                      textColor: Colors.white,


                      size: 13,


                    ),
                    tableHeadtext(

                      '',


                      textColor: Colors.white,


                      size: 13,


                    ),





                  ],

                ),
                if (widget.table?.isNotEmpty==true ) ...[


                  for (var i = 0; i < widget.table.length; i++)
                    TableRow(
                        decoration: BoxDecoration(
                            color: Pellet.tableRowColor,
                            shape: BoxShape.rectangle,
                            border:  Border(
                                left: BorderSide(

                                    color: Color(0xff3E4F5B).withOpacity(.1),
                                    width: .4,
                                    style: BorderStyle.solid),
                                bottom: BorderSide(

                                    color:   Color(0xff3E4F5B).withOpacity(.1),
                                    style: BorderStyle.solid),
                                right: BorderSide(
                                    color:   Color(0xff3E4F5B).withOpacity(.1),
                                    width: .4,

                                    style: BorderStyle.solid))),
                        children: [

                          TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,

                              child:textPadding(widget.table[i].pricingTypeName.toString()??"")



                          ),
                          TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,

                              child:textPadding(widget.table[i].pricingGroupName.toString())



                          ),
                          TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,

                              child:textPadding(widget.table[i].pricingGroupId.toString())



                          ),
                          TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,

                              child:textPadding(widget.table[i].pricingGPType.toString())



                          ),
                          TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,

                              child:textPadding(widget.table[i].sellingPrice.toString())



                          ),
                          TableTextButton(label: "Press",  onPress:(){widget.ontap(widget.table[i].id);



                          }



                          ,)




                        ]),],
                TableRow(
                    decoration: BoxDecoration(
                        color: Pellet.tableRowColor,
                        shape: BoxShape.rectangle,
                        border:  Border(
                            left: BorderSide(

                                color: Color(0xff3E4F5B).withOpacity(.1),
                                width: .4,
                                style: BorderStyle.solid),
                            bottom: BorderSide(

                                color:   Color(0xff3E4F5B).withOpacity(.1),
                                style: BorderStyle.solid),
                            right: BorderSide(
                                color:   Color(0xff3E4F5B).withOpacity(.1),
                                width: .4,

                                style: BorderStyle.solid))),
                    children: [

                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,

                          child:textPadding("")
                        // UnderLinedInput(
                        //   formatter: false,
                        // ),


                      ),

                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,

                          child:textPadding("")
                        // UnderLinedInput(
                        //   formatter: false,
                        // ),


                      ),

                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,

                          child:textPadding("")
                        // UnderLinedInput(
                        //   formatter: false,
                        // ),


                      ),

                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,

                          child:textPadding("")
                        // UnderLinedInput(
                        //   formatter: false,
                        // ),


                      ),

                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,

                          child:Container(height: 42,)
                        // UnderLinedInput(
                        //   formatter: false,
                        // ),


                      ),

                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,

                          child:textPadding("")
                        // UnderLinedInput(
                        //   formatter: false,
                        // ),


                      ),


                    ],

                )



              ],
              widths: {
                0: FlexColumnWidth(3),
                1: FlexColumnWidth(3),
                3: FlexColumnWidth(3),
                4: FlexColumnWidth(3),
                5: FlexColumnWidth(2),
                2: FlexColumnWidth(3),


              },

            ),


          ),
        ],
      );
  }
}