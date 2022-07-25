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
  TextEditingController invoiceCodeController=TextEditingController();
  TextEditingController invoiceDateController=TextEditingController();
  TextEditingController paymentIdController=TextEditingController();
  TextEditingController paymentStatusController=TextEditingController();
  TextEditingController paymentMethodController=TextEditingController();
  TextEditingController customerIdController=TextEditingController();
  TextEditingController trnController=TextEditingController();
  TextEditingController orderStatusController=TextEditingController();
  TextEditingController invoiceStatusController=TextEditingController();
  TextEditingController assignedToController=TextEditingController();
  TextEditingController remarksController=TextEditingController();
  TextEditingController noteController=TextEditingController();
  TextEditingController unitCostController=TextEditingController();
  TextEditingController discountController=TextEditingController();
  TextEditingController exciseTaxController=TextEditingController();
  TextEditingController taxableAmountController=TextEditingController();
  TextEditingController vatController=TextEditingController();
  TextEditingController sellingPriceController=TextEditingController();
  TextEditingController totalPriceController=TextEditingController();
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
                color: Color(0xffEDF1F2),
              ),
              Expanded(
                child: Column(
                  children: [


                    InvoiceStableTable(invoiceCode: invoiceCodeController,invoiceDate: invoiceDateController,paymentId: paymentIdController,
                        paymentStatus: paymentStatusController,paymentMethod: paymentMethodController,customerId: customerIdController,trnNumber: trnController,
                    orderStatus: orderStatusController,invoiceStatus: invoiceStatusController,assignedTo: assignedToController,remarks: remarksController,note: noteController
                      ,unitcost: unitCostController,discount: discountController,excisetax: exciseTaxController,taxableAmount: taxableAmountController,vat: vatController,sellingPricetotal: sellingPriceController,totalprice: totalPriceController,),
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
class InvoiceStableTable extends StatefulWidget {
  final TextEditingController invoiceCode;
  final TextEditingController invoiceDate;
  final TextEditingController paymentId;
  final TextEditingController paymentStatus;
  final TextEditingController paymentMethod;
  final TextEditingController customerId;
  final TextEditingController trnNumber;
  final TextEditingController orderStatus;
  final TextEditingController invoiceStatus;
  final TextEditingController assignedTo;
  final TextEditingController remarks;
  final TextEditingController note;
  final TextEditingController unitcost;
  final TextEditingController discount;
  final TextEditingController excisetax;
  final TextEditingController taxableAmount;
  final TextEditingController vat;
  final TextEditingController sellingPricetotal;
  final TextEditingController totalprice;
  InvoiceStableTable({required this.invoiceCode,required this.invoiceDate,required this.paymentId,required this.paymentStatus,required this.paymentMethod
  ,required this.customerId,required this.trnNumber,required this.orderStatus,required this.invoiceStatus,required this.assignedTo,required this.remarks,required this.note,
  required this.unitcost,required this.discount,required this.excisetax,required this.taxableAmount,required this.vat,required this.sellingPricetotal,required this.totalprice});

  @override
  _InvoiceStableTableState createState() => _InvoiceStableTableState();
}

class _InvoiceStableTableState extends State<InvoiceStableTable> {
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(child: Column(
            children: [

              NewInputCard(
                readOnly: true,
                  controller: widget.invoiceCode
                  , title: "Invoice code"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                readOnly: true,
                  controller: widget.invoiceDate, title: "Invoice date"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                readOnly: true,
                  controller: widget.paymentId, title: "Payment Id"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                readOnly: true,
                  controller: widget.paymentStatus, title: "payment status"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  readOnly: true,
                  controller: widget.paymentMethod, title: "payment method"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                readOnly: true,
                  controller: widget.customerId, title: "customer id"),
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
              readOnly: true,
                controller: widget.trnNumber, title: "TRN number"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                readOnly: true,
                controller: widget.orderStatus, title: "order status"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                readOnly: true,
                controller: widget.invoiceStatus, title: "invoice status"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                controller: widget.assignedTo, title: "assigned to"),
            SizedBox(
              height: height * .030,
            ),

            NewInputCard(
              controller: widget.note, title: "note",
              height: 90,
              maxLines: 3,),
            SizedBox(
              height: height * .002,
            ),
            NewInputCard(
              controller: widget.remarks, title: "remarks",
              height: 90,
              maxLines: 3,),




          ],)),
          Expanded(child: Column(children: [
            SizedBox(
              height: height * .045,
            ),

            NewInputCard(
                readOnly: true,
                controller: widget.unitcost, title: "unit status"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                readOnly: true,
                controller: widget.discount, title: "discount"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                readOnly: true,
                controller: widget.excisetax, title: "excise tax"),
            SizedBox(
              height: height * .030,
            ),

            NewInputCard(
                readOnly: true,
                controller: widget.taxableAmount, title: "taxable  amount"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                readOnly: true,
                controller: widget.vat, title: "vat"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                readOnly: true,
                controller: widget.sellingPricetotal, title: "selling price total"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                readOnly: true,
                controller: widget.totalprice, title: "total price"),
            SizedBox(
              height: height * .030,
            ),
          ],))

        ],
      ),
    );
  }
}


