import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Invetory/inventorysearch_cubit.dart';
import 'package:inventory/Screens/Dashboard.dart';
import 'package:inventory/Screens/heirarchy/customizeddata/cubit/listcustom/listcustomvertical_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/allcategorylist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/attributepatchlist_cubit.dart';
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
import 'package:inventory/Screens/heirarchy/general/model/frameworklistmodel.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/salevertical_list/promotionsale_vertical_list_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';

import 'package:inventory/Screens/purchasreturn/cubits/cubit/vertical/vertiacal_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/verticallist_cubit.dart';
import 'package:inventory/Screens/sales/general/cubit/sales_general_vertical/salesgeneralvertical_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';
import 'package:inventory/Screens/variant/general/cubits/listvariant/listvariant_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/listvraiant/listvraiant_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variantpost.dart';
import 'package:inventory/commonWidget/Navigationprovider.dart';
import 'package:inventory/cubits/cubit/cubit/general_purchase_read_cubit.dart';
import 'package:inventory/widgets/itemmenu.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:inventory/widgets/searchTextfield.dart';
import 'package:provider/src/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:inventory/model/purchaseorder.dart';

import '../Screens/heirarchy/general/model/listbrand.dart';
import '../Screens/heirarchy/general/model/variantframeworkpost.dart';
import '../Screens/salesreturn/cubit/verticallist/salesreturnvertical_cubit.dart';
import '../Screens/variant/stock/models/stockverticallist.dart';
import 'no_result_widget.dart';

class VerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final Widget? child;
  final bool select;
  final   List<PurchaseOrder> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  final Function? changeFocusToParent;

  VerticalList({Key? key, required this.itemsearch,this.select=false,required this.result, required this.selectedVertical,required this.ontap,this.tab ,this.changeFocusToParent, this.child=const SizedBox()}):super(key: key);
  @override VerticalListState createState() => VerticalListState();
}

class VerticalListState extends State<VerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<PurchaseOrder>result=[];
  bool select=false;
  bool suffixIconCheck=false;
  int selectedVertical=0;
  FocusNode searchFocusNode=FocusNode();
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
  int changeSelectedRow(int direction) {
    print("sdfddddFFFFFFFFFFFFF${widget.result.length}${selectedVertical}");
    setState(() {
      if((selectedVertical==0 && direction==-1)  ){
        FocusScope.of(context).requestFocus(searchFocusNode);
      }
      if(selectedVertical==widget.result.length - 1 && direction==1){
        selectedVertical=0;
        FocusScope.of(context).requestFocus(searchFocusNode);
      }
      // Adjust the selected row based on the arrow key direction
      selectedVertical = (selectedVertical + direction).clamp(0, widget.result.length - 1);
      print("sdfddddFFFFFFFFFFFFF${widget.result.length}${selectedVertical}");
      // invoiceCheckBoxselectionFunc(invoiceselectedRow);
    });
    return selectedVertical;
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
                                focusnode: searchFocusNode,
                                suffixIconCheck: suffixIconCheck,
                                ctrlr:widget. itemsearch,
                                onChanged: (va) {
                                  setState(() {


                                  print("searching case"+va.toString());
                                  context
                                      .read<InventorysearchCubit>()
                                      .getSearch(widget.itemsearch.text,tab: widget.tab);
                                  suffixIconCheck=true;
                                  if(va==""){
                                    suffixIconCheck=false;
                                    context
                                        .read<InventorysearchCubit>()
                                        .getInventorySearch("code",tab: widget.tab);


                                  }

                                  });

                                },
                              )),
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height * .008,
                          ),


                          Expanded(
                              child: Container(
                                  height: 0,
                                  child:widget.result.isEmpty?NoDataResult(): ListView.separated(
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
                                            select: widget.select,
                                            index: index,
                                            selectedVertical:widget. selectedVertical,
                                            item: widget.result[index].orderCode,
                                            id:widget. result[index]
                                                .id
                                                .toString(),
                                            onClick: () {
                                              selectedVertical=index;
                                              widget.ontap( index);

                                            },
                                          ));
                                    },
                                    itemCount: result.length,
                                  )


                              )),
                          widget.child!
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




class DivisionConfigVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final Widget? child;
  final   List<BrandListModel> result ;
  final String? tab;
  final bool suffixIconCheck;
  final bool select;
  int selectedVertical;
  final Function(int) ontap;
  final Function(String) search;
  DivisionConfigVerticalList({ required this.itemsearch,this.select=false,required this.result,this.suffixIconCheck=false, required this.selectedVertical,required this.ontap,this.tab , this.child=const SizedBox(), required this.search});
  @override
  _DivisionConfigVerticalListState createState() => _DivisionConfigVerticalListState();
}

class _DivisionConfigVerticalListState extends State<DivisionConfigVerticalList> {
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
                                suffixIconCheck: widget.suffixIconCheck,
                                color: Color(0xffFAFAFA),
                                hintText: "Search...",
                                ctrlr:widget. itemsearch,
                                onChanged: (va) {
                                  widget.search(va);


                                },
                              )),
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height * .008,
                          ),
                          // Container(
                          //   margin: EdgeInsets.only(
                          //     left: width * 0.009,
                          //     right: width * 0.007,
                          //   ),
                          //   child: Row(
                          //     //mainAxisAlignment: MainAxisAlignment.center,
                          //     children: [
                          //       RectangleContainer(
                          //           "asset/rect1.png", context),
                          //       SizedBox(
                          //         width: width * .003,
                          //       ),
                          //       Container(
                          //         color: Color(0xffFFFFFF),
                          //
                          //         height: width * .0197,
                          //         width: width * .111,
                          //         child: Row(
                          //           mainAxisAlignment:
                          //           MainAxisAlignment.center,
                          //           children: [
                          //             SizedBox(
                          //               width: width * .001,
                          //             ),
                          //             Icon(
                          //               Icons.add,
                          //               color: Colors.black,
                          //               size: 14,
                          //             ),
                          //             SizedBox(
                          //               width: width * .007,
                          //             ),
                          //             Container(
                          //               child: Text(
                          //                 "Add a Varient",
                          //                 style: TextStyle(
                          //                     color: Colors.black,
                          //                     fontSize: width * .010,
                          //                     overflow:
                          //                     TextOverflow.ellipsis),
                          //               ),
                          //             )
                          //           ],
                          //         ),
                          //       ),
                          //       SizedBox(
                          //         width: width * .003,
                          //       ),
                          //       RectangleContainer(
                          //           "asset/rect2.png", context),
                          //     ],
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: height * .015,
                          // ),

                          Expanded(
                              child: Container(
                                  height: 0,
                                  child:widget.result.isEmpty?NoDataResult(): ListView.separated(
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
                                            select: widget.select,
                                            selectedVertical:widget. selectedVertical,
                                            item: widget.result[index].name,
                                            id:widget.result[index]
                                                .id
                                                .toString(),
                                            onClick: () {
                                              widget.ontap(index);

                                            },
                                          ));
                                    },
                                    itemCount:widget. result.length,
                                  )


                              )),
                          widget.child!
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
  final Widget child;
  final bool select;
  final   List<PurchaseOrder> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  PurchaseVerticalList({ required this.itemsearch,this.select=false,this.child=const SizedBox(),required this.result, required this.selectedVertical,required this.ontap,this.tab});
  @override
  _PurchaseVerticalListState createState() => _PurchaseVerticalListState();
}

