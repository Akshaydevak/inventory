import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/variant/channel_stockAllocation/cubit/channael_allocation_post/channel_stock_allocation_post_cubit.dart';
import 'package:inventory/Screens/variant/channel_stockAllocation/cubit/channelread/channelstockallocationread_cubit.dart';
import 'package:inventory/Screens/variant/channel_stockAllocation/cubit/channelstockvertical/channelstockvertical_cubit.dart';
import 'package:inventory/Screens/variant/channel_stockAllocation/model/channelstock_allocationlist.dart';
import 'package:inventory/Screens/variant/channel_stockAllocation/model/channelstock_read.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/listvraiant/listvraiant_cubit.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';

import 'channelstockallocation_stabletable.dart';

class ChannelStockAllocateScreen extends StatefulWidget {
  @override
  _ChannelStockAllocateScreenState createState() => _ChannelStockAllocateScreenState();
}

class _ChannelStockAllocateScreenState extends State<ChannelStockAllocateScreen> {
  TextEditingController variantCodeController = TextEditingController();
  TextEditingController stockCodeController = TextEditingController();
  TextEditingController channelTypeStockcode = TextEditingController();
  TextEditingController channelTypecode = TextEditingController();
  TextEditingController baseUomController = TextEditingController();
  TextEditingController purchaseUomController = TextEditingController();
  TextEditingController safetyStockController = TextEditingController();
  TextEditingController totalQuantityController = TextEditingController();
  TextEditingController salesStockQuantityController = TextEditingController();
  TextEditingController salesBlockQuantityController = TextEditingController();
  TextEditingController purchaseBlockController = TextEditingController();
  TextEditingController reorderPointQuantityController = TextEditingController();
  TextEditingController reorderQuantityController = TextEditingController();
  TextEditingController cancelledQuantityController = TextEditingController();
  TextEditingController reservedQuantityController = TextEditingController();
  TextEditingController channelAllocationRatio = TextEditingController();
  TextEditingController damagedQuantityController = TextEditingController();
  TextEditingController returnedQuantityController = TextEditingController();
  TextEditingController replaceMentQuantityController = TextEditingController();
  TextEditingController virtualStockTypeController = TextEditingController();
  TextEditingController virtualStockController = TextEditingController();
  TextEditingController minMaxRatioController = TextEditingController();
  TextEditingController maximumQuantityController = TextEditingController();
  TextEditingController minimumQuantityController = TextEditingController();
  TextEditingController channelTypeController = TextEditingController();
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  int selectedVertical = 0;
  var list;
  int? veritiaclid = 0;
  int? channelId ;
  bool stockwarning = false;
  bool salesBlock = false;

