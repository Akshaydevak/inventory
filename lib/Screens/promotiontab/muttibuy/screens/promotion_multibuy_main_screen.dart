import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/promotiontab/discount/model/promotion_discount_model.dart';
import 'package:inventory/Screens/promotiontab/muttibuy/cubit/creation_multibuy/multi_buy_creation_cubit.dart';
import 'package:inventory/Screens/promotiontab/muttibuy/cubit/multibuyverticallist_cubit.dart';
import 'package:inventory/Screens/promotiontab/muttibuy/cubit/read/read_multibuy_cubit.dart';
import 'package:inventory/Screens/promotiontab/muttibuy/model/create_model.dart';
import 'package:inventory/Screens/promotiontab/muttibuy/screens/multibuy_segment_screen.dart';
import 'package:inventory/Screens/promotiontab/muttibuy/screens/multibuy_variant_getbuy.dart';
import 'package:inventory/Screens/promotiontab/muttibuy/screens/promotion_multibuy_satbleTable.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/Deacivate/promotion_sale_deactivate_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/delete_promotion/delete_offer_period_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/promotionimage/promotion_image_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';

class PromotionMultibuyMainScreen extends StatefulWidget {
  const PromotionMultibuyMainScreen({Key? key}) : super(key: key);

  @override
  State<PromotionMultibuyMainScreen> createState() => _PromotionMultibuyMainScreenState();
}

class _PromotionMultibuyMainScreenState extends State<PromotionMultibuyMainScreen> {
  GlobalKey<SegmentMultibuyGrowableTableState> _segmnetState = GlobalKey<
      SegmentMultibuyGrowableTableState>();
  GlobalKey<CouponVariantGrowableTableState> _getBuyVariantState = GlobalKey<
      CouponVariantGrowableTableState>();
  GlobalKey<
      MultiBuyBuyVariantGrowableTableState> _buyLinesVariantState = GlobalKey<
      MultiBuyBuyVariantGrowableTableState>();
  TextEditingController muliBuyCodeControoler = TextEditingController();
  TextEditingController descripionController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController offerPeriodIdController = TextEditingController();
  TextEditingController offerPeriodNameController = TextEditingController();
  TextEditingController displayNameController = TextEditingController();
  TextEditingController availableCustomerGroupController = TextEditingController();
  TextEditingController multiBuyApplyingToController = TextEditingController();
  TextEditingController multiBuyApplyingToNameController = TextEditingController();
  TextEditingController multiBuyApplyingToNameCodeController = TextEditingController();
  TextEditingController multiBuyApplyingToNameIdController = TextEditingController();
  TextEditingController sellingPriceConroller = TextEditingController();

  TextEditingController totalCostController = TextEditingController();

  final TextEditingController maximumCountController = TextEditingController();
  final TextEditingController imageController = TextEditingController();
  final TextEditingController imageNameController = TextEditingController();
  List<MultibuyVariantListModel>variantTable = List.from([]);
  List<MultibuyVariantListModel>variantTable2 = List.from([]);
  List<MultibuyVariantListModel>buyLinesVariantTable = List.from([]);
  List<MultibuyVariantListModel>buyLinesVariantTable2 = List.from([]);


  bool isAvailableForAl = true;

  bool isActive = true;
  bool isSegmentClear = false;

  bool select = false;
  var list;
  TextEditingController itemsearch = TextEditingController();
  int selectedVertical = 0;
  List<OfferPeriodList> result = [];
  int? veritiaclid;

  List<Segment> segmenttable = List.from([]);
  List<AvailableCustomerGroups> customerGroupList = List.from([]);


