import 'package:flutter/material.dart';
import 'package:inventory/Screens/purcahseRecieving.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/widgets/titleIcon.dart';

import 'GeneralScreen.dart';
import 'InventoryInvoiceScreen.dart';
import 'RequestForm.dart';
import 'RequestformRecievingScreen.dart';

class PurchaseScreen extends StatefulWidget {
  final bool isCollapsed;
  PurchaseScreen(this.isCollapsed);
  @override
  State<PurchaseScreen> createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen>with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 5, vsync: this);
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        color:Color(0xffF2F3F5),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: width * .014, right: width * .014),
              width: double.infinity,
              height: 55,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  TextWidget(text: "Purchase")
                ],
              ),
            ),


            Container(
              height:height,
              width: double.infinity,
             color: Colors.white,
              child: Column(
                children: [

                  Container(
                    height: width*.045,
                    decoration:BoxDecoration(   border: Border(bottom: BorderSide(color:Color(0xffF2F3F5), width:5))),

                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [


                        Container(
                          width:MediaQuery.of(context).size.width*.48,
                          height: width*.052,
                          margin: EdgeInsets.only(top:22),

                          child: TabBar(

                            labelStyle: TextStyle(color: Color(0xff000000,),fontWeight: FontWeight.bold),
                              unselectedLabelStyle: TextStyle(color: Color(0xff000000,)),
                              padding: EdgeInsets.only(left: 13),
                              isScrollable: true,
                              //indicatorSize:TabBarIndicatorSize.tab ,

                              indicatorColor: Color(0xff3E4F5B),
                              indicatorWeight: 5,
                              indicator: UnderlineTabIndicator(
                                  borderSide: BorderSide(
                                    width: 4.0,
                                    color: Color(0xff3E4F5B),
                                  ),
                                  insets: EdgeInsets.only(left: width*.014, right: width*.017)),

                              // padding: EdgeInsets.only(bottom: 10),

                              controller: _tabController,
                              tabs: [ Text("General",style: TextStyle(color: Colors.black,fontSize: 13),),
                                Text("Purchase Recieving",style: TextStyle(color: Colors.black,fontSize: 13),),
                                Text("Request Form",style: TextStyle(color:Colors.black,fontSize: 13),),
                                Text("Request form Recieving",style: TextStyle(color: Colors.black,fontSize: 13),),

                                Text("Inventory invoice",style: TextStyle(color:Colors.black,fontSize: 13),)]),
                        ),
                        Container(
                          child: Row(
                            children: [
                              TitleIcon( image:"asset/purchase.png",color: Colors.black54,top:0,size: 0.010,),
                              SizedBox(width: width*.011,),
                              TitleIcon( image:"asset/purchase2.png",color: Colors.black54,top:0,size: 0.010,),
                              SizedBox(width: width*.011,),
                              TitleIcon( image:"asset/purchase3.png",color: Colors.black54,top:0,size: 0.010,),
                              SizedBox(width: width*.011,),
                              TitleIcon( image:"asset/purchase4.png",color: Colors.black54,top:0,size: 0.010,),
                              SizedBox(width: width*.011,),
                              TitleIcon( image:"asset/purchase5.png",color: Colors.black54,top:0,size: 0.010,),
                              SizedBox(width: width*.011,),
                              TitleIcon( image:"asset/purchase6.png",color: Colors.black54,top:0,size: 0.010,),
                              SizedBox(width: width*.011,),


                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                     height: height-100,

                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        GeneralScreen(widget.isCollapsed),
                        PurchaseRecievinScreen(),
                        RequestFormScreen(),
                        RequestFormReceivigScreen(),
                        InventoryInvoiceScreen()


                      ],
                    ),
                  )

                ],
              ),

            ),
          ],
        ),
      )
    );

  }
}