  trueOrFalseChange({String? type, bool val = false}) {
    switch (type) {
      case '1' :
        stockwarning = val;
        setState(() {

        });
        break;

      case '2' :
        salesBlock = val;
        setState(() {

        });
        break;


    }
  }
  List<ChanmneStockListModelModel>group=[];
  @override
  void initState() {
    context.read<ListvraiantCubit>().getVariantList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
  providers: [
    BlocProvider(
  create: (context) => ChannelstockverticalCubit(),
),    BlocProvider(
  create: (context) => ChannelstockallocationreadCubit(),
), BlocProvider(
  create: (context) => ChannelStockAllocationPostCubit(),
),
   
  ],
  child: Builder(
      builder: (context) {
        return MultiBlocListener(
  listeners: [
    BlocListener<ChannelStockAllocationPostCubit, ChannelStockAllocationPostState>(
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

                context.read<ListvraiantCubit>().getVariantList();;
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

    BlocListener<ChannelstockverticalCubit, ChannelstockverticalState>(
      listener: (context, state) {
        print(state);
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error");
            },
            success: (data) {
              setState(() {

                group=data.data;
                print("Akshgayaa"+group.toString());
                // channels=data?.results??[];

              });
            });

        // TODO: implement listener
      },
    ),
    BlocListener<ChannelstockallocationreadCubit, ChannelstockallocationreadState>(
      listener: (context, state) {
        print(state);
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error");
            },
            success: (data) {
              setState(() {
                channelTypeStockcode.text=data.channelTypeStockCode??"";
                channelTypecode.text=data.channeltypeCode??"";
                variantCodeController.text=data.variantId.toString()??"";
                stockCodeController.text=data?.stockId.toString()??"";
                safetyStockController.text=data.safetyStock.toString()??"";
                reorderPointQuantityController.text=data.reOrderPoint.toString()??"";
                reorderQuantityController.text=data.reOrderQuantity.toString()??"";
                reservedQuantityController.text=data.reservedQuantity.toString()??"";
                reservedQuantityController.text=data.reservedQuantity.toString()??"";
                damagedQuantityController.text=data.damagedQuantity.toString()??"";
                returnedQuantityController.text=data.returnedQuantity.toString()??"";
                replaceMentQuantityController.text=data.replacementQuantity.toString()??"";
                minimumQuantityController.text=data.minimumQuantity.toString()??"";
                maximumQuantityController.text=data.maximumQuantity.toString()??"";
                virtualStockTypeController.text=data.virtualStock.toString()??"";
                channelAllocationRatio.text=data.channelAllocationRatio.toString()??"";
                stockwarning=data?.stockWarning??false;
                salesBlock=data?.salesblock??false;

                // channels=data?.results??[];

              });
            });

        // TODO: implement listener
      },
    ),
  ],
  child: BlocConsumer<ListvraiantCubit, ListvraiantState>(
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
                  veritiaclid = result[0].id;
                  // Variable.verticalid=result[0].id;
                  // print("Variable.ak"+Variable.verticalid.toString());
                  context.read<ChannelstockverticalCubit>().getChannelAllocationList(veritiaclid!);
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
        return Builder(
          builder: (context) {
            double height=MediaQuery.of(context).size.height;
            double width=MediaQuery.of(context).size.width;
            return Scaffold(
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      VariantVerticalList(
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
                            print("rijina" + result[index].id.toString());


                            veritiaclid = result[index].id;
                            // clear();
                            // select=true;
                            //
                            //


                            setState(() {
                              context.read<ChannelstockverticalCubit>().getChannelAllocationList(veritiaclid!);
                              // context.read<StockreadCubit>().getStockRead(veritiaclid!);

                            });
                          });
                        },
                        search: (String va) {
                          print(va);
                          context
                              .read<ListvraiantCubit>()
                              .getSearchVariantList(va);
                          if (va == "") {
                            context
                                .read<ListvraiantCubit>()
                                .getVariantList();
                          }
                        },
                        result: result,
                      ),
                      Expanded(child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Container(
                            height: height*.08,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                              return Container(
                                // width:40 ,
                                  child: TextButtonLarge(onPress: () {

                                    channelId=group[index].id;
                                    context.read<ChannelstockallocationreadCubit>().getChannelStockAllocationRead(veritiaclid,group[index].id);

                                  },text: group[index].channeltypeName??""));

                            },
                              itemCount: group.length,
                              separatorBuilder:(context, index) {
                              return SizedBox(width: 10);
                              },


                            ),
                          ),
                          // Row(
                          //   children: [
                          //     Expanded(
                          //       child: TextButtonLarge(onPress: () {  },text: "Channel1"),
                          //     ),
                          //     Expanded(
                          //       child: TextButtonLarge(onPress: () {  },text: "Channel1"),
                          //     ),
                          //     Expanded(
                          //       child: TextButtonLarge(onPress: () {  },text: "Channel1"),
                          //     ),
                          //     Expanded(
                          //       child: TextButtonLarge(onPress: () {  },text: "Channel1"),
                          //     ),
                          //   ],
                          // ),
                          SizedBox(height: 30,),

                        ChannelStockStableTable(
                          trueOrFalseChange: trueOrFalseChange,
                          channeTypeStockCode:channelTypeStockcode ,
                        channelTypeCode: channelTypecode,



                        stockWarning: stockwarning,


                        variantCode: variantCodeController,

                        cancelledQuantity: cancelledQuantityController,
                        channelTypeAllocationRatio: channelTypeController,
                        damagedQuantity: damagedQuantityController,
                        maximumQuantity: maximumQuantityController,
                        minimumQuantity: minimumQuantityController,
                        minMaxRatio: minMaxRatioController,
                        purchaseBlockQuantity: purchaseBlockController,
                        reLOrderQuantity: reorderPointQuantityController,
                        reOrderPoint: reorderPointQuantityController,
                        replacementQuantity: replaceMentQuantityController,
                        reservedQuantity: reservedQuantityController,
                        returnedQuantity: returnedQuantityController,

                        salesBlockQuantity: salesBlockQuantityController,
                        salesBolck: salesBlock,

                        stockCode: stockCodeController,
                        totalQuantity: totalQuantityController,
                        // trueOrFalseChange: trueOrFalseChange,
                        virtualStock: virtualStockController,
                        virtualStockType: virtualStockTypeController,

                      ),
                          SizedBox(height: height * .13,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // Button(Icons.delete, Colors.red,
                              //     ctx: context,
                              //     text: "Discard",
                              //     onApply: () {
                              //       // if(updateCheck){
                              //       //   // clears();
                              //       //
                              //       //
                              //       // }
                              //
                              //     },
                              //     height: 29,
                              //     width: 90,
                              //     labelcolor: Colors.red,
                              //     iconColor: Colors.red,
                              //     bdr: true),
                              SizedBox(
                                width: width * .008,
                              ),
                              Button(Icons.check, Colors.grey,
                                  ctx: context,
                                  text:"Update",
                                  height: 29,
                                  Color: Color(0xff3E4F5B),
                                  width: 90,
                                  labelcolor: Colors.white,
                                  iconColor: Colors.white,
                                  onApply: () {
                                    ChannelAllocationStockStockReadModel model=ChannelAllocationStockStockReadModel(
                                      stockWarning: stockwarning,
                                      salesblock: salesBlock,
                                      channelAllocationRatio: channelAllocationRatio?.text??"",
                                      minMaxRatio: maximumQuantityController.text,
                                      reOrderPoint: int.tryParse(reorderPointQuantityController.text),
                                      minimumQuantity: int.tryParse(minimumQuantityController.text),
                                      maximumQuantity: int.tryParse(maximumQuantityController.text),
                                      addVirtualStock: int.tryParse(virtualStockController.text),
                                      virtualType: virtualStockTypeController.text,

                                      reOrderQuantity: int.tryParse(returnedQuantityController.text),


                                    );
                                    print("Bad Model$model");
                                    context.read<ChannelStockAllocationPostCubit>().channelStockAllocationPatch(channelId, model);




                                  }
                              ),
                              SizedBox(
                                // width: width * .008,
                              ),
                            ],
                          ),


                        ],
                      ))

                    ],
                  ),
                ),
              ),
            );
          }
        );
  },
),
);
      }
    ),
);
  }
}
