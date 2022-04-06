import 'package:flutter/material.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';
import 'package:inventory/widgets/inputfield.dart';

class PurchaseRecievinScreen extends StatefulWidget {

  @override
  _PurchaseRecievinScreenState createState() => _PurchaseRecievinScreenState();
}

class _PurchaseRecievinScreenState extends State<PurchaseRecievinScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      width: 300,
      child: SingleChildScrollView(
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child:Column(
                      children: [
                        SizedBox(height: height*.030,),
                        SizedBox(height: height*.030,),

                        NewInputCard(
                            controller: controller, title: "Order code"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                            controller: controller, title: "Receiving code"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                          controller: controller, title: "Order date",colors: Color(0xff3E4F5B
                        ),),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                          controller: controller, title: "Order Status"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                            controller: controller, title: "Payment Status"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                          controller: controller, title: "Invoice Status"),


                      ],
                    )
                ),
                Expanded(
                    child:Column(
                      children: [
                        SizedBox(height: height*.030,),
                        SizedBox(height: height*.030,),
                        //  SizedBox(height: height*.030,),
                        NewInputCard(
                            controller: controller, title: "foc"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                            controller: controller, title: "discount"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                            controller: controller, title: "unit cost"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                            controller: controller, title: "vatable amount"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                            controller: controller, title: "excess tax"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                            controller: controller, title: "vat"),


                      ],
                    )
                ),
                Expanded(
                    child:Column(

                      children: [

                        SizedBox(height: height*.030,),
                       SizedBox(height: height*.030,),
                        NewInputCard(
                          controller: controller, title: "actual cost"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                            controller: controller, title: "grand total"),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                            controller: controller, title: "note",height: 90,maxLines: 3,),
                        SizedBox(height: height*.030,),
                        NewInputCard(
                            controller: controller, title: "remarks",height: 90,maxLines: 3,),
                        SizedBox(height: height*.030,),
                        SizedBox(height: height*.036,),
                        // SizedBox(height: height*.010,),

                      ],
                    )
                ),
              ],
            ),

            SizedBox(height: height*.010,),
            TextWidget(text: "recieving lines"),
            Divider(color: Colors.grey,thickness: 1,),
           // ScrollableTable(),
            SizedBox(height: 11,),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Buttons(icon: Icons.check,iconColor: Colors.white,
                  text: "generator Order",clr: Color(0xff53A9F9),height: 24,width: 152,labelcolor: Colors.white,),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextWidget(text: "generate a pop up to fill PO details with old Po details ",),
              ],
            ),
            SizedBox(height: height*.020,),
            TextWidget(text: "additional variants"),
            Divider(color: Colors.grey,thickness: 1,),
         //   ScrollableTable(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Buttons(icon: Icons.check,iconColor: Colors.white,
                  text: "generator Order",clr: Color(0xff53A9F9),height: 27,width: 152,labelcolor: Colors.white,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Buttons(icon: Icons.check,iconColor: Colors.white,
                  text: "Save",clr: Color(0xff53A9F9),height: 32,width: 90,labelcolor: Colors.white,),
              ],
            ),



          ],

        ),
      ),
    );
  }
}
