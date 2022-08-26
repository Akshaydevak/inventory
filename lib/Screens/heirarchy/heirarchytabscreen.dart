import 'package:flutter/material.dart';
import 'package:inventory/Screens/Dashboard.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';

import 'package:inventory/Screens/sales/salesinvoice.dart';
import 'package:inventory/Screens/salesreturn/salesreturngeneral.dart';
import 'package:inventory/commonWidget/Textwidget.dart';





class HeirarchyTabScreen extends StatefulWidget {
  final bool isCollapsed;
  HeirarchyTabScreen(this.isCollapsed);
  @override
  State<HeirarchyTabScreen> createState() => _HeirarchyTabScreenState();
}

class _HeirarchyTabScreenState extends State<HeirarchyTabScreen>with TickerProviderStateMixin {
  bool isClossed=true;
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
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
                        TextWidget(text: "Heirarchy")
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
                                    tabs: [ Text("general",style: TextStyle(color: Colors.black,fontSize: 13),),
                                      Text("Sales Invoice",style: TextStyle(color: Colors.black,fontSize: 13),),
                                    ]),
                              ),

                              Spacer(),
                              TextButton.icon(onPressed: (){
                                isClossed=!isClossed;
                                // print( widget.isClossed);
                                // widget.changer(widget.isClossed);
                                setState(() {

                                });
                              }, icon:Icon(Icons.code), label: Text("Configuration"))
                            ],
                          ),
                        ),
                        Container(
                          width: width,
                          height: height-100,

                          child: TabBarView(
                            physics: NeverScrollableScrollPhysics(),
                            controller: _tabController,
                            children: [
                              HeirarchyGeneralScreen(),
                              Text("ahshsghgsggsa")



                            ],
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
              child: RihtDrawer()
              ,
            )
          ],
        )
    );

  }
}
