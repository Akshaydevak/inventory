import 'package:flutter/material.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../widgets/customtable.dart';

class SalesGeneral extends StatefulWidget {
  @override
  _SalesGeneralState createState() => _SalesGeneralState();
}

class _SalesGeneralState extends State<SalesGeneral> {
  TextEditingController orderTypeController=TextEditingController();
  TextEditingController orderModeController=TextEditingController();
  TextEditingController orderCodeController=TextEditingController();
  TextEditingController orderDateController=TextEditingController();
  TextEditingController invoiceController=TextEditingController();
  TextEditingController customerController=TextEditingController();
  TextEditingController trnController=TextEditingController();
  TextEditingController billinAddressController=TextEditingController();
  TextEditingController shippingAddressController=TextEditingController();
  TextEditingController paymentIdController=TextEditingController();
  TextEditingController paymentAddressController=TextEditingController();
  TextEditingController paymentStatusController=TextEditingController();
  TextEditingController orderStatusController=TextEditingController();
  TextEditingController reasonController=TextEditingController();
  TextEditingController remarksController=TextEditingController();
  TextEditingController invoiceStatusController=TextEditingController();
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
        child:IntrinsicHeight(
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
                    StableTable(
                      orderType:orderTypeController,orderMode:orderModeController,returnOrderCode:orderCodeController,
                      orderDate:orderDateController,salesInvoiceCode:invoiceController,customerId:customerController,
                      trn:trnController,billingAddress:billinAddressController,shippingAddress:shippingAddressController,
                      paymentId:paymentIdController,paymentStatus:paymentStatusController,orderStatus:orderStatusController,
                      reason:reasonController,remarks:remarksController,invoiceStatus:invoiceStatusController,unitcost:unitCostController,
                      discount:discountController,exciseTax:exciseTaxController,taxabaleAmount:taxableAmountController,vat:vatController,
                      sellingPrice:sellingPriceController,totalPrice:totalPriceController
                    ),

                    Container(
                      color: Colors.white,
                      height: 50,
                    ),
                    Row(children: [
                      TextWidget(text: "order lines"),
                    ],),

                    Divider(color: Colors.grey,thickness: 1,),
                    SalesGenneralGrowableTable(),
                    Container(
                      color: Colors.white,
                      height: 5,
                    ),

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
                        //   text: "Save",
                        //   height: 29,
                        //     Color: Color(0xff3E4F5B),
                        //   width: 90,
                        //   labelcolor: Colors.white,
                        //   iconColor: Colors.white,
                        //   onApply: (){}
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

class StableTable extends StatefulWidget {
  final TextEditingController orderType;
  final TextEditingController orderMode;
  final TextEditingController returnOrderCode;
  final TextEditingController orderDate;
  final TextEditingController salesInvoiceCode;
  final TextEditingController customerId;
  final TextEditingController trn;
  final TextEditingController billingAddress;
  final TextEditingController shippingAddress;
  final TextEditingController paymentId;
  final TextEditingController paymentStatus;
  final TextEditingController orderStatus;
  final TextEditingController reason;
  final TextEditingController remarks;
  final TextEditingController invoiceStatus;
  final TextEditingController unitcost;
  final TextEditingController discount;
  final TextEditingController exciseTax;
  final TextEditingController taxabaleAmount;
  final TextEditingController vat;
  final TextEditingController sellingPrice;
  final TextEditingController totalPrice;
  StableTable({required this.orderType,required this.orderMode,required this.returnOrderCode,required this.orderDate,required this.salesInvoiceCode,
  required this.customerId,required this.trn,required this.vat,required this.discount,required this.remarks,required this.invoiceStatus,required this.paymentStatus,
  required this.orderStatus,required this.billingAddress,required this.exciseTax,required this.paymentId,required this.reason,required this.sellingPrice,
  required this.shippingAddress,required this.taxabaleAmount,required this.totalPrice,required this.unitcost});

  @override
  _StableTableState createState() => _StableTableState();
}

class _StableTableState extends State<StableTable> {
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
                  controller: widget.orderType
                  , title: "Order Type"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: widget.orderMode, title: "Order Mode"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: widget.returnOrderCode, title: " Return Order Code"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: widget.orderDate, title: "Order Date"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: widget.salesInvoiceCode, title: "Sales Invoice Code"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  controller: widget.customerId, title: "Customer Id"),
              SizedBox(
                height: height * .030,
              ),

              NewInputCard(
                  controller: widget.trn, title: "TRN Number"),
              SizedBox(
                height: height * .030,
              ),
              SizedBox(
                height: height * .040,
              ),



            ],
          )),
          Expanded(child: Column(children: [
            SizedBox(
              height: height * .045,
            ),

            NewInputCard(
                controller: widget.billingAddress, title: "Billing Address Id"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                controller: widget.shippingAddress, title: "Shipping Address Id"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                controller: widget.paymentId, title: "Payment Id"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                controller: widget.paymentStatus, title: "Payment Status"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                controller: widget.orderStatus, title: "Order Status"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
              controller: widget.reason, title: "Reason",
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
                controller: widget.invoiceStatus, title: "Invoice Status"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                controller: widget.unitcost, title: "Unit Cost"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                controller: widget.discount, title: "Discount"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                controller: widget.exciseTax, title: "Excise Tax"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                controller: widget.taxabaleAmount, title: "Taxable  Amount"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                controller: widget.vat, title: "VAT"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                controller: widget.sellingPrice, title: "Selling Price Total"),
            SizedBox(
              height: height * .030,
            ),
            NewInputCard(
                controller: widget.totalPrice, title: "Total Price"),
            SizedBox(
              height: height * .030,
            ),
          ],))

        ],
      ),
    );
  }
}
class SalesGenneralGrowableTable extends StatefulWidget {
  // final List<Liness>? lines;
  // final Function updation;
  //
  // GrowableTable({this.lines, required this.updation});

  @override
  _SalesGenneralGrowableTableState createState() => _SalesGenneralGrowableTableState();
}

class _SalesGenneralGrowableTableState extends State<SalesGenneralGrowableTable> {
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