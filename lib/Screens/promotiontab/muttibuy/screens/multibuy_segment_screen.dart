import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'package:inventory/widgets/customtable.dart';

class SegmentMultibuyGrowableTable extends StatefulWidget {
  final List<Segment> table;
  final Function updation;

  // final  Function(int?) ontap;
  // final  bool addNew;
  final Key? key;

  SegmentMultibuyGrowableTable({required this.table, required this.updation, this.key});

  @override
  SegmentMultibuyGrowableTableState createState() => SegmentMultibuyGrowableTableState();
}

class SegmentMultibuyGrowableTableState extends State<SegmentMultibuyGrowableTable> {
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
                                        bool? isActive = table[i].isActive;
                                        setState(() {
                                          // widget.updateCheck(true);
                                          // print("aaaaaaaaaaa"+isActive.toString());
                                          // table1[i] = table1[i].copyWith(updatecheck: true);
                                          table[i] = table[i].copyWith(
                                              updatecheck: true);
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
                                    // inventory: Variable.inventory_ID,
                                    type: "SegmentListTabalePopup",
                                    list: table,
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
                                      if(segmentName.isNotEmpty &&segmentCode.isNotEmpty){
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
      );
  }
}