import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Invetory/inventorysearch_cubit.dart';
import 'package:inventory/Screens/Dashboard.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/baseuomlist/baseuomlist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/categorylist/categorylist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/devision_list/devision_list_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/grouplist/grouplist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/itemverticallist/itemcreation_list_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/listStatic/liststatic_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/listbrand2/listbrand2_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/material/material_list_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/uomgrouplist/uomgruoplist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';

import 'package:inventory/Screens/purchasreturn/cubits/cubit/vertical/vertiacal_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/verticallist_cubit.dart';
import 'package:inventory/Screens/sales/general/cubit/sales_general_vertical/salesgeneralvertical_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/listvraiant/listvraiant_cubit.dart';
import 'package:inventory/commonWidget/Navigationprovider.dart';
import 'package:inventory/cubits/cubit/cubit/general_purchase_read_cubit.dart';
import 'package:inventory/widgets/itemmenu.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:inventory/widgets/searchTextfield.dart';
import 'package:provider/src/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:inventory/model/purchaseorder.dart';

import '../Screens/heirarchy/general/model/listbrand.dart';
import '../Screens/salesreturn/cubit/verticallist/salesreturnvertical_cubit.dart';
import '../Screens/variant/stock/models/stockverticallist.dart';

class VerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final   List<PurchaseOrder> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  VerticalList({ required this.itemsearch,required this.result, required this.selectedVertical,required this.ontap,this.tab});
  @override
  _VerticalListState createState() => _VerticalListState();
}

