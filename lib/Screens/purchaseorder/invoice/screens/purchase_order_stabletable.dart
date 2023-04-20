import 'package:flutter/material.dart';
import 'package:inventory/widgets/NewinputScreen.dart';

class PurchaseOrderStabletable extends StatefulWidget {
  final TextEditingController invoiceCodeController;
  final TextEditingController purchaseCodeController;
  final TextEditingController orderedDateController;
  final TextEditingController paymentCodeController;
  final TextEditingController paymentStatusController;
  final TextEditingController paymentMethodController;
  final TextEditingController orderStatusController;
  final TextEditingController invoiceStatusController;
  final TextEditingController discountController;
  final TextEditingController focController;
  final TextEditingController unitCostController;
  final TextEditingController variableAmountController;
  final TextEditingController exciseTaxController;
  final TextEditingController vatController;
  final TextEditingController actualCostController;
  final TextEditingController grandTotalController;

  final TextEditingController noteController;
  final TextEditingController remarksController;
  PurchaseOrderStabletable({ required this.invoiceCodeController, required this.purchaseCodeController, required this.orderedDateController, required this.paymentCodeController, required this.paymentStatusController, required this.paymentMethodController, required this.orderStatusController, required this.invoiceStatusController, required this.discountController, required this.focController, required this.unitCostController, required this.variableAmountController, required this.exciseTaxController, required this.vatController, required this.actualCostController, required this.grandTotalController, required this.noteController, required this.remarksController});



  @override
  _PurchaseOrderStabletableState createState() => _PurchaseOrderStabletableState();
}

class _PurchaseOrderStabletableState extends State<PurchaseOrderStabletable> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Container(

      child:    Row(

        children: [
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [

            NewInputCard(
                readOnly: true,
                controller:widget. invoiceCodeController, title: "Invoice Code"),
            SizedBox(height: height*.030,),
            NewInputCard(
                readOnly: true,
                controller: widget.purchaseCodeController, title: "Purchase Order Code"),
            SizedBox(height: height*.030,),
            NewInputCard(
                readOnly: true,
                controller:widget. orderedDateController, title: "Ordered Date"),
            SizedBox(height: height*.030,),
            NewInputCard(
                readOnly: true,

                controller:widget. paymentCodeController, title: "Payment Code"),
            SizedBox(height: height*.035,),
            NewInputCard(
                readOnly: true, controller:widget. paymentStatusController, title: "Payment Status"),
            SizedBox(height: height*.035,),
            NewInputCard(
                readOnly: true, controller:widget. paymentMethodController, title: "Payment Method"),



          ],)),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,children: [

            NewInputCard(
                readOnly: true,
                controller:widget. orderStatusController, title: "Order Status"),
            SizedBox(height: height*.030,),
            NewInputCard(
                readOnly: true,
                controller:widget. invoiceStatusController, title: "Invoice Status"),
            SizedBox(height: height*.030,),
            NewInputCard(
                readOnly: true,
                controller:widget. discountController, title: "Discount"),
            SizedBox(height: height*.030,),
            NewInputCard(
                readOnly: true,
                controller:widget. focController, title: "FOC"),
            SizedBox(height: height*.035,),
            NewInputCard(
                readOnly: true,
                controller:widget. unitCostController, title: "Unit Cost"),
            SizedBox(height: height*.035,),
            NewInputCard(
                readOnly: true,
                controller:widget. variableAmountController, title: "Variable Amount"),


          ],)),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,children: [

            NewInputCard(
                readOnly: true,
                controller:widget. exciseTaxController, title: "Excise Tax"),
            SizedBox(height: height*.020,),
            NewInputCard(
                readOnly: true,
                controller: widget.vatController, title: "VAT"),
            SizedBox(height: height*.020,),
            NewInputCard(    readOnly: true,

                controller:widget. actualCostController, title: "Actual Cost"),
            SizedBox(height: height*.020,),
            NewInputCard(
                readOnly: true,
                controller: widget.grandTotalController, title: "Grand Total"),
            SizedBox(height: height*.020,),
            NewInputCard(

              controller:widget. noteController, title: "Note",height: 90,maxLines: 2,),
            SizedBox(height: height*.010,),
            NewInputCard(

              controller: widget.remarksController, title: "Remarks",height: 90,maxLines: 2,),
            SizedBox(height: height*.018,),





          ],)),

        ],
      )


    );

  }
}
