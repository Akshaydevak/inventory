import 'package:flutter/material.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../widgets/customtable.dart';

class SalesInvoiceScreen extends StatefulWidget {
  @override
  _SalesInvoiceScreenState createState() => _SalesInvoiceScreenState();
}

class _SalesInvoiceScreenState extends State<SalesInvoiceScreen> {
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 200,
                height: double.infinity,
                color:Color(0xffEDF1F2),
              ),
              Expanded(
                child: Column(
                  children: [
                    InvoiceSalesStableTable(),



                    Container(
                      color: Colors.white,
                      height: 50,
                    ),
                    Row(children: [
                      TextWidget(text: "invoice lines"),
                    ],),

                    Divider(color: Colors.grey,thickness: 1,),
                    SalesInvoiceGrowableTable(),
                    Container(
                      color: Colors.white,
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // Button(Icons.delete, Colors.red,ctx: context,
                        //     text: "Discard",
                        //     onApply: (){
                        //
                        //
                        //
                        //
                        //
                        //     },
                        //     height: 29,
                        //     width: 90,
                        //     labelcolor: Colors.red,
                        //     iconColor: Colors.red,
                        //     bdr: true),
                        SizedBox(
                          width: width * .008,
                        ),
                        // Button(Icons.check, Colors.grey,ctx: context,
                        //     text: "Save",
                        //     height: 29,
                        //     Color: Color(0xff3E4F5B),
                        //     width: 90,
                        //     labelcolor: Colors.white,
                        //     iconColor: Colors.white,
                        //     onApply: (){}
                        // ),
                        SizedBox(
                          width: width * .008,
                        ),

                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
class SalesInvoiceGrowableTable extends StatefulWidget {
  // final List<Liness>?lines;
  // final Function updation;
  // GrowableTable({ this.lines,required this.updation});

  @override
  _SalesInvoiceGrowableTableState createState() => _SalesInvoiceGrowableTableState();
}

class _SalesInvoiceGrowableTableState extends State<SalesInvoiceGrowableTable> {
  late AutoScrollController recieveController;
  void initState() {

    recieveController = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return
      Scrollbar(
        controller: recieveController,
        isAlwaysShown: true,
        child: Container(
          color: Colors.white,
          alignment: Alignment.topRight,
          child: SingleChildScrollView(
            controller:recieveController ,
            physics: ScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  child: Container(
                    width: 2200,
                    padding: EdgeInsets.all(10),
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

                                  'Variant Id',

                                  padding: EdgeInsets.all(7),

                                  height: 46,

                                  size: 13,

                                  // color: Palette.containerDarknew,

                                  // textColor: Palette.white,

                                ),






                                // tableHeadtext('description', size: 10, color: null),





                                tableHeadtext(
                                  'Barcode',
                                  padding: EdgeInsets.all(7),
                                  height: 46,
                                  size: 13,
                                ),
                                tableHeadtext(

                                  'Sales Order Line Code',

                                  padding: EdgeInsets.all(7),

                                  height: 46,

                                  size: 13,

                                  // color: Palette.containerDarknew,

                                  // textColor: Palette.white

                                ),

                                tableHeadtext(

                                  'Return Based On',

                                  padding: EdgeInsets.all(7),

                                  height: 46,

                                  size: 13,

                                  // color: Palette.containerDarknew,

                                  // textColor: Palette.white

                                ),

                                tableHeadtext(

                                  'Return time ',

                                  padding: EdgeInsets.all(7),

                                  height: 46,

                                  size: 13,

                                  // color: Palette.containerDarknew,

                                  // textColor: Palette.white

                                ),

                                tableHeadtext(

                                  ' Is Invoiced',

                                  padding: EdgeInsets.all(7),

                                  height: 46,

                                  size: 13,

                                  // color: Palette.containerDarknew,

                                  // textColor: Palette.white

                                ),

                                tableHeadtext(

                                  'Sales UOM',

                                  padding: EdgeInsets.all(7),

                                  height: 46,

                                  size: 13,

                                  // color: Palette.containerDarknew,

                                  // textColor: Palette.white

                                ),

                                tableHeadtext(

                                  'Quantity',

                                  padding: EdgeInsets.all(7),

                                  height: 46,

                                  size: 13,



                                ),


                                tableHeadtext(

                                  'Unit Cost',

                                  padding: EdgeInsets.all(7),

                                  height: 46,

                                  size: 13,
                                  // color: Palette.containerDarknew,
                                  // textColor: Palette.white
                                ),
                                tableHeadtext(
                                  'Discount Type',
                                  padding: EdgeInsets.all(7),
                                  height: 46,
                                  size: 13,
                                ),
                                tableHeadtext(

                                  'Discount',

                                  padding: EdgeInsets.all(7),

                                  height: 46,

                                  size: 13,

                                  // color: Palette.containerDarknew,

                                  // textColor: Palette.white

                                ),



                                tableHeadtext(

                                  'Excise Tax',

                                  padding: EdgeInsets.all(7),

                                  height: 46,

                                  size: 13,

                                  // color: Palette.containerDarknew,

                                  // textColor: Palette.white

                                ),

                                tableHeadtext(

                                  'VAT',

                                  padding: EdgeInsets.all(7),

                                  height: 46,

                                  size: 13,

                                  // color: Palette.containerDarknew,

                                  // textColor: Palette.white

                                ),



                                tableHeadtext(

                                  'Selling Price',

                                  padding: EdgeInsets.all(7),

                                  height: 46,

                                  size: 13,

                                  // color: Palette.containerDarknew,

                                  // textColor: Palette.white

                                ),
                                tableHeadtext(
                                  'Warrenty Price',
                                  padding: EdgeInsets.all(7),
                                  height: 46,
                                  size: 13,
                                  // color: Palette.containerDarknew,
                                  // textColor: Palette.white
                                ),



                                tableHeadtext(
                                  'Total Price',
                                  padding: EdgeInsets.all(7),
                                  height: 46,
                                  size: 13,
                                  // color: Palette.containerDarknew,
                                  // textColor: Palette.white
                                ),
                                tableHeadtext(
                                  'Is Active',
                                  padding: EdgeInsets.all(7),
                                  height: 46,
                                  size: 13,
                                  // color: Palette.containerDarknew,
                                  // textColor: Palette.white
                                ),



                                // if (widget.onAddNew) textPadding(''),

                              ]),
                          //         if (widget.lines != null)...[
                          //   for (var i = 0; i < widget.lines!.length; i++)
                          //     TableRow(
                          // decoration: BoxDecoration(color: Colors.grey.shade200, shape: BoxShape.rectangle,
                          //     border:const  Border(left: BorderSide(width: .5, color: Colors.grey, style: BorderStyle.solid),
                          //         bottom: BorderSide(width: .5, color: Colors.grey, style: BorderStyle.solid),
                          //         right: BorderSide(color: Colors.grey, width: .5, style: BorderStyle
                          //             .solid))),
                          //       children: [
                          //         TableCell(
                          //           verticalAlignment: TableCellVerticalAlignment.middle,
                          //           child: textPadding((i + 1).toString(), fontSize: 12,
                          //               padding: EdgeInsets.only(left: 11.5, top:
                          //               1.5), fontWeight: FontWeight.w500),
                          //         ),    TableCell(
                          //           verticalAlignment: TableCellVerticalAlignment.middle,
                          //           child: textPadding(widget.lines?[i].variantId??"", fontSize: 12,
                          //               padding: EdgeInsets.only(left: 11.5, top:
                          //               1.5), fontWeight: FontWeight.w500),
                          //         ),    TableCell(
                          //           verticalAlignment: TableCellVerticalAlignment.middle,
                          //           child: textPadding(widget.lines?[i].variantName??"", fontSize: 12,
                          //               padding: EdgeInsets.only(left: 11.5, top:
                          //               1.5), fontWeight: FontWeight.w500),
                          //         ),    TableCell(
                          //           verticalAlignment: TableCellVerticalAlignment.middle,
                          //           child: textPadding(widget.lines?[i].barcode??"", fontSize: 12,
                          //               padding: EdgeInsets.only(left: 11.5, top:
                          //               1.5), fontWeight: FontWeight.w500),
                          //         ),    TableCell(
                          //           verticalAlignment: TableCellVerticalAlignment.middle,
                          //           child: textPadding("", fontSize: 12,
                          //               padding: EdgeInsets.only(left: 11.5, top:
                          //               1.5), fontWeight: FontWeight.w500),
                          //         ),    TableCell(
                          //           verticalAlignment: TableCellVerticalAlignment.middle,
                          //           child: textPadding(widget.lines?[i].purchaseUom??"", fontSize: 12,
                          //               padding: EdgeInsets.only(left: 11.5, top:
                          //               1.5), fontWeight: FontWeight.w500),
                          //         ),
                          //         TableCell(
                          //           verticalAlignment: TableCellVerticalAlignment.middle,
                          //           child: textPadding(widget.lines?[i].totalQty.toString()??"", fontSize: 12,
                          //               padding: EdgeInsets.only(left: 11.5, top:
                          //               1.5), fontWeight: FontWeight.w500),
                          //         ),    TableCell(
                          //           verticalAlignment: TableCellVerticalAlignment.middle,
                          //           child: textPadding(widget.lines?[i].unitCost.toString()??"", fontSize: 12,
                          //               padding: EdgeInsets.only(left: 11.5, top:
                          //               1.5), fontWeight: FontWeight.w500),
                          //         ),    TableCell(
                          //           verticalAlignment: TableCellVerticalAlignment.middle,
                          //           child: textPadding(
                          //
                          //               widget.lines?[i].discount.toString()??"", fontSize: 12,
                          //               height:42,
                          //               padding: EdgeInsets.only(left: 11.5, top:
                          //               1.5), fontWeight: FontWeight.w500),
                          //         ),    TableCell(
                          //           verticalAlignment: TableCellVerticalAlignment.middle,
                          //           child: textPadding(widget.lines?[i].foc.toString()??"", fontSize: 12,
                          //               padding: EdgeInsets.only(left: 11.5, top:
                          //               1.5), fontWeight: FontWeight.w500),
                          //         ),    TableCell(
                          //           verticalAlignment: TableCellVerticalAlignment.middle,
                          //           child: textPadding(widget.lines?[i].vatableAmount.toString()??"", fontSize: 12,
                          //               padding: EdgeInsets.only(left: 11.5, top:
                          //               1.5), fontWeight: FontWeight.w500),
                          //         ),    TableCell(
                          //           verticalAlignment: TableCellVerticalAlignment.middle,
                          //           child: textPadding(widget.lines?[i].excessTax.toString()??"", fontSize: 12,
                          //               padding: EdgeInsets.only(left: 11.5, top:
                          //               1.5), fontWeight: FontWeight.w500),
                          //         ),    TableCell(
                          //           verticalAlignment: TableCellVerticalAlignment.middle,
                          //           child: textPadding(widget.lines?[i].vat.toString()??"", fontSize: 12,
                          //               padding: EdgeInsets.only(left: 11.5, top:
                          //               1.5), fontWeight: FontWeight.w500),
                          //         ),    TableCell(
                          //           verticalAlignment: TableCellVerticalAlignment.middle,
                          //           child: textPadding(widget.lines?[i].actualCost.toString()??"", fontSize: 12,
                          //               padding: EdgeInsets.only(left: 11.5, top:
                          //               1.5), fontWeight: FontWeight.w500),
                          //         ),    TableCell(
                          //           verticalAlignment: TableCellVerticalAlignment.middle,
                          //           child: textPadding(widget.lines?[i].grandTotal.toString()??"", fontSize: 12,
                          //               padding: EdgeInsets.only(left: 11.5, top:
                          //               1.5), fontWeight: FontWeight.w500),
                          //         ),
                          //         TableCell(
                          //           verticalAlignment: TableCellVerticalAlignment.middle,
                          //           child: CheckedBoxs(
                          //               valueChanger:widget?.lines![i]
                          //                   .isFree==null?false:widget?.lines![i]
                          //                   .isFree,
                          //
                          //               onSelection:(bool ? value){
                          //
                          //               }),
                          //         ),                TableCell(
                          //           verticalAlignment: TableCellVerticalAlignment.middle,
                          //           child: CheckedBoxs(
                          //               valueChanger:widget?.lines![i]
                          //                   .isFree==null?false:widget?.lines![i]
                          //                   .isFree,
                          //
                          //               onSelection:(bool ? value){
                          //
                          //               }),
                          //         ),
                          //         // TableCell(
                          //         //   verticalAlignment: TableCellVerticalAlignment.middle,
                          //         //   child: textPadding("", fontSize: 12,
                          //         //       padding: EdgeInsets.only(left: 11.5, top:
                          //         //       1.5), fontWeight: FontWeight.w500),
                          //         // ),
                          //         // TableCell(
                          //         //   verticalAlignment: TableCellVerticalAlignment.middle,
                          //         //   child: textPadding("", fontSize: 12,
                          //         //       padding: EdgeInsets.only(left: 11.5, top:
                          //         //       1.5), fontWeight: FontWeight.w500),
                          //         // ),
                          //
                          //         TableCell(
                          //           verticalAlignment: TableCellVerticalAlignment.middle,
                          //           child: CheckedBoxs(
                          //               valueChanger:widget?.lines?[i].isActive,
                          //
                          //               onSelection:(bool ? value){
                          //                 bool? isActive = widget?.lines?[i].isActive??false;
                          //                 setState(() {
                          //
                          //                   isActive = !isActive!;
                          //                   print(isActive);
                          //                   widget.updation(i,isActive);
                          //                   //  widget?.lines?[i] = widget?.lines![i].copyWith(isActive: isActive);
                          //
                          //                   setState(() {});
                          //                 });
                          //               }),
                          //         ),
                          // TableCell(
                          //           verticalAlignment: TableCellVerticalAlignment.middle,
                          //           child: textPadding("", fontSize: 12,
                          //               padding: EdgeInsets.only(left: 11.5, top:
                          //               1.5), fontWeight: FontWeight.w500),
                          //         ),    TableCell(
                          //           verticalAlignment: TableCellVerticalAlignment.middle,
                          //           child: textPadding("", fontSize: 12,
                          //               padding: EdgeInsets.only(left: 11.5, top:
                          //               1.5), fontWeight: FontWeight.w500),
                          //         ),
                          //       ]
                          //     )
                          //     ]
                        ]
                    ),
                  ),

                )

              ],
            ),

          ),
        ),
      );
  }
}
class InvoiceSalesStableTable extends StatefulWidget {
  @override
  _InvoiceSalesStableTableState createState() => _InvoiceSalesStableTableState();
}

