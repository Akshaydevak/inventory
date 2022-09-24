import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Invetory/inventorysearch_cubit.dart';

import 'package:inventory/Screens/purchasreturn/cubits/cubit/vertical/vertiacal_cubit.dart';
import 'package:inventory/Screens/purchasreturn/pages/purchasereturn.dart';
import 'package:inventory/Screens/register/screens/registerscreen.dart';

import 'package:inventory/Screens/sales/general/cubit/sales_general_vertical/salesgeneralvertical_cubit.dart';
import 'package:inventory/Screens/sales/salestab.dart';
import 'package:inventory/Screens/salesreturn/salesreturntab.dart';

import 'package:inventory/Screens/sidemenuScreen.dart';
import 'package:inventory/Screens/titleScreen.dart';
import 'package:inventory/Screens/variant/productmodul_tab.dart';
import 'package:inventory/commonWidget/Navigationprovider.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/cubit/general_purchase_read_cubit.dart';
import 'package:inventory/cubits/cubit/cubit/purchase_stock_cubit.dart';
import 'package:inventory/cubits/cubit/table_details_cubit_dart_cubit.dart';
import 'package:inventory/purchaseorderpostcubit/cubit/purchaseorderpost_cubit.dart';
import 'package:inventory/widgets/MenuIcon.dart';
import 'package:inventory/widgets/custom_inputdecoration.dart';
import 'package:inventory/widgets/itemmenu.dart';
import 'package:inventory/widgets/searchTextfield.dart';
import 'package:inventory/widgets/titleIcon.dart';
import 'package:provider/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:inventory/model/purchaseorder.dart';

import '../commonWidget/sharedpreference.dart';
import '../printScreen.dart';
import 'PurchaseSceen.dart';
import 'RightMenuscreen.dart';
import 'heirarchy/heirarchytabscreen.dart';
import 'logi/login.dart';

