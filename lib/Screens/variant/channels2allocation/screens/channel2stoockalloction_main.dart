import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/variant/channel_stockAllocation/cubit/channelstockvertical/channelstockvertical_cubit.dart';
import 'package:inventory/Screens/variant/channel_stockAllocation/model/channelstock_allocationlist.dart';
import 'package:inventory/Screens/variant/channels2allocation/cubits/channellistread/channel_list_read_cubit.dart';
import 'package:inventory/Screens/variant/channels2allocation/cubits/data_assign/allocationdata_assign_cubit.dart';
import 'package:inventory/Screens/variant/channels2allocation/cubits/patch/channelpatch_cubit.dart';
import 'package:inventory/Screens/variant/channels2allocation/models/channelsreadmodel.dart';
import 'package:inventory/Screens/variant/channels2allocation/screens/ChannelCheckBoxScreen.dart';
import 'package:inventory/Screens/variant/channels2allocation/screens/channelbuttonScrollable.dart';
import 'package:inventory/Screens/variant/channels2allocation/screens/stabletable.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/listvraiant/listvraiant_cubit.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';

class ChannelTypeStockAllocation extends StatefulWidget {
  @override
  _ChannelTypeStockAllocationState createState() =>
      _ChannelTypeStockAllocationState();
}

class _ChannelTypeStockAllocationState
    extends State<ChannelTypeStockAllocation> {
  TextEditingController variantCodeController = TextEditingController();
  TextEditingController channelstockCodeController = TextEditingController();
  TextEditingController channelStockTypecode = TextEditingController();
  TextEditingController channelTypeStockcode = TextEditingController();

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
  TextEditingController addVirtualStock = TextEditingController();
  TextEditingController channelStatusMediumPoint = TextEditingController();
  TextEditingController channelStatusCrucialPoint = TextEditingController();
  bool stockwarning = false;
  bool salesBlock = false;
  TextEditingController channelTypeController = TextEditingController();
  List<BrandListModel> result = [];
  List<ChannelListModel> checkBoxLis = [];
  TextEditingController itemsearch = TextEditingController();
  int selectedVertical = 0;
  var list;
  int? veritiaclid = 0;
  int? channelId ;

  @override
  void initState() {
    context.read<ListvraiantCubit>().getVariantList();
    super.initState();
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
    }
  }
  List<ChanmneStockListModelModel>group=[];
  List<bool?>selection=[];
  bool onChange=false;
  clear(){
    setState(() {


    addVirtualStock.text="";
   channelStatusCrucialPoint.text="";
   channelStatusMediumPoint.text="";
   channelStockTypecode.text="";
    channelTypeStockcode.text="";
     stockwarning=false;
     variantCodeController.text="";
  cancelledQuantityController.text="";
   channelTypeController.text="";
     damagedQuantityController.text="";
     purchaseBlockController.text="";
    reorderPointQuantityController.text="";
    reorderPointQuantityController.text="";
     replaceMentQuantityController.text="";
 reservedQuantityController.text="";
     returnedQuantityController.text="";
    salesBlockQuantityController.text="";
  salesBlock=false;
    channelstockCodeController.text="";
 totalQuantityController.text="";
 virtualStockController.text="";
 virtualStockTypeController.text="";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ChannelstockverticalCubit(),
        ),  BlocProvider(
          create: (context) => ChannelListReadCubit(),
        ), BlocProvider(
          create: (context) => ChannelpatchCubit(),
        ), BlocProvider(
          create: (context) => AllocationdataAssignCubit(),
        ),

      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [
                BlocListener<ChannelpatchCubit, ChannelpatchState>(
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
                        // Timer(Duration(seconds: 5), () {
                        //   setState(() {
                        //
                        //     context.read<ListvraiantCubit>().getVariantList();;
                        //     // select=false;
                        //   });
                        // }
                        // );
                      } else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),
                BlocListener<
                    ChannelstockverticalCubit,
                    ChannelstockverticalState>(
                  listener: (context, state) {
                    print(state);
                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          print("error");
                        },
                        success: (data) {
                          setState(() {
                            print("welcome");
                            group = data.data;
                            print(group);

                            // print("Akshgayaa" + group.toString());
                            // channels=data?.results??[];

                          });
                        });

                    // TODO: implement listener
                  },
                ),
                BlocListener<ChannelListReadCubit, ChannelListReadState>(
                  listener: (context, state) {
                    print(state);
                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          print("error");
                        },
                        success: (data) {
                          setState(() {
                            print("arion");
                            checkBoxLis=data.data;
                            print(checkBoxLis);
                            // group = data.data;
                            // print("Akshgayaa" + group.toString());
                            // channels=data?.results??[];

                          });
                        });

                    // TODO: implement listener
                  },
                ),
                BlocListener<AllocationdataAssignCubit, AllocationdataAssignState>(
                  listener: (context, state) {
                    print(state);
                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          print("error");
                        },
                        success: (data) {
                          setState(() {
                            print("kingfra"+data.toString());
                            channelstockCodeController.text=data.channelStockCode??"";

                            channelStockTypecode.text=data.channelStockType??"";
                            safetyStockController.text=data.safetyStockQuantity.toString()??"";
                            reorderPointQuantityController.text=data.reOrderPoint.toString()??"";
                            reorderQuantityController.text=data.reOrderQuantity.toString()??"";
                            reservedQuantityController.text=data.reservedQuantity.toString()??"";
                            damagedQuantityController.text=data.damagedQuantity.toString()??"";
                            returnedQuantityController.text=data.returnedQuantity.toString()??"";
                            replaceMentQuantityController.text=data.replaceMentQuantity.toString()??"";
                            virtualStockController.text=data.virtualStock.toString()??"";

                            channelStatusMediumPoint.text=data.channelStatusMediumPoint.toString()??"";
                            channelStatusCrucialPoint.text=data.channelStatusCrucialPoint.toString()??"";
                            stockwarning=data.stockWarning??false;
                            salesBlock=data.salesBlock??false;

                          });
                        });
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
                            context.read<ChannelstockverticalCubit>().getChannelAllocationList(veritiaclid!);
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
                        if(onChange==false){
                          if(checkBoxLis.isNotEmpty==true)
                            for(var i=0;i<checkBoxLis.length;i++)
                              selection.add(false);

                        }
                        onChange=false;
                        double height=MediaQuery.of(context).size.height;
                        double width=MediaQuery.of(context).size.width;
                        return Scaffold(
                          backgroundColor: Pellet.bagroundColor,
                          body: SingleChildScrollView(
                            child: IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  VariantVerticalList(
                                    list: list,


                                    selectedVertical: selectedVertical,
                                    itemsearch: itemsearch,
                                    ontap: (int index) {
                                      setState(() {
                                        selectedVertical = index;
                                        group.clear();
                                        selection.clear();
                                        checkBoxLis.clear();
                                        clear();


                                        // select=false;
                                        // clear();
                                        // exportCheck=false;
                                        // addNew=true;

                                        // updateCheck=false;
                                        print("rijina" +
                                            result[index].id.toString());


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
                                  Expanded(

                                    child: Column(
                                      children: [
                                        ChannelScrollableScreen(
                                          onPress: (int? index){
                                            setState(() {
                                              print(index);

                                              selection.clear();
                                              checkBoxLis.clear();
                                              clear();
                                              print((group[index!].channelTypecode));
                                              if(index!=null)
                                                context
                                                    .read<ChannelListReadCubit>()
                                                    .getChannelList(group[index].channelTypecode, veritiaclid);
                                            });

                                          },
                                          list: group,
                                        ),


                                        ChannelCheckBoxScreen(list: checkBoxLis,
                                          selection:selection,
                                          onTap: (int index){
                                          print(index);
                                          onChange=true;
                                          clear();
                                          setState(() {
                                            if(selection.isNotEmpty){
                                              for(var i=0;i<selection.length;i++){
                                                if(i==index)
                                                  selection[i]=true;
                                                else
                                                  selection[i]=false;


                                              }
                                            }
                                            channelId=checkBoxLis[index].id;

                                            context.read<AllocationdataAssignCubit>().getChannelAllocationRead(checkBoxLis[index]?.id, int.tryParse(Variable.inventory_ID));

                                          });



                                        },),


                                        AllocationStockStableTable(
                                          addVirtualStock: addVirtualStock,
                                          channelStatusCrucialPoint: channelStatusCrucialPoint,
                                          channelStatusMediumPoint: channelStatusMediumPoint,
                                          channelStockTypeCode: channelStockTypecode,


                                          trueOrFalseChange: trueOrFalseChange,
                                          channeTypeStockCode: channelTypeStockcode,


                                          stockWarning: stockwarning,


                                          variantCode: variantCodeController,

                                          cancelledQuantity: cancelledQuantityController,
                                          channelTypeAllocationRatio: channelTypeController,
                                          damagedQuantity: damagedQuantityController,

                                          purchaseBlockQuantity: purchaseBlockController,
                                          reLOrderQuantity: reorderPointQuantityController,
                                          reOrderPoint: reorderPointQuantityController,
                                          replacementQuantity: replaceMentQuantityController,
                                          reservedQuantity: reservedQuantityController,
                                          returnedQuantity: returnedQuantityController,

                                          salesBlockQuantity: salesBlockQuantityController,
                                          salesBolck: salesBlock,

                                          channelStockCode: channelstockCodeController,
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
                                                  ChannelListModel model=ChannelListModel(
                                                    stockWarning: stockwarning,
                                                    salesBlock: salesBlock,
                                                    virtualType: virtualStockTypeController.text,
                                                    addVirtualStock: int.tryParse(addVirtualStock?.text??""),
                                                    safetyStockQuantity:int.tryParse( safetyStockController.text),
                                                    reOrderPoint:int.tryParse( reorderPointQuantityController.text),
                                                    reOrderQuantity:int.tryParse( reorderQuantityController.text),
                                                    channelStatusCrucialPoint:int.tryParse( channelStatusCrucialPoint.text),
                                                    channelStatusMediumPoint:int.tryParse( channelStatusMediumPoint.text),




                                                  );
                                                  print("Bad Model$model");
                                                  context.read<ChannelpatchCubit>().channel2StockAllocationPatch(channelId, model);




                                                }
                                            ),
                                            SizedBox(
                                              // width: width * .008,
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),

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
