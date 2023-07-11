import 'package:flutter/material.dart';
import 'package:inventory/widgets/NewinputScreen.dart';

class PurchaseReceivingStabletable extends StatefulWidget {
  final TextEditingController orderCodeController;
  final TextEditingController receivingCodeController;
  final TextEditingController orderedDateController;
  final TextEditingController ordereStatusController;
  final TextEditingController paymentStatusController;
  final TextEditingController invoiceStatusController;
  final TextEditingController receivingStatusController;
  final TextEditingController focController;
  final TextEditingController discountController;
  final TextEditingController unitCostController;
  final TextEditingController vatableAmountController;
  final TextEditingController excessController;
  final TextEditingController vatController;
  final TextEditingController actualCostController;
  final TextEditingController grandtotalController;
  final TextEditingController noteController;
  final TextEditingController remarksController;

  PurchaseReceivingStabletable({  required this.orderCodeController, required this.receivingCodeController, required this.orderedDateController, required this.ordereStatusController, required this.paymentStatusController, required this.invoiceStatusController, required this.receivingStatusController, required this.focController, required this.discountController, required this.unitCostController, required this.vatableAmountController, required this.excessController, required this.vatController, required this.actualCostController, required this.grandtotalController, required this.noteController, required this.remarksController});



  @override
  _PurchaseReceivingStabletableState createState() => _PurchaseReceivingStabletableState();
}

class _PurchaseReceivingStabletableState extends State<PurchaseReceivingStabletable> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Container(

        child:
        Row(
          children: [
            Expanded(
              child: Container(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [


                            NewInputCard(
                                readOnly:
                                true,
                                controller:
                                widget.orderCodeController,
                                title:
                                "Order Code"),
                            SizedBox(
                              height: height *
                                  .030,
                            ),
                            NewInputCard(
                                readOnly:
                                true,
                                controller:
                                widget.receivingCodeController,
                                title:
                                "Receiving Code"),
                            SizedBox(
                              height: height *
                                  .030,
                            ),
                            NewInputCard(
                              readOnly: true,
                              controller:widget.orderedDateController
                              ,
                              title:
                              "Order Date",
                              colors: Color(
                                  0xff3E4F5B),
                            ),
                            SizedBox(
                              height: height *
                                  .030,
                            ),
                            NewInputCard(
                                readOnly:
                                true,
                                controller:widget.ordereStatusController,
                                title:
                                "Order Status"),
                            SizedBox(
                              height: height *
                                  .030,
                            ),
                            NewInputCard(
                                readOnly:
                                true,
                                controller:
                                widget.paymentStatusController,
                                title:
                                "Payment Status"),
                            SizedBox(
                              height: height *
                                  .030,
                            ),
                            NewInputCard(
                                readOnly:
                                true,
                                controller:widget.invoiceStatusController,
                                title:
                                "Invoice Status"),

                          ],
                        )),
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //  SizedBox(height: height*.030,),
                            NewInputCard(
                                readOnly: true,
                                controller:
                                widget.receivingStatusController,
                                title: "Receiving Status"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                controller:widget.focController,
                                title: "FOC"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                controller:
                                widget.discountController,
                                title:
                                "Discount"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                controller:  widget.unitCostController,
                                title:
                                "Unit Cost"),
                            SizedBox(
                              height: height *
                                  .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                controller:
                                widget.vatableAmountController,
                                title:
                                "Vatable Amount"),
                            SizedBox(
                              height: height *
                                  .030,
                            ),
                            NewInputCard(
                                readOnly: true,
                                controller:
                                widget.excessController,
                                title:
                                "Excess Tax"),


                          ],
                        )),
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [


                            NewInputCard(
                                readOnly: true,
                                controller:
                                widget.vatController,
                                title: "VAT"),
                            SizedBox(
                              height: height *
                                  .030,
                            ),
                            NewInputCard(
                                readOnly:
                                true,
                                controller:
                                widget.actualCostController,
                                title:
                                "Actual Cost"),
                            SizedBox(
                              height: height *
                                  .030,
                            ),
                            NewInputCard(
                                readOnly:
                                true,
                                controller:
                                widget.grandtotalController,
                                title:
                                "Grand Total"),
                            SizedBox(
                              height: height *
                                  .030,
                            ),
                            NewInputCard(

                              controller:
                              widget.noteController,
                              title: "Note",
                              height: 90,
                              maxLines: 3,
                            ),
                            SizedBox(
                              height: height *
                                  .030,
                            ),
                            NewInputCard(

                              controller:
                              widget.remarksController,
                              title:
                              "Remarks",
                              height: 90,
                              maxLines: 3,
                            ),

                            SizedBox(height: height*.030,),
                          ],
                        )),
                  ],
                ),
              ),
            )
          ],
        ),


    );

  }
}
