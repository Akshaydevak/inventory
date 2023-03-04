import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/promotiontab/buy_more/cubit/read_buy_more/read_buy_more_cubit.dart';
import 'package:inventory/Screens/promotiontab/buy_more/model/create_model.dart';
import 'package:inventory/Screens/promotiontab/discount/cubit/read_promotion_discount/read_promotion_discount_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';

class SegmentBuyMoreGrowableTable extends StatefulWidget {
  final List<Segment> table;
  final Function updation;

  // final  Function(int?) ontap;
  // final  bool addNew;
  final Key? key;

  SegmentBuyMoreGrowableTable(
      {required this.table, required this.updation, this.key});

  @override
  SegmentBuyMoreGrowableTableState createState() =>
      SegmentBuyMoreGrowableTableState();
}

class SegmentBuyMoreGrowableTableState
    extends State<SegmentBuyMoreGrowableTable> {
  List<Segment>table = [];
  String segmentName = "";
  String segmentCode = "";
  bool isActive = false;
  bool onSaveActive = false;
  saveButtonActovde(String key,String val){
    print(key);
    print(val);

    key=(key.replaceAll(' ', ''));
    val=(val.replaceAll(' ', ''));
    if(key.isNotEmpty==true && val.isNotEmpty==true){
      setState(() {
        onSaveActive=true;
      });
    }
    else{
      setState(() {
        onSaveActive=false;
      });

    }
  }

  clears() {
    table = [];
    segmentName = "";
    segmentCode = "";
    isActive = false;
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery
        .of(context)
        .size
        .height;
    double w = MediaQuery
        .of(context)
        .size
        .width;
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
      BlocListener<ReadBuyMoreCubit, ReadBuyMoreState>(
        listener: (context, state) {
          print("state++++++++++++++++++++++++++++++++");
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error");
              },
              success: (data) {
                setState(() {

                  data.segments != null ?
                  table = List.from(data?.segments ?? []) : table = [];
                });
              });
        },
        child: Builder(
            builder: (context) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    // width: w/5,
                    margin: EdgeInsets.symmetric(horizontal: w * .02),
                    child: customTable(

                      border: const TableBorder(

                        verticalInside: BorderSide(
                            width: .5,
                            color: Colors.black45,
                            style: BorderStyle.solid),
                        horizontalInside: BorderSide(
                            width: .3,
                            color: Colors.black45,
                            // color: Colors.blue,
                            style: BorderStyle.solid),),

                      tableWidth: .5,

                      childrens: [
                        TableRow(

                          // decoration: BoxDecoration(

                          //     color: Colors.green.shade200,

                          //     shape: BoxShape.rectangle,

                          //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                          children: [

                            tableHeadtext(

                              'Segment Name',

                              textColor: Colors.white,
                              size: 13,
                            ),
                            tableHeadtext(
                              'Segment Code',
                              // padding: EdgeInsets.all(7),
                              //
                              // height: 46,
                              // textColor: Colors.white,

                              size: 13,
                            ),
                            tableHeadtext(
                              "Is Active",

                              // padding: EdgeInsets.all(7),

                              // height: 46,
                              // textColor: Colors.white,


                              size: 13,


                            ), tableHeadtext(

                              "",
                              //
                              // padding: EdgeInsets.all(7),
                              //
                              // height: 46,
                              textColor: Colors.white,


                              size: 13,


                            ),


                          ],

                        ),
                        if (table?.isNotEmpty == true ) ...[


                          for (var i = 0; i < table.length; i++)
                            TableRow(
                                decoration: BoxDecoration(
                                    color: Pellet.tableRowColor,
                                    shape: BoxShape.rectangle,
                                    border: Border(
                                        left: BorderSide(

                                            color: Color(0xff3E4F5B)
                                                .withOpacity(.1),
                                            width: .4,
                                            style: BorderStyle.solid),
                                        bottom: BorderSide(

                                            color: Color(0xff3E4F5B)
                                                .withOpacity(.1),
                                            style: BorderStyle.solid),
                                        right: BorderSide(
                                            color: Color(0xff3E4F5B)
                                                .withOpacity(.1),
                                            width: .4,

                                            style: BorderStyle.solid))),
                                children: [

                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment
                                        .middle,

                                    child:
                                    VariantIdTAble(
                                      text: table[i].segmentName,
                                      onTap: () {
                                        showDailogPopUp(
                                          context,
                                          TableConfigurePopup(
                                            list: table,
                                            // inventory: Variable.inventory_ID,
                                            type: "SegmentListTabalePopup",
                                            valueSelect: (
                                                salesOrderTypeModel? va) {
                                              setState(() {
                                                table[i] = table[i].copyWith(
                                                    segmentCode: va?.code ?? "",
                                                    segmentName: va?.name ?? "",
                                                    updatecheck: true);

                                                setState(() {

                                                });

                                                // orderType = va!;
                                              });
                                            },
                                          ),
                                        );
                                      },
                                    ),


                                  ),
                                  TableCell(
                                      verticalAlignment: TableCellVerticalAlignment
                                          .middle,

                                      child: textPadding(
                                          table[i].segmentCode.toString())


                                  ),
                                  TableCell(
                                    verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                    child: CheckedBoxs(
                                        valueChanger:
                                        table?[i].isActive == null
                                            ? false
                                            : table?[i].isActive,
                                        onSelection: (bool? value) {
                                          bool? isactive = table[i].isActive;
                                          setState(() {
                                            // widget.updateCheck(true);
                                            // print("aaaaaaaaaaa"+isActive.toString());
                                            // table1[i] = table1[i].copyWith(updatecheck: true);
                                            table[i] = table[i].copyWith(
                                                updatecheck: true);
                                            setState(() {});
                                            isactive = !isactive!;
                                            print("aaaaaaaaaaa" +
                                                isActive.toString());
                                            table[i] = table[i]
                                                .copyWith(
                                                isActive: isactive);
                                          });
                                        }),
                                  ),
                                  TableCell(
                                    verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: TableTextButton(
                                            onPress: () {
                                              setState(() {
                                                // widget.updateCheck(false);
                                                table[i] = table[i].copyWith(
                                                    updatecheck: false);
                                                widget.updation(table);


                                              });
                                            },
                                            textColor: table[i].updatecheck == true
                                                ? Pellet.tableBlueHeaderPrint
                                                : Colors.grey,
                                            label:
                                            table[i].updatecheck == true
                                                ? "UPDATE"
                                                : "",
                                          ),
                                        ),
                                        SizedBox(width: 4,),


                                        TableIconTextButton(

                                          // textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                                          // buttonBagroundColor:upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                                          // bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Colors.transparent,
                                          onPress: () {

                                            setState(() {


                                              table?.removeAt(i);
                                              widget.updation(table);

                                            });
                                          },
                                          icon: Icons.delete,
                                          label: "",
                                        ), SizedBox(width: 4,),
                                      ],
                                    ),
                                  )


                                ]),
                        ],
                        TableRow(
                            decoration: BoxDecoration(
                                color: Pellet.tableRowColor,
                                shape: BoxShape.rectangle,
                                border: Border(
                                    left: BorderSide(

                                        color: Color(0xff3E4F5B).withOpacity(
                                            .1),
                                        width: .4,
                                        style: BorderStyle.solid),
                                    bottom: BorderSide(

                                        color: Color(0xff3E4F5B).withOpacity(
                                            .1),
                                        style: BorderStyle.solid),
                                    right: BorderSide(
                                        color: Color(0xff3E4F5B).withOpacity(
                                            .1),
                                        width: .4,

                                        style: BorderStyle.solid))),
                            children: [

                              VariantIdTAble(
                                text: segmentName,
                                onTap: () {
                                  showDailogPopUp(
                                    context,
                                    TableConfigurePopup(
                                      list: table,
                                      // inventory: Variable.inventory_ID,
                                      type: "SegmentListTabalePopup",
                                      valueSelect: (salesOrderTypeModel? va) {
                                        print(va!.id
                                            .toString());

                                        setState(() {
                                          segmentCode = va?.code ?? "";
                                          segmentName = va?.name ?? "";
                                          saveButtonActovde(segmentCode,segmentName);
                                          setState(() {

                                          });

                                          // orderType = va!;
                                        });
                                      },
                                    ),
                                  );
                                },
                              ),

                              TableCell(
                                  verticalAlignment: TableCellVerticalAlignment
                                      .middle,

                                  child: textPadding(segmentCode.isEmpty
                                      ? ""
                                      : segmentCode)
                                // UnderLinedInput(
                                //   formatter: false,
                                // ),


                              ),
                              TableCell(
                                verticalAlignment:
                                TableCellVerticalAlignment.middle,
                                child: CheckedBoxs(
                                  // color: Color(0xff3E4F5B),
                                  valueChanger: isActive,
                                  onSelection: (bool? value) {
                                    // clear=true;
                                    setState(() {
                                      isActive = !isActive;
                                    });
                                  },
                                ),
                              ),


                              TableCell(
                                verticalAlignment:
                                TableCellVerticalAlignment.middle,
                                child: TableTextButton(
                                    buttonBagroundColor:onSaveActive?Pellet.bagroundColor:Colors.transparent,
                                    textColor:onSaveActive?Pellet.bagroundColor:Colors.black,
                                    bagroundColor: onSaveActive?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),
                                    label: "Save",
                                    onPress: () {
                                      setState(() {
                                        if(onSaveActive){
                                          table.add(Segment(

                                            segmentCode: segmentCode.isEmpty
                                                ? ""
                                                : segmentCode,
                                            segmentName: segmentName.isEmpty
                                                ? ""
                                                : segmentName,
                                            isActive: isActive,
                                          ));
                                          segmentCode = "";
                                          segmentName = "";
                                          isActive = false;
                                          onSaveActive=false;
                                          widget.updation(table);
                                        }

                                      });
                                    }),
                              )


                            ])


                      ],
                      widths: {
                        0: FlexColumnWidth(3),
                        1: FlexColumnWidth(3),
                        2: FlexColumnWidth(1.5),
                        3: FlexColumnWidth(1.5),

                      },
                    ),


                  ),
                ],
              );
            }
        ),
      );
  }
}