  activeChange({int? type, bool val = false}) {
    switch (type) {
      case 1 :
        isAvailableForAl = val;
        break;
      case 2 :
        isActive = val;
        break;
    }
    setState(() {

    });
  }
  segmentCleartymVariantAdd() {
    if (select == false) {
      if (variantTable2.isNotEmpty) {
        for (var i = 0; i < variantTable2.length; i++) {
          variantTable2[i] = variantTable2[i].copyWith(isActive: false);
        }
        if (buyLinesVariantTable2.isNotEmpty) {
          for (var i = 0; i < buyLinesVariantTable2.length; i++) {
            buyLinesVariantTable2[i] =
                buyLinesVariantTable2[i].copyWith(isActive: false);
          }
          isSegmentClear = true;
        }
      }
    }
  }
  tableAssign(List<Segment> table1) {

    setState(() {
      segmenttable = List.from(table1);
      _buyLinesVariantState.currentState?.clear();
      _getBuyVariantState.currentState?.clear();
      buyLinesVariantTable.clear();
      variantTable.clear();
      segmentCleartymVariantAdd();
      // _myWidgetState.currentState?.clear();
      // variantTable.clear();
      // saleApplyingCodeController.clear();
      // saleApplyingIdController.clear();
      // saleApplyingNameController.clear();
      // if(select==false){
      //   print("patch case");
      //   if(variantTable2.isNotEmpty){
      //     print("is Not empty");
      //     for(var i=0;i<variantTable2.length;i++){
      //       variantTable2[i]=variantTable2[i].copyWith(isActive: false);
      //     }
      //
      //     isSegmentClear=true;
      //   }
      // }
    });
  }



  variantTableAssign(List<MultibuyVariantListModel> table1) {
    print("ethito");
    print(table1);

    setState(() {
      variantTable = List.from(table1);
    });
  }
  clear(){
    offerPeriodNameController.text="";
    offerPeriodIdController.text="";
    isAvailableForAl=true;
    muliBuyCodeControoler.text="";
    nameController.text="";
    multiBuyApplyingToController.text="";
    multiBuyApplyingToNameIdController.text="";
    multiBuyApplyingToNameCodeController.text="";
    multiBuyApplyingToNameController.text="";
    displayNameController.text="";
    descripionController.text="";
    maximumCountController.text="";
    imageNameController.text="";
    totalCostController.text="";
    sellingPriceConroller.text="";
    imageController.text="";
    isActive=false;
    segmenttable  =List.from( []);
   buyLinesVariantTable =List.from([]);
   variantTable =List.from( []);
   customerGroup =List.from( []);
   _segmnetState.currentState?.clears();
   _buyLinesVariantState.currentState?.clear();
   _getBuyVariantState.currentState?.clear();
  }

  variantBuyLinesTableAssign(List<MultibuyVariantListModel> table1) {
    print("ethito");
    print(table1);

    setState(() {
      buyLinesVariantTable = List.from(table1);
    });
  }

  List<AvailableCustomerGroups> customerGroup = [];

