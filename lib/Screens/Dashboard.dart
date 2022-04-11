import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Invetory/inventorysearch_cubit.dart';
import 'package:inventory/Screens/salesscreen.dart';
import 'package:inventory/Screens/sidemenuScreen.dart';
import 'package:inventory/Screens/titleScreen.dart';
import 'package:inventory/commonWidget/Navigationprovider.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/purchaseorderpostcubit/cubit/purchaseorderpost_cubit.dart';
import 'package:inventory/widgets/MenuIcon.dart';
import 'package:inventory/widgets/itemmenu.dart';
import 'package:inventory/widgets/searchTextfield.dart';
import 'package:inventory/widgets/titleIcon.dart';
import 'package:provider/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:inventory/model/purchaseorder.dart';

import 'PurchaseSceen.dart';
import 'RightMenuscreen.dart';

class DashBoard extends StatefulWidget {
  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> with TickerProviderStateMixin {
  bool isCollapsed = false;
  bool selected = false;
  bool pressed = false;
  List<PurchaseOrder>result=[];
  TextEditingController itemsearch=TextEditingController();

  test(bool val) {}
  final ScrollController _scrollController = ScrollController();
  late AutoScrollController controller;
  @override
  void initState() {
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
    TabController _tabController = TabController(length: 3, vsync: this,initialIndex: 1);
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
      create: (context) => PurchaseorderpostCubit(),
    ),
  ],
  child: BlocConsumer<InventorysearchCubit, InventorysearchState>(
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
      });

    }
    );


  },
  builder: (context, state) {
    return Scaffold(

        body: Row(
      children: [
        SideMenuScreen(),
        Expanded(
            child: Container(
          color: Color(0xffEDF1F2),
          child: Column(
            children: [
              // Titlecard(_tabController,pressed),
              Container(
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
                        TitleIcon(
                          image: "asset/setting.png",
                        ),
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
                        isCollapsed == false
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
                              isCollapsed = provider.isCollapsed;
                              print("value" + isCollapsed.toString());
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
                              isCollapsed == false ? Icons.remove : Icons.add,
                              color: Colors.white,
                              size: size.width * .010,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .002,
                        ),
                        Container(
                          width: size.width * .298,
                          height: size.height * .0455,
                          child: TabBar(
                              isScrollable: true,
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
                                insets: EdgeInsets.only(
                                    left: size.width * .015,
                                    top: size.width * .023,
                                    right: size.width * .03),
                              ),
                              indicatorColor: Colors.white,
                              indicatorWeight: height * .001,
                              // padding: EdgeInsets.only(bottom: 10),

                              controller: _tabController,
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
                                  "sales",
                                  style: TextStyle(fontSize: height * 00.022),
                                ),
                              ]),
                        )
                      ],
                    )
                  ],
                ),
              ),

              Expanded(
                child: Row(
                  children: [
                    Visibility(
                      visible: !isCollapsed,
                      child: Container(
                        height: double.infinity,
                        width: MediaQuery.of(context).size.width * .172,
                        //width: 232,
                        color: Color(0xff1D2C37),
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.all(5),
                                child: SearchTextfiled(
                                  color: Color(0xff2B3944),
                                  hintText: "Search...",
                                  ctrlr: itemsearch,
                                  onChanged:( va){
                                    context.read<InventorysearchCubit>().getSearch(itemsearch.text);

                                  },

                                )),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .008,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: width * 0.009,
                                right: width * 0.007,
                              ),

                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RectangleContainer(
                                      "asset/rect1.png", context),
                                  SizedBox(
                                    width: width * .003,
                                  ),
                                  Container(
                                    color: Color(0xff2B3944),
                                    //color: Colors.red,
                                    //width: 131,
                                    height: width * .0197,
                                    width: width * .111,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: width * .001,
                                        ),
                                        Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 14,
                                        ),
                                        SizedBox(
                                          width: width * .007,
                                        ),
                                        Container(
                                          child: Text(
                                            "Add a Varient",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: width * .010,
                                                overflow:
                                                    TextOverflow.ellipsis),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * .003,
                                  ),
                                  RectangleContainer(
                                      "asset/rect2.png", context),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * .015,
                            ),
                            Divider(
                              height: 0,
                              color: Color(0xff2B3944),
                              // thickness: 1,
                            ),
                            Expanded(
                                child: Container(
                                    height: 0,
                                    child: ListView.separated(

                                      separatorBuilder: (context, index) {
                                        return Divider(
                                          height: 0,
                                          color: Color(0xff2B3944),
                                          // thickness: 1,
                                        );
                                      },
                                      physics: ScrollPhysics(),
                                      controller: controller,
                                      itemBuilder: (context, index) {
                                        return AutoScrollTag(
                                          highlightColor: Colors.red,
                                          controller: controller,
                                          key: ValueKey(index),
                                          index: index,
                                          child:ItemCard(item: result[index].orderCode,
                                            id: result[index].id.toString(),


                                          )

                                        );
                                      },
                                      itemCount: result.length,
                                    )
                                    //     Container(
                                    //   decoration: BoxDecoration(
                                    //     border: Border(
                                    //       top: BorderSide(width: 16.0, color: Colors.white),
                                    //       bottom: BorderSide(width: 16.0, color: Colors.red),
                                    //     ),
                                    //   ),
                                    //   child: ListTile(
                                    //
                                    //
                                    //     title: Text(
                                    //       "name",
                                    //       style: TextStyle(fontSize: 11, color: Colors.white,fontWeight: FontWeight.bold),
                                    //     ),subtitle:
                                    //   Text(
                                    //     "name",
                                    //     style: TextStyle(fontSize: 15, color: Colors.white,fontWeight: FontWeight.w400),
                                    //   ),
                                    //   ),
                                    // ) )))

                                    ))
                          ],
                        ),
                      ),
                    ),

                    //******************************************************************** */
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
                                controller: _tabController,
                                children: [
                                  Text("Akshay"),
                                  PurchaseScreen(isCollapsed),
                                  SalesScreen(isCollapsed),
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
    ));
  },
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
    color: Color(0xff2B3944),
    child: Center(
        child: Image.asset(
      url,
      height: 10,
      width: 10,
    )),
  );
}
