import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';

import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/channelStocktableread/channelsttocktableread_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/creation/costing_creation_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/read/channelread_cubit.dart';

import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingpagecreation.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/screens/costingstable_table.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/screens/costingtable.dart';
import 'package:inventory/Screens/variant/channel_stockAllocation/cubit/channelstockvertical/channelstockvertical_cubit.dart';
import 'package:inventory/Screens/variant/channel_stockAllocation/model/channelstock_allocationlist.dart';
import 'package:inventory/Screens/variant/channels2allocation/cubits/channellistread/channel_list_read_cubit.dart';
import 'package:inventory/Screens/variant/channels2allocation/models/channelsreadmodel.dart';
import 'package:inventory/Screens/variant/channels2allocation/screens/channelbuttonScrollable.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/listvraiant/listvraiant_cubit.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';

import '../../../../commonWidget/buttons.dart';
import '../../channels2allocation/screens/ChannelCheckBoxScreen.dart';

class ChannelCostingMainScreen extends StatefulWidget {
  @override
  _ChannelCostingMainScreenState createState() => _ChannelCostingMainScreenState();
}

class _ChannelCostingMainScreenState extends State<ChannelCostingMainScreen> {
  TextEditingController costingMethodController=TextEditingController();
  TextEditingController pricingGroupIdController=TextEditingController();
  TextEditingController pricingNameController=TextEditingController();
  TextEditingController channelStockCodeController=TextEditingController();
  TextEditingController costingCodeController=TextEditingController();
  TextEditingController channelNameController=TextEditingController();
  TextEditingController unitCostController=TextEditingController();
  TextEditingController pricingGptypeController=TextEditingController();
  TextEditingController gpPercentegeController=TextEditingController();
  TextEditingController sellingPriceController=TextEditingController();
  TextEditingController costingnameController=TextEditingController();
  List<BrandListModel> result = [];
  bool onChange=false;
  TextEditingController itemsearch = TextEditingController();
  int selectedVertical = 0;
  var list;
  int? veritiaclid = 0;
  int? channelStockId = 0;
  int? channelId = 0;
  int? id = 0;
  int? tableId;
  int? channelTableSelcteddId = 0;
  String? channelCode ;
  String? variantCode ;
  List<ChanmneStockListModelModel>group=[];
  List<ChannelListModel> checkBoxLis = [];
  List<ListingChnanelTableModel> table = [];
  List<bool?>selection=[];
  bool select=false;
  @override
  void initState() {
    context.read<ListvraiantCubit>().getVariantList();
    super.initState();
  }
  clear(){
    setState(() {
      unitCostController.clear();
      sellingPriceController.clear();
      costingCodeController.clear();

      channelStockCodeController.clear();
      costingnameController.clear();
      channelNameController.clear();


      costingMethodController.clear();
      gpPercentegeController.clear();
      pricingGptypeController.clear();
      pricingGroupIdController.clear();
      pricingNameController.clear();
      table.clear();
    });
  }
  sellingPriceCalculation({int ?unitCost=0,double? gp=0}){
    setState(() {
      print("arrrrrived");
      print(unitCost);
      print(gp);
    if(unitCost==null){
      unitCost=0;
    }
    if(gp==null){
      gp=0;
    }
      sellingPriceController.text=(unitCost!+gp!).toString();

    });


  }

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return MultiBlocProvider(
  providers: [
        BlocProvider(
        create: (context) => ChannelstockverticalCubit(),
        ),
    BlocProvider(
        create: (context) => ChannelListReadCubit(),
        ),  BlocProvider(
        create: (context) => ChannelsttocktablereadCubit(),
        ), BlocProvider(
        create: (context) => CostingCreationCubit(),
        ), BlocProvider(
        create: (context) => ChannelreadCubit(),
        ),
  ],
  child: Builder(
      builder: (context) {return MultiBlocListener(
  listeners: [
    BlocListener<
        ChannelstockverticalCubit, ChannelstockverticalState>(
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
                print(data.data);
                // print(checkBoxLis);
                // group = data.data;
                // print("Akshgayaa" + group.toString());
                // channels=data?.results??[];

              });
            });

        // TODO: implement listener
      },
    ),
    BlocListener<ChannelreadCubit, ChannelreadState>(
      listener: (context, state) {
        print(state);
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error");
            },
            success: (data) {
              setState(() {
                print("appuz"+data.toString());
             unitCostController.text=data.unitCost.toString();
                sellingPriceController.text=data.sellingPrice.toString();
                costingCodeController.text=data.costingCode.toString();
                pricingNameController.text=data.pricingGroupName??"";

                channelStockCodeController.text=data.channelCode.toString();



                costingMethodController.text=data.costingMethodId.toString();
                 gpPercentegeController.text=data.gpPercentage.toString();
                pricingGptypeController.text=data.pricingGpType.toString();
                costingnameController.text=data.costingMethodName.toString();
                pricingGroupIdController.text=data.pricingGroupId.toString();
                
                // print(checkBoxLis);
                // group = data.data;
                // print("Akshgayaa" + group.toString());
                // channels=data?.results??[];

              });
            });

