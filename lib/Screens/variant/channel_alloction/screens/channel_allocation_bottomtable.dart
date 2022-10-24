import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:inventory/Screens/variant/channel_alloction/model/typemodel.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';

class ChannelAllocationBottomTable extends StatefulWidget {
  final  List<ChannelTypeModel>? table;
  final  Function tableAssign;
  // final  bool addNew;
  // final  Key? key;
  ChannelAllocationBottomTable({required this.table,required this.tableAssign});
  @override
  ChannelAllocationBottomTableState createState() => ChannelAllocationBottomTableState();
}

class ChannelAllocationBottomTableState extends State<ChannelAllocationBottomTable> {
  List<String>items=["Male","Female"];
  bool onChange=false;
  List<ChannelTypeModel> table=[];


  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    if(onChange==false){
      print("welcome to the entire place");
      setState(() {
        table=[];
      });


      if(widget.table?.isNotEmpty==true){

        table= widget.table??[];

      }





    }
    onChange=false;
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

                      'Sl No',

                      padding: EdgeInsets.all(7),

                      height: 46,
                      textColor: Colors.white,


                      size: 13,


                    ),
                    tableHeadtext(

                      'Code',

                      padding: EdgeInsets.all(7),

                      height: 46,
                      textColor: Colors.white,


                      size: 13,


                    ),
                    tableHeadtext(

                      'Name',

                      padding: EdgeInsets.all(7),

                      height: 46,
                      textColor: Colors.white,


                      size: 13,


                    ),
                    tableHeadtext(

                      'Barcode',

                      padding: EdgeInsets.all(7),

                      height: 46,
                      textColor: Colors.white,


                      size: 13,


                    ),
                    tableHeadtext(

                      'Is Active',

                      padding: EdgeInsets.all(7),

                      height: 46,
                      textColor: Colors.white,


                      size: 13,


                    ),






                  ],

                ),
                if(table?.isEmpty==true)...[
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
                          // Text(keys?[i]["name"]??"")



                        ),
                        TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,

                            child:textPadding('')
                          // Text(keys?[i]["name"]??"")



                        ),
                        TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,

                            child:textPadding('')
                          // Text(keys?[i]["name"]??"")



                        ),
                        TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,

                            child:textPadding('')
                          // Text(keys?[i]["name"]??"")



                        ),

                        Container(height: 45,)


                      ]),


                ],
                if (table?.isNotEmpty==true ) ...[


                  for (var i = 0; i < table!.length; i++)
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
                            // Text(keys?[i]["name"]??"")



                          ),
                          TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,

                              child:textPadding(table?[i].code??'')
                            // Text(keys?[i]["name"]??"")



                          ),
    TableCell(
    verticalAlignment: TableCellVerticalAlignment.middle,

    child:textPadding(table?[i].name??'')
    // Text(keys?[i]["name"]??"")



    ),
                          TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,

                              child:textPadding(table?[i].barcode?.barcodeNumber??'')
                            // Text(keys?[i]["name"]??"")



                          ),
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: CheckedBoxs(
                                valueChanger: table[i].isActive,


                                onSelection:(bool ? value){
                                  bool? isActive = table[i].isActive;
                                  onChange=true;
                                  setState(() {


                                    isActive = !isActive!;
                                    table[i] = table[i].copyWith(isActive: isActive);
                                widget.tableAssign(table);

                                  });
                                }),
                          ),



                        ]),

                ],

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