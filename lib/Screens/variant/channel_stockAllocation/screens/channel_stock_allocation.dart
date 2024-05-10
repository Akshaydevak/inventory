import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/variant/channel_stockAllocation/cubit/channael_allocation_post/channel_stock_allocation_post_cubit.dart';
import 'package:inventory/Screens/variant/channel_stockAllocation/cubit/channelread/channelstockallocationread_cubit.dart';
import 'package:inventory/Screens/variant/channel_stockAllocation/cubit/channelstockvertical/channelstockvertical_cubit.dart';
import 'package:inventory/Screens/variant/channel_stockAllocation/model/channelstock_allocationlist.dart';
import 'package:inventory/Screens/variant/channel_stockAllocation/model/channelstock_read.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/listvraiant/listvraiant_cubit.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/Navigationprovider.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:provider/provider.dart';

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
  NavigationProvider commonProvider = NavigationProvider();
  TextEditingController purchaseUomController = TextEditingController();
  TextEditingController safetyStockController = TextEditingController();
  TextEditingController totalQuantityController = TextEditingController();
  TextEditingController salesStockQuantityController = TextEditingController();
  TextEditingController addVirtualController = TextEditingController();
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
  var list1;
  int? veritiaclid = 0;
  int? channelId ;
  bool stockwarning = false;
  bool suffixIconCheck = false;
  bool salesBlock = false;
  bool check = false;
  bool purchaseBlock = false;
  bool addVirtualLimit=false;
  addCheckLimit(bool val){
    setState(() {
      addVirtualLimit=val;
    });

  }

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
        case '3' :
          purchaseBlock = val;
        setState(() {

        });
        break;


    }
  }
  clear(){

    channelTypeStockcode.text="";
    channelTypecode.text="";
    variantCodeController.text="";
    stockCodeController.text="";
    safetyStockController.text="";
    reorderPointQuantityController.text="";
    reorderQuantityController.text="";
    reservedQuantityController.text="";
    reservedQuantityController.text="";
    damagedQuantityController.text="";
    returnedQuantityController.text="";
    replaceMentQuantityController.text="";
    minimumQuantityController.text="";
    maximumQuantityController.text="";
    virtualStockTypeController.text="";
    virtualStockController.clear();
    channelAllocationRatio.clear();
    channelAllocationRatio.clear();
    minMaxRatioController.clear();
    addVirtualController.clear();
    channelAllocationRatio.text="";
    purchaseBlockController.clear();
    salesBlockQuantityController.clear();
    totalQuantityController.text="";
    stockwarning==false;
    salesBlock=false;
    purchaseBlock=false;

  }

    ratiooCheck(String value,String type){
    double sum = 0;

    var b = value.split(":");
    for (var a in b) {


      sum = sum + double.parse(a.isEmpty?"0":a);
    }
    if(sum!=10) {
    type=="1"?  context.showSnackBarError("the channel Allocation Ratio is in 10"): context.showSnackBarError("the Min Max Ratio is in 10");
      check=true;
    }


  }

  minMaxRatioCalculation(){
    print(minMaxRatioController.text);
    double sum = 0;
if(minMaxRatioController.text.isNotEmpty){
  print("entered MIN");
  var minMax = minMaxRatioController.text.split(":");
  print(minMax);
  if(minMax.length>2){
    context.showSnackBarError("the ratio range is in 2");

  }
  else{
    for (var ratio in minMax) {


      sum = sum + double.parse(ratio.isEmpty?"0":ratio);
    }
    print(sum);
    if(sum!=10) {
   context.showSnackBarError("the Min Max Ratio is in 10");

    }
    else{

      if(totalQuantityController.text.isNotEmpty==true && totalQuantityController.text!="0"){
        print("entered totAL");
        double? total=double.tryParse(totalQuantityController?.text??"0");
        print(total);
        if(total!=null &&total!=0){
          double? dividedvalue=total/10;
          double? minimum=double.tryParse(minMax[0]);
          double? maximum=double.tryParse(minMax[1]);
          if(minimum!=null && minimum!=0){
            setState(() {

              minimumQuantityController.text=((dividedvalue*minimum)).round().toString();
            });

          }    if(maximum!=null && maximum!=0){
            setState(() {
              maximumQuantityController.text=((dividedvalue*maximum)).round().toString();
            });

          }

        }


      }
      else{
        print("entered virtual");
        double? virtual=double.tryParse(virtualStockController?.text??"0");
        double? addVirtual=double.tryParse(addVirtualController?.text??"0");
if(addVirtual==null){
 addVirtual=0;
}
        if(virtual==null){
          virtual=0;
        }

        print(virtual);
        print(addVirtual);
        double? total=virtual!+addVirtual!;
        print(total);

        if(total!=0 && total!=null){
          double? dividedvalue=total/10;
          double? minimum=double.tryParse(minMax[0]);
          double? maximum=double.tryParse(minMax[1]);
          if(minimum!=null && minimum!=0){
            setState(() {
              minimumQuantityController.text=(dividedvalue*minimum).round().toString();
            });

          }    if(maximum!=null && maximum!=0){
            setState(() {
              maximumQuantityController.text=(dividedvalue*maximum).round().toString();
            });

          }

        }

      }
    }



  }

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
          commonProvider.setLoadingSaveUpdate(false);
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
          commonProvider.setLoadingSaveUpdate(false);
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
                if(group.isNotEmpty) {
                  channelId=group[0].id;
                  context.read<ChannelstockallocationreadCubit>()
                      .getChannelStockAllocationRead(veritiaclid, group[0].id);
                  // channels=data?.results??[];

                }
              else{
                clear();
                }});
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
                variantCodeController.text=data.variantCode.toString()??"";
                stockCodeController.text=data?.stockCode.toString()??"";
                safetyStockController.text=data.safetyStock.toString()??"";
                reorderPointQuantityController.text=data?.reOrderPoint.toString()??"";
                reorderQuantityController.text=data?.reOrderQuantity.toString()??"";
                reservedQuantityController.text=data?.reservedQuantity.toString()??"";
                reservedQuantityController.text=data?.reservedQuantity.toString()??"";
                damagedQuantityController.text=data?.damagedQuantity.toString()??"";
                returnedQuantityController.text=data?.returnedQuantity.toString()??"";
                replaceMentQuantityController.text=data?.replacementQuantity.toString()??"";
                minimumQuantityController.text=data?.minimumQuantity.toString()??"";
                maximumQuantityController.text=data?.maximumQuantity.toString()??"";
                virtualStockTypeController.text=data?.virtualType?.toString()??"";
                virtualStockController.text=data?.virtualStock.toString()??"";
                salesBlockQuantityController.text=data?.salesblockQuantity.toString()??"";
                purchaseBlockController.text=data?.purchaseblockQuantity.toString()??"";
                // totalQuantityController.text=data.availableQuantity.toString();


                channelAllocationRatio.text=data?.channelAllocationRatio.toString()??"";
                addVirtualController.text=data?.addVirtualStock.toString()??"";
                minMaxRatioController.text=data?.minMaxRatio.toString()??"";
                stockwarning=data?.stockWarning??false;
                salesBlock=data?.salesblock??false;
                purchaseBlock=data?.purchaseBlock??false;

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
              list1 = list;

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
                  clear();
                  group.clear();
                  check = false;
                  addVirtualLimit=false;
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
            commonProvider = Provider.of<NavigationProvider>(context);
            return Scaffold(
              backgroundColor:  Pellet.bagroundColor,
              body: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    VariantVerticalList(
                      list: list1,
                      suffixIconCheck: suffixIconCheck,


                      selectedVertical: selectedVertical,
                      itemsearch: itemsearch,
                      child:        tablePagination(
                            () => context
                            .read<ListvraiantCubit>()
                            .refresh(),
                        back: list1?.previousUrl == null
                            ? null
                            : () {
                          context
                              .read<ListvraiantCubit>()
                              .previuosslotSectionPageList();
                        },
                        next: list1?.nextPageUrl == null
                            ? null
                            : () {
                          // print(data.nextPageUrl);
                          context
                              .read<ListvraiantCubit>()
                              .nextslotSectionPageList();
                        },
                      ),

                      ontap: (int index) {
                        setState(() {
                          selectedVertical = index;
                          clear();
                          group.clear();
                          check = false;
                          addVirtualLimit=false;

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
                            // context.read<ChannelstockallocationreadCubit>()
                            //     .getChannelStockAllocationRead(veritiaclid, group[0].id);
                            // context.read<StockreadCubit>().getStockRead(veritiaclid!);

                          });
                        });
                      },
                      search: (String va) {
                        print(va);
                        context
                            .read<ListvraiantCubit>()
                            .getSearchVariantList(va);
                        suffixIconCheck=true;
                        if (va == "") {
                          context
                              .read<ListvraiantCubit>()
                              .getVariantList();
                          suffixIconCheck=false;
                        }
                      },
                      result: result,
                    ),
                    Expanded(child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Container(
                            height: height*.08,
                            margin: EdgeInsets.symmetric(horizontal:width *.0155 ),
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                              return Container(
                                // width:40 ,
                                  child: TextButtonLarge(
                                      onPress: () {

                                    channelId=group[index].id;
                                    setState(() {
                                      check = false;
                                      addVirtualLimit=false;
                                      context.read<ChannelstockallocationreadCubit>().getChannelStockAllocationRead(veritiaclid,group[index].id);
                                    });
                                    // clear();


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
                          addCheckLimit:addCheckLimit,

                          addCheck:addVirtualLimit,
                          purchaseBlock:purchaseBlock,
                          addVirtualStock: addVirtualController,
                          trueOrFalseChange: trueOrFalseChange,
                          channeTypeStockCode:channelTypeStockcode ,
                        channelTypeCode: channelTypecode,



                        stockWarning: stockwarning,


                        variantCode: variantCodeController,

                        cancelledQuantity: cancelledQuantityController,
                        channelTypeAllocationRatio: channelAllocationRatio,
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
                          minMaxRatioCalculation:minMaxRatioCalculation,

                        salesBlockQuantity: salesBlockQuantityController,
                        salesBolck: salesBlock,

                        stockCode: stockCodeController,
                        totalQuantity: totalQuantityController,
                        // trueOrFalseChange: trueOrFalseChange,
                        virtualStock: virtualStockController,
                        virtualStockType: virtualStockTypeController,

                      ),
                          SizedBox(height: height * .08,),
                          SaveUpdateResponsiveButton(
                            isSaveUpdateLoading: commonProvider.isLoadingSaveupdate,
                            isClearDeketeLoading:commonProvider.isLoadingDeleteClear ,
                            isDelete: true,
                            saveFunction: (){
                              ratiooCheck(channelAllocationRatio.text,"1");
                              ratiooCheck(minMaxRatioController.text,"");
                              print("SSSSSSSSSSSSS$check");
                              if(check!=true){
                                print("SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS");
                                commonProvider.setLoadingSaveUpdate(true);
                                print("SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS");
                                ChannelAllocationStockStockReadModel model=ChannelAllocationStockStockReadModel(
                                  stockWarning: stockwarning,
                                  salesblock: salesBlock,
                                  purchaseBlock: purchaseBlock,
                                  salesblockQuantity: int.tryParse(salesBlockQuantityController.text),
                                  purchaseblockQuantity: int.tryParse(purchaseBlockController.text),
                                  channelAllocationRatio: channelAllocationRatio?.text??"",
                                  minMaxRatio: minMaxRatioController.text,
                                  reOrderPoint: int.tryParse(reorderPointQuantityController.text),
                                  minimumQuantity: int.tryParse(minimumQuantityController.text),
                                  maximumQuantity: int.tryParse(maximumQuantityController.text),
                                  addVirtualStock: int.tryParse(addVirtualController.text),
                                  virtualType: virtualStockTypeController.text,

                                  reOrderQuantity: int.tryParse(returnedQuantityController.text),


                                );
                                print("Bad Model$model");
                                context.read<ChannelStockAllocationPostCubit>().channelStockAllocationPatch(channelId, model);


                              }
                            },
                            discardFunction: (){},
                            label:"UPDATE" ,
                          ),
                //         Container(
                //
                //
                //
                //
                // margin: EdgeInsets.only(right:width *.02,left: height *.02),
                //           child: Row(
                //             mainAxisAlignment: MainAxisAlignment.end,
                //             children: [
                //               // Button(Icons.delete, Colors.red,
                //               //     ctx: context,
                //               //     text: "Discard",
                //               //     onApply: () {
                //               //       // if(updateCheck){
                //               //       //   // clears();
                //               //       //
                //               //       //
                //               //       // }
                //               //
                //               //     },
                //               //     height: 29,
                //               //     width: 90,
                //               //     labelcolor: Colors.red,
                //               //     iconColor: Colors.red,
                //               //     bdr: true),
                //               SizedBox(
                //                 width: width * .008,
                //               ),
                //               Button(Icons.check, Colors.grey,
                //                   ctx: context,
                //                   text:"UPDATE",
                //                   height: 29,
                //                   Color: Color(0xff3E4F5B),
                //                   width: 90,
                //                   labelcolor: Colors.white,
                //                   iconColor: Colors.white,
                //                   onApply: () {
                //                   ratiooCheck(channelAllocationRatio.text,"1");
                //                   ratiooCheck(minMaxRatioController.text,"");
                //                   if(check!=true){
                //                     ChannelAllocationStockStockReadModel model=ChannelAllocationStockStockReadModel(
                //                       stockWarning: stockwarning,
                //                       salesblock: salesBlock,
                //                       purchaseBlock: purchaseBlock,
                //                       salesblockQuantity: int.tryParse(salesBlockQuantityController.text),
                //                       purchaseblockQuantity: int.tryParse(purchaseBlockController.text),
                //                       channelAllocationRatio: channelAllocationRatio?.text??"",
                //                       minMaxRatio: minMaxRatioController.text,
                //                       reOrderPoint: int.tryParse(reorderPointQuantityController.text),
                //                       minimumQuantity: int.tryParse(minimumQuantityController.text),
                //                       maximumQuantity: int.tryParse(maximumQuantityController.text),
                //                       addVirtualStock: int.tryParse(addVirtualController.text),
                //                       virtualType: virtualStockTypeController.text,
                //
                //                       reOrderQuantity: int.tryParse(returnedQuantityController.text),
                //
                //
                //                     );
                //                     print("Bad Model$model");
                //                     context.read<ChannelStockAllocationPostCubit>().channelStockAllocationPatch(channelId, model);
                //
                //
                //                   }
                //
                //
                //
                //                   }
                //               ),
                //               SizedBox(
                //                 // width: width * .008,
                //               ),
                //             ],
                //           ),
                //         ),


                        ],
                      ),
                    ))

                  ],
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