class _PurchaseVerticalListState extends State<PurchaseVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<PurchaseOrder>result=[];
  bool select=false;
  bool suffixIconCheck=false;
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

        return Builder(
          builder: (context) {
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
                            suffixIconCheck:suffixIconCheck ,
                            ctrlr:widget. itemsearch,
                            onChanged: (va) {
                              print("searching case"+va.toString());
                              context
                                  .read<VertiacalCubit>()
                                  .getSearch(widget.itemsearch.text);
                              suffixIconCheck=true;
                              if(va==""){
                                context
                                    .read<VertiacalCubit>()
                                    .getGeneralVertical();
                                suffixIconCheck=false;

                              }

                            },
                          )
                      ),
                      SizedBox(
                        height:
                        MediaQuery.of(context).size.height * .008,
                      ),
                      // Container(
                      //   margin: EdgeInsets.only(
                      //     left: width * 0.009,
                      //     right: width * 0.007,
                      //   ),
                      //   child: Row(
                      //     //mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       RectangleContainer(
                      //           "asset/rect1.png", context),
                      //       SizedBox(
                      //         width: width * .003,
                      //       ),
                      //       Container(
                      //         color: Color(0xffFFFFFF),
                      //
                      //         height: width * .0197,
                      //         width: width * .111,
                      //         child: Row(
                      //           mainAxisAlignment:
                      //           MainAxisAlignment.center,
                      //           children: [
                      //             SizedBox(
                      //               width: width * .001,
                      //             ),
                      //             Icon(
                      //               Icons.add,
                      //               color: Colors.black,
                      //               size: 14,
                      //             ),
                      //             SizedBox(
                      //               width: width * .007,
                      //             ),
                      //             Container(
                      //               child: Text(
                      //                 "Add a Varient",
                      //                 style: TextStyle(
                      //                     color: Colors.black,
                      //                     fontSize: width * .010,
                      //                     overflow:
                      //                     TextOverflow.ellipsis),
                      //               ),
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //       SizedBox(
                      //         width: width * .003,
                      //       ),
                      //       RectangleContainer(
                      //           "asset/rect2.png", context),
                      //     ],
                      //   ),
                      // ),
                      SizedBox(
                        height: height * .015,
                      ),

                      Expanded(
                          child: Container(
                              height: 0,
                              child:widget.result.isEmpty?NoDataResult(): ListView.separated(
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
                                        select: widget.select,
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
                                itemCount: widget.result.length,
                              )


                          )),
                      widget.child!,
                    ],
                  ),
                ),
              ),
            );
          }
        );


  }
}

class SalesGeneralVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final   List<salesOrderTypeModel> result ;
  final String? tab;
  int selectedVertical;
  final bool select;
  final Widget child;
  final Function(int) ontap;
  SalesGeneralVerticalList({ this.child=const SizedBox(),this.select=false,required this.itemsearch,required this.result, required this.selectedVertical,required this.ontap,this.tab});
  @override
  _SalesGeneralVerticalListState createState() => _SalesGeneralVerticalListState();
}

class _SalesGeneralVerticalListState extends State<SalesGeneralVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<salesOrderTypeModel>result=[];
  bool select=false;
  bool suffixIconCheck=false;
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
                                suffixIconCheck:suffixIconCheck ,
                                onChanged: (va) {
                                  setState(() {



                                  print("searching case"+va.toString());
                                  context
                                      .read<SalesgeneralverticalCubit>()
                                      .getSalesSearch(widget.itemsearch.text);
                                  suffixIconCheck=true;
                                  if(va==""){
                                    context
                                        .read<SalesgeneralverticalCubit>()
                                        .getSalesGeneralVertical();
                                    suffixIconCheck=false;

                                  }
                                  });

                                },
                              )),
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height * .008,
                          ),
                          // Container(
                          //   margin: EdgeInsets.only(
                          //     left: width * 0.009,
                          //     right: width * 0.007,
                          //   ),
                          //   child: Row(
                          //     //mainAxisAlignment: MainAxisAlignment.center,
                          //     children: [
                          //       RectangleContainer(
                          //           "asset/rect1.png", context),
                          //       SizedBox(
                          //         width: width * .003,
                          //       ),
                          //       Container(
                          //         color: Color(0xffFFFFFF),
                          //
                          //         height: width * .0197,
                          //         width: width * .111,
                          //         child: Row(
                          //           mainAxisAlignment:
                          //           MainAxisAlignment.center,
                          //           children: [
                          //             SizedBox(
                          //               width: width * .001,
                          //             ),
                          //             Icon(
                          //               Icons.add,
                          //               color: Colors.black,
                          //               size: 14,
                          //             ),
                          //             SizedBox(
                          //               width: width * .007,
                          //             ),
                          //             Container(
                          //               child: Text(
                          //                 "Add a Varient",
                          //                 style: TextStyle(
                          //                     color: Colors.black,
                          //                     fontSize: width * .010,
                          //                     overflow:
                          //                     TextOverflow.ellipsis),
                          //               ),
                          //             )
                          //           ],
                          //         ),
                          //       ),
                          //       SizedBox(
                          //         width: width * .003,
                          //       ),
                          //       RectangleContainer(
                          //           "asset/rect2.png", context),
                          //     ],
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: height * .015,
                          // ),

                          Expanded(
                              child: Container(
                                  height: 100,
                                  child:widget.result.isEmpty?NoDataResult(): ListView.separated(
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
                                            select:widget. select,
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
                                    itemCount:widget. result.length,
                                  )


                              )),
                          widget.child!
                        ],
                      ),
                    ),
                  ),
                );
              },


      ),

    );

  }
}


class SalesReturnGeneralVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final   List<salesOrderTypeModel> result ;
  final String? tab;
  int selectedVertical;
  final Widget child;
  final Function(int) ontap;
  SalesReturnGeneralVerticalList({ this.child=const SizedBox(),required this.itemsearch,required this.result, required this.selectedVertical,required this.ontap,this.tab});
  @override
  _SalesReturnGeneralVerticalListState createState() => _SalesReturnGeneralVerticalListState();
}

class _SalesReturnGeneralVerticalListState extends State<SalesReturnGeneralVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<salesOrderTypeModel>result=[];
  bool select=false;
  bool suffixIconCheck=false;
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
                                suffixIconCheck: suffixIconCheck,
                                onChanged: (va) {
                                  setState(() {


                                  print("searching case"+va.toString());
                                  suffixIconCheck=true;
                                  context
                                      .read<SalesreturnverticalCubit>()
                                      .getSalesReturnSearch(widget.itemsearch.text);
                                  if(va==""){
                                    suffixIconCheck=false;
                                    context
                                        .read<SalesreturnverticalCubit>()
                                        .getSalesReturnGeneralVertical();

                                  }
                                  });

                                },
                              )),
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height * .008,
                          ),
                          // Container(
                          //   margin: EdgeInsets.only(
                          //     left: width * 0.009,
                          //     right: width * 0.007,
                          //   ),
                          //   child: Row(
                          //     //mainAxisAlignment: MainAxisAlignment.center,
                          //     children: [
                          //       RectangleContainer(
                          //           "asset/rect1.png", context),
                          //       SizedBox(
                          //         width: width * .003,
                          //       ),
                          //       Container(
                          //         color: Color(0xffFFFFFF),
                          //
                          //         height: width * .0197,
                          //         width: width * .111,
                          //         child: Row(
                          //           mainAxisAlignment:
                          //           MainAxisAlignment.center,
                          //           children: [
                          //             SizedBox(
                          //               width: width * .001,
                          //             ),
                          //             Icon(
                          //               Icons.add,
                          //               color: Colors.black,
                          //               size: 14,
                          //             ),
                          //             SizedBox(
                          //               width: width * .007,
                          //             ),
                          //             Container(
                          //               child: Text(
                          //                 "Add a Varient",
                          //                 style: TextStyle(
                          //                     color: Colors.black,
                          //                     fontSize: width * .010,
                          //                     overflow:
                          //                     TextOverflow.ellipsis),
                          //               ),
                          //             )
                          //           ],
                          //         ),
                          //       ),
                          //       SizedBox(
                          //         width: width * .003,
                          //       ),
                          //       RectangleContainer(
                          //           "asset/rect2.png", context),
                          //     ],
                          //   ),
                          // ),
                          SizedBox(
                            height: height * .015,
                          ),

                          Expanded(
                              child: Container(
                                  height: 100,
                                  child: widget.result.isEmpty?NoDataResult():ListView.separated(
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
                                    itemCount:widget. result.length,
                                  )


                              )),
                          widget.child!
                        ],

                      ),
                    ),
                  ),
                );

          }
      ),

    );

  }
}



class BrandVerticalList extends StatefulWidget {
  final  PaginatedResponse<dynamic>? list;
  final TextEditingController itemsearch;
  final   List<BrandListModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  BrandVerticalList({ required this.list,required this.itemsearch,required this.result, required this.selectedVertical,required this.ontap,this.tab});
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
                          width: width * .128,
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
                                      ),



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
class MaterialVerticalList extends StatefulWidget {
  final  PaginatedResponse<dynamic>? list;
  final TextEditingController itemsearch;
  final   List<BrandListModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  final Function(String) search;
  MaterialVerticalList({ required this.list,required this.itemsearch,required this.result, required this.selectedVertical,required this.ontap,this.tab, required this.search});
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
      // Container(
            height: double.infinity,
            margin: EdgeInsets.all(10),
            child:
            Visibility(
              visible:  !vm.isCollapsed,
              child: Container(
                height: height,
                // height: double.minPositive,
                width: width * .128,
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
                            widget.search(va);
                            print("searching case"+va.toString());
                            // context
                            //     .read<MaterialListCubit>()
                            //     .searchMaterialList(widget.itemsearch.text);
                            // if(va==""){
                            //   context
                            //       .read<MaterialListCubit>()
                            //       .getMaterialList();

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
                                      item: widget.result[index].name,
                                      id:widget. result[index]
                                          .id
                                          .toString(),
                                      onClick: () {
                                        widget.ontap( index);

                                      },
                                    ));
                              },
                              itemCount:widget. result.length,
                            )


                        )),
                    tablePagination(
                          () => context
                          .read<MaterialListCubit>()
                          .refresh(),
                      back: widget.list?.previousUrl == null
                          ? null
                          : () {
                        context
                            .read<MaterialListCubit>()
                            .previuosslotSectionPageList();
                      },
                      next: widget.list?.nextPageUrl == null
                          ? null
                          : () {
                        // print(data.nextPageUrl);
                        context
                            .read<MaterialListCubit>()
                            .nextslotSectionPageList("");
                      },
                    )
                  ],
                ),
              ),
            ),
          );


  }
}