class _VerticalListState extends State<VerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<PurchaseOrder>result=[];
  bool select=false;
  int selectedVertical=0;
  NavigationProvider vm = NavigationProvider();
  TextEditingController itemsearch=TextEditingController();
  @override
  void initState() {

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    vm = Provider.of<NavigationProvider>(context);
    return Container(
      //     child: BlocProvider(
      // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
      child: Builder(
          builder: (context) {
            return BlocConsumer<InventorysearchCubit, InventorysearchState>(
              listener: (context, state) {
                print("this portion is working");
                state.maybeWhen(orElse:(){},
                    error: (){
                      print("error");
                    },
                    success: (list){
                      print("listtt"+list.toString());
                      result=list.data;setState(() {
                        print("Here is the result");
                        print(result);

                      });

                    }
                );
              },
              builder: (context, state) {
                return Container(
                  height: double.infinity,
                  margin: EdgeInsets.all(10),
                  child:
                  Visibility(
                    visible: !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .172,
                      //width: 232,
                      color: Color(0xffEDF1F2),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.all(5),
                              child: SearchTextfiled(
                                color: Color(0xffFAFAFA),
                                hintText: "Search...",
                                ctrlr:widget. itemsearch,
                                onChanged: (va) {
                                  print("searching case"+va.toString());
                                  context
                                      .read<InventorysearchCubit>()
                                      .getSearch(widget.itemsearch.text,tab: widget.tab);
                                  if(va==""){
                                    context
                                        .read<InventorysearchCubit>()
                                        .getInventorySearch("code",tab: widget.tab);

                                  }

                                },
                              )),
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height * .008,
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
                                  color: Color(0xffFFFFFF),

                                  height: width * .0197,
                                  width: width * .111,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: width * .001,
                                      ),
                                      Icon(
                                        Icons.add,
                                        color: Colors.black,
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: width * .007,
                                      ),
                                      Container(
                                        child: Text(
                                          "Add a Varient",
                                          style: TextStyle(
                                              color: Colors.black,
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

                          Expanded(
                              child: Container(
                                  height: 0,
                                  child: ListView.separated(
                                    separatorBuilder: (context, index) {
                                      return Divider(
                                        height: 0,
                                        color: Color(0xff2B3944)
                                            .withOpacity(0.3),
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
                                          child: ItemCard(
                                            index: index,
                                            selectedVertical:widget. selectedVertical,
                                            item: widget.result[index].orderCode,
                                            id:widget. result[index]
                                                .id
                                                .toString(),
                                            onClick: () {
                                              widget.ontap( index);

                                            },
                                          ));
                                    },
                                    itemCount: result.length,
                                  )


                              ))
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
      ),

    );

  }
}
class PurchaseVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final   List<PurchaseOrder> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  PurchaseVerticalList({ required this.itemsearch,required this.result, required this.selectedVertical,required this.ontap,this.tab});
  @override
  _PurchaseVerticalListState createState() => _PurchaseVerticalListState();
}

class _PurchaseVerticalListState extends State<PurchaseVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<PurchaseOrder>result=[];
  bool select=false;
  int selectedVertical=0;
  TextEditingController itemsearch=TextEditingController();
  NavigationProvider vm = NavigationProvider();
  @override
  void initState() {

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    vm = Provider.of<NavigationProvider>(context);
    return Container(
      //     child: BlocProvider(
      // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
      child: Builder(
          builder: (context) {
            return BlocConsumer<VertiacalCubit, VertiacalState>(
              listener: (context, state) {
                print("this portion is working");
                state.maybeWhen(orElse:(){},
                    error: (){
                      print("error");
                    },
                    success: (list){
                      print("listtt"+list.toString());
                      result=list.data;setState(() {
                        print("Here is the result");
                        print(result);

                      });

                    }
                );
              },
              builder: (context, state) {
                return Container(
                  height: double.infinity,
                  margin: EdgeInsets.all(10),
                  child:
                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .172,
                      //width: 232,
                      color: Color(0xffEDF1F2),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.all(5),
                              child:
                              SearchTextfiled(
                                color: Color(0xffFAFAFA),
                                hintText: "Search...",
                                ctrlr:widget. itemsearch,
                                onChanged: (va) {
                                  print("searching case"+va.toString());
                                  context
                                      .read<VertiacalCubit>()
                                      .getSearch(widget.itemsearch.text);
                                  if(va==""){
                                    context
                                        .read<VertiacalCubit>()
                                        .getGeneralVertical();

                                  }

                                },
                              )
                          ),
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height * .008,
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
                                  color: Color(0xffFFFFFF),

                                  height: width * .0197,
                                  width: width * .111,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: width * .001,
                                      ),
                                      Icon(
                                        Icons.add,
                                        color: Colors.black,
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: width * .007,
                                      ),
                                      Container(
                                        child: Text(
                                          "Add a Varient",
                                          style: TextStyle(
                                              color: Colors.black,
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

                          Expanded(
                              child: Container(
                                  height: 0,
                                  child: ListView.separated(
                                    separatorBuilder: (context, index) {
                                      return Divider(
                                        height: 0,
                                        color: Color(0xff2B3944)
                                            .withOpacity(0.3),
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
                                          child: ItemCard(
                                            index: index,
                                            selectedVertical:widget. selectedVertical,
                                            item: widget.result[index].returnOrderCode,
                                            id:widget. result[index]
                                                .id
                                                .toString(),
                                            onClick: () {
                                              widget.ontap( index);

                                            },
                                          ));
                                    },
                                    itemCount: result.length,
                                  )


                              ))
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
      ),

    );

  }
}

class SalesGeneralVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final   List<salesOrderTypeModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  SalesGeneralVerticalList({ required this.itemsearch,required this.result, required this.selectedVertical,required this.ontap,this.tab});
  @override
  _SalesGeneralVerticalListState createState() => _SalesGeneralVerticalListState();
}

class _SalesGeneralVerticalListState extends State<SalesGeneralVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<salesOrderTypeModel>result=[];
  bool select=false;
  int selectedVertical=0;
  TextEditingController itemsearch=TextEditingController();
  NavigationProvider vm = NavigationProvider();
  @override
  void initState() {

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    vm = Provider.of<NavigationProvider>(context);
    return Container(
      //     child: BlocProvider(
      // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
      child: Builder(
          builder: (context) {
            return BlocConsumer<SalesgeneralverticalCubit, SalesgeneralverticalState>(
              listener: (context, state) {
                print("this portion is working");
                state.maybeWhen(orElse:(){},
                    error: (){
                      print("error");
                    },
                    success: (list){
                      print("listtt"+list.toString());
                      result=list.data;setState(() {
                        print("Here is the result");
                        print(result);

                      });

                    }
                );
              },
              builder: (context, state) {
                return Container(
                  height: double.infinity,
                  margin: EdgeInsets.all(10),
                  child:
                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .172,
                      //width: 232,
                      color: Color(0xffEDF1F2),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.all(5),
                              child: SearchTextfiled(
                                color: Color(0xffFAFAFA),
                                hintText: "Search...",
                                ctrlr:widget. itemsearch,
                                onChanged: (va) {
                                  print("searching case"+va.toString());
                                  context
                                      .read<VertiacalCubit>()
                                      .getSearch(widget.itemsearch.text);
                                  if(va==""){
                                    // context
                                    //     .read<VertiacalCubit>()
                                    //     .getGeneralVertical();

                                  }

                                },
                              )),
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height * .008,
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
                                  color: Color(0xffFFFFFF),

                                  height: width * .0197,
                                  width: width * .111,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: width * .001,
                                      ),
                                      Icon(
                                        Icons.add,
                                        color: Colors.black,
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: width * .007,
                                      ),
                                      Container(
                                        child: Text(
                                          "Add a Varient",
                                          style: TextStyle(
                                              color: Colors.black,
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

                          Expanded(
                              child: Container(
                                  height: 100,
                                  child: ListView.separated(
                                    separatorBuilder: (context, index) {
                                      return Divider(
                                        height: 0,
                                        color: Color(0xff2B3944)
                                            .withOpacity(0.3),
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
                                          child: ItemCard(
                                            index: index,
                                            selectedVertical:widget. selectedVertical,
                                            item: widget.result[index].salesOrderCode,
                                            id:widget. result[index]
                                                .id
                                                .toString(),
                                            onClick: () {
                                              widget.ontap( index);

                                            },
                                          ));
                                    },
                                    itemCount: result.length,
                                  )


                              ))
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
      ),

    );

  }
}


class SalesReturnGeneralVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final   List<salesOrderTypeModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  SalesReturnGeneralVerticalList({ required this.itemsearch,required this.result, required this.selectedVertical,required this.ontap,this.tab});
  @override
  _SalesReturnGeneralVerticalListState createState() => _SalesReturnGeneralVerticalListState();
}

class _SalesReturnGeneralVerticalListState extends State<SalesReturnGeneralVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<salesOrderTypeModel>result=[];
  bool select=false;
  int selectedVertical=0;
  TextEditingController itemsearch=TextEditingController();
  NavigationProvider vm = NavigationProvider();
  @override
  void initState() {

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    vm = Provider.of<NavigationProvider>(context);
    return Container(
      //     child: BlocProvider(
      // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
      child: Builder(
          builder: (context) {
            return BlocConsumer<SalesreturnverticalCubit, SalesreturnverticalState>(
              listener: (context, state) {
                print("this portion is working");
                state.maybeWhen(orElse:(){},
                    error: (){
                      print("error");
                    },
                    success: (list){
                      print("listtt"+list.toString());
                      result=list.data;setState(() {
                        print("Here is the result");
                        print(result);

                      });

                    }
                );
              },
              builder: (context, state) {
                return Container(
                  height: double.infinity,
                  margin: EdgeInsets.all(10),
                  child:
                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .172,
                      //width: 232,
                      color: Color(0xffEDF1F2),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.all(5),
                              child: SearchTextfiled(
                                color: Color(0xffFAFAFA),
                                hintText: "Search...",
                                ctrlr:widget. itemsearch,
                                onChanged: (va) {
                                  print("searching case"+va.toString());
                                  context
                                      .read<SalesreturnverticalCubit>()
                                      .getSalesReturnSearch(widget.itemsearch.text);
                                  if(va==""){
                                    // context
                                    //     .read<VertiacalCubit>()
                                    //     .getGeneralVertical();

                                  }

                                },
                              )),
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height * .008,
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
                                  color: Color(0xffFFFFFF),

                                  height: width * .0197,
                                  width: width * .111,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: width * .001,
                                      ),
                                      Icon(
                                        Icons.add,
                                        color: Colors.black,
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: width * .007,
                                      ),
                                      Container(
                                        child: Text(
                                          "Add a Varient",
                                          style: TextStyle(
                                              color: Colors.black,
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

                          Expanded(
                              child: Container(
                                  height: 100,
                                  child: ListView.separated(
                                    separatorBuilder: (context, index) {
                                      return Divider(
                                        height: 0,
                                        color: Color(0xff2B3944)
                                            .withOpacity(0.3),
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
                                          child: ItemCard(
                                            index: index,
                                            selectedVertical:widget. selectedVertical,
                                            item: widget.result[index].salesReturnOrderCode,
                                            id:widget. result[index]
                                                .id
                                                .toString(),
                                            onClick: () {
                                              widget.ontap( index);

                                            },
                                          ));
                                    },
                                    itemCount: result.length,
                                  )


                              ))
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
      ),

    );

  }
}



class BrandVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final   List<BrandListModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  BrandVerticalList({ required this.itemsearch,required this.result, required this.selectedVertical,required this.ontap,this.tab});
  @override
  _BrandVerticalListState createState() => _BrandVerticalListState();
}

class _BrandVerticalListState extends State<BrandVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<BrandListModel>result=[];
  bool select=false;
  int selectedVertical=0;
  TextEditingController itemsearch=TextEditingController();
  NavigationProvider vm = NavigationProvider();
  @override
  void initState() {

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    vm = Provider.of<NavigationProvider>(context);
    return Container(
      //     child: BlocProvider(
      // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
      child: Builder(
              builder: (context) {
                return BlocConsumer<Listbrand2Cubit, Listbrand2State>(
                  listener: (context, state) {
                    print("this portion is working");
                    state.maybeWhen(orElse:(){},
                        error: (){
                          print("error");
                        },
                        success: (list){
                          print("listtt"+list.toString());
                          result=list.data;setState(() {
                            print("Here is the result");
                            print(result);

                          });

                        }
                    );
                  },
                  builder: (context, state) {
                    return Container(
                      height: double.infinity,
                      margin: EdgeInsets.all(10),
                      child:
                      Visibility(
                        visible:  !vm.isCollapsed,
                        child: Container(
                          height: height,
                          // height: double.minPositive,
                          width: width * .112,
                          //width: 232,
                          color: Color(0xffEDF1F2),
                          child: Column(
                            children: [
                              Container(
                                  margin: EdgeInsets.all(5),
                                  child:
                                  SearchTextfiled(
                                    color: Color(0xffFAFAFA),
                                    hintText: "Search...",
                                    ctrlr:widget. itemsearch,
                                    onChanged: (va) {
                                      print("searching case"+va.toString());
                                      context
                                          .read<Listbrand2Cubit>()
                                          .searchSlotSectionPageList(widget.itemsearch.text);
                                      if(va==""){
                                        context
                                            .read<Listbrand2Cubit>()
                                            .getSlotSectionPage();

                                      }

                                    },
                                  )
                              ),
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * .008,
                              ),


                              Expanded(
                                  child: Container(
                                      height: 0,
                                      child: ListView.separated(
                                        separatorBuilder: (context, index) {
                                          return Divider(
                                            height: 0,
                                            color: Color(0xff2B3944)
                                                .withOpacity(0.3),
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
                                              child: ItemCard(
                                                index: index,
                                                selectedVertical:widget. selectedVertical,
                                                item: widget.result[index].name,
                                                id:widget. result[index]
                                                    .id
                                                    .toString(),
                                                onClick: () {
                                                  widget.ontap( index);

                                                },
                                              ));
                                        },
                                        itemCount: widget.result.length,
                                      )


                                  ))
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              }
          ),

    );

  }
}
class MaterialVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final   List<BrandListModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  MaterialVerticalList({ required this.itemsearch,required this.result, required this.selectedVertical,required this.ontap,this.tab});
  @override
  _MaterialVerticalListState createState() => _MaterialVerticalListState();
}

class _MaterialVerticalListState extends State<MaterialVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<BrandListModel>result=[];
  bool select=false;
  int selectedVertical=0;
  TextEditingController itemsearch=TextEditingController();
  NavigationProvider vm = NavigationProvider();
  @override
  void initState() {

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    vm = Provider.of<NavigationProvider>(context);
    return Container(
      //     child: BlocProvider(
      // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
      child: Builder(
          builder: (context) {
            return BlocConsumer<MaterialListCubit, MaterialListState>(
              listener: (context, state) {
                print("this portion is working");
                state.maybeWhen(orElse:(){},
                    error: (){
                      print("error");
                    },
                    success: (list){
                      print("listtt"+list.toString());
                      result=list.data;setState(() {
                        print("Here is the result");
                        print(result);

                      });

                    }
                );
              },
              builder: (context, state) {
                return Container(
                  height: double.infinity,
                  margin: EdgeInsets.all(10),
                  child:
                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .112,
                      //width: 232,
                      color: Color(0xffEDF1F2),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.all(5),
                              child:
                              SearchTextfiled(
                                color: Color(0xffFAFAFA),
                                hintText: "Search...",
                                ctrlr:widget. itemsearch,
                                onChanged: (va) {
                                  print("searching case"+va.toString());
                                  context
                                      .read<MaterialListCubit>()
                                      .searchMaterialList(widget.itemsearch.text);
                                  if(va==""){
                                    context
                                        .read<MaterialListCubit>()
                                        .getMaterialList();

                                  }

                                },
                              )
                          ),
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height * .008,
                          ),


                          Expanded(
                              child: Container(
                                  height: 0,
                                  child: ListView.separated(
                                    separatorBuilder: (context, index) {
                                      return Divider(
                                        height: 0,
                                        color: Color(0xff2B3944)
                                            .withOpacity(0.3),
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
                                          child: ItemCard(
                                            index: index,
                                            selectedVertical:widget. selectedVertical,
                                            item: widget.result[index].name,
                                            id:widget. result[index]
                                                .id
                                                .toString(),
                                            onClick: () {
                                              widget.ontap( index);

                                            },
                                          ));
                                    },
                                    itemCount: result.length,
                                  )


                              ))
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
      ),

    );

  }
}



class DebvisionVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final   List<BrandListModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  DebvisionVerticalList({ required this.itemsearch,required this.result, required this.selectedVertical,required this.ontap,this.tab});
  @override
  _DebvisionVerticalListState createState() => _DebvisionVerticalListState();
}

class _DebvisionVerticalListState extends State<DebvisionVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<BrandListModel>result=[];
  bool select=false;
  int selectedVertical=0;
  TextEditingController itemsearch=TextEditingController();
  NavigationProvider vm = NavigationProvider();
  @override
  void initState() {

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    vm = Provider.of<NavigationProvider>(context);
    return Container(
      //     child: BlocProvider(
      // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
      child: Builder(
          builder: (context) {
            return BlocConsumer<DevisionListCubit, DevisionListState>(
              listener: (context, state) {
                print("this portion is working");
                state.maybeWhen(orElse:(){},
                    error: (){
                      print("error");
                    },
                    success: (list){
                      print("listtt"+list.toString());
                      result=list.data;setState(() {
                        print("Here is the result");
                        print(result);

                      });

                    }
                );
              },
              builder: (context, state) {
                return Container(
                  height: double.infinity,
                  margin: EdgeInsets.all(10),
                  child:
                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .112,
                      //width: 232,
                      color: Color(0xffEDF1F2),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.all(5),
                              child:
                              SearchTextfiled(
                                color: Color(0xffFAFAFA),
                                hintText: "Search...",
                                ctrlr:widget. itemsearch,
                                onChanged: (va) {
                                  print("searching case"+va.toString());
                                  context
                                      .read<DevisionListCubit>()
                                      .searchDevisionList(widget.itemsearch.text);
                                  if(va==""){
                                    context
                                        .read<DevisionListCubit>()
                                        .getDevisionList();

                                  }

                                },
                              )
                          ),
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height * .008,
                          ),


                          Expanded(
                              child: Container(
                                  height: 0,
                                  child: ListView.separated(
                                    separatorBuilder: (context, index) {
                                      return Divider(
                                        height: 0,
                                        color: Color(0xff2B3944)
                                            .withOpacity(0.3),
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
                                          child: ItemCard(
                                            index: index,
                                            selectedVertical:widget. selectedVertical,
                                            item: widget.result[index].name,
                                            id:widget. result[index]
                                                .id
                                                .toString(),
                                            onClick: () {
                                              widget.ontap( index);

                                            },
                                          ));
                                    },
                                    itemCount: result.length,
                                  )


                              ))
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
      ),

    );

  }
}




class CostingTypeVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final  PaginatedResponse<dynamic>? list;
  final   List<CostingMetodTypePostModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  final Function(String) search;
  CostingTypeVerticalList({ required this.itemsearch,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab,required this.search});
  @override
  _CostingTypeVerticalListState createState() => _CostingTypeVerticalListState();
}

class _CostingTypeVerticalListState extends State<CostingTypeVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<CostingMetodTypePostModel>result=[];
  bool select=false;
  int selectedVertical=0;
  TextEditingController itemsearch=TextEditingController();
  NavigationProvider vm = NavigationProvider();
  @override
  void initState() {

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    print("Static"+widget.result.toString());
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    vm = Provider.of<NavigationProvider>(context);
    return Container(
      //     child: BlocProvider(
      // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
      child: Builder(
          builder: (context) {
            return BlocConsumer<ListvraiantCubit, ListvraiantState>(
              listener: (context, state) {
                print("this portion is working");
                state.maybeWhen(orElse:(){},
                    error: (){
                      print("error");
                    },
                    success: (list){
                      print("listtt"+list.toString());
                      result=list.data;setState(() {
                        print("Here is the result");
                        print(result);

                      });

                    }
                );
              },
              builder: (context, state) {
                return Container(
                  height: double.infinity,
                  width: width * .112,
                  margin: EdgeInsets.all(10),
                  child:

                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                     width: width * .112,
                      //width: 232,
                      color: Color(0xffEDF1F2),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.all(5),
                              child:
                              SearchTextfiled(
                                color: Color(0xffFAFAFA),
                                hintText: "Search...",
                                ctrlr:widget. itemsearch,
                                onChanged: (va) {
                                  print("searching case"+va.toString());
                                  widget.search(va);
                                  // context
                                  //     .read<ItemcreationListCubit>()
                                  //     .searchItemList(widget.itemsearch.text);
                                  // if(va==""){
                                  //   // context
                                  //   //     .read<VertiacalCubit>()
                                  //   //     .getGeneralVertical();
                                  //
                                  // }

                                },
                              )
                          ),
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height * .008,
                          ),


                          Expanded(
                              child: Container(
                                  height: 0,
                                  child: ListView.separated(



                                    separatorBuilder: (context, index) {

                                      return Divider(
                                        height: 0,
                                        color: Color(0xff2B3944)
                                            .withOpacity(0.3),
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
                                          child: ItemCard(
                                            index: index,
                                            selectedVertical:widget. selectedVertical,
                                            item: widget.result[index].typeName,
                                            id:widget. result[index]
                                                .id
                                                .toString(),
                                            onClick: () {
                                              widget.ontap( index);

                                            },
                                          ));
                                    },
                                    itemCount: widget.result.length,
                                  )


                              )),
                          tablePagination(
                                () => context
                                .read<Listbrand2Cubit>()
                                .refresh(),
                            back: widget.list?.previousUrl == null
                                ? null
                                : () {
                              context
                                  .read<Listbrand2Cubit>()
                                  .previuosslotSectionPageList();
                            },
                            next: widget.list?.nextPageUrl == null
                                ? null
                                : () {
                              // print(data.nextPageUrl);
                              context
                                  .read<Listbrand2Cubit>()
                                  .nextslotSectionPageList();
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
      ),

    );

  }
}



class CostingCreateVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final  PaginatedResponse<dynamic>? list;
  final   List<CostingCreatePostModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  final Function(String) search;
  CostingCreateVerticalList({ required this.itemsearch,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab,required this.search});
  @override
  _CostingCreateVerticalListState createState() => _CostingCreateVerticalListState();
}

class _CostingCreateVerticalListState extends State<CostingCreateVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<CostingCreatePostModel>result=[];
  bool select=false;
  int selectedVertical=0;
  TextEditingController itemsearch=TextEditingController();
  NavigationProvider vm = NavigationProvider();
  @override
  void initState() {

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    print("Static"+widget.result.toString());
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    vm = Provider.of<NavigationProvider>(context);
    return Container(
      //     child: BlocProvider(
      // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
      child: Builder(
          builder: (context) {
            return BlocConsumer<ListvraiantCubit, ListvraiantState>(
              listener: (context, state) {
                print("this portion is working");
                state.maybeWhen(orElse:(){},
                    error: (){
                      print("error");
                    },
                    success: (list){
                      print("listtt"+list.toString());
                      result=list.data;setState(() {
                        print("Here is the result");
                        print(result);

                      });

                    }
                );
              },
              builder: (context, state) {
                return Container(
                  height: double.infinity,
                  width: width * .112,
                  margin: EdgeInsets.all(10),
                  child:

                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .112,
                      //width: 232,
                      color: Color(0xffEDF1F2),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.all(5),
                              child:
                              SearchTextfiled(
                                color: Color(0xffFAFAFA),
                                hintText: "Search...",
                                ctrlr:widget. itemsearch,
                                onChanged: (va) {
                                  print("searching case"+va.toString());
                                  widget.search(va);
                                  // context
                                  //     .read<ItemcreationListCubit>()
                                  //     .searchItemList(widget.itemsearch.text);
                                  // if(va==""){
                                  //   // context
                                  //   //     .read<VertiacalCubit>()
                                  //   //     .getGeneralVertical();
                                  //
                                  // }

                                },
                              )
                          ),
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height * .008,
                          ),


                          Expanded(
                              child: Container(
                                  height: 0,
                                  child: ListView.separated(



                                    separatorBuilder: (context, index) {

                                      return Divider(
                                        height: 0,
                                        color: Color(0xff2B3944)
                                            .withOpacity(0.3),
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
                                          child: ItemCard(
                                            index: index,
                                            selectedVertical:widget. selectedVertical,
                                            item: widget.result[index].methodName,
                                            id:widget. result[index]
                                                .id
                                                .toString(),
                                            onClick: () {
                                              widget.ontap( index);

                                            },
                                          ));
                                    },
                                    itemCount: widget.result.length,
                                  )


                              )),
                          tablePagination(
                                () => context
                                .read<Listbrand2Cubit>()
                                .refresh(),
                            back: widget.list?.previousUrl == null
                                ? null
                                : () {
                              context
                                  .read<Listbrand2Cubit>()
                                  .previuosslotSectionPageList();
                            },
                            next: widget.list?.nextPageUrl == null
                                ? null
                                : () {
                              // print(data.nextPageUrl);
                              context
                                  .read<Listbrand2Cubit>()
                                  .nextslotSectionPageList();
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
      ),

    );

  }
}



class PricingGroupVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final  PaginatedResponse<dynamic>? list;
  final   List<PricingGroupListModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  final Function(String) search;
  PricingGroupVerticalList({ required this.itemsearch,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab,required this.search});
  @override
  _PricingGroupVerticalListState createState() => _PricingGroupVerticalListState();
}

class _PricingGroupVerticalListState extends State<PricingGroupVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<PricingGroupListModel>result=[];
  bool select=false;
  int selectedVertical=0;
  TextEditingController itemsearch=TextEditingController();
  NavigationProvider vm = NavigationProvider();
  @override
  void initState() {

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    print("Static"+widget.result.toString());
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    vm = Provider.of<NavigationProvider>(context);
    return Container(
      //     child: BlocProvider(
      // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
      child: Builder(
          builder: (context) {
            return BlocConsumer<ListvraiantCubit, ListvraiantState>(
              listener: (context, state) {
                print("this portion is working");
                state.maybeWhen(orElse:(){},
                    error: (){
                      print("error");
                    },
                    success: (list){
                      print("listtt"+list.toString());
                      result=list.data;setState(() {
                        print("Here is the result");
                        print(result);

                      });

                    }
                );
              },
              builder: (context, state) {
                return Container(
                  height: double.infinity,
                  width: width * .112,
                  margin: EdgeInsets.all(10),
                  child:

                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .112,
                      //width: 232,
                      color: Color(0xffEDF1F2),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.all(5),
                              child:
                              SearchTextfiled(
                                color: Color(0xffFAFAFA),
                                hintText: "Search...",
                                ctrlr:widget. itemsearch,
                                onChanged: (va) {
                                  print("searching case"+va.toString());
                                  widget.search(va);
                                  // context
                                  //     .read<ItemcreationListCubit>()
                                  //     .searchItemList(widget.itemsearch.text);
                                  // if(va==""){
                                  //   // context
                                  //   //     .read<VertiacalCubit>()
                                  //   //     .getGeneralVertical();
                                  //
                                  // }

                                },
                              )
                          ),
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height * .008,
                          ),


                          Expanded(
                              child: Container(
                                  height: 0,
                                  child: ListView.separated(



                                    separatorBuilder: (context, index) {

                                      return Divider(
                                        height: 0,
                                        color: Color(0xff2B3944)
                                            .withOpacity(0.3),
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
                                          child: ItemCard(
                                            index: index,
                                            selectedVertical:widget. selectedVertical,
                                            item: widget.result[index].pricingTypeName,
                                            id:widget. result[index]
                                                .id
                                                .toString(),
                                            onClick: () {
                                              widget.ontap( index);

                                            },
                                          ));
                                    },
                                    itemCount: widget.result.length,
                                  )


                              )),
                          tablePagination(
                                () => context
                                .read<Listbrand2Cubit>()
                                .refresh(),
                            back: widget.list?.previousUrl == null
                                ? null
                                : () {
                              context
                                  .read<Listbrand2Cubit>()
                                  .previuosslotSectionPageList();
                            },
                            next: widget.list?.nextPageUrl == null
                                ? null
                                : () {
                              // print(data.nextPageUrl);
                              context
                                  .read<Listbrand2Cubit>()
                                  .nextslotSectionPageList();
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
      ),

    );

  }
}



class PricingVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final  PaginatedResponse<dynamic>? list;
  final   List<PricingTypeListModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  final Function(String) search;
  PricingVerticalList({ required this.itemsearch,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab,required this.search});
  @override
  _PricingVerticalListState createState() => _PricingVerticalListState();
}

class _PricingVerticalListState extends State<PricingVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<PricingTypeListModel>result=[];
  bool select=false;
  int selectedVertical=0;
  TextEditingController itemsearch=TextEditingController();
  NavigationProvider vm = NavigationProvider();
  @override
  void initState() {

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    print("Static"+widget.result.toString());
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    vm = Provider.of<NavigationProvider>(context);
    return Container(
      //     child: BlocProvider(
      // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
      child: Builder(
          builder: (context) {
            return BlocConsumer<ListvraiantCubit, ListvraiantState>(
              listener: (context, state) {
                print("this portion is working");
                state.maybeWhen(orElse:(){},
                    error: (){
                      print("error");
                    },
                    success: (list){
                      print("listtt"+list.toString());
                      result=list.data;setState(() {
                        print("Here is the result");
                        print(result);

                      });

                    }
                );
              },
              builder: (context, state) {
                return Container(
                  height: double.infinity,
                  width: width * .112,
                  margin: EdgeInsets.all(10),
                  child:

                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .112,
                      //width: 232,
                      color: Color(0xffEDF1F2),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.all(5),
                              child:
                              SearchTextfiled(
                                color: Color(0xffFAFAFA),
                                hintText: "Search...",
                                ctrlr:widget. itemsearch,
                                onChanged: (va) {
                                  print("searching case"+va.toString());
                                  widget.search(va);
                                  // context
                                  //     .read<ItemcreationListCubit>()
                                  //     .searchItemList(widget.itemsearch.text);
                                  // if(va==""){
                                  //   // context
                                  //   //     .read<VertiacalCubit>()
                                  //   //     .getGeneralVertical();
                                  //
                                  // }

                                },
                              )
                          ),
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height * .008,
                          ),


                          Expanded(
                              child: Container(
                                  height: 0,
                                  child: ListView.separated(



                                    separatorBuilder: (context, index) {

                                      return Divider(
                                        height: 0,
                                        color: Color(0xff2B3944)
                                            .withOpacity(0.3),
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
                                          child: ItemCard(
                                            index: index,
                                            selectedVertical:widget. selectedVertical,
                                            item: widget.result[index].pricingGroupName,
                                            id:widget. result[index]
                                                .pricingTypeId
                                                .toString(),
                                            onClick: () {
                                              widget.ontap( index);

                                            },
                                          ));
                                    },
                                    itemCount: widget.result.length,
                                  )


                              )),
                          tablePagination(
                                () => context
                                .read<Listbrand2Cubit>()
                                .refresh(),
                            back: widget.list?.previousUrl == null
                                ? null
                                : () {
                              context
                                  .read<Listbrand2Cubit>()
                                  .previuosslotSectionPageList();
                            },
                            next: widget.list?.nextPageUrl == null
                                ? null
                                : () {
                              // print(data.nextPageUrl);
                              context
                                  .read<Listbrand2Cubit>()
                                  .nextslotSectionPageList();
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
      ),

    );

  }
}


class StaticVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final String type;
  final   List<BrandListModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  StaticVerticalList({ required this.itemsearch,required this.result, required this.selectedVertical,required this.ontap,this.tab,required this.type});
  @override
  _StaticVerticalListState createState() => _StaticVerticalListState();
}

class _StaticVerticalListState extends State<StaticVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<BrandListModel>result=[];
  bool select=false;
  int selectedVertical=0;
  TextEditingController itemsearch=TextEditingController();
  NavigationProvider vm = NavigationProvider();
  @override
  void initState() {

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    print("Static"+widget.result.toString());
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    vm = Provider.of<NavigationProvider>(context);
    return BlocProvider(
  create: (context) => ListstaticCubit(),
  child: Container(
      //     child: BlocProvider(
      // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
      child: Builder(
          builder: (context) {
            return BlocConsumer<ListstaticCubit, ListstaticState>(
              listener: (context, state) {
                print("this portion is working");
                state.maybeWhen(orElse:(){},
                    error: (){
                      print("error");
                    },
                    success: (list){
                      print("listtt"+list.toString());
                      result=list.data;setState(() {
                        print("Here is the result");
                        print(result);

                      });

                    }
                );
              },
              builder: (context, state) {
                return Container(
                  height: double.infinity,
                  width: width * .112,
                  margin: EdgeInsets.all(10),
                  child:
                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .112,
                      //width: 232,
                      color: Color(0xffEDF1F2),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.all(5),
                              child:
                              SearchTextfiled(
                                color: Color(0xffFAFAFA),
                                hintText: "Search...",
                                ctrlr:widget. itemsearch,
                                onChanged: (va) {
                                  print("searching case"+va.toString());
                                  context
                                      .read<ListstaticCubit>()
                                      .searchStaticPageList(widget.itemsearch.text);
                                  if(va==""){
                                    context
                                        .read<ListstaticCubit>()
                                        .getStaticList();

                                  }

                                },
                              )
                          ),
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height * .008,
                          ),


                          Expanded(
                              child: Container(
                                  height: 0,
                                  child: ListView.separated(



                                    separatorBuilder: (context, index) {

                                      return Divider(
                                        height: 0,
                                        color: Color(0xff2B3944)
                                            .withOpacity(0.3),
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
                                          child: ItemCard(
                                            index: index,
                                            selectedVertical:widget. selectedVertical,
                                            item: widget.result[index].name,
                                            id:widget. result[index]
                                                .id
                                                .toString(),
                                            onClick: () {
                                              widget.ontap( index);

                                            },
                                          ));
                                    },
                                    itemCount: widget.result.length,
                                  )


                              ))
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
      ),

    ),
);

  }
}



class UomGroupVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;

  final   List<BrandListModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  UomGroupVerticalList({ required this.itemsearch,required this.result, required this.selectedVertical,required this.ontap,this.tab});
  @override
  _UomGroupVerticalListState createState() => _UomGroupVerticalListState();
}

class _UomGroupVerticalListState extends State<UomGroupVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<BrandListModel>result=[];
  bool select=false;
  int selectedVertical=0;
  TextEditingController itemsearch=TextEditingController();
  NavigationProvider vm = NavigationProvider();
  @override
  void initState() {

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    print("Static"+widget.result.toString());
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    vm = Provider.of<NavigationProvider>(context);
    return Container(
      //     child: BlocProvider(
      // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
      child: Builder(
          builder: (context) {
            return BlocConsumer<UomgruoplistCubit, UomgruoplistState>(
              listener: (context, state) {
                print("this portion is working");
                state.maybeWhen(orElse:(){},
                    error: (){
                      print("error");
                    },
                    success: (list){
                      print("listtt"+list.toString());
                      result=list.data;setState(() {
                        print("Here is the result");
                        print(result);

                      });

                    }
                );
              },
              builder: (context, state) {
                return Container(
                  height: double.infinity,
                  margin: EdgeInsets.all(10),
                  child:
                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .112,
                      //width: 232,
                      color: Color(0xffEDF1F2),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.all(5),
                              child:
                              SearchTextfiled(
                                color: Color(0xffFAFAFA),
                                hintText: "Search...",
                                ctrlr:widget. itemsearch,
                                onChanged: (va) {
                                  print("searching case"+va.toString());
                                  context
                                      .read<UomgruoplistCubit>()
                                      .searchUomgroupList(widget.itemsearch.text);
                                  setState(() {

                                  });
                                  if(va==""){
                                    context
                                        .read<UomgruoplistCubit>()
                                        .getUomGroupist();

                                  }

                                },
                              )
                          ),
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height * .008,
                          ),


                          Expanded(
                              child: Container(
                                  height: 0,
                                  child: ListView.separated(



                                    separatorBuilder: (context, index) {

                                      return Divider(
                                        height: 0,
                                        color: Color(0xff2B3944)
                                            .withOpacity(0.3),
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
                                          child: ItemCard(
                                            index: index,
                                            selectedVertical:widget. selectedVertical,
                                            item: widget.result[index].name,
                                            id:widget. result[index]
                                                .id
                                                .toString(),
                                            onClick: () {
                                              widget.ontap(index);

                                            },
                                          ));
                                    },
                                    itemCount: widget.result.length,
                                  )


                              ))
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
      ),

    );

  }
}




class CategoryVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
final  PaginatedResponse<dynamic>? list;
  final   List<BrandListModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  CategoryVerticalList({ required this.itemsearch,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab});
  @override
  _CategoryVerticalListState createState() => _CategoryVerticalListState();
}

class _CategoryVerticalListState extends State<CategoryVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<BrandListModel>result=[];
  bool select=false;
  int selectedVertical=0;
  TextEditingController itemsearch=TextEditingController();
  NavigationProvider vm = NavigationProvider();
  @override
  void initState() {

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    print("Static"+widget.result.toString());
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    vm = Provider.of<NavigationProvider>(context);
    return BlocProvider(
      create: (context) => CategorylistCubit(),
      child: Container(
        //     child: BlocProvider(
        // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
        child: Builder(
            builder: (context) {
              return BlocConsumer<CategorylistCubit, CategorylistState>(
                listener: (context, state) {
                  print("this portion is working");
                  state.maybeWhen(orElse:(){},
                      error: (){
                        print("error");
                      },
                      success: (list){
                        print("listtt"+list.toString());
                        result=list.data;setState(() {
                          print("Here is the result");
                          print(result);


                        });

                      }
                  );
                },
                builder: (context, state) {
                  return Container(
                    height: double.infinity,
                    margin: EdgeInsets.all(10),
                    child:
                    Visibility(
                      visible:  !vm.isCollapsed,
                      child: Container(
                        height: height,
                        // height: double.minPositive,
                        width: width * .112,
                        //width: 232,
                        color: Color(0xffEDF1F2),
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.all(5),
                                child:
                                SearchTextfiled(
                                  color: Color(0xffFAFAFA),
                                  hintText: "Search...",
                                  ctrlr:widget. itemsearch,
                                  onChanged: (va) {
                                    print("searching case"+va.toString());
                                    context
                                        .read<CategorylistCubit>()
                                        .searchCategoryist(widget.itemsearch.text,);
                                    if(va==""){
                                      context
                                          .read<CategorylistCubit>()
                                          .getCategoryist();
                                      setState(() {

                                      });

                                    }

                                  },
                                )
                            ),
                            SizedBox(
                              height:
                              MediaQuery.of(context).size.height * .008,
                            ),


                            Expanded(
                                child: Container(
                                    height: 0,
                                    child: ListView.separated(



                                      separatorBuilder: (context, index) {

                                        return Divider(
                                          height: 0,
                                          color: Color(0xff2B3944)
                                              .withOpacity(0.3),
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
                                            child: ItemCard(
                                              index: index,
                                              selectedVertical:widget. selectedVertical,
                                              item: widget.result[index].name,
                                              id:widget. result[index]
                                                  .id
                                                  .toString(),
                                              onClick: () {
                                                widget.ontap( index);

                                              },
                                            ));
                                      },
                                      itemCount: widget.result.length,
                                    )


                                )),
                            tablePagination(
                                  () => context
                                  .read<Listbrand2Cubit>()
                                  .refresh(),
                              back: widget.list?.previousUrl == null
                                  ? null
                                  : () {
                                context
                                    .read<Listbrand2Cubit>()
                                    .previuosslotSectionPageList();
                              },
                              next: widget.list?.nextPageUrl == null
                                  ? null
                                  : () {
                                // print(data.nextPageUrl);
                                context
                                    .read<Listbrand2Cubit>()
                                    .nextslotSectionPageList();
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }
        ),

      ),
    );

  }
}


class GroupVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final  PaginatedResponse<dynamic>? list;
  final   List<BrandListModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  GroupVerticalList({ required this.itemsearch,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab});
  @override
  _GroupVerticalListState createState() => _GroupVerticalListState();
}

class _GroupVerticalListState extends State<GroupVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<BrandListModel>result=[];
  bool select=false;
  int selectedVertical=0;
  TextEditingController itemsearch=TextEditingController();
  NavigationProvider vm = NavigationProvider();
  @override
  void initState() {

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    print("Static"+widget.result.toString());
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    vm = Provider.of<NavigationProvider>(context);
    return BlocProvider(
      create: (context) => GrouplistCubit(),
      child: Container(
        //     child: BlocProvider(
        // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
        child: Builder(
            builder: (context) {
              return BlocConsumer<GrouplistCubit, GrouplistState>(
                listener: (context, state) {
                  print("this portion is working");
                  state.maybeWhen(orElse:(){},
                      error: (){
                        print("error");
                      },
                      success: (list){
                        print("listtt"+list.toString());
                        result=list.data;setState(() {
                          print("Here is the result");
                          print(result);

                        });

                      }
                  );
                },
                builder: (context, state) {
                  return Container(
                    height: double.infinity,
                    margin: EdgeInsets.all(10),
                    child:
                    Visibility(
                      visible:  !vm.isCollapsed,
                      child: Container(
                        height: height,
                        // height: double.minPositive,
                        width: width * .112,
                        //width: 232,
                        color: Color(0xffEDF1F2),
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.all(5),
                                child:
                                SearchTextfiled(
                                  color: Color(0xffFAFAFA),
                                  hintText: "Search...",
                                  ctrlr:widget. itemsearch,
                                  onChanged: (va) {
                                    print("searching case"+va.toString());
                                    context
                                        .read<GrouplistCubit>()
                                        .searchGroupList(widget.itemsearch.text);
                                    if(va==""){
                                      // context
                                      //     .read<VertiacalCubit>()
                                      //     .getGeneralVertical();

                                    }

                                  },
                                )
                            ),
                            SizedBox(
                              height:
                              MediaQuery.of(context).size.height * .008,
                            ),


                            Expanded(
                                child: Container(
                                    height: 0,
                                    child: ListView.separated(



                                      separatorBuilder: (context, index) {

                                        return Divider(
                                          height: 0,
                                          color: Color(0xff2B3944)
                                              .withOpacity(0.3),
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
                                            child: ItemCard(
                                              index: index,
                                              selectedVertical:widget. selectedVertical,
                                              item: widget.result[index].name,
                                              id:widget. result[index]
                                                  .id
                                                  .toString(),
                                              onClick: () {
                                                widget.ontap( index);

                                              },
                                            ));
                                      },
                                      itemCount: widget.result.length,
                                    )


                                )),
                            tablePagination(
                                  () => context
                                  .read<Listbrand2Cubit>()
                                  .refresh(),
                              back: widget.list?.previousUrl == null
                                  ? null
                                  : () {
                                context
                                    .read<Listbrand2Cubit>()
                                    .previuosslotSectionPageList();
                              },
                              next: widget.list?.nextPageUrl == null
                                  ? null
                                  : () {
                                // print(data.nextPageUrl);
                                context
                                    .read<Listbrand2Cubit>()
                                    .nextslotSectionPageList();
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }
        ),

      ),
    );

  }
}



class BaseUomVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final  PaginatedResponse<dynamic>? list;
  final   List<BrandListModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  BaseUomVerticalList({ required this.itemsearch,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab});
  @override
  _BaseUomVerticalListState createState() => _BaseUomVerticalListState();
}

class _BaseUomVerticalListState extends State<BaseUomVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<BrandListModel>result=[];
  bool select=false;
  int selectedVertical=0;
  TextEditingController itemsearch=TextEditingController();
  NavigationProvider vm = NavigationProvider();
  @override
  void initState() {

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    print("Static"+widget.result.toString());
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    vm = Provider.of<NavigationProvider>(context);
    return BlocProvider(
      create: (context) => BaseuomlistCubit(),
      child: Container(
        //     child: BlocProvider(
        // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
        child: Builder(
            builder: (context) {
              return BlocConsumer<BaseuomlistCubit, BaseuomlistState>(
                listener: (context, state) {
                  print("this portion is working");
                  state.maybeWhen(orElse:(){},
                      error: (){
                        print("error");
                      },
                      success: (list){
                        print("listtt"+list.toString());
                        result=list.data;setState(() {
                          print("Here is the result");
                          print(result);

                        });

                      }
                  );
                },
                builder: (context, state) {
                  return Container(
                    height: double.infinity,
                    margin: EdgeInsets.all(10),
                    child:
                    Visibility(
                      visible:  !vm.isCollapsed,
                      child: Container(
                        height: height,
                        // height: double.minPositive,
                        width:  width * .172,
                        //width: 232,
                        color: Color(0xffEDF1F2),
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.all(5),
                                child:
                                SearchTextfiled(
                                  color: Color(0xffFAFAFA),
                                  hintText: "Search...",
                                  ctrlr:widget. itemsearch,
                                  onChanged: (va) {
                                    print("searching case"+va.toString());
                                    context
                                        .read<BaseuomlistCubit>()
                                        .searchUomList(widget.itemsearch.text,type: "all");
                                    if(va==""){
                                      context
                                          .read<BaseuomlistCubit>()
                                          .getUomist();

                                    }

                                  },
                                )
                            ),
                            SizedBox(
                              height:
                              MediaQuery.of(context).size.height * .008,
                            ),


                            Expanded(
                                child: Container(
                                    height: 0,
                                    child: ListView.separated(



                                      separatorBuilder: (context, index) {

                                        return Divider(
                                          height: 0,
                                          color: Color(0xff2B3944)
                                              .withOpacity(0.3),
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
                                            child: ItemCard(
                                              index: index,
                                              selectedVertical:widget. selectedVertical,
                                              item: widget.result[index].name,
                                              id:widget. result[index]
                                                  .id
                                                  .toString(),
                                              onClick: () {
                                                widget.ontap( index);

                                              },
                                            ));
                                      },
                                      itemCount: widget.result.length,
                                    )


                                )),
                            tablePagination(
                                  () => context
                                  .read<Listbrand2Cubit>()
                                  .refresh(),
                              back: widget.list?.previousUrl == null
                                  ? null
                                  : () {
                                context
                                    .read<Listbrand2Cubit>()
                                    .previuosslotSectionPageList();
                              },
                              next: widget.list?.nextPageUrl == null
                                  ? null
                                  : () {
                                // print(data.nextPageUrl);
                                context
                                    .read<Listbrand2Cubit>()
                                    .nextslotSectionPageList();
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }
        ),

      ),
    );

  }
}

class ItemVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final  PaginatedResponse<dynamic>? list;
  final   List<BrandListModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  ItemVerticalList({ required this.itemsearch,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab});
  @override
  _ItemVerticalListState createState() => _ItemVerticalListState();
}

class _ItemVerticalListState extends State<ItemVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<BrandListModel>result=[];
  bool select=false;
  int selectedVertical=0;
  TextEditingController itemsearch=TextEditingController();
  NavigationProvider vm = NavigationProvider();
  @override
  void initState() {

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    print("Static"+widget.result.toString());
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    vm = Provider.of<NavigationProvider>(context);
    return BlocProvider(
      create: (context) => ItemcreationListCubit(),
      child: Container(
        //     child: BlocProvider(
        // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
        child: Builder(
            builder: (context) {
              return BlocConsumer<ItemcreationListCubit, ItemcreationListState>(
                listener: (context, state) {
                  print("this portion is working");
                  state.maybeWhen(orElse:(){},
                      error: (){
                        print("error");
                      },
                      success: (list){
                        print("listtt"+list.toString());
                        result=list.data;setState(() {
                          print("Here is the result");
                          print(result);

                        });

                      }
                  );
                },
                builder: (context, state) {
                  return Container(
                    height: double.infinity,
                    margin: EdgeInsets.all(10),
                    child:
                    Visibility(
                      visible:  !vm.isCollapsed,
                      child: Container(
                        height: height,
                        // height: double.minPositive,
                        width: width * .112,
                        //width: 232,
                        color: Color(0xffEDF1F2),
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.all(5),
                                child:
                                SearchTextfiled(
                                  color: Color(0xffFAFAFA),
                                  hintText: "Search...",
                                  ctrlr:widget. itemsearch,
                                  onChanged: (va) {
                                    print("searching case"+va.toString());
                                    context
                                        .read<ItemcreationListCubit>()
                                        .searchItemList(widget.itemsearch.text);
                                    if(va==""){
                                      // context
                                      //     .read<VertiacalCubit>()
                                      //     .getGeneralVertical();

                                    }

                                  },
                                )
                            ),
                            SizedBox(
                              height:
                              MediaQuery.of(context).size.height * .008,
                            ),


                            Expanded(
                                child: Container(
                                    height: 0,
                                    child: ListView.separated(



                                      separatorBuilder: (context, index) {

                                        return Divider(
                                          height: 0,
                                          color: Color(0xff2B3944)
                                              .withOpacity(0.3),
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
                                            child: ItemCard(
                                              index: index,
                                              selectedVertical:widget. selectedVertical,
                                              item: widget.result[index].code,
                                              id:widget. result[index]
                                                  .id
                                                  .toString(),
                                              onClick: () {
                                                widget.ontap( index);

                                              },
                                            ));
                                      },
                                      itemCount: widget.result.length,
                                    )


                                )),
                            tablePagination(
                                  () => context
                                  .read<Listbrand2Cubit>()
                                  .refresh(),
                              back: widget.list?.previousUrl == null
                                  ? null
                                  : () {
                                context
                                    .read<Listbrand2Cubit>()
                                    .previuosslotSectionPageList();
                              },
                              next: widget.list?.nextPageUrl == null
                                  ? null
                                  : () {
                                // print(data.nextPageUrl);
                                context
                                    .read<Listbrand2Cubit>()
                                    .nextslotSectionPageList();
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }
        ),

      ),
    );

  }
}




class VariantVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final  PaginatedResponse<dynamic>? list;
  final   List<BrandListModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  final Function(String) search;
  VariantVerticalList({ required this.itemsearch,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab,required this.search});
  @override
  _VariantVerticalListState createState() => _VariantVerticalListState();
}

class _VariantVerticalListState extends State<VariantVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<BrandListModel>result=[];
  bool select=false;
  int selectedVertical=0;
  TextEditingController itemsearch=TextEditingController();
  NavigationProvider vm = NavigationProvider();
  @override
  void initState() {

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    print("Static"+widget.result.toString());
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    vm = Provider.of<NavigationProvider>(context);
    return Container(
      //     child: BlocProvider(
      // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
      child: Builder(
          builder: (context) {
            return BlocConsumer<ListvraiantCubit, ListvraiantState>(
              listener: (context, state) {
                print("this portion is working");
                state.maybeWhen(orElse:(){},
                    error: (){
                      print("error");
                    },
                    success: (list){
                      print("listtt"+list.toString());
                      result=list.data;setState(() {
                        print("Here is the result");
                        print(result);

                      });

                    }
                );
              },
              builder: (context, state) {
                return Container(
                  height: double.infinity,
                  margin: EdgeInsets.all(10),
                  child:
                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .112,
                      //width: 232,
                      color: Color(0xffEDF1F2),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.all(5),
                              child:
                              SearchTextfiled(
                                color: Color(0xffFAFAFA),
                                hintText: "Search...",
                                ctrlr:widget. itemsearch,
                                onChanged: (va) {
                                  print("searching case"+va.toString());
                                  widget.search(va);
                                  // context
                                  //     .read<ItemcreationListCubit>()
                                  //     .searchItemList(widget.itemsearch.text);
                                  // if(va==""){
                                  //   // context
                                  //   //     .read<VertiacalCubit>()
                                  //   //     .getGeneralVertical();
                                  //
                                  // }

                                },
                              )
                          ),
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height * .008,
                          ),


                          Expanded(
                              child: Container(
                                  height: 0,
                                  child: ListView.separated(



                                    separatorBuilder: (context, index) {

                                      return Divider(
                                        height: 0,
                                        color: Color(0xff2B3944)
                                            .withOpacity(0.3),
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
                                          child: ItemCard(
                                            index: index,
                                            selectedVertical:widget. selectedVertical,
                                            item: widget.result[index].code,
                                            id:widget. result[index]
                                                .id
                                                .toString(),
                                            onClick: () {
                                              widget.ontap( index);

                                            },
                                          ));
                                    },
                                    itemCount: widget.result.length,
                                  )


                              )),
                          tablePagination(
                                () => context
                                .read<Listbrand2Cubit>()
                                .refresh(),
                            back: widget.list?.previousUrl == null
                                ? null
                                : () {
                              context
                                  .read<Listbrand2Cubit>()
                                  .previuosslotSectionPageList();
                            },
                            next: widget.list?.nextPageUrl == null
                                ? null
                                : () {
                              // print(data.nextPageUrl);
                              context
                                  .read<Listbrand2Cubit>()
                                  .nextslotSectionPageList();
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
      ),

    );

  }
}
class channelVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final  PaginatedResponse<dynamic>? list;
  final   List<StockVerticalReadModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  final Function(String) search;
  channelVerticalList({ required this.itemsearch,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab,required this.search});
  @override
  _channelVerticalListtState createState() => _channelVerticalListtState();
}

class _channelVerticalListtState extends State<channelVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<BrandListModel>result=[];
  bool select=false;
  int selectedVertical=0;
  TextEditingController itemsearch=TextEditingController();
  NavigationProvider vm = NavigationProvider();
  @override
  void initState() {

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    print("Static"+widget.result.toString());
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    vm = Provider.of<NavigationProvider>(context);
    return Container(
      //     child: BlocProvider(
      // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
      child: Builder(
          builder: (context) {
            return BlocConsumer<ListvraiantCubit, ListvraiantState>(
              listener: (context, state) {
                print("this portion is working");
                state.maybeWhen(orElse:(){},
                    error: (){
                      print("error");
                    },
                    success: (list){
                      print("listtt"+list.toString());
                      result=list.data;setState(() {
                        print("Here is the result");
                        print(result);

                      });

                    }
                );
              },
              builder: (context, state) {
                return Container(
                  height: double.infinity,
                  margin: EdgeInsets.all(10),
                  child:
                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .112,
                      //width: 232,
                      color: Color(0xffEDF1F2),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.all(5),
                              child:
                              SearchTextfiled(
                                color: Color(0xffFAFAFA),
                                hintText: "Search...",
                                ctrlr:widget. itemsearch,
                                onChanged: (va) {
                                  print("searching case"+va.toString());
                                  widget.search(va);
                                  // context
                                  //     .read<ItemcreationListCubit>()
                                  //     .searchItemList(widget.itemsearch.text);
                                  // if(va==""){
                                  //   // context
                                  //   //     .read<VertiacalCubit>()
                                  //   //     .getGeneralVertical();
                                  //
                                  // }

                                },
                              )
                          ),
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height * .008,
                          ),


                          Expanded(
                              child: Container(
                                  height: 0,
                                  child: ListView.separated(



                                    separatorBuilder: (context, index) {

                                      return Divider(
                                        height: 0,
                                        color: Color(0xff2B3944)
                                            .withOpacity(0.3),
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
                                          child: ItemCard(
                                            index: index,
                                            selectedVertical:widget. selectedVertical,
                                            item: widget.result[index].category?.name,
                                            id:widget. result[index]
                                                .category?.id
                                                .toString()??"",
                                            onClick: () {
                                              widget.ontap( index);

                                            },
                                          ));
                                    },
                                    itemCount: widget.result.length,
                                  )


                              )),
                          tablePagination(
                                () => context
                                .read<Listbrand2Cubit>()
                                .refresh(),
                            back: widget.list?.previousUrl == null
                                ? null
                                : () {
                              context
                                  .read<Listbrand2Cubit>()
                                  .previuosslotSectionPageList();
                            },
                            next: widget.list?.nextPageUrl == null
                                ? null
                                : () {
                              // print(data.nextPageUrl);
                              context
                                  .read<Listbrand2Cubit>()
                                  .nextslotSectionPageList();
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
      ),

    );

  }
}