  void customGroupListAssign(List<AvailableCustomerGroups> customerGroupList) {
    setState(() {
      customerGroup = List.from(customerGroupList);
      print(customerGroup);
    });
  }
    @override
    void initState() {
      context.read<MultibuyverticallistCubit>().getMultiBuyVerticalList();
      super.initState();
    }
    @override
    Widget build(BuildContext context) {
      double height = MediaQuery
          .of(context)
          .size
          .height;
      double width = MediaQuery
          .of(context)
          .size
          .width;
      return MultiBlocProvider(
        providers: [

          BlocProvider(
            create: (context) => MultiBuyCreationCubit(),
          ),
          BlocProvider(
            create: (context) => ReadMultibuyCubit(),
          ),
        ],
        child: MultiBlocListener(
          listeners: [
            BlocListener<PromotionImageCubit, PromotionImageState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print("Akshay");
                  if (data.data1) {
                    print("dataAkshay" + data.data2.toString());
                    imageController.text = data.data2.toString();
                    // print("dataAkshay" +
                    //     imageContollercontroller.text.toString());

                    // context.showSnackBarSuccess(data.data2);

                  } else {
                    // context.showSnackBarError(data.data2);
                    // print(data.data1.toString());
                  }
                  ;
                });
              },
            ),
            BlocListener<MultiBuyCreationCubit, MultiBuyCreationState>(
              listener: (context, state) {
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    print("Ullassssssssssssssssssssssssssssssssssssss");
                    context.showSnackBarSuccess(data.data2);
                    Timer(Duration(seconds: 5), () {
                      setState(() {
                        // context
                        //     .read<VertiacalCubit>()
                        //     .getGeneralVertical();
                        // currentStock.clear();
                        context.read<MultibuyverticallistCubit>().getMultiBuyVerticalList();
                      });
                    });
                  }
                  else {
                    print("TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT");

                    if (Variable.isTypeDataCheck == true) {
                      showDailogPopUp(
                          context,
                          LogoutPopup(
                            onLeftText: "View All Products",
                            onRightText: "Deactivate",
                            message: data.data2,
                            onLeftPress: () {
                              print("akskskskks");
                              List<int?> list1 = [];
                              for (var a in variantTable)
                                if (a.isActive == true)
                                  list1.add(a.variantId);
                              for (var a in buyLinesVariantTable)
                                if (a.isActive == true)
                                  list1.add(a.variantId);

                              context.read<PromotionSaleDeactivateCubit>()
                                  .getVariantDeactivate(
                                  2, Variable.type_data, list1);
                              showDailogPopUp(
                                context,
                                BlocProvider(
                                  create: (context) =>
                                  PromotionSaleDeactivateCubit()
                                    ..getVariantDeactivate(
                                        2, Variable.type_data, list1),
                                  child: ConfigurePopup(


                                    // listAssign: listAssign,
                                    type: "VariantPromotionCreatativePopup",
                                  ),
                                ),
                              );
                            },
                            // table:table,
                            // clear:clear(),

                            onPressed: () async {
                              List<int?> list1 = [];
                              for (var a in variantTable)
                                if (a.isActive == true)
                                  list1.add(a.variantId);
                              for (var a in buyLinesVariantTable)
                                if (a.isActive == true)
                                  list1.add(a.variantId);

                              context.read<PromotionSaleDeactivateCubit>()
                                  .getVariantDeactivate(
                                  1, Variable.type_data, list1);
                              // showDailogPopUp(
                              //   context,
                              //   BlocProvider(
                              //     create: (context) => PromotionSaleDeactivateCubit()..getVariantDeactivate(2,Variable.type_data,list1),
                              //     child: ConfigurePopup(
                              //
                              //       // listAssign: listAssign,
                              //       type: "VariantPromotionCreatativePopup",
                              //     ),
                              //   ),
                              // );


                            },


                          ));
                    }
                    else {
                      context.showSnackBarError(data.data2);
                    }
                  }
                  ;
                });
              },
            ),

            BlocListener<DeleteOfferPeriodCubit, DeleteOfferPeriodState>(
              listener: (context, state) {
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  print("checkingdata" + data.data1.toString());
                  if (data.data1) {
                    context.showSnackBarSuccess(data.data2);
                    // clear();

                    context.read<MultibuyverticallistCubit>().getMultiBuyVerticalList();

                  } else {
                    context.showSnackBarError(data.data2);
                    print(data.data1);
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<ReadMultibuyCubit, ReadMultibuyState>(
  listener: (context, state) {
    state.maybeWhen(
        orElse: () {},
        error: () {
          print("error");
        },
        success: (data) {
          offerPeriodNameController.text=data.offerPeriodName??"";
          offerPeriodIdController.text=data.offerPeriodId?.toString()??"";
          isAvailableForAl=data.isAvailableFor??false;
          muliBuyCodeControoler.text=data.multiCode??"";
          nameController.text=data.name??"";
          multiBuyApplyingToController.text=data.multibuyAppliedTo??"";
          multiBuyApplyingToNameIdController.text=data.multiBuyAppliedToID??"";
          multiBuyApplyingToNameCodeController.text=data.multibuyAppliedToCode??"";
          multiBuyApplyingToNameController.text=data.multiBuyAppliedToName??"";
          displayNameController.text=data.displayName??"";
          descripionController.text=data.description??"";
          maximumCountController.text=data.maximumQuantity?.toString()??"";
          totalCostController.text=data.totalCost?.toString()??"";
          sellingPriceConroller.text=data.sellingPrice.toString()??"";
          imageController.text=data.image??"";
          imageNameController.text=data.image??"";isActive=data.isActive??false;
          isActive=data.isActive??false;
          data.segments != null ? segmenttable =List.from( data?.segments ?? []) : segmenttable = [];
          data.buyLines != null ? buyLinesVariantTable =List.from( data?.buyLines ?? []) : buyLinesVariantTable = [];
          data.buyLines != null ? buyLinesVariantTable2 =List.from( data?.buyLines ?? []) : buyLinesVariantTable2 = [];
          data.getLines != null ? variantTable =List.from( data?.getLines ?? []) : variantTable = [];
          data.getLines != null ? variantTable2 =List.from( data?.getLines ?? []) : variantTable2 = [];
          data.availableCustomerGroups != null ? customerGroup =List.from( data?.availableCustomerGroups ?? []) : customerGroup = [];
        });
  },
  builder: (context, state) {
    return BlocConsumer<
              MultibuyverticallistCubit,
              MultibuyverticallistState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());
                    list = list;

                    result = list.data;

                    setState(() {
                      if (result.isNotEmpty) {
                        if (select) {
                          veritiaclid = result[result.length - 1].id;
                          selectedVertical = result.length - 1;
                          context.read<ReadMultibuyCubit>().getPromotionMultiBuyRead(veritiaclid!);;
                        }
                        else {
                          veritiaclid=result[0].id;
                          selectedVertical=veritiaclid!;

                          context.read<ReadMultibuyCubit>().getPromotionMultiBuyRead(veritiaclid!);;
                        }


                        select = false;
                      }
                      else {
                        print("common");
                        select = true;
                        // clear();


                      }



                    });
                  });
            },
            builder: (context, state) {
              return Builder(
                  builder: (context) {
                    return Scaffold(
                      backgroundColor: Pellet.bagroundColor,
                      body: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PromotionMultiBuyVerticalList(
                                list: list,
                                selectedVertical: selectedVertical,
                                itemsearch: itemsearch,
                                ontap: (int index) {
                                  setState(() {
                                    selectedVertical = index;

                                    // select=false;
                                    // updateCheck=false;


                                    veritiaclid = result[index].id;
                                    // clear();
                                    select = false;

                                    // _myWidgetState.currentState?.clear();
                                    // s.currentState?.clears();
                                    // clear();


                                    context.read<ReadMultibuyCubit>().getPromotionMultiBuyRead(veritiaclid!);


                                    setState(() {

                                    });
                                  });
                                },
                                search: (String va) {
                                  print(va);
                                  context
                                      .read<MultibuyverticallistCubit>()
                                      .searchMultiBuyVerticalList(va);

                                  if (va == "") {
                                    context
                                        .read<MultibuyverticallistCubit>()
                                        .getMultiBuyVerticalList();
                                  }
                                },
                                result: result,
                                child: tablePagination(
                                      () =>
                                      context
                                          .read<MultibuyverticallistCubit>()
                                          .refresh(),
                                  back: list?.previousUrl == null
                                      ? null
                                      : () {
                                    context
                                        .read<MultibuyverticallistCubit>()
                                        .previuosslotSectionPageList();
                                  },
                                  next: list?.nextPageUrl == null
                                      ? null
                                      : () {
                                    // print(data.nextPageUrl);
                                    context
                                        .read<MultibuyverticallistCubit>()
                                        .nextslotSectionPageList();
                                  },
                                )

                            ),
                            Expanded(child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.end,
                                    children: [
                                      TextButtonLarge(
                                        // marginCheck:true,

                                        onPress: () {
                                          setState(() {
                                            select = true;

                                            // clear();

                                            clear();
                                            isActive=true;
                                            // // _myWidgetState.currentState?.cl();
                                            // _myWidgetState.currentState?.table1=[];
                                            //
                                            // // updateCheck=false;
                                            // // currentStock.clear();
                                            // //
                                            // //
                                            // // table.clear();
                                            // // clear();
                                          });
                                        },
                                        // icon: Icon(Icons.refresh),
                                        // label: Text("Clear")
                                        text: "CREATE",
                                      ),

                                    ],
                                  ),

                                  SizedBox(height: height * .06,),
                                  SegmentMultibuyGrowableTable(
                                      key: _segmnetState,
                                      table: segmenttable,
                                      updation: tableAssign),
                                  SizedBox(height: height * .04,),
                                  PromotionMultiBuyStableTable(

                                    maximumCount: maximumCountController,
                                    customGroupListAssign: customGroupListAssign,
                                    customerGroupList: customerGroupList,
                                    imageName: imageNameController,
                                    image: imageController,
                                    activeChange: activeChange,
                                    availableCustomerGroup: availableCustomerGroupController,

                                    descripion: descripionController,
                                    displayName: displayNameController,
                                    isActive: isActive,
                                    isAvailableForAll: isAvailableForAl,
                                    isSelect: false,
                                    name: nameController,
                                    offerPeriodId: offerPeriodIdController,
                                    offerPeriodName: offerPeriodNameController,

                                    table: segmenttable,

                                    variantTableDatsClear: () {},
                                    muliBuyCode: muliBuyCodeControoler,
                                    multiBuyApplyingTo: multiBuyApplyingToController,
                                    multiBuyApplyingToName: multiBuyApplyingToNameController,
                                    multiBuyApplyingToNameCode: multiBuyApplyingToNameCodeController,
                                    multiBuyApplyingToNameId: multiBuyApplyingToNameIdController,
                                    totalCost: totalCostController,
                                    sellingPrice: sellingPriceConroller,
                                  ),
                                  SizedBox(height: height * .06,),

                                  MultiBuyGetBuyVariantGrowableTable(
                                    select: select,
                                    key: _getBuyVariantState,
                                    segmentList: segmenttable,
                                    updation: variantTableAssign,
                                  ),
                                  SizedBox(height: height * .06,),
                                  MultiBuyBuyVariantGrowableTable(
                                    select: select,
                                    key: _buyLinesVariantState,
                                    segmentList: segmenttable,
                                    updation: variantBuyLinesTableAssign,
                                  ),
                                  SizedBox(height: 50,),
                                  SaveUpdateResponsiveButton(
                                    label: select ? "SAVE" : "UPDATE",
                                    discardFunction: () {
                                      showDailogPopUp(
                                          context,
                                          LogoutPopup(
                                            message: "Do you want to delete the order",
                                            // table:table,
                                            // clear:clear(),
                                            // verticalId: veritiaclid,
                                            onPressed: () {
                                              print("akshay");
                                              Navigator.pop(context);

                                              context.read<
                                                  DeleteOfferPeriodCubit>()
                                                  .deleteOfferPeriod(
                                                  veritiaclid, type: "8"
                                              );
                                              // context
                                              //     .read<
                                              //     SalesgeneraldeleteCubit>()
                                              //     .salesGeneralDelete(
                                              //     veritiaclid);
                                            },
                                          ));
                                    },
                                    saveFunction: () {
                                      var segmentTable1=[
                                        for(var em in segmenttable)
                                          if(em.isActive==true)
                                            em
                                      ];
                                      var variantTable1=[
                                        for(var em in variantTable)
                                          if(em.isActive==true)
                                            em
                                      ];


                                      if(isSegmentClear==true) {
                                        if (select == false) {
                                          variantTable.addAll(variantTable2);
                                          buyLinesVariantTable.addAll(
                                              buyLinesVariantTable2);
                                        }
                                      }


                                      PromotionMultiBuyCreationModel model = PromotionMultiBuyCreationModel(
                                          name: nameController?.text ?? "",
                                          offerGroupId: null,
                                          offerPeriodId: int.tryParse(
                                              offerPeriodIdController.text),
                                          displayName: displayNameController
                                              ?.text ?? "",
                                          sellingPrice: double.tryParse(
                                              sellingPriceConroller.text),
                                          totalCost: double.tryParse(
                                              totalCostController.text),
                                          maximumQuantity: int.tryParse(
                                              maximumCountController.text),
                                          createdBuy: Variable.created_by,
                                          multibuyAppliedTo: multiBuyApplyingToController
                                              .text,
                                          multibuyAppliedToCode: multiBuyApplyingToNameCodeController
                                              .text,
                                          image: imageController.text,
                                          isActive: isActive,
                                          segments:segmentTable1,
                                          availableCustomerGroups: customerGroup,
                                          multiBuyAppliedToID: int.tryParse(
                                              multiBuyApplyingToNameIdController
                                                  .text),
                                          multiBuyAppliedToName: multiBuyApplyingToNameController
                                              .text,
                                          description: descripionController
                                              .text,
                                          inventoryId: Variable.inventory_ID,
                                          isAvailableFor: isAvailableForAl,
                                          getLines:select?variantTable1: variantTable,
                                          buyLines: buyLinesVariantTable
                                      );
                                      select? context.read<MultiBuyCreationCubit>().postCreatePromtionMultiBuy(model):context.read<MultiBuyCreationCubit>().multiBuyPromotionPatch(veritiaclid, model);
                                      isSegmentClear=false;
                                    },
                                  ),

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
          );
  },
),
        ),
      );
    }
  }