class DebvisionVerticalList extends StatefulWidget {
  final  PaginatedResponse<dynamic>? list;
  final TextEditingController itemsearch;
  final   List<BrandListModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  DebvisionVerticalList({ required this.list,required this.itemsearch,required this.result, required this.selectedVertical,required this.ontap,this.tab});
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
                      width: width * .128,
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


                              )),
                          tablePagination(
                                () => context
                                .read<DevisionListCubit>()
                                .refresh(),
                            back: widget.list?.previousUrl == null
                                ? null
                                : () {
                              context
                                  .read<DevisionListCubit>()
                                  .previuosslotSectionPageList();
                            },
                            next: widget.list?.nextPageUrl == null
                                ? null
                                : () {
                              // print(data.nextPageUrl);
                              context
                                  .read<DevisionListCubit>()
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
                return Container(
                  height: double.infinity,
                  width: width * .128,
                  margin: EdgeInsets.all(10),
                  child:

                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                     width: width * .128,
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
                  width: width * .128,
                  margin: EdgeInsets.all(10),
                  child:

                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .128,
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


class offerPeriodVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final  PaginatedResponse<dynamic>? list;
  final   List<OfferPeriodList> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  final Function(String) search;
  offerPeriodVerticalList({ required this.itemsearch,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab,required this.search});
  @override
  _offerPeriodVerticalListState createState() => _offerPeriodVerticalListState();
}

class _offerPeriodVerticalListState extends State<offerPeriodVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<OfferPeriodList>result=[];
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
                  width: width * .128,
                  margin: EdgeInsets.all(10),
                  child:

                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .128,
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
                                            item: widget.result[index].title,
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




class PromotionSaleVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final  PaginatedResponse<dynamic>? list;
  final   List<salesOrderTypeModel> result ;
  final Widget child;
  final String? tab;
  int selectedVertical;
  // final bool suffixIconCheck;
  // final bool select;
  final Function(int) ontap;
  final Function(String) search;
  PromotionSaleVerticalList({ required this.itemsearch,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab, required this.child, required this.search});
  @override
  _PromotionSaleVerticalListState createState() => _PromotionSaleVerticalListState();
}

class _PromotionSaleVerticalListState extends State<PromotionSaleVerticalList> {
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
                                    widget.search(va);
                                    // context
                                    //     .read<BaseuomlistCubit>()
                                    //     .searchUomList(widget.itemsearch.text,type: "all");
                                    // if(va==""){
                                    //   context
                                    //       .read<BaseuomlistCubit>()
                                    //       .getUomist();
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
                                              item: widget.result[index].name??widget.result[index].title,
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
                            widget.child,




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



class PromotionBuyMoreVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final  PaginatedResponse<dynamic>? list;
  final   List<OfferPeriodList> result ;
  final Widget child;
  final String? tab;
  int selectedVertical;
  // final bool suffixIconCheck;
  // final bool select;
  final Function(int) ontap;
  final Function(String) search;
  PromotionBuyMoreVerticalList({ required this.itemsearch,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab, required this.child, required this.search});
  @override
  _PromotionBuyMoreVerticalListState createState() => _PromotionBuyMoreVerticalListState();
}

class _PromotionBuyMoreVerticalListState extends State<PromotionBuyMoreVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<OfferPeriodList>result=[];
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
                                    widget.search(va);
                                    // context
                                    //     .read<BaseuomlistCubit>()
                                    //     .searchUomList(widget.itemsearch.text,type: "all");
                                    // if(va==""){
                                    //   context
                                    //       .read<BaseuomlistCubit>()
                                    //       .getUomist();
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
                                    child:
                                    widget.result.isEmpty?NoDataResult():   ListView.separated(



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
                                              item: widget.result[index].name??widget.result[index].title,
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
                            widget.child,




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


class PromotionMultiBuyVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final  PaginatedResponse<dynamic>? list;
  final   List<OfferPeriodList> result ;
  final Widget child;
  final String? tab;
  int selectedVertical;
  // final bool suffixIconCheck;
  // final bool select;
  final Function(int) ontap;
  final Function(String) search;
  PromotionMultiBuyVerticalList({ required this.itemsearch,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab, required this.child, required this.search});
  @override
  _PromotionMultiBuyVerticalListState createState() => _PromotionMultiBuyVerticalListState();
}

class _PromotionMultiBuyVerticalListState extends State<PromotionMultiBuyVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<OfferPeriodList>result=[];
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
                                    widget.search(va);
                                    // context
                                    //     .read<BaseuomlistCubit>()
                                    //     .searchUomList(widget.itemsearch.text,type: "all");
                                    // if(va==""){
                                    //   context
                                    //       .read<BaseuomlistCubit>()
                                    //       .getUomist();
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
                                    child:
                                    ListView.separated(



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
                                              item: widget.result[index].name??widget.result[index].title,
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
                            widget.child,




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









class offerPeriodGroupVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final  PaginatedResponse<dynamic>? list;
  final   List<OfferGroupList> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  final Function(String) search;
  offerPeriodGroupVerticalList({ required this.itemsearch,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab,required this.search});
  @override
  _offerPeriodGroupVerticalListState createState() => _offerPeriodGroupVerticalListState();
}

class _offerPeriodGroupVerticalListState extends State<offerPeriodGroupVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<OfferGroupList>result=[];
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
                  width: width * .128,
                  margin: EdgeInsets.all(10),
                  child:

                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .128,
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
                                            item: widget.result[index].title,
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
                  width: width * .128,
                  margin: EdgeInsets.all(10),
                  child:

                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .128,
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



class FrameWorkVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final  PaginatedResponse<dynamic>? list;
  final   List<FrameWorkListModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  final Function(String) search;
  FrameWorkVerticalList({ required this.itemsearch,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab,required this.search});
  @override
  _FrameWorkVerticalListState createState() => _FrameWorkVerticalListState();
}