class DashBoard extends StatefulWidget {
  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> with TickerProviderStateMixin {
  bool isCollapsed = false;
  bool isClossed = true;
  bool selected = false;
  bool pressed = false;
  List<PurchaseOrder>result=[];
  TextEditingController itemsearch=TextEditingController();




  isClosseChange(bool val) {
    isClossed=val;
    setState(() {

    });
  }
  final ScrollController _scrollController = ScrollController();
  late AutoScrollController controller;
  @override
  void initState() {
    // getvalidationData();
    // context.read<GetVariantCubit>().getVariantList();

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 7, vsync: this,initialIndex: 1);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    final provider = Provider.of<NavigationProvider>(context, listen: false);
    isCollapsed = provider.isCollapsed;
    print("iscollapsed" + isCollapsed.toString());

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => InventorysearchCubit()..getInventorySearch("code"),
        ),
        BlocProvider(
          create: (context) => GeneralPurchaseReadCubit(),
        ),
        BlocProvider(
          create: (context) => PurchaseStockCubit(),
        ),
        BlocProvider(
          create: (context) => TableDetailsCubitDartCubit(),
        ),
        BlocProvider(
          create: (context) => VertiacalCubit(),
        ),



      ],
      child: Builder(
          builder: (context) {
            return BlocConsumer<InventorysearchCubit, InventorysearchState>(

              listener: (context, state) {
                state.maybeWhen(orElse:(){},
                    error: (){
                      print("error");
                    },
                    success: (list){
                      print("listtt"+list.toString());
                      result=list.data;setState(() {
                        print("Here is the result");
                        print(result);
                        print(result[0].id);
                        if(result.isNotEmpty)
                          Variable.verticalid=result[0].id;
                        context
                            .read<GeneralPurchaseReadCubit>()
                            .getGeneralPurchaseRead(result[0].id!);
                        print("Variable.ak"+Variable.verticalid.toString());
                        setState(() {

                        });

                        print( Variable.verticalid);
                        print("idssss"+result[0].id.toString());
                      });

                    }
                );


              },
              builder: (context, state) {


                return Scaffold(

                    body: Stack(
                      children: [
                        Row(
                          children: [
                            SideMenuScreen(),
                            Expanded(
                                child: Container(
                                  color: Color(0xffEDF1F2),
                                  child: Column(
                                    children: [
                                      // Titlecard(_tabController,pressed),
                                      TitleScreen(tabController: _tabController,isCollapsed: isCollapsed,isClossed:isClossed,changer:isClosseChange),



                                      Expanded(
                                        child: Row(
                                          children: [



                                            Expanded(
                                                child: Container(
                                                  child: Column(
                                                    children: [

                                                      Expanded(
                                                        child: Container(
                                                          margin: EdgeInsets.only(
                                                              left: width * .014, right: width * .014),
                                                          color: Color(0xffFFFFFF),
                                                          child: TabBarView(
                                                            physics: NeverScrollableScrollPhysics(),
                                                            controller: _tabController,
                                                            children: [
                                                              RegisterScreen(),
                                                              // PrintScreen(),
                                                              PurchaseScreen(isCollapsed),
                                                              PurchaseReturn(),
                                                              SalesScreen(isCollapsed),
                                                              SalesReturnScreen(isCollapsed),
                                                              HeirarchyTabScreen(isCollapsed),
                                                              ProductModuleTab(isCollapsed),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                            RightMenuScreen()
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ),
                        // AnimatedPositioned(
                        //   duration: Duration(microseconds: 1000),
                        //   right: isClossed?-250:0,
                        //   child: RihtDrawer()
                        // ,
                        // )
                      ],
                    ));
              },
            );
          }
      ),
    );
  }
}

Widget RectangleContainer(String url, BuildContext context) {
  return Container(
    // height: 25,
    // width: 25,
    height: MediaQuery.of(context).size.width * .019,
    width: MediaQuery.of(context).size.width * .019,
    color: Colors.white,
    child: Center(
        child: Image.asset(
          url,
          height: 10,
          width: 10,
        )),
  );
}
class TitleScreen extends StatefulWidget {
  final TabController tabController;
  final Function changer;
  bool  isCollapsed;
  bool  isClossed;
  TitleScreen({required this.tabController,this.isCollapsed=false,required this.isClossed,required this.changer});
  @override
  _TitleScreenState createState() => _TitleScreenState();
}

class _TitleScreenState extends State<TitleScreen> {

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NavigationProvider>(context, listen: false);

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return    Container(
      width: size.width,
      height: size.height / 6.5,
      color: Color(0xff3E4F5B),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width * .024,
              ),
              Container(
                  margin: EdgeInsets.only(top: height * .0334
                    //size.height*.003,
                  ),
                  child: Image.asset(
                    'asset/logo1.png',
                    color: Colors.white,
                    height: height * .060,
                    width: size.width * .08,
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                width: size.width * .03,
              ),
              searchField(context),
              SizedBox(
                width: size.width * .054,
              ),
              TitleIcon(
                image: "asset/icon1.png",
              ),
              SizedBox(
                width: size.width * .023,
              ),
              TitleIcon(
                image: "asset/icon2.png",
              ),
              SizedBox(
                width: size.width * .023,
              ),
              TitleIcon(
                image: "asset/bell2.png",
              ),
              SizedBox(
                width: size.width * .023,
              ),
              TitleIcon(
                image: "asset/vector1.png",
              ),
              SizedBox(
                width: size.width * .023,
              ),
              CommonIcon(
                toolTip: "settings",
                size: 20,
                iconData: Icons.settings_outlined,
                onTap: () {
                  showDailogPopUp(
                      context,
                      OpenSettings());

                },
              ),
              // TitleIcon(
              //   image: "asset/setting.png",
              // ),
              SizedBox(
                width: size.width * .03,
              ),
              Container(
                  margin: EdgeInsets.only(
                    top: height * .035,
                  ),
                  child: Text(
                    "William joskinode",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width * .01,
                        fontWeight: FontWeight.w400),
                  )),
              SizedBox(
                width: size.width * .01,
              ),
              Container(
                margin: EdgeInsets.only(
                  top: height * .028,
                ),
                child: CircleAvatar(
                    foregroundImage: AssetImage(
                      "asset/profile.png",
                    ),
                    radius: size.width * .01),
              ),
              SizedBox(
                width: size.width * .03,
              ),
              TitleIcon(
                image: "asset/menu.png",
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              provider. isCollapsed == false
                  ? SizedBox(
                width: size.width * .1680,
              )
                  : SizedBox(width: width * .015),
              InkWell(
                onTap: () {
                  provider.toggleIsCollapsed();
                  print("taped");

                  print(provider.isCollapsed.toString());
                  setState(() {
                    widget.  isCollapsed = provider.isCollapsed;

                  });
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: size.height * .008),
                  alignment: Alignment.center,
                  height: size.width * .016,
                  width: size.width * .016,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: Colors.white,
                    ),

                    //more than 50% of width makes circle
                  ),
                  child: Icon(
                    widget.   isCollapsed == false ? Icons.remove : Icons.add,
                    color: Colors.white,
                    size: size.width * .010,
                  ),
                ),
              ),
              SizedBox(
                width: size.width * .002,
              ),
              Container(
                // width: size.width * .298,
                height: size.height * .0455,
                child: TabBar(
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    // labelPadding: EdgeInsets.only(left:size.width * .024,),
                    // indicatorPadding: EdgeInsets.only(left:size.width * .014,),
                    padding: EdgeInsets.zero,
                    labelColor: Colors.white,
                    labelStyle: TextStyle(
                      fontSize: height * 00.022,
                      fontWeight: FontWeight.w600,
                    ),
                    unselectedLabelColor: Color(0xffEDF1F2),
                    unselectedLabelStyle: TextStyle(
                        fontSize: height * 00.022,
                        fontStyle: FontStyle.normal),
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(
                        width: height * .008,
                        color: Colors.white,
                      ),
                      // insets: EdgeInsets.only(
                      //     left: size.width * .015,
                      //     top: size.width * .023,
                      //     right: size.width * .03),
                    ),
                    indicatorColor: Colors.white,
                    indicatorWeight: height * .001,
                    // padding: EdgeInsets.only(bottom: 10),

                    controller: widget.tabController,
                    physics: NeverScrollableScrollPhysics(),
                    tabs: [
                      Text(
                        "Dashboard",
                        style: TextStyle(fontSize: height * 00.022),
                      ),
                      Text(
                        "Purchase",
                        style: TextStyle(fontSize: height * 00.022),
                      ),
                      Text(
                        "Purchase return",
                        style: TextStyle(fontSize: height * 00.022),
                      ),
                      Text(
                        "Sales",
                        style: TextStyle(fontSize: height * 00.022),
                      ),
                      Text(
                        "Sales Return",
                        style: TextStyle(fontSize: height * 00.022),
                      ),
                      Text(
                        "Heirarchy",
                        style: TextStyle(fontSize: height * 00.022),
                      ),
                      Text(
                        "Variant",
                        style: TextStyle(fontSize: height * 00.022),
                      ),
                    ]),
              ),
              // Spacer(),
              // TextButton.icon(onPressed: (){
              //   widget.isClossed=!widget.isClossed;
              //   print( widget.isClossed);
              //   widget.changer(widget.isClossed);
              //   setState(() {
              //
              //   });
              // }, icon:Icon(Icons.code), label: Text("Configuration"))
            ],
          )
        ],
      ),
    );
  }
}




class RihtDrawer extends StatefulWidget {
  @override
  _RihtDrawerState createState() => _RihtDrawerState();
}

class _RihtDrawerState extends State<RihtDrawer> {
  List<String>drawerItems=["UOM group","Base UOM","Division"];
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: h / 6.5),
      height: h,
      width: w*.14,
      color:  Color(0xffEDF1F2),
      child: Column(
        children: [
          SizedBox(height: 20,),
          DrawerCared(label: "uomGroup_patch",ontap: (){

            showDailogPopUp(
              context,
              ConfigurePopup(
                type: "uomGroup_patch",
              ),


            );
          },),
          greyDivider(),

          DrawerCared(ontap: (){

            showDailogPopUp(
              context,
              ConfigurePopup(
                type: "uom_patch",
              ),


            );
          },label: "Base UOM",),
          greyDivider(),
          DrawerCared(ontap: (){

            showDailogPopUp(
              context,
              ConfigurePopup(
                type: "division_patch",
              ),


            );
          }, label: "Division"),
          greyDivider(),
          DrawerCared(ontap: (){

            showDailogPopUp(
              context,
              ConfigurePopup(
                type: "categoryPatch_group",
              ),


            );
          }, label: "Category"),
          greyDivider(),
          DrawerCared(ontap: (){

            showDailogPopUp(
              context,
              ConfigurePopup(
                type: "categoryPatch_group",
              ),


            );
          }, label: "Sub Category"),
          greyDivider(),
          DrawerCared(ontap: (){

            showDailogPopUp(
              context,
              ConfigurePopup(
                type: "GroupPatch_PopUp",
              ),


            );
          }, label: "Group"),
          greyDivider(),


          DrawerCared(ontap: (){

            showDailogPopUp(
              context,
              ConfigurePopup(
                type: "patchUom-group",
              ),


            );
          }, label: "Create Material"),
          greyDivider(),


          DrawerCared(ontap: (){

            showDailogPopUp(
              context,
              ConfigurePopup(
                type: "StaticPatch-group",
              ),


            );
          }, label: "Create Static"),
          greyDivider(),
          DrawerCared(ontap: (){

            showDailogPopUp(
              context,
              ConfigurePopup(
                type: "patchbrand-group",
              ),


            );
          }, label: "Create Brand"),          greyDivider(),
          DrawerCared(ontap: (){

            showDailogPopUp(
              context,
              ConfigurePopup(
                type: "create_framework",
              ),


            );
          }, label: "framework"),




                ],
      ),
    );
  }
}


class DrawerCared extends StatefulWidget {

  final String label ;
  final Function ontap;
  DrawerCared({required this.label,required,required this.ontap });

  @override
  _DrawerCaredState createState() => _DrawerCaredState();
}

class _DrawerCaredState extends State<DrawerCared> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        widget.ontap();
      },
      child: Container(
        height: 30,
        child: Row(
          children: [


            SizedBox(width: 20,),
            Text(widget.label,style: TextStyle(color: Colors.black),)

          ],
        ),

      ),
    );
  }
}
