import 'package:flutter/material.dart';
import 'package:inventory/Screens/purchasreturn/pages/general.dart';
import 'package:inventory/Screens/purchasreturn/pages/purchasereturninvoice.dart';
import 'package:inventory/commonWidget/Textwidget.dart';

class PurchaseReturn extends StatefulWidget {
  @override
  State<PurchaseReturn> createState() => _PurchaseReturnState();
}

class _PurchaseReturnState extends State<PurchaseReturn>with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return  SingleChildScrollView(
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
                  TextWidget(text: "Sales")
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
                                Text("Purchase Return Invoice",style: TextStyle(color: Colors.black,fontSize: 13),),
                              ]),
                        ),
                        Container(
                          child: Row(
                            children: [



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
                        PurchaseReturnGeneral(),
                        PurchaseReturnInvoice(),
                        // SalesGeneral(),
                        // SalesInvoiceScreen()



                      ],
                    ),
                  )

                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}