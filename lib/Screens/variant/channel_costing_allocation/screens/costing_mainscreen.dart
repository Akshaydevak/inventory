import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';

import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/channelStocktableread/channelsttocktableread_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/costingchannel_read_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/creation/costing_creation_cubit.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/cubit/unicost_costing_cubit.dart';
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
import 'package:inventory/commonWidget/Navigationprovider.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:provider/provider.dart';

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
  TextEditingController priceTypeController=TextEditingController();
  TextEditingController pricingGptypeController=TextEditingController();
  TextEditingController gpPercentegeController=TextEditingController();
  TextEditingController sellingPriceController=TextEditingController();
  TextEditingController costingnameController=TextEditingController();
  NavigationProvider commonProvider = NavigationProvider();
  List<BrandListModel> result = [];
  bool onChange=false;
  bool suffixIconCheck=false;
  TextEditingController itemsearch = TextEditingController();
  int selectedVertical = 0;
  var list1;
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
  bool select=true;
  @override
  void initState() {
    context.read<ListvraiantCubit>().getVariantList();
    super.initState();
  }
  clear(){
      unitCostController.clear();
      sellingPriceController.clear();
      costingCodeController.clear();
      priceTypeController.clear();
      costingnameController.clear();
      costingMethodController.clear();
      gpPercentegeController.clear();
      pricingGptypeController.clear();
      pricingGroupIdController.clear();
      pricingNameController.clear();
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
      sellingPriceController.text=(unitCost!+((unitCost!*gp!)/100)).toString();

    });


  }

  @override
  Widget build(BuildContext context) {
    print("the reallllllllllllllllllll");
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    commonProvider = Provider.of<NavigationProvider>(context);
    return MultiBlocProvider(
  providers: [
        BlocProvider(
        create: (context) => ChannelstockverticalCubit(),
        ),
    BlocProvider(
        create: (context) => ChannelsttocktablereadCubit(),
        ), BlocProvider(
        create: (context) => CostingCreationCubit(),
        ),
    BlocProvider(
        create: (context) => CostingchannelReadCubit(),
        ),
  ],
  child:  MultiBlocListener(
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
                checkBoxLis=List.from(data.data);
                print(checkBoxLis);
                // print(checkBoxLis);
                // group = data.data;
                // print("Akshgayaa" + group.toString());
                // channels=data?.results??[];

              });
            });

        // TODO: implement listener
      },
    ),
    BlocListener<CostingchannelReadCubit, CostingchannelReadState>(
      listener: (context, state) {
        print("shifasssssssssssssssssssssss"+state.toString());
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error");
            },
            success: (data) {
              setState(() {
                // List<Object> get props => [this.verificationCode, this.status];
                print("appuz"+data.toString());
             unitCostController.text=data.unitCost.toString();

                sellingPriceController.text=data.sellingPrice.toString();
                costingCodeController.text=data.costingCode.toString();
                pricingNameController.text=data.pricingGroupName??"";

                channelStockCodeController.text=data.channelStockCode.toString();



                costingMethodController.text=data.costingMethodId.toString();
                 gpPercentegeController.text=data.gpPercentage.toString();
                pricingGptypeController.text=data.pricingGpType.toString();
                costingnameController.text=data.costingMethodName.toString();
                pricingGroupIdController.text=data.pricingGroupId.toString();
                priceTypeController.text=data.priceType??"";

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
                table=List.from(data);
                if(table.isEmpty){
                  select=true;
                }

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
    BlocListener<UnicostCostingCubit, UnicostCostingState>(
      listener: (context, state) {
        print(state);
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error");
            },
            success: (data) {
              setState(() {
                onChange=true;
                print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"+data.toString());

             unitCostController.text=data?.toString()??"";
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
          commonProvider.setLoadingSaveUpdate(false);
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
          commonProvider.setLoadingSaveUpdate(false);
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
                  list1 = list;

                  result = list.data;
                  print("seee" + result.toString());
                  setState(() {
                    if (result.isNotEmpty) {
                      veritiaclid = result[0].id;
                      variantCode = result[0].code;
                      selectedVertical=0;

                      context.read<ChannelstockverticalCubit>().getChannelAllocationList(veritiaclid!);

                    }
                    else {
                      print("common");
                      select=true;
                      checkBoxLis.clear();
                      selection.clear();
                      table.clear();
                      group.clear();
                      clear();
                      channelNameController.clear();
                      channelStockCodeController.clear();
                      veritiaclid = -1;
                      variantCode = "";
                      // setState(() {});
                    }


                    setState(() {});
                  });
                });
  },
  builder: (context, state) {


            if(onChange==false){
              if(checkBoxLis.isNotEmpty==true)
                for(var i=0;i<checkBoxLis.length;i++)
                  selection.add(false);

            }
            onChange=false;
            return Scaffold(
              backgroundColor: Pellet.bagroundColor,
              body: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    VariantVerticalList(
                      list: list1,


                      selectedVertical: selectedVertical,
                      itemsearch: itemsearch,
                      suffixIconCheck: suffixIconCheck,
                      ontap: (int index) {
                        setState(() {
                          selectedVertical = index;
                          onChange=true;
                          select=false;
                          checkBoxLis.clear();
                          selection.clear();
                          table.clear();
                          group.clear();
                          clear();
                          channelNameController.clear();
                          channelStockCodeController.clear();
                          veritiaclid = result[index].id;
                          variantCode = result[0].code;
                          setState(() {
                            onChange=true;
                            context.read<ChannelstockverticalCubit>().getChannelAllocationList(veritiaclid!);
                          });
                        });
                      },
                      search: (String va) {
                        print(va);
                        context.read<ListvraiantCubit>().getSearchVariantList(va);
                        suffixIconCheck=true;
                        if (va == "") {
                          context.read<ListvraiantCubit>().getVariantList();
                          suffixIconCheck=false;
                        }
                      },
                      result: result,
                      child:
                      tablePagination(
                            () => context
                            .read<ListvraiantCubit>()
                            .refresh(),
                        back: list1?.previousUrl == null
                            ? null
                            : () {
                          context.read<ListvraiantCubit>().previuosslotSectionPageList();
                        },
                        next: list1?.nextPageUrl == null
                            ? null
                            : () {
                          // print(data.nextPageUrl);
                          context.read<ListvraiantCubit>().nextslotSectionPageList();
                        },
                      ),
                    ),
                    Expanded(child: SingleChildScrollView(
                      child: Column(children: [

                        ChannelScrollableScreen(
                          onPress: (int? index){
                            setState(() {
                              checkBoxLis.clear();
                              selection.clear();
                              table.clear();
                              clear();
                              channelNameController.clear();
                              channelStockCodeController.clear();
                              if(index!=null) {
                                context.read<ChannelListReadCubit>().getChannelList(group[index].channelTypecode, veritiaclid);

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
                              channelStockCodeController.text=checkBoxLis[index]?.channelStockCode??"";

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
                                context.read<UnicostCostingCubit>().getUnitcost(veritiaclid);

                                print("veritcalId"+veritiaclid.toString());
                                onChange=true;
                                clear();
                                select=true;

                                setState(() {
                              unitCostController.text=    Variable.unitCostCosting.toString();
                                });

                              },label: "Add New",),
                            ),
                          ],
                        ),
                        SizedBox(height: height * .01,),
                        CostingGrowableTable(
                            table:table,
                          ontap:(int? id){
                              print("the id is"+id.toString());
                            onChange=true;
                            setState(() {
                              print(id);
                              tableId=id;
                              select=false;
                              channelTableSelcteddId=id;

                            });
                              context.read<CostingchannelReadCubit>().getChannelCostingRead(tableId);
                              context.read<ListvraiantCubit>().getVariantList();

                              setState(() {

                              });






                          }
                        ),
                        SizedBox(height: height * .1,),
                        CostingStableTable(
                          costingName: costingnameController,
                          pricingName: pricingNameController,
                          unitCost: unitCostController,
                          priceType: priceTypeController,
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
                        SaveUpdateResponsiveButton(
                          isSaveUpdateLoading: commonProvider.isLoadingSaveupdate,
                          isClearDeketeLoading:commonProvider.isLoadingDeleteClear ,
                          isDelete: true,
                          saveFunction: (){
                            commonProvider.setLoadingSaveUpdate(true);
                            if(select){

                              CostingPageCreationPostModel model=CostingPageCreationPostModel(
                                channelId: channelId,
                                channelCode:channelCode,
                                channelStockId: channelStockId,
                                variantId: veritiaclid,
                                variantCode: variantCode,
                                inventoryId: Variable.inventory_ID,
                                pricingGpType: pricingGptypeController.text,
                                createdBy: Variable.created_by,
                                pricingGroupId: int.tryParse(pricingGroupIdController.text),
                                costingMethodId: int.tryParse(costingMethodController.text),
                                gpPercentage:
                                double.tryParse(gpPercentegeController.text),
                                  priceType: priceTypeController.text,

                                // double.tryParse(gpPercentegeController.text),
                                unitCost:  double.tryParse(unitCostController.text),
                                sellingPrice:  double.tryParse(sellingPriceController.text),

                              );
                              context.read<CostingCreationCubit>().postCosting(model);


                            }
                            else{

                              CostingPageCreationPostModel model=CostingPageCreationPostModel(
                                createdBy: Variable.created_by,
                                pricingGroupId: int.tryParse(pricingGroupIdController.text),
                                costingMethodId: int.tryParse(costingMethodController.text),
                                gpPercentage: double.tryParse(gpPercentegeController.text),
                                pricingGpType: pricingGptypeController.text,
                                unitCost:  double.tryParse(unitCostController.text),
                                sellingPrice:  double.tryParse(sellingPriceController.text),
                                priceType: priceTypeController.text


                              );
                              print(model);
                              context.read<CostingCreationCubit>().patchCosting(model,channelTableSelcteddId);
                            }
                          },
                          discardFunction: (){},
                          label:select?"SAVE":"UPDATE" ,

                        ),


                      ],),
                    ))

                  ],
                ),
              ),
            );

  },
),


));
  }
}
