import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Invetory/inventorysearch_cubit.dart';
import 'package:inventory/Screens/purcahseRecieving.dart';
import 'package:inventory/Screens/purchaseorder/invoice/screens/invoice_mainScreen.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/table_details_cubit_dart_cubit.dart';
import 'package:inventory/model/purchase_order_table_model.dart';
import 'package:inventory/widgets/titleIcon.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  PurchaseOrderTableModel? purchaseTable;
  double ? unitCost=0;

  @override
  Widget build(BuildContext context) {

    TabController _tabController = TabController(length: 5, vsync: this,initialIndex: Variable.subIndex[0]??0);
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return MultiBlocProvider(
  providers: [
    BlocProvider(
  create: (context) => TableDetailsCubitDartCubit(),
),
    BlocProvider(
      create: (context) =>
      InventorysearchCubit()..getInventorySearch("code"),
    ),
  ],
  child: BlocListener<TableDetailsCubitDartCubit, TableDetailsCubitDartState>(
  listener: (context, state) {
    state.maybeWhen(orElse: (){},
        error: (){print("error");},success: (data){
          print("++++++++++++++++++++++++++++++++++++++++++++++SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS");
          print(data);
          purchaseTable=data;
          unitCost=purchaseTable?.unitCost;

          print("unitCost+++++++++++++++++++++++++++"+unitCost.toString());
          print(purchaseTable);


        });
  },
  child: Container(
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
        //       TextWidget(text: "Purchase")
        //     ],
        //   ),
        // ),


        Container(
          height:height-100,
          width: double.infinity,
         color: Colors.white,
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Container(

                height: height/10,
                 decoration:BoxDecoration(     border: Border(bottom: BorderSide(color:Color(0xffF2F3F5), width:5))),

                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


                    Container(
                       width:MediaQuery.of(context).size.width/1.8,
                       padding: EdgeInsets.only(top: height*.04),
                       height: height*.18,
                     // margin: EdgeInsets.only(top:width*.012),

                      child: TabBar(
// labelPadding: EdgeInsets.all(8),

                        labelStyle: TextStyle(color: Color(0xff000000,),fontWeight: FontWeight.bold),
                          unselectedLabelStyle: TextStyle(color: Color(0xff000000,),fontSize: width/22,fontWeight: FontWeight.w400),
                          // padding: EdgeInsets.only(left: 13,),
                          isScrollable: true,
                          physics: NeverScrollableScrollPhysics(),
                          indicatorSize: TabBarIndicatorSize.label,
                          onTap: (val) async {
                            final SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            Variable.subIndex[0]=val;
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
                             // insets: EdgeInsets.only(left: width*.014, right: width*.017)
                          ),



                          controller: _tabController,
                          tabs: [ Text("General",style: TextStyle(color: Colors.black,fontSize: width*.011),),
                            Text("Purchase Receiving",style: TextStyle(color: Colors.black,fontSize: width*.011),),
                            Text("Request Form",style: TextStyle(color:Colors.black,fontSize: width*.011),),
                            Text("Request Form Receiving",style: TextStyle(color: Colors.black,fontSize: width*.011),),

                            Text("Inventory invoice",style: TextStyle(color:Colors.black,fontSize: width*.011),)]),
                    ),
                    // Divider(
                    //   color: Colors.red,
                    //   thickness: 2,
                    // ),
                    // Container(
                    //
                    //   child: Row(
                    //     children: [
                    //       TitleIcon( image:"asset/purchase.png",color: Colors.black54,top:0,size: 0.010,),
                    //       SizedBox(width: width*.011,),
                    //       TitleIcon( image:"asset/purchase2.png",color: Colors.black54,top:0,size: 0.010,),
                    //       SizedBox(width: width*.011,),
                    //       TitleIcon( image:"asset/purchase3.png",color: Colors.black54,top:0,size: 0.010,),
                    //       SizedBox(width: width*.011,),
                    //       TitleIcon( image:"asset/purchase4.png",color: Colors.black54,top:0,size: 0.010,),
                    //       SizedBox(width: width*.011,),
                    //       TitleIcon( image:"asset/purchase5.png",color: Colors.black54,top:0,size: 0.010,),
                    //       SizedBox(width: width*.011,),
                    //       TitleIcon( image:"asset/purchase6.png",color: Colors.black54,top:0,size: 0.010,),
                    //       SizedBox(width: width*.011,),
                    //
                    //
                    //     ],
                    //   ),
                    // )
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
                      GeneralScreen(widget.isCollapsed,purchaseTable,unitcost:unitCost),
                      PurchaseRecievinScreen(
                        // isCollapsed:widget.isCollapsed,
                      ),
                      RequestFormScreen(),
                      RequestFormReceivigScreen(),
                      InventoryInvoiceScreen()


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
),
);

  }
}