class _InvoiceSalesStableTableState extends State<InvoiceSalesStableTable> {
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return
      Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(child: Column(
              children: [

                NewInputCard(
                    controller: controller
                    , title: "Invoice code"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                    controller: controller, title: "Invoice date"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                    controller: controller, title: "Payment Id"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                    controller: controller, title: "payment status"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                    controller: controller, title: "payment method"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                    controller: controller, title: "customer id"),
                SizedBox(
                  height: height * .080,
                ),



              ],
            )),
            Expanded(child: Column(children: [
              SizedBox(
                height: height * .045,
              ),

              NewInputCard(
                  controller: controller, title: "TRN number"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: controller, title: "order status"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: controller, title: "invoice status"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: controller, title: "assigned to"),
              SizedBox(
                height: height * .030,
              ),

              NewInputCard(
                controller: controller, title: "note",
                height: 90,
                maxLines: 3,),
              SizedBox(
                height: height * .002,
              ),
              NewInputCard(
                controller: controller, title: "remarks",
                height: 90,
                maxLines: 3,),




            ],)),
            Expanded(child: Column(children: [
              SizedBox(
                height: height * .045,
              ),

              NewInputCard(
                  controller: controller, title: "unit status"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: controller, title: "discount"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: controller, title: "excise tax"),
              SizedBox(
                height: height * .030,
              ),

              NewInputCard(
                  controller: controller, title: "taxable  amount"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: controller, title: "vat"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: controller, title: "selling price total"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: controller, title: "total price"),
              SizedBox(
                height: height * .030,
              ),
            ],))

          ],
        ),
      );
  }
}