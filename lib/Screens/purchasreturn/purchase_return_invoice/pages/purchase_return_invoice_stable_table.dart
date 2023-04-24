import 'package:flutter/material.dart';
import 'package:inventory/widgets/NewinputScreen.dart';

class InvoiceStableTable extends StatefulWidget {
  final TextEditingController returnInvoiceCode;
  final TextEditingController purchaseReturnOrderCode;
  final TextEditingController orderDate;
  final TextEditingController paymentCode;
  final TextEditingController paymentStatus;
  final TextEditingController paymentMethod;
  final TextEditingController orderStatus;
  final TextEditingController invoiceStatus;
  final TextEditingController foc;
  final TextEditingController unitCost;
  final TextEditingController vatableAmount;
  final TextEditingController discount;
  final TextEditingController excessTax;
  final TextEditingController vat;
  final TextEditingController actualCost;
  final TextEditingController grandToatl;
  final TextEditingController note;
  final TextEditingController remarks;

  InvoiceStableTable(
      {required this.returnInvoiceCode,
        required this.purchaseReturnOrderCode,
        required this.orderDate,
        required this.paymentMethod,
        required this.paymentCode,
        required this.paymentStatus,
        required this.invoiceStatus,
        required this.note,
        required this.remarks,
        required this.discount,
        required this.foc,
        required this.unitCost,
        required this.vatableAmount,
        required this.excessTax,
        required this.vat,
        required this.actualCost,
        required this.grandToatl,
        required this.orderStatus});
  @override
  _InvoiceStableTableState createState() => _InvoiceStableTableState();
}

class _InvoiceStableTableState extends State<InvoiceStableTable> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
                children: [

                  NewInputCard(
                      readOnly: true,
                      controller: widget.returnInvoiceCode,
                      title: "Return Invoice Code"),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                      readOnly: true,
                      controller: widget.purchaseReturnOrderCode,
                      title: "Purchase Return Order Code"),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                      readOnly: true,
                      controller: widget.orderDate, title: "Ordered Date"),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                      controller: widget.paymentCode, title: "Payment Code"),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                      controller: widget.paymentStatus, title: "Payment Status"),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                      controller: widget.paymentMethod,
                      title: "Payment Method"),
                  SizedBox(
                    height: height * .05,
                  ),
                ],
              )),
          Expanded(
              child: Column(
                children: [

                  NewInputCard(
                      readOnly: true,
                      controller: widget.orderStatus,
                      title: "Order Status"),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                      readOnly: true,
                      controller: widget.invoiceStatus,
                      title: "Invoice Status"),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                      readOnly: true,
                      controller: widget.discount,
                      title: "Discount"),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                      readOnly: true, controller: widget.foc, title: "FOC"),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                    readOnly: true,
                    controller: widget.unitCost,
                    title: "Unit Cost",
                  ),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                    readOnly: true,
                    controller: widget.vatableAmount,
                    title: "Variable Amount",
                  ),
                  SizedBox(
                    height: height * .046,
                  ),

                ],
              )),
          Expanded(
              child: Column(
                children: [

                  NewInputCard(
                      readOnly: true,
                      controller: widget.excessTax,
                      title: "Excess Tax"),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                      readOnly: true, controller: widget.vat, title: "VAT"),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                      readOnly: true,
                      controller: widget.actualCost,
                      title: "Actual Cost"),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                      readOnly: true,
                      controller: widget.grandToatl,
                      title: "Grand Total"),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                    height: 90,
                    controller: widget.note,
                    title: "Note",
                    maxLines: 3,
                  ),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                      height: 80,
                      maxLines: 3,
                      controller: widget.remarks, title: "Remarks"),

                ],
              ))
        ],
      ),
    );
  }
}