class _FrameWorkVerticalListState extends State<FrameWorkVerticalList> {
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
                  width: width * .128,
                  margin: EdgeInsets.all(10),
                  child:

                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .128,
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

    );

  }
}





class AttributeVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final  PaginatedResponse<dynamic>? list;
  final   List<AttributeListModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  final Function(String) search;
  AttributeVerticalList({ required this.itemsearch,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab,required this.search});
  @override
  _AttributeVerticalListState createState() => _AttributeVerticalListState();
}

class _AttributeVerticalListState extends State<AttributeVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<AttributeListModel>result=[];
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
                  width: width * .128,
                  margin: EdgeInsets.all(10),
                  child:

                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .128,
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
                                            item: widget.result[index].attributeName,
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
                                .read<AttributepatchlistCubit>()
                                .refresh(),
                            back: widget.list?.previousUrl == null
                                ? null
                                : () {
                              context
                                  .read<AttributepatchlistCubit>()
                                  .previuosslotSectionPageList();
                            },
                            next: widget.list?.nextPageUrl == null
                                ? null
                                : () {
                              // print(data.nextPageUrl);
                              context
                                  .read<AttributepatchlistCubit>()
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
                  width: width * .128,
                  margin: EdgeInsets.all(10),
                  child:

                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .128,
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


class StockPartitionVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final  PaginatedResponse<dynamic>? list;
  final   List<BrandListModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  final Function(String) search;
  StockPartitionVerticalList({ required this.itemsearch,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab,required this.search});
  @override
  _StockPartitionVerticalListState createState() => _StockPartitionVerticalListState();
}

class _StockPartitionVerticalListState extends State<StockPartitionVerticalList> {
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
                  width: width * .128,
                  margin: EdgeInsets.all(10),
                  child:

                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .128,
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

    );

  }
}




class LinkedItemVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final  PaginatedResponse<dynamic>? list;
  final   List<LinkedItemListIdModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  final Function(String) search;
  LinkedItemVerticalList({ required this.itemsearch,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab,required this.search});
  @override
  _LinkedItemVerticalList createState() => _LinkedItemVerticalList();
}

class _LinkedItemVerticalList extends State<LinkedItemVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<LinkedItemListIdModel>result=[];
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
                  width: width * .128,
                  margin: EdgeInsets.all(10),
                  child:

                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .128,                     //width: 232,
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

    );

  }
}





















class StaticVerticalList extends StatefulWidget {
  final  PaginatedResponse<dynamic>? list;
  final TextEditingController itemsearch;
  final String type;
  final   List<BrandListModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  StaticVerticalList({ required this.list,required this.itemsearch,required this.result, required this.selectedVertical,required this.ontap,this.tab,required this.type});
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
    return Container(
        //     child: BlocProvider(
        // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
        child: Builder(
            builder: (context) {

                  return Container(
                    height: double.infinity,
                    width: width * .128,
                    margin: EdgeInsets.all(10),
                    child:
                    Visibility(
                      visible:  !vm.isCollapsed,
                      child: Container(
                        height: height,
                        // height: double.minPositive,
                        width: width * .128,
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


                                )),
                            tablePagination(
                                  () => context
                                  .read<ListstaticCubit>()
                                  .refresh(),
                              back: widget.list?.previousUrl == null
                                  ? null
                                  : () {
                                context
                                    .read<ListstaticCubit>()
                                    .previuosslotSectionPageList();
                              },
                              next: widget.list?.nextPageUrl == null
                                  ? null
                                  : () {
                                // print(data.nextPageUrl);
                                context
                                    .read<ListstaticCubit>()
                                    .nextslotSectionPageList();
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  );

            }
        ),

      );

  }
}



class UomGroupVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final  PaginatedResponse<dynamic>? list;

