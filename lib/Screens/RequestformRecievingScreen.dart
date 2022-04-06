
import 'package:flutter/material.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';

class RequestFormReceivigScreen extends StatefulWidget {
  @override
  _RequestFormReceivigScreenState createState() => _RequestFormReceivigScreenState();
}

class _RequestFormReceivigScreenState extends State<RequestFormReceivigScreen> {
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
        Expanded(child:
        Column(children: [
          SizedBox(height: height*.030,),
          SizedBox(height: height*.030,),
          SizedBox(height:10,),
          NewInputCard(
              controller: controller, title: "Order code"),
          SizedBox(height: height*.030,),
          NewInputCard(
              controller: controller, title: "receiving code"),
          SizedBox(height: height*.030,),
          NewInputCard(
              controller: controller, title: "Ordered date"),
          SizedBox(height: height*.030,),
          NewInputCard(
              controller: controller, title: "Ordered status"),
          SizedBox(height: height*.030,),
          NewInputCard(
              controller: controller, title: "payment status"),
          SizedBox(height: height*.030,),
          NewInputCard(
              controller: controller, title: "invoice status"),
          SizedBox(height: height*.030,),

        ],)),
        Expanded(child:
        Column(children: [
          SizedBox(height: height*.030,),
          SizedBox(height: height*.030,),
          SizedBox(height: 10,),
          NewInputCard(
              controller: controller, title: "discount"),
          SizedBox(height: height*.030,),
          NewInputCard(
              controller: controller, title: "foc"),
          SizedBox(height: height*.030,),
          NewInputCard(
              controller: controller, title: "Unit cost"),
          SizedBox(height: height*.030,),
          NewInputCard(
              controller: controller, title: "variable amount"),
          SizedBox(height: height*.030,),
          NewInputCard(
              controller: controller, title: "excess tax"),
          SizedBox(height: height*.030,),
          NewInputCard(
              controller: controller, title: "vat"),
          SizedBox(height: height*.030,),

        ],)),
        Expanded(child:
        Column(children: [
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
          SizedBox(height: height*.032,),

        ],)),
      ],
    ),
    SizedBox(height: 5,),
    Row(mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextWidget(text: "recieving lines"),
      ],
    ),
    Divider(color: Colors.grey,thickness: 1,),
    SizedBox(height: 5,),
   // ScrollableTable(),
    SizedBox(height: 33,),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextWidget(text: "additional variants"),
      ],
    ),
    SizedBox(height: 5,),
   // ScrollableTable(),
    SizedBox(height: 1,),
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Buttons(icon: Icons.check,iconColor: Colors.white,
          text: "generator Order",clr: Color(0xff53A9F9),height: 24,width: 152,labelcolor: Colors.white,),
      ],
    ),
    SizedBox(height: 20,),
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Buttons(icon: Icons.check,iconColor: Colors.white,
          text: "Save",clr: Color(0xff53A9F9),height: 32,width: 90,labelcolor: Colors.white,),
      ],
    )




  ],
),
      ),
    );
  }
}