        // TODO: implement listener
      },
    ),
    BlocListener<ChannelsttocktablereadCubit, ChannelsttocktablereadState>(
      listener: (context, state) {
        print(state);
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error");
            },
            success: (data) {
              setState(() {
                print("aaaayiram");
                table=data;

                print(data);
                // checkBoxLis=data.data;
                // print(checkBoxLis);
                // group = data.data;
                // print("Akshgayaa" + group.toString());
                // channels=data?.results??[];

              });
            });

        // TODO: implement listener
      },
    ),


    BlocListener<CostingCreationCubit, CostingCreationState>(
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
                context.read<ListvraiantCubit>().getVariantList();
                context.read<ChannelsttocktablereadCubit>().getChannelStockTableRead(channelStockId,);
                // select=false;

              });
            });

          }
          else {
            context.showSnackBarError(data.data2);
            print(data.data1);
          }
          ;
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
                      variantCode = result[0].code;
                      // Variable.verticalid=result[0].id;
                      // print("Variable.ak"+Variable.verticalid.toString());
                      context.read<ChannelstockverticalCubit>().getChannelAllocationList(veritiaclid!);
                      context.read<ChannelreadCubit>().getCostingRead(tableId);
                      // context.read<StockreadCubit>().getStockRead(veritiaclid!);
                    }
                    else {
                      print("common");
                      select=true;
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
            return Scaffold(
              backgroundColor: Pellet.bagroundColor,
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

                            select=false;
                            checkBoxLis.clear();
                            selection.clear();
                            table.clear();
                            group.clear();
                            clear();



                            // clear();
                            // exportCheck=false;
                            // addNew=true;

                            // updateCheck=false;
                            print("rijina" + result[index].id.toString());


                            veritiaclid = result[index].id;
                            variantCode = result[0].code;
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
                      Expanded(child: Column(children: [

                        ChannelScrollableScreen(
                          onPress: (int? index){
                            setState(() {
                              print(index);
                              print("sssssssssssssssssssssssssssss"+group.toString());
                              checkBoxLis.clear();
                              selection.clear();
                              table.clear();
                              clear();

                              if(index!=null) {
                                context
                                    .read<ChannelListReadCubit>()
                                    .getChannelList(
                                    group[index].channelTypecode, veritiaclid);

                              }  });

                          },
                          list: group,
                        ),
                        SizedBox(height: height * .03,),
                        ChannelCheckBoxScreen(list: checkBoxLis,
                          selection:selection,
                          onTap: (int index){
                            print(index);
                            onChange=true;
                            setState(() {
                              table.clear();
                              clear();
                              if(selection.isNotEmpty){
                                for(var i=0;i<selection.length;i++){
                                  if(i==index)
                                    selection[i]=true;
                                  else
                                    selection[i]=false;


                                }
                              }
                              channelId=int.tryParse(checkBoxLis[index]?.channelId??"");
                              id=int.tryParse(checkBoxLis[index]?.id.toString()??"");
                              channelStockId=checkBoxLis[index].id;
                              channelCode=checkBoxLis[index]?.channelCode;
                              channelNameController.text=checkBoxLis[index].channelName??"";
                              channelStockCodeController.text=channelCode??"";

                              context.read<ChannelsttocktablereadCubit>().getChannelStockTableRead(channelStockId,);

                            });



                          },),
                        SizedBox(height: height * .03,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal:width *.02),
                              child: CreateTextButton(onPress: (){
                                clear();
                                select=true;
                              },label: "Add New",),
                            ),
                          ],
                        ),
                        SizedBox(height: height * .01,),
                        CostingGrowableTable(
                            table:table,
                          ontap:(int? id){
                              print(id);
                              tableId=id;
                              select=false;
                              channelTableSelcteddId=id;
                              context.read<ChannelreadCubit>().getCostingRead(tableId);

                          }
                        ),
                        SizedBox(height: height * .1,),
                        CostingStableTable(
                          costingName: costingnameController,
                          pricingName: pricingNameController,
                          unitCost: unitCostController,
                          sellingPrice: sellingPriceController,
                          channelName: channelNameController,
                          channelStockCode: channelStockCodeController,
                          costingCode: costingCodeController,
                          costingmethod: costingMethodController,
                          gpPercentage: gpPercentegeController,
                          pricingGptype: pricingGptypeController,
                          pricingGroupId: pricingGroupIdController,
                            sellingPriceCalculation:sellingPriceCalculation,
                            channelId:id
                        ),
                        SizedBox(height: height * .13,),
                        Row(
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
                              width: width * .008,
                            ),
                            Button(Icons.check, Colors.grey,
                                ctx: context,
                                text:select?"Save":"Update",
                                height: 29,
                                Color: Color(0xff3E4F5B),
                                width: 90,
                                labelcolor: Colors.white,
                                iconColor: Colors.white,
                                onApply: () {
                                  print(costingMethodController.text);
                                  if(select){

                                    CostingPageCreationPostModel model=CostingPageCreationPostModel(
                                      channelId: channelId,
                                      channelCode:channelCode,
                                      channelStockId: channelStockId,
                                      variantId: veritiaclid,
                                      variantCode: variantCode,
                                      inventoryId: Variable.inventory_ID,
                                      pricingGpType: pricingGptypeController.text,
                                      createdBy: "afy",
                                      pricingGroupId: int.tryParse(pricingGroupIdController.text),
                                      costingMethodId: int.tryParse(costingMethodController.text),
                                      gpPercentage:12,
                                      // double.tryParse(gpPercentegeController.text),

                                      // double.tryParse(gpPercentegeController.text),
                                      unitCost:  double.tryParse(unitCostController.text),
                                      sellingPrice:  double.tryParse(sellingPriceController.text),

                                    );
                                    print("the serching model is here${model}");
                                    print("the serching model is here${model.gpPercentage}");
                                    context.read<CostingCreationCubit>().postCosting(model);


                                  }
                                  else{

                                    CostingPageCreationPostModel model=CostingPageCreationPostModel(
                                      createdBy: "afy",
                                      pricingGroupId: int.tryParse(pricingGroupIdController.text),
                                      costingMethodId: int.tryParse(costingMethodController.text),
                                      gpPercentage: double.tryParse(gpPercentegeController.text),
                                      pricingGpType: pricingGptypeController.text,
                                      unitCost:  double.tryParse(unitCostController.text),
                                      sellingPrice:  double.tryParse(sellingPriceController.text),


                                    );
                                    print(model);
                                    context.read<CostingCreationCubit>().patchCosting(model,channelTableSelcteddId);
                                  }











                                }
                            ),
                            SizedBox(
                              // width: width * .008,
                            ),
                          ],
                        ),


                      ],))

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
