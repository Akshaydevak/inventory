import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/inventory_creation_tab/cubits/cubit/inventory_read_cubit.dart';
import 'package:inventory/Screens/inventory_creation_tab/inventory_read_model.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class PurchaseOrderInvoiceGrowableTable extends StatefulWidget {
  List<Lines> table;
  final Function updation;
  final Function updateCheck;
  // final Function updation;
  PurchaseOrderInvoiceGrowableTable({
    Key? key,
    required this.table,
    required this.updation,
    required this.updateCheck,
  }) : super(key: key);

  @override
  PurchaseOrderInvoiceGrowableTableState createState() => PurchaseOrderInvoiceGrowableTableState();
}

class PurchaseOrderInvoiceGrowableTableState extends State<PurchaseOrderInvoiceGrowableTable> {
  late AutoScrollController recieveController;
  bool editionchek=false;
  var unitcostListControllers = <TextEditingController>[];
  List<Lines> additionalVariants = List.from([]);
  tableClear(){
print("table clear");
    setState(() {
      additionalVariants.clear();
    });
  }



  void initState() {

    recieveController = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;


    return
      BlocListener<InventoryReadCubit, InventoryReadState>(
        listener: (context, state) {

          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error");
              },
              success: (data) {
                setState(() {
                  if(data.invoicedata!=null){
                    setState(() {
                      data.invoicedata?.invoiceLines != null
                          ? additionalVariants = List.from(data.invoicedata?.invoiceLines ?? [])
                          : additionalVariants = [];

                    });

                  }
                  else{

                    data.lines != null
                        ? additionalVariants = List.from(data.lines ?? [])
                        : additionalVariants =List.from( []);
                    setState(() {

                    });






                  }



                });
              });
        },
        child: Builder(
            builder: (context) {
              return
                CustomScrollBar(
                    controller: recieveController,

                    childs:Container(
                        color: Colors.white,
                        alignment: Alignment.topRight,

                        child:SingleChildScrollView(
                          controller: recieveController,
                          physics: ScrollPhysics(),
                          scrollDirection: Axis.horizontal,

                          child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SingleChildScrollView(
                                child: Container(
                                  width: 2200,
                                  // padding: EdgeInsets.all(10),
                                  child:customTable(

                                    tableWidth: .5,
                                    childrens: [
                                      TableRow(

                                          children: [
                                            tableHeadtext(
                                              'Sl.No',
                                              size: 13,
                                              center: true,
                                              padding: EdgeInsets.only(bottom:height*.0198),
                                            ),
                                            tableHeadtext(
                                              'Receiving Line Id',
                                              size: 13,
                                            ),
                                            tableHeadtext(
                                              'Variant Id',
                                              size: 13,
                                            ),
                                            tableHeadtext(
                                              'Variant Name',

                                              size: 13,
                                              // color: Palette.containerDarknew,
                                              // textColor: Palette.white
                                            ),

                                            // tableHeadtext('description', size: 10, color: null),
                                            tableHeadtext(
                                              'Barcode',

                                              size: 13,
                                              // color: Palette.containerDarknew,
                                              // textColor: Palette.white
                                            ),


                                            tableHeadtext(
                                              'Purchase UOM',

                                              size: 13,
                                              // color: Palette.containerDarknew,
                                              // textColor: Palette.white
                                            ),
                                            tableHeadtext(
                                              'Requested Qty',
                                              center: true,
                                              padding: EdgeInsets.only(bottom:height*.0198),

                                              size: 13,
                                              // color: Palette.containerDarknew,
                                              // textColor: Palette.white
                                            ),


                                            tableHeadtext(
                                              'Is Received',

                                              size: 13,
                                              // color: Palette.containerDarknew,
                                              // textColor: Palette.white
                                            ),
                                            tableHeadtext(
                                              'Unit Cost',
                                              center: true,
                                              padding: EdgeInsets.only(bottom:height*.0198),

                                              size: 13,
                                              // color: Palette.containerDarknew,
                                              // textColor: Palette.white
                                            ),
                                            tableHeadtext(
                                              'Exccess Tax',
                                              size: 13,
                                              center: true,
                                              padding: EdgeInsets.only(bottom:height*.0198),
                                              // color: Palette.containerDarknew,
                                              // textColor: Palette.white
                                            ),
                                            tableHeadtext(
                                              'Discount',
                                              size: 13,
                                              center: true,
                                              padding: EdgeInsets.only(bottom:height*.0198),
                                              // color: Palette.containerDarknew,
                                              // textColor: Palette.white
                                            ),
                                            tableHeadtext(
                                              'FOC',
                                              size: 13,
                                              center: true,
                                              padding: EdgeInsets.only(bottom:height*.0198),
                                              // color: Palette.containerDarknew,
                                              // textColor: Palette.white
                                            ),
                                            tableHeadtext(
                                              'Vatable Amount',
                                              size: 13,
                                              center: true,
                                              padding: EdgeInsets.only(bottom:height*.0198),
                                              // color: Palette.containerDarknew,
                                              // textColor: Palette.white
                                            ),

                                            tableHeadtext(
                                              'VAT',
                                              size: 13,
                                              center: true,
                                              padding: EdgeInsets.only(bottom:height*.0198),
                                              // color: Palette.containerDarknew,
                                              // textColor: Palette.white
                                            ),
                                            tableHeadtext(
                                              'Actual Cost',
                                              size: 13,
                                              center: true,
                                              padding: EdgeInsets.only(bottom:height*.0198),
                                              // color: Palette.containerDarknew,
                                              // textColor: Palette.white
                                            ),
                                            tableHeadtext(
                                              'Grand Total',
                                              size: 13,
                                              center: true,
                                              padding: EdgeInsets.only(bottom:height*.0198),
                                              // color: Palette.containerDarknew,
                                              // textColor: Palette.white
                                            ),
                                            tableHeadtext(
                                              'Is Invoiced',
                                              size: 13,
                                              // color: Palette.containerDarknew,
                                              // textColor: Palette.white
                                            ),
                                            tableHeadtext(
                                              'Is Free',
                                              size: 13,
                                              // color: Palette.containerDarknew,
                                              // textColor: Palette.white
                                            ),

                                            // if (widget.onAddNew) textPadding(''),
                                          ]),

                                      if(additionalVariants.isEmpty)...[
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

                                            textPadding(""),
                                            textPadding(""),
                                            textPadding(""),
                                            textPadding(""),
                                            textPadding(""),
                                            Container(height: 48,),
                                            textPadding(""),
                                            textPadding(""),
                                            textPadding(""),
                                            textPadding(""),
                                            textPadding(""),
                                            textPadding(""),
                                            textPadding(""),
                                            textPadding(""),
                                            textPadding(""),
                                            textPadding(""),
                                            textPadding(""),
                                            textPadding(""),
                                          ],
                                        )


                                      ],
                                      if (additionalVariants != null)...[
                                        for(var i=0;i<additionalVariants.length;i++)
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
                                                  child: textPadding((i + 1).toString(),
                                                      fontSize: 12,
                                                      padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                      fontWeight: FontWeight.w500),

                                                ),

                                                TableCell(
                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                  child: textPadding(additionalVariants[i].receiveLineCode .toString()?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                ),
                                                TableCell(
                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                  child: textPadding(additionalVariants[i].variantId ?? "", fontSize: 12,
                                                      // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                      fontWeight: FontWeight.w500),
                                                ),
                                                TableCell(
                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                  child: textPadding(additionalVariants[i].variantName ?? "", fontSize: 12,
                                                      // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                      fontWeight: FontWeight.w500),
                                                ),

                                                TableCell(
                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                  child: textPadding(additionalVariants[i].barcode ?? "", fontSize: 12,
                                                      // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                      fontWeight: FontWeight.w500),
                                                ),

                                                TableCell(
                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                  child: textPadding(additionalVariants[i].purchaseUom.toString() ?? "", fontSize: 12,
                                                      // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                      fontWeight: FontWeight.w500),
                                                ),
                                                TableCell(
                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                  child: textPadding(additionalVariants[i].requestedQty.toString() ?? "", fontSize: 12,
                                                      // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                      fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                                ),
                                                TableCell(
                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                  child: CheckedBoxs(
                                                    valueChanger: additionalVariants[i].isReceived == null ? false : additionalVariants[i].isReceived,
                                                    onSelection: (bool? value) {
                                                      // bool? isRecieved = additionalVariants[i].isReceived;
                                                      // setState(() {
                                                      //   isRecieved = !isRecieved!;
                                                      //   additionalVariants[i] = additionalVariants[i].copyWith(isReceived: isRecieved);
                                                      //   print(additionalVariants);
                                                      // });
                                                    },
                                                  ),
                                                ),
                                                TableCell(
                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                  child: textPadding(additionalVariants[i].unitCost .toString()?? "", fontSize: 12,

                                                      // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                      fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                                ),
                                                TableCell(
                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                  child: textPadding(additionalVariants[i].excessTax .toString()?? "", fontSize: 12,
                                                      // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                      fontWeight: FontWeight.w500,
                                                      alighnment: Alignment.topRight),
                                                ),
                                                TableCell(
                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                  child: textPadding(additionalVariants[i].discount .toString()?? "", fontSize: 12,
                                                      // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                      fontWeight: FontWeight.w500,
                                                      alighnment: Alignment.topRight),
                                                ),
                                                TableCell(
                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                  child: textPadding(additionalVariants[i].foc .toString()?? "", fontSize: 12,
                                                      // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                      fontWeight: FontWeight.w500,
                                                      alighnment: Alignment.topRight),
                                                ),
                                                TableCell(
                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                  child: textPadding(additionalVariants[i].vatableAmount .toString()?? "", fontSize: 12,
                                                      // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                      fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                                ),


                                                TableCell(
                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                  child: textPadding(additionalVariants[i].vat.toString() ?? "",
                                                      fontSize: 12,
                                                      // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                      fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                                ),



                                                TableCell(
                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                  child: textPadding(
                                                      additionalVariants[i].actualCost.toString() ?? "",fontSize: 12,
                                                      // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                      fontWeight: FontWeight.w500,
                                                      alighnment: Alignment.topRight),
                                                ),
                                                TableCell(
                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                  child: textPadding(additionalVariants[i].grandTotal.toString() ?? "", fontSize: 12,
                                                      // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                      fontWeight: FontWeight.w500,
                                                      alighnment: Alignment.topRight),
                                                ),
                                                TableCell(
                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                  child: CheckedBoxs(
                                                    valueChanger: additionalVariants[i].isInvoiced == null ? false : additionalVariants[i].isInvoiced,
                                                    onSelection: (bool? value) {
                                                      bool? isInvoiced = additionalVariants[i].isInvoiced??false;
                                                      setState(() {
                                                        isInvoiced = !isInvoiced!;
                                                        additionalVariants[i] = additionalVariants[i].copyWith(isInvoiced: isInvoiced);
                                                        widget.updation(additionalVariants);

                                                      });
                                                    },
                                                  ),
                                                ),


                                                TableCell(
                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                  child: CheckedBoxs(
                                                    valueChanger: additionalVariants[i].isFree == null ? false : additionalVariants[i].isFree,
                                                    onSelection: (bool? value) {
                                                      setState(() {});
                                                    },
                                                  ),
                                                ),

















                                              ]
                                          ),
                                      ]


                                    ],
                                    widths: {
                                      0: FlexColumnWidth(2),
                                      1: FlexColumnWidth(4),
                                      2: FlexColumnWidth(4),
                                      3: FlexColumnWidth(5),
                                      4: FlexColumnWidth(3),
                                      5: FlexColumnWidth(3),
                                      6: FlexColumnWidth(3),
                                      7: FlexColumnWidth(3),
                                      8: FlexColumnWidth(3),
                                      9: FlexColumnWidth(3),
                                      10: FlexColumnWidth(3),
                                      11: FlexColumnWidth(3),
                                      12: FlexColumnWidth(3),
                                      13: FlexColumnWidth(3),
                                      14: FlexColumnWidth(3),
                                      15: FlexColumnWidth(3),
                                      16: FlexColumnWidth(3),
                                      17: FlexColumnWidth(3),
                                      18: FlexColumnWidth(2),
                                      19: FlexColumnWidth(2),
                                      20: FlexColumnWidth(2),
                                      21: FlexColumnWidth(2.4),

                                    },

                                  ) ,
                                ),
                              ),
                              SizedBox(height: 20,)
                              ,

                            ],
                          )
                          ,

                        )
                    )
                );
            }
        ),
      );
  }
}