class SalesInvoiceGrowableTable extends StatefulWidget {
  // final List<Liness>? lines;
  // final Function updation;
  //
  // GrowableTable({this.lines, required this.updation});

  @override
  _SalesInvoiceGrowableTableState createState() => _SalesInvoiceGrowableTableState();
}

class _SalesInvoiceGrowableTableState extends State<SalesInvoiceGrowableTable> {
  late AutoScrollController recieveController;
  // late List<Liness>? lines = widget.lines;
  bool tableAdditionCheck = false;
  double vatableMethod(
      int reqQty, double unitCst, double exTaxx, double disct) {
    double VatableAmounts = (((reqQty * unitCst) + exTaxx) - disct);

    return VatableAmounts;
  }

  double actualGrandTotal(double VatAmounts, double vatt) {
    double ActualGC = (VatAmounts + ((VatAmounts * vatt) / 100));

    return ActualGC;
  }

  void initState() {
    // table=widget.lines;
    recieveController = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // if (tableAdditionCheck == false) lines = widget.lines;
    // print("ammmm" + lines.toString());
    return Scrollbar(
      controller: recieveController,
      isAlwaysShown: true,
      child: Container(
        color: Colors.white,
        alignment: Alignment.topRight,
        child: SingleChildScrollView(
          controller: recieveController,
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
                            width: .5,
                            color: Colors.black45,
                            style: BorderStyle.solid),
                        horizontalInside: BorderSide(
                            width: .3,
                            color: Colors.black45,
                            // color: Colors.blue,
                            style: BorderStyle.solid),
                      ),
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

                                padding: EdgeInsets.all(7),

                                height: 46,

                                size: 13,

                                // color: Palette.containerDarknew,

                                // textColor: Palette.white,
                              ),

                              tableHeadtext(
                                'Barcode',

                                padding: EdgeInsets.all(7),

                                height: 46,

                                size: 13,

                                // color: Palette.containerDarknew,

                                // textColor: Palette.white
                              ),

                              tableHeadtext(
                                'Is Invoiced',

                                padding: EdgeInsets.all(7),

                                height: 46,

                                size: 13,

                                // color: Palette.containerDarknew,

                                // textColor: Palette.white
                              ),

                              // tableHeadtext('description', size: 10, color: null),

                              tableHeadtext(
                                'Warrenty',
                                padding: EdgeInsets.all(7),
                                height: 46,
                                size: 13,
                              ),

                              tableHeadtext(
                                'Return Type',

                                padding: EdgeInsets.all(7),

                                height: 46,

                                size: 13,

                                // color: Palette.containerDarknew,

                                // textColor: Palette.white
                              ),

                              tableHeadtext(
                                'Return Time',

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
                                'Unitcost',

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
                                'Discount ',
                                padding: EdgeInsets.all(7),
                                height: 46,
                                size: 13,
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
                                'taxable Amount',

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
                              ),

                              tableHeadtext(
                                'Quantity',

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


                              // if (widget.onAddNew) textPadding(''),
                            ]),
                        // if (lines != null) ...[
                        // for (var i = 0; i < lines!.length; i++)
                        //   TableRow(
                        //       decoration: BoxDecoration(
                        //           color: Colors.grey.shade200,
                        //           shape: BoxShape.rectangle,
                        //           border: const Border(
                        //               left: BorderSide(
                        //                   width: .5,
                        //                   color: Colors.grey,
                        //                   style: BorderStyle.solid),
                        //               bottom: BorderSide(
                        //                   width: .5,
                        //                   color: Colors.grey,
                        //                   style: BorderStyle.solid),
                        //               right: BorderSide(
                        //                   color: Colors.grey,
                        //                   width: .5,
                        //                   style: BorderStyle.solid))),
                        //       children: [
                        //         TableCell(
                        //           verticalAlignment:
                        //               TableCellVerticalAlignment.middle,
                        //           child: textPadding((i + 1).toString(),
                        //               fontSize: 12,
                        //               padding: EdgeInsets.only(
                        //                   left: 11.5, top: 1.5),
                        //               fontWeight: FontWeight.w500),
                        //         ),
                        //         TableCell(
                        //           verticalAlignment:
                        //               TableCellVerticalAlignment.middle,
                        //           child: textPadding(
                        //               lines?[i].variantId ?? "",
                        //               fontSize: 12,
                        //               padding: EdgeInsets.only(
                        //                   left: 11.5, top: 1.5),
                        //               fontWeight: FontWeight.w500),
                        //         ),
                        //         TableCell(
                        //           verticalAlignment:
                        //               TableCellVerticalAlignment.middle,
                        //           child: textPadding(
                        //               lines?[i].variantName ?? "",
                        //               fontSize: 12,
                        //               padding: EdgeInsets.only(
                        //                   left: 11.5, top: 1.5),
                        //               fontWeight: FontWeight.w500),
                        //         ),
                        //         TableCell(
                        //           verticalAlignment:
                        //               TableCellVerticalAlignment.middle,
                        //           child: textPadding(lines?[i].barcode ?? "",
                        //               fontSize: 12,
                        //               padding: EdgeInsets.only(
                        //                   left: 11.5, top: 1.5),
                        //               fontWeight: FontWeight.w500),
                        //         ),
                        //         TableCell(
                        //           verticalAlignment:
                        //               TableCellVerticalAlignment.middle,
                        //           child: textPadding("",
                        //               fontSize: 12,
                        //               padding: EdgeInsets.only(
                        //                   left: 11.5, top: 1.5),
                        //               fontWeight: FontWeight.w500),
                        //         ),
                        //         TableCell(
                        //           verticalAlignment:
                        //               TableCellVerticalAlignment.middle,
                        //           child: textPadding(
                        //               lines?[i].purchaseUom ?? "",
                        //               fontSize: 12,
                        //               padding: EdgeInsets.only(
                        //                   left: 11.5, top: 1.5),
                        //               fontWeight: FontWeight.w500),
                        //         ),
                        //         TableCell(
                        //           verticalAlignment:
                        //               TableCellVerticalAlignment.middle,
                        //           child: UnderLinedInput(
                        //             initialCheck: true,
                        //             // controller: requestedListControllers[i],
                        //             last: lines?[i].totalQty.toString() ?? "",
                        //             onChanged: (va) {
                        //               // updateCheck=true;
                        //               print(va);
                        //               if (va == "") {
                        //                 print("entered");
                        //                 lines?[i] = lines?[i].copyWith(
                        //                     totalQty: 0,
                        //                     vatableAmount: 0,
                        //                     actualCost: 0,
                        //                     grandTotal: 0);
                        //               } else {
                        //                 var qty = int.tryParse(va);
                        //                 var dis = lines?[i].discount;
                        //                 var excess = lines?[i].excessTax;
                        //                 var unitcost = lines?[i].unitCost;
                        //                 var vat = lines?[i].vat ?? 0;
                        //                 var foc = lines?[i].foc;
                        //                 if (qty == 0 ||
                        //                     unitcost == 0 ||
                        //                     unitcost == "") {
                        //                   lines?[i] = lines?[i].copyWith(
                        //                       vatableAmount: 0,
                        //                       actualCost: 0,
                        //                       grandTotal: 0);
                        //                 } else {
                        //                   var Vamount;
                        //                   var vactualCost;
                        //
                        //                   // Vamount  = vatableMethod(qty,unitcost,excess,dis);
                        //                   if (vat == 0 || vat == "") {
                        //                     vactualCost = Vamount;
                        //                   } else {
                        //                     // vactualCost  =actualGrandTotal(Vamount,vat);
                        //                   }
                        //
                        //                   lines?[i] = lines?[i].copyWith(
                        //                       vatableAmount: Vamount,
                        //                       actualCost: vactualCost,
                        //                       grandTotal: vactualCost,
                        //                       totalQty: qty);
                        //                 }
                        //               }
                        //
                        //               setState(() {});
                        //             },
                        //           ),
                        //         ),
                        //         TableCell(
                        //           verticalAlignment:
                        //               TableCellVerticalAlignment.middle,
                        //           child: textPadding(
                        //               lines?[i].unitCost.toString() ?? "",
                        //               fontSize: 12,
                        //               padding: EdgeInsets.only(
                        //                   left: 11.5, top: 1.5),
                        //               fontWeight: FontWeight.w500),
                        //         ),
                        //         TableCell(
                        //           verticalAlignment:
                        //               TableCellVerticalAlignment.middle,
                        //           child: textPadding(
                        //               lines?[i].discount.toString() ?? "",
                        //               fontSize: 12,
                        //               height: 42,
                        //               padding: EdgeInsets.only(
                        //                   left: 11.5, top: 1.5),
                        //               fontWeight: FontWeight.w500),
                        //         ),
                        //         TableCell(
                        //           verticalAlignment:
                        //               TableCellVerticalAlignment.middle,
                        //           child: textPadding(
                        //               lines?[i].foc.toString() ?? "",
                        //               fontSize: 12,
                        //               padding: EdgeInsets.only(
                        //                   left: 11.5, top: 1.5),
                        //               fontWeight: FontWeight.w500),
                        //         ),
                        //         TableCell(
                        //           verticalAlignment:
                        //               TableCellVerticalAlignment.middle,
                        //           child: textPadding(
                        //               lines?[i].vatableAmount.toString() ??
                        //                   "",
                        //               fontSize: 12,
                        //               padding: EdgeInsets.only(
                        //                   left: 11.5, top: 1.5),
                        //               fontWeight: FontWeight.w500),
                        //         ),
                        //         TableCell(
                        //           verticalAlignment:
                        //               TableCellVerticalAlignment.middle,
                        //           child: textPadding(
                        //               lines?[i].excessTax.toString() ?? "",
                        //               fontSize: 12,
                        //               padding: EdgeInsets.only(
                        //                   left: 11.5, top: 1.5),
                        //               fontWeight: FontWeight.w500),
                        //         ),
                        //         TableCell(
                        //           verticalAlignment:
                        //               TableCellVerticalAlignment.middle,
                        //           child: textPadding(
                        //               lines?[i].vat.toString() ?? "",
                        //               fontSize: 12,
                        //               padding: EdgeInsets.only(
                        //                   left: 11.5, top: 1.5),
                        //               fontWeight: FontWeight.w500),
                        //         ),
                        //         TableCell(
                        //           verticalAlignment:
                        //               TableCellVerticalAlignment.middle,
                        //           child: textPadding(
                        //               lines?[i].actualCost.toString() ?? "",
                        //               fontSize: 12,
                        //               padding: EdgeInsets.only(
                        //                   left: 11.5, top: 1.5),
                        //               fontWeight: FontWeight.w500),
                        //         ),
                        //         TableCell(
                        //           verticalAlignment:
                        //               TableCellVerticalAlignment.middle,
                        //           child: textPadding(
                        //               lines?[i].grandTotal.toString() ?? "",
                        //               fontSize: 12,
                        //               padding: EdgeInsets.only(
                        //                   left: 11.5, top: 1.5),
                        //               fontWeight: FontWeight.w500),
                        //         ),
                        //         TableCell(
                        //           verticalAlignment:
                        //               TableCellVerticalAlignment.middle,
                        //           child: CheckedBoxs(
                        //               valueChanger: lines![i].isFree == null
                        //                   ? false
                        //                   : widget?.lines![i].isFree,
                        //               onSelection: (bool? value) {}),
                        //         ),
                        //         TableCell(
                        //           verticalAlignment:
                        //               TableCellVerticalAlignment.middle,
                        //           child: CheckedBoxs(
                        //               valueChanger: lines![i].isFree == null
                        //                   ? false
                        //                   : widget?.lines![i].isFree,
                        //               onSelection: (bool? value) {}),
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
                        //           verticalAlignment:
                        //               TableCellVerticalAlignment.middle,
                        //           child: CheckedBoxs(
                        //               valueChanger: lines?[i].isActive,
                        //               onSelection: (bool? value) {
                        //                 bool? isActive =
                        //                     lines?[i].isActive ?? false;
                        //                 setState(() {
                        //                   isActive = !isActive!;
                        //                   print(isActive);
                        //                   widget.updation(i, isActive);
                        //                   //  widget?.lines?[i] = widget?.lines![i].copyWith(isActive: isActive);
                        //
                        //                   setState(() {});
                        //                 });
                        //               }),
                        //         ),
                        //         TableCell(
                        //           verticalAlignment:
                        //               TableCellVerticalAlignment.middle,
                        //           child: textPadding("",
                        //               fontSize: 12,
                        //               padding: EdgeInsets.only(
                        //                   left: 11.5, top: 1.5),
                        //               fontWeight: FontWeight.w500),
                        //         ),
                        //         TableCell(
                        //           verticalAlignment:
                        //               TableCellVerticalAlignment.middle,
                        //           child: textPadding("",
                        //               fontSize: 12,
                        //               padding: EdgeInsets.only(
                        //                   left: 11.5, top: 1.5),
                        //               fontWeight: FontWeight.w500),
                        //         ),
                        //       ])
                        // ]
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}