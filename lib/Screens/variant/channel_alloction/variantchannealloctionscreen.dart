import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/variant/channel_alloction/cubit/channelfiltwer/channelfilter_cubit.dart';
import 'package:inventory/Screens/variant/channel_alloction/cubit/channeltypelist/channeltypelist_cubit.dart';
import 'package:inventory/Screens/variant/channel_alloction/model/channelpost.dart';
import 'package:inventory/Screens/variant/channel_alloction/model/typemodel.dart';
import 'package:inventory/Screens/variant/channel_alloction/screens/channel_allocation_bottomtable.dart';
import 'package:inventory/Screens/variant/channel_alloction/screens/channel_allocation_topscreen.dart';
import 'package:inventory/Screens/variant/stock/cubits/stockvertical/stockvertical_cubit.dart';
import 'package:inventory/Screens/variant/stock/models/stockverticallist.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/responseutils.dart';

import '../../GeneralScreen.dart';
import 'cubit/channelpost/channelpost_cubit.dart';
import 'cubit/channelread/channelread_cubit.dart';

class VariantChannelAllocationScreen extends StatefulWidget {
  @override
  _VariantChannelAllocationScreenState createState() =>
      _VariantChannelAllocationScreenState();
}

class _VariantChannelAllocationScreenState
    extends State<VariantChannelAllocationScreen> {
  List<String> items = ["variant", "group"];
  List<ChannelTypeModel>table = [];
  channelAllocatesRead group=channelAllocatesRead();
  String choosenValue = "group";
  String choosenValue2 = "";
  String channelTypeCode = "";
  String channelTypeName = "";
  bool apiChecking = false;
  var paginated;
  List<StockVerticalReadModel> result = [];
  List<Category> channels = [];
  List<Category> channels1 = [];
  List<String> channelCodeList = [];
  TextEditingController itemsearch = TextEditingController();
  int selectedVertical = 0;
  var list;
  int? veritiaclid = 0;
  filterTable(List<bool?>selections){
    print("seeee u"+channels1.toString());
   setState(() {
     channels1=[];
     channelCodeList=[];
   });

    for(var i=0;i<selections.length;i++){
      if(selections[i]==true){
        setState(() {
          channels1.add(channels[i]);
          channelCodeList.add(channels[i].channelCode.toString());
        });

      }
    }
    print(channels1);
    print(channelCodeList);
    // channels=channels1;
    print("ssssssssssssss"+channels1.toString());
    // for(var i=0;i<selections.length;i++){
    //   if(selections[i]==true){
    //     print("aksksk");
    //   }
    // }


  }

  listAssign(List<ChannelTypeModel>table1, PaginatedResponse<dynamic> data) {
    setState(() {
      table = table1;
      paginated = data;
    });
  }

  appiCheckingTrue(bool val,String type) {
    print("GAssali"+type);
    setState(() {
      apiChecking = val;
      choosenValue2=type;
      print("GAssali"+apiChecking.toString());
    });
  }
  @override
  void initState() {
    context.read<StockverticalCubit>().getStockList(Variable.inventory_ID);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery
        .of(context)
        .size
        .height;
    double w = MediaQuery
        .of(context)
        .size
        .width;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
          ChanneltypelistCubit()
            ..getChannelTypeList(choosenValue),
        ),
        BlocProvider(
          create: (context) => ChannelfilterCubit(),
        ), BlocProvider(
          create: (context) => ChannelreadCubit(),
        ), BlocProvider(
          create: (context) => ChannelpostCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<ChannelpostCubit, ChannelpostState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    context.showSnackBarSuccess(data.data2);
                    Timer(Duration(seconds: 5), () {
                      setState(() {

                        context.read<StockverticalCubit>().getStockList(Variable.inventory_ID);
                        // select=false;
                      });
                    }
                    );
                  } else {
                    context.showSnackBarError(data.data2);
                    print(data.data1);
                  }
                  ;
                });
              },
            ),
            BlocListener<ChanneltypelistCubit, ChanneltypelistState>(
              listener: (context, state) {
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      setState(() {
                        print("Akshay real " + data.data.toString());
                        table = data.data;
                        paginated = data;
                      });
                    });
              },
            ),
            BlocListener<ChannelreadCubit, ChannelreadState>(
              listener: (context, state) {
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      setState(() {
                        print("FArista"+data.toString());
                        group=data;
                        channels=data?.results??[];

                      });
                    });
              },
            ),
          ],
          child: BlocConsumer<StockverticalCubit, StockverticalState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());
                    list = list;

                    result = list.data;
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].category?.id;
                         channelTypeCode = result[0].category?.code.toString()??"";
                         channelTypeName = result[0].category?.name.toString()??"";
                        // Variable.verticalid=result[0].id;
                        // print("Variable.ak"+Variable.verticalid.toString());
                        context.read<ChannelreadCubit>().getChannelRead(result[0].category?.id);
                        // context.read<StockreadCubit>().getStockRead(veritiaclid!);
                      }
                      else {
                        print("common");
                        // select=true;
                        setState(() {});
                      }


                      setState(() {});
                    });
                  });
            },
            builder: (context, state) {
              return Builder(builder: (context) {
                return Scaffold(
                  backgroundColor: Colors.white,
                  body: SingleChildScrollView(
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          channelVerticalList(
                            list: list,


                            selectedVertical: selectedVertical,
                            itemsearch: itemsearch,
                            ontap: (int index) {
                              setState(() {
                                selectedVertical = index;

                                // select=false;
                                // clear();
                                // exportCheck=false;
                                // addNew=true;

                                // updateCheck=false;



                                veritiaclid = result[index].category?.id;
                                channelTypeCode = result[index].category?.code.toString()??"";
                                channelTypeName = result[index].category?.name.toString()??"";
                                // clear();
                                // select=true;
                                //
                                //


                                setState(() {
                                  context.read<ChannelreadCubit>().getChannelRead(result[0].category?.id);
                                  // context.read<StockreadCubit>().getStockRead(veritiaclid!);

                                });
                              });
                            },
                            search: (String va) {
                              print(va);
                              context
                                  .read<StockverticalCubit>()
                                  .searchStockList();
                              if (va == "") {
                                context
                                    .read<StockverticalCubit>()
                                    .getStockList(Variable.inventory_ID);
                              }
                            },
                            result: result,
                          ),
                          Expanded(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: h * .04,
                                  ),

                                  ChanneAllocationTopScreen(
                                      listAssign: listAssign,
                                      appiCheckingTrue: appiCheckingTrue,
                                    channels:channels,
                                    filterTable:filterTable,
                                      channelCodeList:channelCodeList

                                  ),
                                  SizedBox(
                                    height: h * .09,
                                  ),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.symmetric(horizontal: w * .02),
                                          child: CustomDropDown(
                                            border: true,
                                            choosenValue: choosenValue,
                                            onChange: (val) {
                                              setState(() {
                                                apiChecking = false;
                                                choosenValue = val;
                                              });
                                              print(val);
                                              context
                                                  .read<ChanneltypelistCubit>()
                                                  .getChannelTypeList(val);
                                              // choosenValue=val;
                                            },
                                            items: items,
                                          ),
                                        ),
                                      ]),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  ChannelAllocationBottomTable(
                                    table: table,
                                  ),
                                  tablePagination(
                                        () {
                                      apiChecking ?
                                      context
                                          .read<ChanneltypelistCubit>()
                                          .refresh() : context
                                          .read<ChannelfilterCubit>()
                                          .refresh();
                                    },
                                    back:
                                    paginated?.previousUrl == null
                                        ? null
                                        :
                                        () {
                                      apiChecking ? context.read<
                                          ChanneltypelistCubit>()
                                          .previuosslotSectionPageList() :
                                      context
                                          .read<ChannelfilterCubit>()
                                          .previuosslotSectionPageList();
                                      // context
                                      //     .read<Listbrand2Cubit>()
                                      //     .previuosslotSectionPageList();
                                    },
                                    next:
                                    paginated?.nextPageUrl == null
                                        ? null
                                        :
                                        () {
                                      apiChecking ? context.read<
                                          ChanneltypelistCubit>()
                                          .nextslotSectionPageList() :
                                      context
                                          .read<ChannelfilterCubit>()
                                          .nextslotSectionPageList(
                                          channelCodeList, Variable.inventory_ID,
                                          choosenValue);
                                    },
                                  ),
                                  SizedBox(height: h * .11,),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: w * .02),

                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Button(Icons.delete, Colors.red,
                                            ctx: context,
                                            text: "Discard",
                                            onApply: () {
                                              // if(updateCheck){
                                              //   // clears();
                                              //
                                              //
                                              // }

                                            },
                                            height: 29,
                                            width: 90,
                                            labelcolor: Colors.red,
                                            iconColor: Colors.red,
                                            bdr: true),
                                        SizedBox(
                                          width: w * .008,
                                        ),
                                        Button(Icons.check, Colors.grey,
                                            ctx: context,
                                            text:"save",
                                            height: 29,
                                            Color: Color(0xff3E4F5B),
                                            width: 90,
                                            labelcolor: Colors.white,
                                            iconColor: Colors.white,
                                            onApply: () {
                                              List<ChannelDatas>? channelDatas=[];
                                              List<SelectedData>? selectedData=[];
                                              if(channels1.isNotEmpty==true){

                                                for(var i=0;i<channels1.length;i++) {

                                                  channelDatas.add(ChannelDatas(

                                                    channelId: channels1[i].id
                                                        .toString(),
                                                    channelCode:channels1[i].channelCode ,
                                                    channelName: channels1[i].name,
                                                    priority: 1,
                                                    channelStockType: channels1[i]
                                                        .channelStockType,

                                                  ));
                                                }

                                              }
                                              if(table.isNotEmpty==true){
                                                for(var i=0;i<table.length;i++)
                                                  selectedData.add(SelectedData(

                                                  code  : table[i].code.toString(),
                                                    id:table[i].id

                                                  ));

                                              }
                                              ChannelPostModel model=ChannelPostModel(
                                                inventoryId: Variable.inventory_ID,
                                                selectionType:apiChecking?choosenValue2: choosenValue,
                                                channelTypeCode: channelTypeCode,
                                                channelTypeName: channelTypeName,

                                                channelTypeId: group.channelTypeId.toString(),
                                                priority: 1,
                                                channelDatas:channelDatas??[],
                                                selectedData:selectedData??[]



                                              );
                                              print(model);
                                              context.read<ChannelpostCubit>().postSChannelPosts(model);



                                              }
                                             ),
                                        SizedBox(
                                          // width: width * .008,
                                        ),
                                      ],
                                    ),
                                  ),

                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}
