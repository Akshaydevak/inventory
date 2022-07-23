import 'package:flutter/material.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';

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
                color: Colors.red,
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
                    // ScrollableTable(),
                    Container(
                      color: Colors.white,
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("call api to find current qty of variant and check entering  qty is larger than current qty")
                      ],),
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
              SizedBox(
                height: height * .042,
              ),
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
