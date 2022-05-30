import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/inputfield.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'GeneralScreen.dart';

class RequestFormScreen extends StatefulWidget {
  @override
  State<RequestFormScreen> createState() => _RequestFormScreenState();
}

class _RequestFormScreenState extends State<RequestFormScreen> {
  TextEditingController controller = TextEditingController();
  TextEditingController plannedRecieptDate = TextEditingController();
  TextEditingController promisedRecieptDate = TextEditingController();
  late AutoScrollController scontroller;
  @override
  void initState() {
    scontroller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;


    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: 5000,
          child:Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              VerticalList(),
              Expanded(child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Expanded(child: Container(
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(child:Container(
                                child: Row(
                                  children: [
                                  Expanded(child: Column(
                                                  children: [
                                                    SizedBox(height: height*.030,),
                                                    SizedBox(height: height*.030,),
                                                    NewInputCard(
                                                        controller: controller, title: "Order type"),
                                                    SizedBox(height: height*.030,),
                                                    NewInputCard(
                                                      readOnly: true,
                                                        controller: controller, title: "Order code"),
                                                    SizedBox(height: height*.030,),
                                                    NewInputCard(
                                                        controller: controller, title: "Order date"),
                                                    SizedBox(height: height*.030,),
                                                    NewInputCard(
                                                        controller: controller, title: "Inventory  id"),
                                                    SizedBox(height: height*.030,),
                                                    NewInputCard(
                                                        controller: controller, title: "Ordered person"),
                                                    SizedBox(height: height*.030,),
                                                    PopUpDateFormField(

                                                        format:DateFormat('yyyy-MM-dd'),
                                                        controller: promisedRecieptDate,
                                                        // initialValue:
                                                        //     DateTime.parse(fromDate!),
                                                        label: "Promised Reciept Date",
                                                        onSaved: (newValue) {
                                                          promisedRecieptDate.text = newValue
                                                              ?.toIso8601String()
                                                              .split("T")[0] ??
                                                              "";
                                                          print("promised_receipt_date.text"+promisedRecieptDate.text.toString());
                                                        },
                                                        enable: true),
                                                    SizedBox(height: height*.030,),
                                                  PopUpDateFormField(

                                                      format:DateFormat('yyyy-MM-dd'),
                                                      controller: promisedRecieptDate,
                                                      // initialValue:
                                                      //     DateTime.parse(fromDate!),
                                                      label: "Planned Reciept Date",
                                                      onSaved: (newValue) {
                                                        plannedRecieptDate.text = newValue
                                                            ?.toIso8601String()
                                                            .split("T")[0] ??
                                                            "";
                                                        print("planned.text"+plannedRecieptDate.text.toString());
                                                      },
                                                      enable: true),
                                                    SizedBox(height: height*.030,),
                                                    SizedBox(height: height*.030,),
                                                    SizedBox(height: height*.030,),
                                                    SizedBox(height: height*.030,),
                                                    SizedBox(height: height*.030,),
                                                    SizedBox(height: height*.030,),


                                                  ],
                                                ),),
                                                Expanded(child: Column(
                                                  children: [
                                                    SizedBox(height: height*.030,),
                                                    SizedBox(height: height*.030,),
                                                    SizedBox(height: 10,),

                                                    NewInputCard(
                                                      readOnly: true,
                                                        controller: controller, title: "Payment code"),
                                                    SizedBox(height: height*.030,),
                                                    NewInputCard(
                                                        readOnly: true,
                                                        controller: controller, title: "Payment status"),
                                                    SizedBox(height: height*.030,),
                                                    NewInputCard(
                                                        readOnly: true,
                                                        controller: controller, title: "Order status"),
                                                    SizedBox(height: height*.030,),
                                                    NewInputCard(
                                                        readOnly: true,
                                                        controller: controller, title: "Receiving status"),
                                                    SizedBox(height: height*.030,),
                                                    NewInputCard(
                                                        readOnly: true,
                                                        controller: controller, title: "Invoice status"),
                                                    SizedBox(height: height*.030,),
                                                    NewInputCard(
                                                        controller: controller, title: "Note",height: 90,maxLines: 3,),
                                                    SizedBox(height: height*.030,),
                                                    NewInputCard(
                                                        controller: controller, title: "Remarks",height: 90,maxLines: 3,),
                                                    SizedBox(height: height*.030,),
                                                    SizedBox(height: height*.030,),
                                                    SizedBox(height: height*.030,),
                                                  ],
                                                ),),
                                                Expanded(child: Column(
                                                  children: [
                                                    SizedBox(height: height*.030,),
                                                    SizedBox(height: height*.030,),
                                                    NewInputCard(
                                                      readOnly: true,
                                                        controller: controller, title: "Discount"),
                                                    SizedBox(height: height*.030,),
                                                    NewInputCard(
                                                      readOnly: true,
                                                        controller: controller, title: "foc"),
                                                    SizedBox(height: height*.030,),
                                                    NewInputCard(
                                                      readOnly: true,
                                                        controller: controller, title: "Unit cost"),
                                                    SizedBox(height: height*.030,),
                                                    NewInputCard(
                                                      readOnly: true,
                                                        controller: controller, title: "Variable amount"),
                                                    SizedBox(height: height*.030,),
                                                    NewInputCard(
                                                      readOnly: true,
                                                        controller: controller, title: "excess tax"),
                                                    SizedBox(height: height*.030,),
                                                    NewInputCard(
                                                      readOnly: true,
                                                        controller: controller, title: "vat"),
                                                    SizedBox(height: height*.030,),
                                                    NewInputCard(
                                                      readOnly: true,
                                                        controller: controller, title: "actual cost"),
                                                    SizedBox(height: height*.030,),
                                                    NewInputCard(
                                                      readOnly: true,
                                                        controller: controller, title: "grand total"),
                                                    SizedBox(height: height*.030,),
                                                    SizedBox(height: height*.030,),
                                                    SizedBox(height: height*.030,),
                                                  ],
                                                                ),),


                                  ],
                                ),
                              ) )
                            ],
                          ),
                          Scrollbar(
                            controller: scontroller,
                            isAlwaysShown: true,
                            child: Container(
                              color: Colors.white,
                              alignment: Alignment.topRight,
                              height: 300,
                              // height: MediaQuery.of(context).size.height,
                              child: ListView(
                                controller: scontroller,
                                physics: ScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(left: width*.02,top: height*0.02),
                                        child: TextButton(
                                            style: TextButton.styleFrom(
                                                primary: Colors.blue,
                                                elevation: 2,
                                                backgroundColor: Colors.white24),
                                            onPressed: () {




                                            },
                                            child:Text("Add New ")

                                        ),
                                      ),
                                      SingleChildScrollView(
                                        child: Container(
                                          // height: 500,
                                          width: MediaQuery.of(context)
                                              .size
                                              .width,
                                          padding: EdgeInsets.all(10),
                                          child: customTable(
                                            border: const TableBorder(
                                              verticalInside: BorderSide(
                                                  width:.5,
                                                  color: Colors.black45,
                                                  // color: Colors.blue,
                                                  style:
                                                  BorderStyle.solid),

                                              horizontalInside:
                                              BorderSide(
                                                  width:.3,
                                                  color: Colors.black45,
                                                  // color: Colors.blue,
                                                  style:
                                                  BorderStyle.solid),),
                                            tableWidth: .5,
                                            childrens: [
                                              TableRow(
                                                // decoration: BoxDecoration(
                                                //     color: Colors.green.shade200,
                                                //     shape: BoxShape.rectangle,
                                                //     border: const Border(      top: BorderSide(
                                                //         width: .5,
                                                //         color: Colors.black45,
                                                //         // color: Colors.blue,
                                                //         style: BorderStyle.solid
                                                //     ),)),
                                                  children: [
                                                    tableHeadtext(
                                                      'Sno',
                                                      padding:
                                                      EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white,
                                                    ),
                                                    tableHeadtext(
                                                      'Variant id',
                                                      padding:
                                                      EdgeInsets.all(7),
                                                      height: 50,
                                                      size: 12,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),
                                                    tableHeadtext(
                                                      'Variant Name',
                                                      padding:
                                                      EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),

                                                    // tableHeadtext('description', size: 10, color: null),
                                                    tableHeadtext(
                                                      'Barcode',
                                                      padding:
                                                      EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),

                                                    tableHeadtext(
                                                      'Current qty',
                                                      padding:
                                                      EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),
                                                    tableHeadtext(
                                                      'Purchase UOM',
                                                      padding:
                                                      EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),
                                                    tableHeadtext(
                                                      'Requested qty',
                                                      padding:
                                                      EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),
                                                    tableHeadtext(
                                                      'Min Order Qty',
                                                      padding:
                                                      EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),
                                                    tableHeadtext(
                                                      'Max Order Qty',
                                                      padding:
                                                      EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),
                                                    tableHeadtext(
                                                      'Is Recieved',
                                                      padding:
                                                      EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),
                                                    tableHeadtext(
                                                      'Unit Cost',
                                                      padding:
                                                      EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),
                                                    tableHeadtext(
                                                      'Excise Tax',
                                                      padding:
                                                      EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),
                                                    tableHeadtext(
                                                      'Discount',
                                                      padding:
                                                      EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),
                                                    tableHeadtext(
                                                      'FOC',
                                                      padding:
                                                      EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),
                                                    tableHeadtext(
                                                      'Vatable Amount',
                                                      padding:
                                                      EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),

                                                    tableHeadtext(
                                                      'Vat',
                                                      padding:
                                                      EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),
                                                    tableHeadtext(
                                                      'Actual Cost',
                                                      padding:
                                                      EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),
                                                    tableHeadtext(
                                                      'Grand Total',
                                                      padding:
                                                      EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),
                                                    tableHeadtext(
                                                      'Is Invoiced',
                                                      padding:
                                                      EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),
                                                    tableHeadtext(
                                                      'Is Free',
                                                      padding:
                                                      EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),
                                                    tableHeadtext(
                                                      'Is Active',
                                                      padding:
                                                      EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),
                                                    // if (widget.onAddNew) textPadding(''),
                                                  ]),
                                              // if (!widget.onAddNew &&
                                              //     widget.order?.orderLines != null &&
                                              //     widget.order!.orderLines!.isNotEmpty) ...[
                                              //   for (var i = 0; i < widget.order!.orderLines!.length; i++)



//********************************************************************************************************************

                                            ],
                                            widths: {
                                              0: FractionColumnWidth(.035),
                                              //  1: FractionColumnWidth(.05),
                                              //  2: FractionColumnWidth(.05),
                                              //  3: FractionColumnWidth(.06),
                                              //  4: FractionColumnWidth(.05),
                                              //  5: FractionColumnWidth(.05),
                                              //  6: FractionColumnWidth(.05),
                                              //  7: FractionColumnWidth(.05),
                                              //  8: FractionColumnWidth(.05,),
                                              //  9: FractionColumnWidth(.05),
                                              //  10: FractionColumnWidth(.05),
                                              //  11: FractionColumnWidth(.05),
                                              //  12: FractionColumnWidth(.05),
                                              13: FractionColumnWidth(.035),
                                              14: FractionColumnWidth(.035),
                                              //  15: FractionColumnWidth(.05),
                                              //  16: FractionColumnWidth(.03),
                                              // 17: FractionColumnWidth(.05),
                                              //  18: FractionColumnWidth(.05),
                                              //  19: FractionColumnWidth(.05),
                                              //  20: FractionColumnWidth(.05),
                                            },
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ))
                  ],
                ),
              ))

            ],

          )
    //       Column(
    //         children: [
    //           Row(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             mainAxisAlignment: MainAxisAlignment.start,
    //
    //             children: [
    //               VerticalList(),
    //               Expanded(child: Column(
    //                 children: [
    //                   SizedBox(height: height*.030,),
    //                   SizedBox(height: height*.030,),
    //                   NewInputCard(
    //                       controller: controller, title: "Order type"),
    //                   SizedBox(height: height*.030,),
    //                   NewInputCard(
    //                     readOnly: true,
    //                       controller: controller, title: "Order code"),
    //                   SizedBox(height: height*.030,),
    //                   NewInputCard(
    //                       controller: controller, title: "Order date"),
    //                   SizedBox(height: height*.030,),
    //                   NewInputCard(
    //                       controller: controller, title: "Inventory  id"),
    //                   SizedBox(height: height*.030,),
    //                   NewInputCard(
    //                       controller: controller, title: "Ordered person"),
    //                   SizedBox(height: height*.030,),
    //                   PopUpDateFormField(
    //
    //                       format:DateFormat('yyyy-MM-dd'),
    //                       controller: promisedRecieptDate,
    //                       // initialValue:
    //                       //     DateTime.parse(fromDate!),
    //                       label: "Promised Reciept Date",
    //                       onSaved: (newValue) {
    //                         promisedRecieptDate.text = newValue
    //                             ?.toIso8601String()
    //                             .split("T")[0] ??
    //                             "";
    //                         print("promised_receipt_date.text"+promisedRecieptDate.text.toString());
    //                       },
    //                       enable: true),
    //                   SizedBox(height: height*.030,),
    //                 PopUpDateFormField(
    //
    //                     format:DateFormat('yyyy-MM-dd'),
    //                     controller: promisedRecieptDate,
    //                     // initialValue:
    //                     //     DateTime.parse(fromDate!),
    //                     label: "Planned Reciept Date",
    //                     onSaved: (newValue) {
    //                       plannedRecieptDate.text = newValue
    //                           ?.toIso8601String()
    //                           .split("T")[0] ??
    //                           "";
    //                       print("planned.text"+plannedRecieptDate.text.toString());
    //                     },
    //                     enable: true),
    //                   SizedBox(height: height*.030,),
    //                   SizedBox(height: height*.030,),
    //                   SizedBox(height: height*.030,),
    //                   SizedBox(height: height*.030,),
    //                   SizedBox(height: height*.030,),
    //                   SizedBox(height: height*.030,),
    //
    //
    //                 ],
    //               ),),
    //               Expanded(child: Column(
    //                 children: [
    //                   SizedBox(height: height*.030,),
    //                   SizedBox(height: height*.030,),
    //                   SizedBox(height: 10,),
    //
    //                   NewInputCard(
    //                     readOnly: true,
    //                       controller: controller, title: "Payment code"),
    //                   SizedBox(height: height*.030,),
    //                   NewInputCard(
    //                       readOnly: true,
    //                       controller: controller, title: "Payment status"),
    //                   SizedBox(height: height*.030,),
    //                   NewInputCard(
    //                       readOnly: true,
    //                       controller: controller, title: "Order status"),
    //                   SizedBox(height: height*.030,),
    //                   NewInputCard(
    //                       readOnly: true,
    //                       controller: controller, title: "Receiving status"),
    //                   SizedBox(height: height*.030,),
    //                   NewInputCard(
    //                       readOnly: true,
    //                       controller: controller, title: "Invoice status"),
    //                   SizedBox(height: height*.030,),
    //                   NewInputCard(
    //                       controller: controller, title: "Note",height: 90,maxLines: 3,),
    //                   SizedBox(height: height*.030,),
    //                   NewInputCard(
    //                       controller: controller, title: "Remarks",height: 90,maxLines: 3,),
    //                   SizedBox(height: height*.030,),
    //                   SizedBox(height: height*.030,),
    //                   SizedBox(height: height*.030,),
    //                 ],
    //               ),),
    //               Expanded(child: Column(
    //                 children: [
    //                   SizedBox(height: height*.030,),
    //                   SizedBox(height: height*.030,),
    //                   NewInputCard(
    //                     readOnly: true,
    //                       controller: controller, title: "Discount"),
    //                   SizedBox(height: height*.030,),
    //                   NewInputCard(
    //                     readOnly: true,
    //                       controller: controller, title: "foc"),
    //                   SizedBox(height: height*.030,),
    //                   NewInputCard(
    //                     readOnly: true,
    //                       controller: controller, title: "Unit cost"),
    //                   SizedBox(height: height*.030,),
    //                   NewInputCard(
    //                     readOnly: true,
    //                       controller: controller, title: "Variable amount"),
    //                   SizedBox(height: height*.030,),
    //                   NewInputCard(
    //                     readOnly: true,
    //                       controller: controller, title: "excess tax"),
    //                   SizedBox(height: height*.030,),
    //                   NewInputCard(
    //                     readOnly: true,
    //                       controller: controller, title: "vat"),
    //                   SizedBox(height: height*.030,),
    //                   NewInputCard(
    //                     readOnly: true,
    //                       controller: controller, title: "actual cost"),
    //                   SizedBox(height: height*.030,),
    //                   NewInputCard(
    //                     readOnly: true,
    //                       controller: controller, title: "grand total"),
    //                   SizedBox(height: height*.030,),
    //                   SizedBox(height: height*.030,),
    //                   SizedBox(height: height*.030,),
    //
    //
    //
    //                 ],
    //               ),),
    //
    //             ],
    //           ),

    // SizedBox(height: 78,),
    //
    // Row(
    // children: [
    // Spacer(),
    // // Button(Icons.delete, Colors.red,ctx: context,
    // //     onApply: (){print("Akkk");},
    // // text: "Discard",height: 29,
    // // width: 90,labelcolor: Colors.red,iconColor: Colors.red),
    // // SizedBox(width: width*.008,),
    // //
    // // Button(Icons.check, Colors.grey,ctx: context,
    // //     onApply: (){print("Akkk");},
    // // text: "Discard",height: 29,
    // // width: 90,labelcolor: Colors.white,iconColor: Colors.white,Color:Color(0xff3E4F5B)),
    // SizedBox(width: width*.008,),
    // ],
    // )
    //
    //
    // ],
    //       ),
        ),
      ),
    );
  }
}
