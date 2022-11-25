import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:inventory/Screens/promotiontab/sale/screens/sales_mainscreen.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    TabController _tabController = TabController(length: 1, vsync: this,initialIndex: Variable.subIndex[6]??0);
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return SingleChildScrollView(
        child:
        Stack(
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
                                    tabs: [ Text("Sale",style: TextStyle(color: Colors.black,fontSize: 13),),


                                    ]),
                              ),
                              Spacer(),
                              // TextButton.icon(onPressed: (){
                              //
                              //   // print( widget.isClossed);
                              //   // widget.changer(widget.isClossed);
                              //   setState(() {
                              //     isClossed=!isClossed;
                              //     costingTypeMethodeCheck=false;
                              //
                              //   });
                              // }, icon:Icon(Icons.code), label: Text("Configuration"))

                            ],
                          ),
                        ),
                        Container(
                          width: width,
                          height: height-100,

                          child: TabBarView(
                            controller: _tabController,
                            children: [
                              SalesMainScreen()





                            ],
                          ),
                        )

                      ],
                    ),

                  ),
                ],
              ),
            ),
            // AnimatedPositioned(
            //   duration: Duration(microseconds: 1000),
            //   right: isClossed?-250:0,
            //   child: VariantRightDrawer()
            //   ,
            // )

          ],
        )
    );

  }
}