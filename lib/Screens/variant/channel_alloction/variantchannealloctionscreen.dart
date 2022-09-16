import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/variant/channel_alloction/cubit/channelfiltwer/channelfilter_cubit.dart';
import 'package:inventory/Screens/variant/channel_alloction/cubit/channeltypelist/channeltypelist_cubit.dart';
import 'package:inventory/Screens/variant/channel_alloction/model/typemodel.dart';
import 'package:inventory/Screens/variant/channel_alloction/screens/channel_allocation_bottomtable.dart';
import 'package:inventory/Screens/variant/channel_alloction/screens/channel_allocation_topscreen.dart';
import 'package:inventory/Screens/variant/stock/cubits/stockvertical/stockvertical_cubit.dart';
import 'package:inventory/Screens/variant/stock/models/stockverticallist.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/responseutils.dart';

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
  String choosenValue = "group";
  bool apiChecking = true;
  var paginated;
  List<StockVerticalReadModel> result = [];
  List<Category> channels = [];
  TextEditingController itemsearch = TextEditingController();
  int selectedVertical = 0;
  var list;
  int? veritiaclid = 0;

  listAssign(List<ChannelTypeModel>table1, PaginatedResponse<dynamic> data) {
    setState(() {
      table = table1;
      paginated = data;
    });
  }

  appiCheckingTrue(bool val) {
    print(val);
    setState(() {
      apiChecking = val;
      print(apiChecking);
    });
  }
  @override
  void initState() {
    context.read<StockverticalCubit>().getStockList("RGC1659608240");
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
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
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
                        channels=data;

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
                                    .getStockList("RGC1659608240");
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
                                    channels:channels

                                  ),
                                  SizedBox(
                                    height: h * .09,
                                  ),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomDropDown(
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
                                      ]),
                                  SizedBox(
                                    height: 3,
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
                                          "ahlan", Variable.inventory_ID,
                                          choosenValue);
                                    },
                                  )
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
