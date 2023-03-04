import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:inventory/Screens/Dashboard.dart';
import 'package:inventory/Screens/promotiontab/buy_more/screeens/buy_more_screen.dart';
import 'package:inventory/Screens/promotiontab/sale/screens/sales_mainscreen.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'discount/screens/discount_main.dart';

class PromotionTabScreenTab extends StatefulWidget {
  final bool isCollapsed;
  PromotionTabScreenTab(this.isCollapsed);
  @override
  State<PromotionTabScreenTab> createState() => _PromotionTabScreenTabState();
}

class _PromotionTabScreenTabState extends State<PromotionTabScreenTab>with TickerProviderStateMixin {
  bool isClossed=true;
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this,initialIndex: Variable.subIndex[6]??0);
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
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
              //       TextWidget(text: "Promotion")
              //     ],
              //   ),
              // ),



              Container(
                height:height-100,
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

                    height: height*.18,
                            margin: EdgeInsets.only(top:22),

                            child: TabBar(

                                labelStyle: TextStyle(color: Color(0xff000000,),fontWeight: FontWeight.bold),
                                unselectedLabelStyle: TextStyle(color: Color(0xff000000,)),
                                padding: EdgeInsets.only(left: 13),
                                isScrollable: true,
                                onTap: (val) async {
                                  final SharedPreferences prefs =
                                  await SharedPreferences.getInstance();
                                  Variable.subIndex[6]=val;
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
                                tabs: [
                                  Text(" Promotion Discount",style: TextStyle(color: Colors.black,fontSize: 13),),
                                  Text("Promotion Sale",style: TextStyle(color: Colors.black,fontSize: 13),),

                                  Text("Buy More ",style: TextStyle(color: Colors.black,fontSize: 13),),


                                ]),
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: width*.01,top: height*.019),
                            child: TextButton.icon(onPressed: (){

                              // print( widget.isClossed);
                              // widget.changer(widget.isClossed);
                              setState(() {
                                isClossed=!isClossed;
                                costingTypeMethodeCheck=false;

                              });
                            }, icon:Icon(Icons.code,size: height*.034,), label: Text("Configuration",style: TextStyle(fontSize:height*.024 ),)),
                          )

                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: width,


                        child: TabBarView(
                          controller: _tabController,
                          children: [

                            DiscountMainScreen(),
                            SalesMainScreen(),
                            PromotionBuyMoreMainScreen()





                          ],
                        ),
                      ),
                    )

                  ],
                ),

              ),
            ],
          ),
        ),
        AnimatedPositioned(
          duration: Duration(microseconds: 1000),
          right: isClossed?-250:0,
          child: PromotionRightDrawer()
          ,
        )

      ],
    );

  }
}
class PromotionRightDrawer extends StatelessWidget {
  const PromotionRightDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConfigureDesign(
      childs: Column(
        children: [
          DrawerCared(label: "Offer Period",ontap: (){
            costingTypeMethodeCheck = false;
            showDailogPopUp(
              context,
              ConfigurePopup(
                type: "CreateOfferPeriodCreatePopUp",
              ),


            );
          },),
          DrawerCared(label: "Offer Group",ontap: (){
            costingTypeMethodeCheck = false;
            showDailogPopUp(
              context,
              ConfigurePopup(
                type: "CreateOfferGroupPopUp",
              ),


            );
          },),
        ],
      ),

    );
  }
}
