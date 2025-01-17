import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:inventory/Screens/Dashboard.dart';

import 'package:inventory/Screens/sales/salesinvoice.dart';
import 'package:inventory/Screens/salesreturn/salesreturngeneral.dart';
import 'package:inventory/Screens/variant/channel_alloction/variantchannealloctionscreen.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/screens/costing_mainscreen.dart';
import 'package:inventory/Screens/variant/channels2allocation/screens/channel2stoockalloction_main.dart';
import 'package:inventory/Screens/variant/stock/screens/stockScreen.dart';
import 'package:inventory/Screens/variant/variantdetails/variant.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/widgets/custom_inputdecoration.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'channel_stockAllocation/screens/channel_stock_allocation.dart';
import 'general/productmodulegeneral.dart';






class ProductModuleTab extends StatefulWidget {
  final bool isCollapsed;
  ProductModuleTab(this.isCollapsed);
  @override
  State<ProductModuleTab> createState() => _ProductModuleTabState();
}

class _ProductModuleTabState extends State<ProductModuleTab>with TickerProviderStateMixin {
  bool isClossed=true;
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 7, vsync: this,initialIndex: Variable.subIndex[5]??0);
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
              //       TextWidget(text: "Variant")
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
                            width:MediaQuery.of(context).size.width/1.6,
                            padding: EdgeInsets.only(top: height*.04),
                            height: height*.18,

                            child: TabBar(

                                labelStyle: TextStyle(color: Color(0xff000000,),fontWeight: FontWeight.bold),
                                unselectedLabelStyle: TextStyle(color: Color(0xff000000,)),
                                // padding: EdgeInsets.only(left: 4),
                                isScrollable: true,
                                onTap: (val) async {
                                  final SharedPreferences prefs =
                                  await SharedPreferences.getInstance();
                                  Variable.subIndex[5]=val;
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
                                tabs: [ Text("General",style: TextStyle(color: Colors.black,fontSize: width*.011),),
                                  Text("Variant Detail",style:TextStyle(color: Colors.black,fontSize: width*.011),),
                                  Text("Channel Allocation",style: TextStyle(color: Colors.black,fontSize: width*.011),),
                                  Text("Stock",style: TextStyle(color: Colors.black,fontSize: width*.011),),
                                  Text("Channel Type Stock Allocation",style: TextStyle(color: Colors.black,fontSize: width*.011),),
                                  Text("Channel Stock Allocation",style: TextStyle(color: Colors.black,fontSize: width*.011),),
                                  Text("Channel Costing Allocation",style: TextStyle(color: Colors.black,fontSize: width*.011),),
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
                          physics: NeverScrollableScrollPhysics(),
                          controller: _tabController,
                          children: [
                            ProductModulGeneralScreen(),
                            VariantDetailScreen(),
                            VariantChannelAllocationScreen(),
                            StockScreen(),
                            ChannelStockAllocateScreen(),
                            ChannelTypeStockAllocation(),
                            ChannelCostingMainScreen(),




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
          child: VariantRightDrawer()
          ,
        )

      ],
    );

  }
}


class VariantRightDrawer extends StatefulWidget {
  @override
  _VariantRightDrawerState createState() => _VariantRightDrawerState();
}

class _VariantRightDrawerState extends State<VariantRightDrawer> {

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return ConfigureDesign(
        childs: Column(

        children: [
          // SizedBox(height: 20,),
          DrawerCared(label: "Costing Method Type",ontap: (){
            costingTypeMethodeCheck = false;
            showDailogPopUp(
              context,
              ConfigurePopup(
                type: "create_costingtype",
              ),


            );
          },),
          greyDivider(),
          DrawerCared(label: "Costing Method ",ontap: (){
            costingTypeMethodeCheck = false;

            showDailogPopUp(
              context,
              ConfigurePopup(
                type: "create_costingCreate",
              ),


            );
          },),
          greyDivider(),
          DrawerCared(label: "Pricing  Type Group ",ontap: (){
            costingTypeMethodeCheck = false;

            showDailogPopUp(
              context,
              ConfigurePopup(
                type: "create_pricing",
              ),


            );
          },),
          greyDivider(),
          DrawerCared(label: "Pricing Group ",ontap: (){
            costingTypeMethodeCheck = false;

            showDailogPopUp(
              context,
              ConfigurePopup(
                type: "PricingCreatePopUp",
              ),


            );
          },
          ),
          DrawerCared(label: "Stock Partition ",ontap: (){
            costingTypeMethodeCheck = false;

            showDailogPopUp(
              context,
              ConfigurePopup(
                type: "StockPartitionPopUp",
              ),


            );
          },
          ),
          // DrawerCared(label: "Linked Item ",ontap: (){
          //   costingTypeMethodeCheck = false;
          //
          //   showDailogPopUp(
          //     context,
          //     ConfigurePopup(
          //       type: "LinkedItemCreatePopUp",
          //     ),
          //
          //
          //   );
          // },),
          // DrawerCared(label: "Linked Item ",ontap: (){
          //   costingTypeMethodeCheck = false;
          //
          //   showDailogPopUp(
          //     context,
          //     ConfigurePopup(
          //       veritiaclid:2,
          //       type: "LinkedItemCreatePopUp",
          //     ),
          //
          //
          //   );
          //
          //
          //
          // },),





        ],
      ),
    );
  }
}