class CountBuyMoreGrowableTable extends StatefulWidget {
  // final List<Segment> table;
  final Function updation;

  // final  Function(int?) ontap;
  // final  bool addNew;
  final Key? key;

  CountBuyMoreGrowableTable({
    // required this.table,
    required this.updation,

    this.key
  });

  @override
  CountBuyMoreGrowableTableState createState() =>
      CountBuyMoreGrowableTableState();
}

class CountBuyMoreGrowableTableState extends State<CountBuyMoreGrowableTable> {
  List<CountPricePercentageModel>table = [];
  TextEditingController count = TextEditingController();
  TextEditingController peice_percentage = TextEditingController();
  List<TextEditingController>countList=[];
  List<TextEditingController>priceList=[];
  bool isActive = false;
  bool onSaveActive = false;
  saveButtonActovde(String key,String val){
    print(key);
    print(val);

    key=(key.replaceAll(' ', ''));
    val=(val.replaceAll(' ', ''));
    if(key.isNotEmpty==true && val.isNotEmpty==true){
      setState(() {
        onSaveActive=true;
      });
    }
    else{
      setState(() {
        onSaveActive=false;
      });

    }
  }

  clears() {
    table = [];
    countList.clear();
    priceList.clear();
    count.clear();
    peice_percentage.clear();
    isActive = false;
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery
        .of(context)
        .size
        .height;
    double w = MediaQuery
        .of(context)
        .size
        .width;
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
      BlocListener<ReadBuyMoreCubit, ReadBuyMoreState>(
        listener: (context, state) {
          print("state++++++++++++++++++++++++++++++++");
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error");
              },
              success: (data) {
                setState(() {


                  data.countPricePercentage != null ? table =List.from( data?.countPricePercentage ?? []) : table = [];

                  for(var value in table){
                    countList.add(TextEditingController(text:value.count.toString() ));
                    priceList.add(TextEditingController(text:value.pricePercentage.toString() ));
                  }



                });
              });
        },
        child: Builder(
            builder: (context) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    // width: w/5,
                    margin: EdgeInsets.symmetric(horizontal: w * .02),
                    child:
                    customTable(

                      border: const TableBorder(

                        verticalInside: BorderSide(
                            width: .5,
                            color: Colors.black45,
                            style: BorderStyle.solid),
                        horizontalInside: BorderSide(
                            width: .3,
                            color: Colors.black45,
                            // color: Colors.blue,
                            style: BorderStyle.solid),),

                      tableWidth: .5,

                      childrens: [
                        TableRow(

                          // decoration: BoxDecoration(

                          //     color: Colors.green.shade200,

                          //     shape: BoxShape.rectangle,

                          //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                          children: [

                            tableHeadtext(

                              'Count',

                              textColor: Colors.white,
                              size: 13,
                            ),
                            tableHeadtext(
                              'Price/Percentage',
                              // padding: EdgeInsets.all(7),
                              //
                              // height: 46,
                              // textColor: Colors.white,

                              size: 13,
                            ),
                            tableHeadtext(
                              "Is Active",

                              // padding: EdgeInsets.all(7),

                              // height: 46,
                              // textColor: Colors.white,


                              size: 13,


                            ), tableHeadtext(

                              "",
                              //
                              // padding: EdgeInsets.all(7),
                              //
                              // height: 46,
                              textColor: Colors.white,


                              size: 13,


                            ),


                          ],

                        ),
                        if (table?.isNotEmpty == true ) ...[


                          for (var i = 0; i < table.length; i++)
                            TableRow(
                                decoration: BoxDecoration(
                                    color: Pellet.tableRowColor,
                                    shape: BoxShape.rectangle,
                                    border: Border(
                                        left: BorderSide(

                                            color: Color(0xff3E4F5B)
                                                .withOpacity(.1),
                                            width: .4,
                                            style: BorderStyle.solid),
                                        bottom: BorderSide(

                                            color: Color(0xff3E4F5B)
                                                .withOpacity(.1),
                                            style: BorderStyle.solid),
                                        right: BorderSide(
                                            color: Color(0xff3E4F5B)
                                                .withOpacity(.1),
                                            width: .4,

                                            style: BorderStyle.solid))),
                                children: [

                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment
                                        .middle,

                                    child:
                                    UnderLinedInput(
                                     controller:countList[i] ,
                                      onChanged: (p0) {
                                        table[i] = table[i].copyWith(
                                            count: int.tryParse(p0),
                                            updateCheck: true);
                                        setState(() {});

                                        // print(Qty);
                                      },
                                      enable: true,
                                      onComplete: () {
                                        setState(() {});
                                      },
                                    ),


                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment
                                        .middle,
                                    child:
                                    UnderLinedInput(
                                      controller: priceList[i],

                                      onChanged: (p0) {
                                        setState(() {
                                          table[i] = table[i].copyWith(
                                              pricePercentage: double.tryParse(
                                                  p0), updateCheck: true);
                                        });


                                        // print(Qty);
                                      },
                                      enable: true,
                                      onComplete: () {


                                      },
                                    ),


                                  ),
                                  TableCell(
                                    verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                    child: CheckedBoxs(
                                        valueChanger:
                                        table?[i].isActive == null
                                            ? false
                                            : table?[i].isActive,
                                        onSelection: (bool? value) {
                                          bool? isActive = table[i].isActive;
                                          setState(() {
                                            // widget.updateCheck(true);
                                            // print("aaaaaaaaaaa"+isActive.toString());
                                            // table1[i] = table1[i].copyWith(updatecheck: true);
                                            table[i] = table[i].copyWith(
                                                updateCheck: true);
                                            setState(() {});
                                            isActive = !isActive!;
                                            print("aaaaaaaaaaa" +
                                                isActive.toString());
                                            table[i] = table[i]
                                                .copyWith(
                                                isActive: isActive);
                                          });
                                        }),
                                  ),
                                  TableCell(
                                    verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: TableTextButton(
                                            onPress: () {
                                              setState(() {
                                                // widget.updateCheck(false);
                                                table[i] = table[i].copyWith(
                                                    updateCheck: false);
                                                widget.updation(table);
                                              });
                                            },
                                            textColor: table[i].updateCheck == true
                                                ? Pellet.tableBlueHeaderPrint
                                                : Colors.grey,
                                            label:
                                            table[i].updateCheck == true
                                                ? "UPDATE"
                                                : "",
                                          ),
                                        ),
                                        SizedBox(width: 4,),


                                        TableIconTextButton(

                                          // textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                                          // buttonBagroundColor:upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                                          // bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Colors.transparent,
                                          onPress: () {

                                            setState(() {


                                              table?.removeAt(i);
                                              priceList.removeAt(i);
                                              countList.removeAt(i);
                                              widget.updation(table);

                                            });
                                          },
                                          icon: Icons.delete,
                                          label: "",
                                        ), SizedBox(width: 4,),

                                      ],
                                    ),
                                  )


                                ]),
                        ],
                        TableRow(
                            decoration: BoxDecoration(
                                color: Pellet.tableRowColor,
                                shape: BoxShape.rectangle,
                                border: Border(
                                    left: BorderSide(

                                        color: Color(0xff3E4F5B).withOpacity(
                                            .1),
                                        width: .4,
                                        style: BorderStyle.solid),
                                    bottom: BorderSide(

                                        color: Color(0xff3E4F5B).withOpacity(
                                            .1),
                                        style: BorderStyle.solid),
                                    right: BorderSide(
                                        color: Color(0xff3E4F5B).withOpacity(
                                            .1),
                                        width: .4,

                                        style: BorderStyle.solid))),
                            children: [

                              TableCell(
                                verticalAlignment: TableCellVerticalAlignment
                                    .middle,

                                child:
                                UnderLinedInput(

                                  controller: count,


                                  onChanged: (p0) {
                                    saveButtonActovde(count.text,peice_percentage.text);
                                    // print(Qty);
                                  },
                                  enable: true,
                                  onComplete: () {
                                    setState(() {});
                                  },
                                ),
                                // UnderLinedInput(
                                //   formatter: false,
                                // ),


                              ),

                              TableCell(
                                verticalAlignment: TableCellVerticalAlignment
                                    .middle,
                                child: UnderLinedInput(
                                  controller: peice_percentage,
                                  onChanged: (p0) {
                                    saveButtonActovde(count.text,peice_percentage.text);
                                    // print(Qty);
                                  },
                                  enable: true,
                                  onComplete: () {
                                    setState(() {});
                                  },
                                ),
                                // UnderLinedInput(
                                //   formatter: false,
                                // ),


                              ),
                              TableCell(
                                verticalAlignment:
                                TableCellVerticalAlignment.middle,
                                child: CheckedBoxs(
                                  // color: Color(0xff3E4F5B),
                                  valueChanger: isActive,
                                  onSelection: (bool? value) {
                                    // clear=true;
                                    setState(() {
                                      isActive = !isActive!;
                                    });
                                  },
                                ),
                              ),


                              TableCell(
                                verticalAlignment:
                                TableCellVerticalAlignment.middle,
                                child: TableTextButton(
                                    buttonBagroundColor:onSaveActive?Pellet.bagroundColor:Colors.transparent,
                                    textColor:onSaveActive?Pellet.bagroundColor:Colors.black,
                                    bagroundColor: onSaveActive?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),
                                    label: "Save",
                                    onPress: () {
                                      setState(() {
                                        if(count.text.isNotEmpty && peice_percentage.text.isNotEmpty){
                                          table.add(CountPricePercentageModel(

                                            count: int.tryParse(count.text),
                                            pricePercentage: double.tryParse(
                                                peice_percentage.text),
                                            isActive: isActive,
                                            updateCheck: false,
                                          ));
                                          countList.add(TextEditingController(text:count.text ));
                                          priceList.add(TextEditingController(text:peice_percentage.text  ));
                                          print(table);
                                          count.text = "";
                                          peice_percentage.text = "";
                                          isActive = false;
                                          onSaveActive=false;
                                          widget.updation(table);
                                        }

                                      });
                                    }),
                              )


                            ])


                      ],
                      widths: {
                        0: FlexColumnWidth(3),
                        1: FlexColumnWidth(3),
                        2: FlexColumnWidth(1.5),
                        3: FlexColumnWidth(1.5),

                      },

                    ),


                  ),
                ],
              );
            }
        ),
      );
  }
}


