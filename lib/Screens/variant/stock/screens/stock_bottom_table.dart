import 'package:flutter/material.dart';
import 'package:inventory/Screens/variant/stock/models/stocktableread.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/widgets/customtable.dart';

class StockBottomTable extends StatefulWidget {
final  List<StockTableReadModel> data;
  // final  Function storageTableEdit;
  // final  bool addNew;
  // final  Key? key;
  StockBottomTable({required this.data});
  @override
  StockBottomTableState createState() => StockBottomTableState();
}

class StockBottomTableState extends State<StockBottomTable> {

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

              border: const TableBorder(

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

                      'Invoice Code',

                      padding: EdgeInsets.all(7),

                      height: 46,
                      textColor: Colors.white,


                      size: 13,


                    ),
                    tableHeadtext(

                      'Invoice Line Code',

                      padding: EdgeInsets.all(7),

                      height: 46,
                      textColor: Colors.white,


                      size: 13,


                    ),
                    tableHeadtext(

                      'Quantity',

                      padding: EdgeInsets.all(7),

                      height: 46,
                      textColor: Colors.white,


                      size: 13,


                    ),
                    tableHeadtext(

                      'Invoiced Date',

                      padding: EdgeInsets.all(7),

                      height: 46,
                      textColor: Colors.white,


                      size: 13,


                    ),
                    tableHeadtext(

                      'Actual Cost',

                      padding: EdgeInsets.all(7),

                      height: 46,
                      textColor: Colors.white,


                      size: 13,


                    ),
                    tableHeadtext(

                      '',

                      padding: EdgeInsets.all(7),

                      height: 46,
                      textColor: Colors.white,


                      size: 13,


                    ),





                  ],

                ),
                if (widget.data?.isNotEmpty==true ) ...[


                  for (var i = 0; i < widget.data.length; i++)
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

                            child:textPadding((i+1).toString())



                          ),
    TableCell(
    verticalAlignment: TableCellVerticalAlignment.middle,

    child:textPadding(widget.data[i].invoicedLineCode.toString()??"")



    ),
                          TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,

                              child:textPadding(widget.data[i].totalQuantity.toString())



                          ),
                          TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,

                              child:textPadding(widget.data[i].invoicedDate.toString())



                          ),
                          TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,

                              child:textPadding(widget.data[i].actualCost.toString())



                          ),
                          TableTextButton(label: "",  onPress: (){},)




                        ]),],
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

                          child:textPadding("")



                      ),
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,

                          child:textPadding("")



                      ),
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,

                          child:textPadding("")



                      ),
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,

                          child:textPadding("")



                      ),
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,


                          child:textPadding("",height: 40)



                      ),
                      TableTextButton(label: "",  onPress: (){},)




                    ]),



                // TableRow(
                //     decoration: BoxDecoration(
                //         color: Colors.grey
                //             .shade200,
                //         shape: BoxShape
                //             .rectangle,
                //         border:const  Border(
                //             left: BorderSide(
                //                 width: .5,
                //                 color: Colors
                //                     .grey,
                //                 style: BorderStyle
                //                     .solid),
                //             bottom: BorderSide(
                //                 width: .5,
                //                 color: Colors
                //                     .grey,
                //                 style: BorderStyle
                //                     .solid),
                //             right: BorderSide(
                //                 color: Colors
                //                     .grey,
                //                 width: .5,
                //                 style: BorderStyle
                //                     .solid))),
                //     children: [
                //
                //       TableCell(
                //           verticalAlignment: TableCellVerticalAlignment.middle,
                //
                //           child:UnderLinedInput(
                //             formatter: false,
                //             onChanged: (va){
                //               print(va);
                //               name.text=va;
                //               setState(() {
                //
                //               });
                //
                //             },
                //           )
                //         // UnderLinedInput(
                //         //   formatter: false,
                //         // ),
                //
                //
                //       ),
                //       TableTextButton(
                //         label: "",
                //         onPress: (){
                //           onChange=true;
                //
                //
                //           setState(() {
                //             Map map={
                //               "name":name.text,
                //             };
                //             keys.add(map);
                //             print(keys);
                //
                //
                //
                //             print(keys);
                //             print("attata+"+aboutProducts.toString());
                //             aboutProducts?.add(Storage(
                //                 name: "Akshay",
                //                 keyValues: keys
                //             ));
                //             widget.storageTableEdit(type:"1",list:aboutProducts);
                //             name.text="";
                //
                //           });
                //
                //
                //
                //         },
                //
                //       )
                //
                //
                //     ])


              ],

            ),


          ),
        ],
      );
  }
}