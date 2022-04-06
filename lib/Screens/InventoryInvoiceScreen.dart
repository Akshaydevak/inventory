import 'package:flutter/material.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';

import 'GeneralScreen.dart';

class InventoryInvoiceScreen extends StatefulWidget {
  @override
  _InventoryInvoiceScreenState createState() => _InventoryInvoiceScreenState();
}

class _InventoryInvoiceScreenState extends State<InventoryInvoiceScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [Row(
            children: [
              Expanded(child: Column(children: [
                SizedBox(height: height*.030,),
                SizedBox(height: height*.030,),
                NewInputCard(
                    controller: controller, title: "Invoice code"),
                SizedBox(height: height*.030,),
                NewInputCard(
                    controller: controller, title: "purchase order code"),
                SizedBox(height: height*.030,),
                NewInputCard(
                    controller: controller, title: "ordered date"),
                SizedBox(height: height*.030,),
                NewInputCard(
                    controller: controller, title: "payment code"),
                SizedBox(height: height*.035,),
                NewInputCard(
                    controller: controller, title: "payment status"),
                SizedBox(height: height*.035,),
                NewInputCard(
                    controller: controller, title: "payment method"),
                SizedBox(height: height*.030,),
                SizedBox(height: height*.030,),
                SizedBox(height: height*.030,),
                SizedBox(height: height*.030,),


              ],)),
              Expanded(child: Column(children: [
                SizedBox(height: height*.030,),
                SizedBox(height: height*.030,),
                NewInputCard(
                    controller: controller, title: "order status"),
                SizedBox(height: height*.030,),
                NewInputCard(
                    controller: controller, title: "invoice status"),
                SizedBox(height: height*.030,),
                NewInputCard(
                    controller: controller, title: "discount"),
                SizedBox(height: height*.030,),
                NewInputCard(
                    controller: controller, title: "foc"),
                SizedBox(height: height*.035,),
                NewInputCard(
                    controller: controller, title: "unit cost"),
                SizedBox(height: height*.035,),
                NewInputCard(
                    controller: controller, title: "variable amount"),
                SizedBox(height: height*.030,),
                SizedBox(height: height*.030,),
                SizedBox(height: height*.030,),
                SizedBox(height: height*.030,),


              ],)),
              Expanded(child: Column(children: [
                SizedBox(height: height*.030,),
                SizedBox(height: height*.030,),
                NewInputCard(
                    controller: controller, title: "excise tax"),
                SizedBox(height: height*.020,),
                NewInputCard(
                    controller: controller, title: "vat"),
                SizedBox(height: height*.020,),
                NewInputCard(
                    controller: controller, title: "actual cost"),
                SizedBox(height: height*.020,),
                NewInputCard(
                    controller: controller, title: "grand total"),
                SizedBox(height: height*.020,),
                NewInputCard(
                    controller: controller, title: "note",height: 90,maxLines: 2,),
                SizedBox(height: height*.010,),
                NewInputCard(
                    controller: controller, title: "remarks",height: 90,maxLines: 2,),




              ],)),
            ],
          ),
            SizedBox(height: 80,),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextWidget(text: "recieving lines"),
              ],
            ),
            Divider(color: Colors.grey,thickness: 1,),
            SizedBox(height: 5,),
           // ScrollableTable(),
            SizedBox(height: 100,),

            Row(
              children: [
                Spacer(),
                // Button(Icons.delete, Colors.red,ctx: context,
                //     text: "Discard",height: 29,
                //     onApply: (){print("Akkk");},
                //     width: 90,labelcolor: Colors.red,iconColor: Colors.red),
                SizedBox(width: width*.008,),

                // Button(Icons.check, Colors.grey,ctx: context,
                //     onApply: (){print("Akkk");},
                //     text: "Discard",height: 29,
                //     width: 90,labelcolor: Colors.white,iconColor: Colors.white,Color:Color(0xff3E4F5B)),
                SizedBox(width: width*.008,),
              ],
            )
          ],

        ),
      ),
    );
  }
}
