import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:inventory/Screens/sales/general/general.dart';
import 'package:inventory/Screens/sales/invoice/ipayment_list.dart';

import 'package:inventory/Screens/sales/salesinvoice.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SalesScreen extends StatefulWidget {
  final bool isCollapsed;
  SalesScreen(this.isCollapsed);
  @override
  State<SalesScreen> createState() => _SalesScreenState();
}

class _SalesScreenState extends State<SalesScreen>with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this,initialIndex:  Variable.subIndex[2]??0);
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Container(
      color:Color(0xffF2F3F5),
      child: Column(
        children: [
          // Container(
          //   margin: EdgeInsets.only(
          //       left: width * .014, right: width * .014),
          //   width: double.infinity,
          //   height: 55,
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       SizedBox(
          //         height: height * 0.02,
          //       ),
          //       TextWidget(text: "Sales")
          //     ],
          //   ),
          // ),



          Container(
            height:height-height*.16,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [

                Container(
                  height: height/10,
                  decoration:BoxDecoration(   border: Border(bottom: BorderSide(color:Color(0xffF2F3F5), width:5))),

                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                      Container(
                        width:MediaQuery.of(context).size.width/1.8,
                        padding: EdgeInsets.only(top: height*.04),
                        height: height*.18,

                        child: TabBar(

                            labelStyle: TextStyle(color: Color(0xff000000,),fontWeight: FontWeight.bold),
                            unselectedLabelStyle: TextStyle(color: Color(0xff000000,)),
                            padding: EdgeInsets.only(left: 13),
                            isScrollable: true,
                            onTap: (val) async {
                              final SharedPreferences prefs =
                              await SharedPreferences.getInstance();
                              Variable.subIndex[2]=val;
                              final List<String> strs = Variable.subIndex.map((e) => e.toString()).toList();
                              prefs.setString('key', jsonEncode(strs)); // Encode the list here







                            },
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
                            tabs: [ Text("General",style: TextStyle(color: Colors.black,fontSize: width*.011)),
                              Text("Sales Invoice",style:TextStyle(color: Colors.black,fontSize: width*.011,)),
                              Text("Payment Status",style:TextStyle(color: Colors.black,fontSize: width*.011,)),
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
                Expanded(
                  child: Container(
                    width: width,


                    child: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      controller: _tabController,
                      children: [
                        SalesGeneral(),
                        SalesInvoiceScreen(),
                        SalesPaymentListPActh()



                      ],
                    ),
                  ),
                )

              ],
            ),

          ),
        ],
      ),
    );

  }
}
