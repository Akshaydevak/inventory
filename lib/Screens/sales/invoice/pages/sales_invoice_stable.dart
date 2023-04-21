import 'package:flutter/material.dart';
import 'package:inventory/widgets/NewinputScreen.dart';

class InvoiceSalesStableTable extends StatefulWidget {
  final TextEditingController invoiceCode;
  final TextEditingController invoiceDate;
  final TextEditingController paymentId;
  final TextEditingController paymentStatus;
  final TextEditingController paymentMethod;
  final TextEditingController customerId;
  final TextEditingController trn;
  final TextEditingController orderStatus;
  final TextEditingController invoiceStatus;
  final TextEditingController assignedto;
  final TextEditingController note;
  final TextEditingController remarks;
  final TextEditingController unitCost;
  final TextEditingController discount;
  final TextEditingController excise;
  final TextEditingController taxable;
  final TextEditingController vat;
  final TextEditingController sellingPrice;
  final TextEditingController totalPrice;
  InvoiceSalesStableTable({required this.invoiceCode,required this.invoiceDate,required this.totalPrice,required this.discount,required this.orderStatus,
    required this.customerId,required this.paymentStatus,required this.paymentId,required this.sellingPrice,required this.vat,required this.invoiceStatus,required this.note,
    required this.remarks,required this.paymentMethod,required this.trn,required this.assignedto,required this.excise,required this.taxable,required this.unitCost,});
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
                    readOnly: true,
                    controller: widget.invoiceCode
                    , title: "Invoice Code"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                    readOnly: true,
                    controller: widget.invoiceDate, title: "Invoice Date"),
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
                    controller: widget.paymentStatus, title: "Payment Status"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                    readOnly: true,
                    controller: widget.paymentMethod, title: "Payment Method"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                    readOnly: true,
                    controller: widget.customerId, title: "Customer Id"),
                SizedBox(
                  height: height * .119,
                ),



              ],
            )),
            Expanded(child: Column(children: [
              SizedBox(
                height: height * .015,
              ),
              NewInputCard(
                  readOnly: true,
                  controller: widget.trn, title: "TRN Number"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  readOnly: true,
                  controller: widget.orderStatus, title: "Order Status"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  readOnly: true,
                  controller: widget.invoiceStatus, title: "Invoice Status"),
              // SizedBox(
              //   height: height * .030,
              // ),
              // NewInputCard(
              //     readOnly: true,
              //     controller: widget.assignedto, title: "Assigned To"),
              SizedBox(
                height: height * .030,
              ),

              NewInputCard(

                controller: widget.note, title: "Note",
                height: 90,
                maxLines: 3,),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                controller: widget.remarks, title: "Remarks",
                height: 90,
                maxLines: 3,),
              SizedBox(
                height: height * .15,
              ),




            ],)),
            Expanded(child: Column(children: [
              SizedBox(
                height: height * .015,
              ),



              NewInputCard(
                  readOnly: true,
                  controller: widget.unitCost, title: "Unit Cost"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  readOnly: true,
                  controller: widget.discount, title: "Discount"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  readOnly: true,
                  controller: widget.excise, title: "Excess Tax"),
              SizedBox(
                height: height * .030,
              ),

              NewInputCard(
                  readOnly: true,
                  controller: widget.taxable, title: "Taxable  Amount"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  readOnly: true,
                  controller: widget.vat, title: "VAT"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  readOnly: true,
                  controller: widget.sellingPrice, title: "Selling Price Total"),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                  readOnly: true,
                  controller: widget.totalPrice, title: "Total Price"),

            ],))

          ],
        ),
      );
  }
}