  final   List<BrandListModel> result ;
  final String? tab;
  int selectedVertical;
  final Function(int) ontap;
  UomGroupVerticalList({ required this.itemsearch,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab});
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
                      width: width * .128,
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


                              )),
                          tablePagination(
                                () => context
                                .read<UomgruoplistCubit>()
                                .refresh(),
                            back: widget.list?.previousUrl == null
                                ? null
                                : () {
                              context
                                  .read<UomgruoplistCubit>()
                                  .previuosslotSectionPageList();
                            },
                            next: widget.list?.nextPageUrl == null
                                ? null
                                : () {
                              // print(data.nextPageUrl);
                              context
                                  .read<UomgruoplistCubit>()
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




class CategoryVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
final  PaginatedResponse<dynamic>? list;
  final   List<BrandListModel> result ;
  final String? tab;
  final Function(String) search;

  int selectedVertical;
  final Function(int) ontap;
  CategoryVerticalList({ required this.itemsearch,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab, required this.search});
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
    return Container(
      //     child: BlocProvider(
      // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
      child: Builder(
            builder: (context) {

                  return Container(
                    height: double.infinity,
                    margin: EdgeInsets.all(10),
                    child:
                    Visibility(
                      visible:  !vm.isCollapsed,
                      child: Container(
                        height: height,
                        // height: double.minPositive,
                        width: width * .128,
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
                                    widget.search(va);
                                    if(va==""){
                                      context.read<CategorylistCubit>().getCategoryist(type: "all");
                                      setState(() {

                                      });
                                    }
                                    else{
                                      context
                                          .read<CategorylistCubit>()
                                          .searchCategoryist(va,type:"all" );
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
                                              selectedVertical: selectedVertical,
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

            }
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
    return Container(
      //     child: BlocProvider(
      // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
      child: Builder(
          builder: (context) {

                return Container(
                  height: double.infinity,
                  margin: EdgeInsets.all(10),
                  child:
                  Visibility(
                    visible:  !vm.isCollapsed,
                    child: Container(
                      height: height,
                      // height: double.minPositive,
                      width: width * .128,
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
                                      .searchGroupList(widget.itemsearch.text,type:"all" );
                                  if(va==""){
                                    context.read<GrouplistCubit>().getGroupListList(type: "all");

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
    return Container(
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
                      width:  width * .128,
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

                                  context.read<BaseuomlistCubit>().searchUomList(va,type:"all");
                                  if(va==""){
                                    context.read<BaseuomlistCubit>().getUomist(type: "all");

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
                                .read<ItemcreationListCubit>()
                                .refresh(),
                            back: widget.list?.previousUrl == null
                                ? null
                                : () {
                              context
                                  .read<ItemcreationListCubit>()
                                  .previuosslotSectionPageList();
                            },
                            next: widget.list?.nextPageUrl == null
                                ? null
                                : () {
                              // print(data.nextPageUrl);
                              context
                                  .read<ItemcreationListCubit>()
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

class ItemVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final  PaginatedResponse<dynamic>? list;
  final   List<BrandListModel> result ;
  final String? tab;
  final bool select;
  final Widget child;
  int selectedVertical;
  final Function(int) ontap;
  ItemVerticalList({ required this.itemsearch,this.select=false,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab, required this.child});
  @override
  _ItemVerticalListState createState() => _ItemVerticalListState();
}

class _ItemVerticalListState extends State<ItemVerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<BrandListModel>result=[];
  bool select=false;
  bool suffixIconCheck=false;
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
                                suffixIconCheck:suffixIconCheck ,
                                ctrlr:widget. itemsearch,
                                onChanged: (va) {
                                  setState(() {

                                  if(va=="" ||va.isEmpty){
                                    context.read<ItemcreationListCubit>().getItemListList();
                                    suffixIconCheck=false;

                                  }
                                  else{


                                    context
                                        .read<ItemcreationListCubit>()
                                        .searchItemList(widget.itemsearch.text);
                                    suffixIconCheck=true;
                                  }
                                  });

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
                                  child: widget.result.isEmpty?NoDataResult():ListView.separated(



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
                                            select: widget.select,
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
                          widget.child,
                        ],
                      ),
                    ),
                  ),
                );

          }
      ),

    );

  }
}




class VariantVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final  PaginatedResponse<dynamic>? list;
  final   List<BrandListModel> result ;
  final Widget child;
  final String? tab;
  int selectedVertical;
  final bool suffixIconCheck;
  final bool select;
  final Function(int) ontap;
  final Function(String) search;
  VariantVerticalList({ required this.itemsearch,this.select=false,this.suffixIconCheck=false,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab,required this.search, required this.child});
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
                                suffixIconCheck: widget.suffixIconCheck,
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
                                  child: widget.result.isEmpty?NoDataResult():ListView.separated(



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
                                            select: widget.select,
                                            item: widget.result[index].name==null? widget.result[index].code: widget.result[index].name,
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
                          widget.child,

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






class CustomIseVerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final  PaginatedResponse<dynamic>? list;
  final   List<BrandListModel> result ;
  final String? tab;
  final bool suffixIconCheck;
  final bool select;
  int selectedVertical;
  final Function(int) ontap;
  final Function(String) search;
  CustomIseVerticalList({ required this.itemsearch,this.select=false,this.suffixIconCheck =false,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab,required this.search});
  @override
  _CustomIseVerticalListState createState() => _CustomIseVerticalListState();
}

class _CustomIseVerticalListState extends State<CustomIseVerticalList> {
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
                                suffixIconCheck: widget.suffixIconCheck,
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
                                  child: widget.result.isEmpty?NoDataResult():ListView.separated(



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
                                            select: widget.select
                                            ,
                                            selectedVertical:widget. selectedVertical,
                                            item: widget.result[index].name==null? widget.result[index].code: widget.result[index].name,
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
                                .read<ListvariantCubit>()
                                .refresh(),
                            back: widget.list?.previousUrl == null
                                ? null
                                : () {
                              context
                                  .read<ListvariantCubit>()
                                  .previuosslotSectionPageList();
                            },
                            next: widget.list?.nextPageUrl == null
                                ? null
                                : () {
                              // print(data.nextPageUrl);
                              context
                                  .read<ListvariantCubit>()
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
  final bool suffixIconCheck;
  int selectedVertical;
  final Function(int) ontap;
  final Function(String) search;
  channelVerticalList({ required this.itemsearch,this.suffixIconCheck=false,required this.list,required this.result, required this.selectedVertical,required this.ontap,this.tab,required this.search});
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
                                suffixIconCheck: widget.suffixIconCheck,
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
                                  child: widget.result.isEmpty?NoDataResult():ListView.separated(



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