class VariantBuyMoreGrowableTable extends StatefulWidget {
  // final List<Segment> table;
  // final Function updation;

  // final  Function(int?) ontap;
  // final  bool addNew;
  // final Key? key;

  // CountBuyMoreGrowableTable({required this.table, required this.updation, this.key});

  @override
  VariantBuyMoreGrowableTableState createState() =>
      VariantBuyMoreGrowableTableState();
}

class VariantBuyMoreGrowableTableState
    extends State<VariantBuyMoreGrowableTable> {
  List<Segment>table = [];
  String segmentName = "";
  String segmentCode = "";
  bool isActive = false;

  clears() {
    table = [];
    segmentName = "";
    segmentCode = "";
    isActive = false;
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery
        .of(context)
        .size
        .height;
    double w = MediaQuery
        .of(context)
        .size
        .width;
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
      Builder(
          builder: (context) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  // width: w/5,
                  margin: EdgeInsets.symmetric(horizontal: w * .02),
                  child: customTable(

                    border: const TableBorder(

                      verticalInside: BorderSide(
                          width: .5,
                          color: Colors.black45,
                          style: BorderStyle.solid),
                      horizontalInside: BorderSide(
                          width: .3,
                          color: Colors.black45,
                          // color: Colors.blue,
                          style: BorderStyle.solid),),

                    tableWidth: .5,

                    childrens: [
                      TableRow(

                        // decoration: BoxDecoration(

                        //     color: Colors.green.shade200,

                        //     shape: BoxShape.rectangle,

                        //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                        children: [

                          tableHeadtext(

                            'Variant Id',

                            textColor: Colors.white,
                            size: 13,
                          ),
                          tableHeadtext(
                            'Variant Name',
                            // padding: EdgeInsets.all(7),
                            //
                            // height: 46,
                            // textColor: Colors.white,

                            size: 13,
                          ),
                          tableHeadtext(

                            "Barcode",
                            //
                            // padding: EdgeInsets.all(7),
                            //
                            // height: 46,
                            textColor: Colors.white,


                            size: 13,


                          ),
                          tableHeadtext(
                            "Is Active",

                            // padding: EdgeInsets.all(7),

                            // height: 46,
                            // textColor: Colors.white,


                            size: 13,


                          ),
                          tableHeadtext(

                            "",
                            //
                            // padding: EdgeInsets.all(7),
                            //
                            // height: 46,
                            textColor: Colors.white,


                            size: 13,


                          ),


                        ],

                      ),
                      // if (table?.isNotEmpty == true ) ...[
                      //
                      //
                      //   for (var i = 0; i < table.length; i++)
                      //     TableRow(
                      //         decoration: BoxDecoration(
                      //             color: Pellet.tableRowColor,
                      //             shape: BoxShape.rectangle,
                      //             border: Border(
                      //                 left: BorderSide(
                      //
                      //                     color: Color(0xff3E4F5B)
                      //                         .withOpacity(.1),
                      //                     width: .4,
                      //                     style: BorderStyle.solid),
                      //                 bottom: BorderSide(
                      //
                      //                     color: Color(0xff3E4F5B)
                      //                         .withOpacity(.1),
                      //                     style: BorderStyle.solid),
                      //                 right: BorderSide(
                      //                     color: Color(0xff3E4F5B)
                      //                         .withOpacity(.1),
                      //                     width: .4,
                      //
                      //                     style: BorderStyle.solid))),
                      //         children: [
                      //
                      //           TableCell(
                      //             verticalAlignment: TableCellVerticalAlignment
                      //                 .middle,
                      //
                      //             child:
                      //             VariantIdTAble(
                      //               text: table[i].segmentName,
                      //               onTap: () {
                      //                 showDailogPopUp(
                      //                   context,
                      //                   TableConfigurePopup(
                      //                     // inventory: Variable.inventory_ID,
                      //                     type: "SegmentListTabalePopup",
                      //                     valueSelect: (
                      //                         salesOrderTypeModel? va) {
                      //                       setState(() {
                      //                         table[i] = table[i].copyWith(
                      //                             segmentCode: va?.code ?? "",
                      //                             segmentName: va?.name ?? "",
                      //                             updatecheck: true);
                      //
                      //                         setState(() {
                      //
                      //                         });
                      //
                      //                         // orderType = va!;
                      //                       });
                      //                     },
                      //                   ),
                      //                 );
                      //               },
                      //             ),
                      //
                      //
                      //           ),
                      //           TableCell(
                      //               verticalAlignment: TableCellVerticalAlignment
                      //                   .middle,
                      //
                      //               child: textPadding(
                      //                   table[i].segmentCode.toString())
                      //
                      //
                      //           ),
                      //           TableCell(
                      //             verticalAlignment:
                      //             TableCellVerticalAlignment.middle,
                      //             child: CheckedBoxs(
                      //                 valueChanger:
                      //                 table?[i].isActive == null
                      //                     ? false
                      //                     : table?[i].isActive,
                      //                 onSelection: (bool? value) {
                      //                   bool? isActive = table[i].isActive;
                      //                   setState(() {
                      //                     // widget.updateCheck(true);
                      //                     // print("aaaaaaaaaaa"+isActive.toString());
                      //                     // table1[i] = table1[i].copyWith(updatecheck: true);
                      //                     table[i] = table[i].copyWith(
                      //                         updatecheck: true);
                      //                     setState(() {});
                      //                     isActive = !isActive!;
                      //                     print("aaaaaaaaaaa" +
                      //                         isActive.toString());
                      //                     table[i] = table[i]
                      //                         .copyWith(
                      //                         isActive: isActive);
                      //                   });
                      //                 }),
                      //           ),
                      //           TableCell(
                      //             verticalAlignment:
                      //             TableCellVerticalAlignment.middle,
                      //             child: TableTextButton(
                      //               onPress: () {
                      //                 setState(() {
                      //                   // widget.updateCheck(false);
                      //                   table[i] = table[i].copyWith(
                      //                       updatecheck: false);
                      //                   // widget.updation(table);
                      //
                      //
                      //                 });
                      //               },
                      //               textColor: table[i].updatecheck == true
                      //                   ? Pellet.tableBlueHeaderPrint
                      //                   : Colors.grey,
                      //               label:
                      //               table[i].updatecheck == true
                      //                   ? "UPDATE"
                      //                   : "",
                      //             ),
                      //           )
                      //
                      //
                      //         ]),
                      // ],
                      // TableRow(
                      //     decoration: BoxDecoration(
                      //         color: Pellet.tableRowColor,
                      //         shape: BoxShape.rectangle,
                      //         border: Border(
                      //             left: BorderSide(
                      //
                      //                 color: Color(0xff3E4F5B).withOpacity(
                      //                     .1),
                      //                 width: .4,
                      //                 style: BorderStyle.solid),
                      //             bottom: BorderSide(
                      //
                      //                 color: Color(0xff3E4F5B).withOpacity(
                      //                     .1),
                      //                 style: BorderStyle.solid),
                      //             right: BorderSide(
                      //                 color: Color(0xff3E4F5B).withOpacity(
                      //                     .1),
                      //                 width: .4,
                      //
                      //                 style: BorderStyle.solid))),
                      //     children: [
                      //
                      //       VariantIdTAble(
                      //         text: segmentName,
                      //         onTap: () {
                      //           showDailogPopUp(
                      //             context,
                      //             TableConfigurePopup(
                      //               // inventory: Variable.inventory_ID,
                      //               type: "SegmentListTabalePopup",
                      //               valueSelect: (salesOrderTypeModel? va) {
                      //                 print(va!.id
                      //                     .toString());
                      //
                      //                 setState(() {
                      //                   segmentCode = va?.code ?? "";
                      //                   segmentName = va?.name ?? "";
                      //                   setState(() {
                      //
                      //                   });
                      //
                      //                   // orderType = va!;
                      //                 });
                      //               },
                      //             ),
                      //           );
                      //         },
                      //       ),
                      //
                      //       TableCell(
                      //           verticalAlignment: TableCellVerticalAlignment
                      //               .middle,
                      //
                      //           child: textPadding(segmentCode.isEmpty
                      //               ? ""
                      //               : segmentCode)
                      //         // UnderLinedInput(
                      //         //   formatter: false,
                      //         // ),
                      //
                      //
                      //       ),
                      //       TableCell(
                      //         verticalAlignment:
                      //         TableCellVerticalAlignment.middle,
                      //         child: CheckedBoxs(
                      //           // color: Color(0xff3E4F5B),
                      //           valueChanger: isActive,
                      //           onSelection: (bool? value) {
                      //             // clear=true;
                      //             setState(() {
                      //               isActive = !isActive!;
                      //             });
                      //           },
                      //         ),
                      //       ),
                      //
                      //
                      //       TableCell(
                      //         verticalAlignment:
                      //         TableCellVerticalAlignment.middle,
                      //         child: TableTextButton(
                      //             label: "Save",
                      //             onPress: () {
                      //               setState(() {
                      //                 table.add(Segment(
                      //
                      //                   segmentCode: segmentCode.isEmpty
                      //                       ? ""
                      //                       : segmentCode,
                      //                   segmentName: segmentName.isEmpty
                      //                       ? ""
                      //                       : segmentName,
                      //                   isActive: isActive,
                      //                 ));
                      //                 segmentCode = "";
                      //                 segmentName = "";
                      //                 isActive = false;
                      //
                      //                 // widget.updation(table);
                      //               });
                      //             }),
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
      );
  }
}