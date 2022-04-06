import 'package:flutter/material.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';
import 'package:inventory/widgets/inputfield.dart';

import 'GeneralScreen.dart';

class RequestFormScreen extends StatefulWidget {
  @override
  State<RequestFormScreen> createState() => _RequestFormScreenState();
}

class _RequestFormScreenState extends State<RequestFormScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(

              children: [
                Expanded(child: Column(
                  children: [
                    SizedBox(height: height*.030,),
                    SizedBox(height: height*.030,),
                    NewInputCard(
                        controller: controller, title: "Order type"),
                    SizedBox(height: height*.030,),
                    NewInputCard(
                        controller: controller, title: "Order code"),
                    SizedBox(height: height*.030,),
                    NewInputCard(
                        controller: controller, title: "Order date"),
                    SizedBox(height: height*.030,),
                    NewInputCard(
                        controller: controller, title: "Inventory  id"),
                    SizedBox(height: height*.030,),
                    NewInputCard(
                        controller: controller, title: "Ordered person"),
                    SizedBox(height: height*.030,),
                    NewInputCard(
                        controller: controller, title: "Promised  reciept date"),
                    SizedBox(height: height*.030,),
                    NewInputCard(
                        controller: controller, title: "Planned  reciept date"),
                    SizedBox(height: height*.030,),
                    SizedBox(height: height*.030,),
                    SizedBox(height: height*.030,),
                    SizedBox(height: height*.030,),
                    SizedBox(height: height*.030,),
                    SizedBox(height: height*.030,),


                  ],
                ),),
                Expanded(child: Column(
                  children: [
                    SizedBox(height: height*.030,),
                    SizedBox(height: height*.030,),
                    SizedBox(height: 10,),

                    NewInputCard(
                        controller: controller, title: "Payment code"),
                    SizedBox(height: height*.030,),
                    NewInputCard(
                        controller: controller, title: "Payment status"),
                    SizedBox(height: height*.030,),
                    NewInputCard(
                        controller: controller, title: "Order status"),
                    SizedBox(height: height*.030,),
                    NewInputCard(
                        controller: controller, title: "Receiving status"),
                    SizedBox(height: height*.030,),
                    NewInputCard(
                        controller: controller, title: "Invoice status"),
                    SizedBox(height: height*.030,),
                    NewInputCard(
                        controller: controller, title: "Note",height: 90,maxLines: 3,),
                    SizedBox(height: height*.030,),
                    NewInputCard(
                        controller: controller, title: "Remarks",height: 90,maxLines: 3,),
                    SizedBox(height: height*.030,),
                  ],
                ),),
                Expanded(child: Column(
                  children: [
                    SizedBox(height: height*.030,),
                    SizedBox(height: height*.030,),
                    NewInputCard(
                        controller: controller, title: "Discount"),
                    SizedBox(height: height*.030,),
                    NewInputCard(
                        controller: controller, title: "foc"),
                    SizedBox(height: height*.030,),
                    NewInputCard(
                        controller: controller, title: "Unit cost"),
                    SizedBox(height: height*.030,),
                    NewInputCard(
                        controller: controller, title: "Variable amount"),
                    SizedBox(height: height*.030,),
                    NewInputCard(
                        controller: controller, title: "excess tax"),
                    SizedBox(height: height*.030,),
                    NewInputCard(
                        controller: controller, title: "vat"),
                    SizedBox(height: height*.030,),
                    NewInputCard(
                        controller: controller, title: "actual cost"),
                    SizedBox(height: height*.030,),
                    NewInputCard(
                        controller: controller, title: "grand total"),
                    SizedBox(height: height*.030,),
                    SizedBox(height: height*.030,),
                    SizedBox(height: height*.030,),



                  ],
                ),),

              ],
            ),
            SizedBox(height: 61,),
           // ScrollableTable(),
    SizedBox(height: 78,),

    Row(
    children: [
    Spacer(),
    // Button(Icons.delete, Colors.red,ctx: context,
    //     onApply: (){print("Akkk");},
    // text: "Discard",height: 29,
    // width: 90,labelcolor: Colors.red,iconColor: Colors.red),
    // SizedBox(width: width*.008,),
    //
    // Button(Icons.check, Colors.grey,ctx: context,
    //     onApply: (){print("Akkk");},
    // text: "Discard",height: 29,
    // width: 90,labelcolor: Colors.white,iconColor: Colors.white,Color:Color(0xff3E4F5B)),
    SizedBox(width: width*.008,),
    ],
    )


    ],
        ),
      ),
    );
  }
}
