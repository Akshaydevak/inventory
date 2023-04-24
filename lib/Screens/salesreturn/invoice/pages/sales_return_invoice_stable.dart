import 'package:flutter/material.dart';
import 'package:inventory/widgets/NewinputScreen.dart';

class SalesReturnInvoiceStableTable extends StatefulWidget {
  final TextEditingController invoiceCode;
  final TextEditingController invoicedDate;
  final TextEditingController paymentId;
  final TextEditingController paymentStatus;
  final TextEditingController paymentMethod;
  final TextEditingController customerId;
  final TextEditingController trnNumber;
  final TextEditingController orderStatus;
  final TextEditingController invoiceStatus;
  final TextEditingController assignto;
  final TextEditingController note;
  final TextEditingController remarks;

  final TextEditingController unitCost;
  final TextEditingController discount;
  final TextEditingController exciseTax;
  final TextEditingController taxableAmount;
  final TextEditingController vat;
  final TextEditingController sellingPriceTotal;
  final TextEditingController totalPrice;

  SalesReturnInvoiceStableTable(
      {
        required this.invoiceCode,
        required this.assignto,
        required this.paymentMethod,
        required this.invoiceStatus,
        required this.invoicedDate,
        required this.customerId,
        required this.trnNumber,
        required this.vat,
        required this.taxableAmount,
        required this.discount,
        required this.remarks,
        required this.note,

        required this.orderStatus,
        required this.paymentStatus,
        required this.paymentId,
        required this.totalPrice,
        required this.exciseTax,
        required this.unitCost,
        required this.sellingPriceTotal});

  @override
  _SalesReturnInvoiceStableTableState createState() => _SalesReturnInvoiceStableTableState();
}

class _SalesReturnInvoiceStableTableState extends State<SalesReturnInvoiceStableTable>
{
  TextEditingController controller = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController fnameController = TextEditingController();
  TextEditingController lanameController = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController accessSiteController = TextEditingController();
  TextEditingController buisnessUserController = TextEditingController();
  TextEditingController buisnessnameController = TextEditingController();
  TextEditingController taxidController = TextEditingController();
  TextEditingController buisnessmodeController = TextEditingController();
  TextEditingController designation = TextEditingController();
  // List<SalesReturnOrderLines>table=[];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return
      Builder(
          builder: (context) {
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
                              controller: widget.invoiceCode,
                              title: " Invoice Code"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              readOnly: true,
                              controller: widget.invoicedDate,
                              title: " Invoiced Date"),

                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              readOnly: true,
                              controller: widget.paymentId,
                              title: " Payment Id"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              readOnly: true,
                              controller: widget.paymentStatus,
                              title: "Payment Status"),

                          SizedBox(
                            height: height * .030,
                          ),NewInputCard(
                              readOnly: true,
                              controller: widget.paymentMethod, title: "Payment Method"),

                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              readOnly: true,
                              controller: widget.customerId, title: "Customer Id"),
                          SizedBox(
                            height: height * .090,
                          ),



                          // NewInputCard(
                          //     controller: widget.shipping, title: "shipping address id"),
                        ],
                      )),
                  Expanded(
                      child: Column(
                        children: [

                          NewInputCard(
                              readOnly: true,
                              height: 46,
                              controller: widget.trnNumber,
                              title: " TRN Number"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              readOnly: true,
                              controller: widget.orderStatus,
                              title: " Order Status"),
                          // NewInputCard(
                          //     controller: widget.billingAddressId,
                          //     title: "billing address id"),
                          SizedBox(
                            height: height * .030,
                          ),

                          NewInputCard(
                              readOnly: true,
                              controller: widget.invoiceStatus,
                              title: "Invoiced Status "),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              readOnly: true,
                              controller: widget.assignto,
                              title: "Assign To"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                            // readOnly: true,
                              maxLines: 3,
                              height: 90,
                              controller: widget.remarks,
                              title: "Remarks"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                            controller: widget.note,
                            title: "Note",
                            height: 90,
                            maxLines: 3,
                          ),
                          SizedBox(
                            height: height * .010,
                          ),

                        ],
                      )),
                  Expanded(
                      child: Column(
                        children: [

                          NewInputCard(
                              readOnly: true,
                              controller: widget.unitCost,
                              title: "Unit Cost"),
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
                              readOnly: true,
                              controller: widget.exciseTax,
                              title: "Excise Tax"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              readOnly: true,
                              controller: widget.taxableAmount,
                              title: "Taxable Amount"),
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
                              controller: widget.sellingPriceTotal,
                              title: "Selling Price Total"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              readOnly: true,
                              controller: widget.totalPrice,
                              title: "Total Price"),

                        ],
                      ))
                ],
              ),
            );
          }
      );
  }
}