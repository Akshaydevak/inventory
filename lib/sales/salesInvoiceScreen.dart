import 'package:flutter/material.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';

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
        child: Column(
          children: [

            Container(
              child: Column(
                children: [


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
                  ),
                  Container(
                    color: Colors.white,
                    height: 50,
                  ),
                  Row(children: [
                    TextWidget(text: "invoice lines"),
                  ],),

                  Divider(color: Colors.grey,thickness: 1,),
                 // ScrollableTable(),
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
    );
  }
}
