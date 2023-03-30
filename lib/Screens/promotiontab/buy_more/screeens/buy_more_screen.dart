import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/promotiontab/buy_more/cubit/buy_more_creation_cubit.dart';
import 'package:inventory/Screens/promotiontab/buy_more/cubit/buy_more_verticalList/buy_more_vertical_list_cubit.dart';
import 'package:inventory/Screens/promotiontab/buy_more/cubit/read_buy_more/read_buy_more_cubit.dart';
import 'package:inventory/Screens/promotiontab/buy_more/model/create_model.dart';
import 'package:inventory/Screens/promotiontab/buy_more/screeens/buy_more_variant_list.dart';
import 'package:inventory/Screens/promotiontab/buy_more/screeens/buymore_stable_table.dart';
import 'package:inventory/Screens/promotiontab/buy_more/screeens/buymoresegmentscreen.dart';
import 'package:inventory/Screens/promotiontab/discount/model/promotion_discount_model.dart';
import 'package:inventory/Screens/promotiontab/discount/screens/segment_table.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/Deacivate/promotion_sale_deactivate_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/delete_promotion/delete_offer_period_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/promotionimage/promotion_image_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/saleread/promtion_sale_read_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/Screens/promotiontab/sale/screens/productliststable_tsablescreen.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';

class PromotionBuyMoreMainScreen extends StatefulWidget {

  const PromotionBuyMoreMainScreen({Key? key}) : super(key: key);

  @override
  State<PromotionBuyMoreMainScreen> createState() => _PromotionBuyMoreMainScreenState();
}

class _PromotionBuyMoreMainScreenState extends State<PromotionBuyMoreMainScreen> {
  TextEditingController buyMoreCodeController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();
  TextEditingController buyMoreApplyingNameController=TextEditingController();
  TextEditingController offerPeriodIdController=TextEditingController();
  TextEditingController offerGroupIdController=TextEditingController();
  TextEditingController offerPeriodNameController=TextEditingController();
  TextEditingController offerGroupNameController=TextEditingController();
  TextEditingController buyMoreApplyingPlaceController=TextEditingController();
  TextEditingController buyMoreApplyingNameCodeController=TextEditingController();
  TextEditingController maximumCountController=TextEditingController();
  TextEditingController buyMoreApplyingNameIdController=TextEditingController();
  TextEditingController buyMoreApplyingPlaceIdController=TextEditingController();
  TextEditingController buyMoreApplyingPlaceCodeController=TextEditingController();
  TextEditingController buyMoreApplyingPlaceNameController=TextEditingController();
  TextEditingController basedOnController=TextEditingController();
  TextEditingController imageController=TextEditingController();
  TextEditingController imageNameController=TextEditingController();

  TextEditingController titleController=TextEditingController();
  TextEditingController buyMoreApplyingOnController=TextEditingController();
  TextEditingController availableCustomerGroupsController=TextEditingController();
  bool isAvailableForAll=true;
  bool isActive=true;
  bool select=false;
  int? veritiaclid;
  List<Segment> segmentTable = [];
  bool isSegmentClear=false;
  List<CountPricePercentageModel> countTable=[];
  List<VariantModel> variantTable=[];
  List<VariantModel> variantTable2=[];
  var list;
  TextEditingController itemsearch = TextEditingController();
  int selectedVertical=0;
  List<OfferPeriodList> result = [];
  List<AvailableCustomerGroups> customerGroup=[];
  void customGroupListAssign(List<AvailableCustomerGroups> customerGroupList){



    setState(() {
      customerGroup=List.from(customerGroupList);
      print(customerGroup);

    });
  }

  segmentCleartymVariantAdd(){
    if(select==false){
      print("patch case");
      if(variantTable2.isNotEmpty){
        print("is Not empty");
        for(var i=0;i<variantTable2.length;i++){
          variantTable2[i]=variantTable2[i].copyWith(isActive: false);
        }

        isSegmentClear=true;
      }
    }
  }
  tableAssign(List<Segment> table1) {
    print("ethito");

    setState(() {
      segmentTable = List.from(table1);
      buyMoreApplyingNameCodeController.clear();
      buyMoreApplyingNameIdController.clear();
      buyMoreApplyingNameController.clear();
      variantTable.clear();
      _myWidgetState.currentState?.clear();
      if(select==false){
        print("patch case");
        if(variantTable2.isNotEmpty){
          print("is Not empty");
          for(var i=0;i<variantTable2.length;i++){
            variantTable2[i]=variantTable2[i].copyWith(isActive: false);
          }

          isSegmentClear=true;
        }
      }

    });

  }
  variantTableDatsClear(){
    setState(() {
    variantTable.clear();
    _myWidgetState.currentState?.clear();
    segmentCleartymVariantAdd();
    });

  }

  activeChange({int? type,bool val=false}){
    print("ssssssssssssssssssssssssssssssssssssss");
    print(type);
    print(val);


    switch(type) {
      case 1 :
        isAvailableForAll = val;

        break;

      case 2 :
        isActive = val;
        break;

    }
    setState(() {

    });
  }
 countTableAssign(List<CountPricePercentageModel> table1) {


    setState(() {
      countTable = List.from(table1);

    });

  }
  variantTableAssign(List<VariantModel> table1) {


    setState(() {
      variantTable = List.from(table1);

    });

  }
  final GlobalKey<BuyMoreVariantGrowableTableState> _myWidgetState = GlobalKey<BuyMoreVariantGrowableTableState>();

  final GlobalKey<SegmentBuyMoreGrowableTableState> buyMoreSegmnetState = GlobalKey<SegmentBuyMoreGrowableTableState>();
  final GlobalKey<CountBuyMoreGrowableTableState> buyMoreCountStateState = GlobalKey<CountBuyMoreGrowableTableState>();

  @override
  void initState() {
    context.read<BuyMoreVerticalListCubit>().getBuyMoreVerticalList();
    super.initState();
  }
  clear(){
    titleController.text="";
    descriptionController.text="";
    imageController.text="";
    basedOnController.text="";
    buyMoreApplyingPlaceController.text="";
    buyMoreApplyingPlaceIdController.text="";
    buyMoreApplyingPlaceCodeController.text="";
    buyMoreCodeController.text="";
    imageController.text="";
    customerGroup.clear();
    customerGroup.clear();
    buyMoreApplyingOnController.text="";
    buyMoreApplyingNameController.text="";
    maximumCountController.clear();
    buyMoreApplyingNameCodeController.text="";
    buyMoreApplyingNameIdController.text="";
    offerPeriodIdController.text="";
    offerPeriodNameController.text="";
    offerGroupNameController.text="";
    variantTable2.clear();
    buyMoreApplyingNameCodeController.text="";
    offerGroupIdController.text="";
    imageNameController.text="";
    isAvailableForAll=true;
    isSegmentClear=false;

    _myWidgetState.currentState?.clear();
    buyMoreSegmnetState.currentState?.clears();
    buyMoreCountStateState.currentState?.clears();

  }


  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return MultiBlocProvider(
  providers: [

    BlocProvider(
      create: (context) => BuyMoreCreationCubit(),
    ), BlocProvider(
      create: (context) => ReadBuyMoreCubit(),
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
    // BlocListener<ReadBuyMoreCubit, ReadBuyMoreState>(
    //   listener: (context, state) {
    //     print("state++++++++++++++++++++++++++++++++");
    //     state.maybeWhen(
    //         orElse: () {},
    //         error: () {
    //           print("error");
    //         },
    //         success: (data) {
    //           setState(() {
    //             print(data);
    //
    //             titleController.text=data.title??"";
    //             descriptionController.text=data.description??"";
    //             imageController.text=data?.image??"";
    //             imageNameController.text=data?.image??"";
    //             basedOnController.text=data.basedOn??"";
    //             buyMoreApplyingPlaceController.text=data.offerAppliedTo??"";
    //
    //             buyMoreApplyingPlaceIdController.text=data.offerAppliedToId.toString()??"";
    //             buyMoreApplyingPlaceCodeController.text=data.offerAppliedToCode.toString()??"";
    //             buyMoreCodeController.text=data.buyMoreCode.toString()??"";
    //             imageController.text=data.image.toString()??"";
    //             buyMoreApplyingOnController.text=data.buyMoreApplyingOn??"";
    //             buyMoreApplyingNameController.text=data.buyMoreApplyingOnName??"";
    //             buyMoreApplyingNameCodeController.text=data.buyMoreApplyingOnCode??"";
    //             maximumCountController.text=data.maximumCount==null?"":data.maximumCount?.toString()??"";
    //             buyMoreApplyingNameIdController.text=data.buyMoreApplyingOnId.toString()??"";
    //             offerPeriodIdController.text=data?.offerPeriodId.toString()??"";
    //             offerGroupIdController.text=data?.offerGroupId.toString()??"";
    //             offerGroupNameController.text=data?.offerGroupName.toString()??"";
    //             offerPeriodNameController.text=data?.offerPeriodName.toString()??"";
    //
    //             isAvailableForAll=data.isAvailableForAll??false;
    //           ;
    //             isActive=data.isActive??false;
    //             data.segments != null ? segmentTable =List.from( data?.segments ?? []) : segmentTable = [];
    //             data.countPricePercentage != null ? countTable =List.from( data?.countPricePercentage ?? []) : countTable = [];
    //             data.availableCustomerGroups != null ? customerGroup =List.from( data?.availableCustomerGroups ?? []) : customerGroup = [];
    //             data.lines != null ? variantTable =List.from( data?.lines ?? []) : variantTable = [];
    //             data.lines != null ? variantTable2 =List.from( data?.lines ?? []) : variantTable2 = [];
    //
    //
    //           });
    //         });
    //   },
    // ),
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

            context.read<BuyMoreVerticalListCubit>().getBuyMoreVerticalList();

          } else {
            context.showSnackBarError(data.data2);
            print(data.data1);
          }
          ;
        });
      },
    ),
    BlocListener<BuyMoreCreationCubit, BuyMoreCreationState>(
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
                context.read<BuyMoreVerticalListCubit>().getBuyMoreVerticalList();
              });
            });

          }
          else {
            print("TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT");

            if(Variable.isTypeDataCheck==true){
              showDailogPopUp(
                  context,
                  LogoutPopup(
                    onLeftText: "View All Products",
                    onRightText: "Deactivate",
                    message: data.data2,
                    onLeftPress: (){
                      print("akskskskks");
                      List<int?> list1=[];
                      for(var a in variantTable)
                        if(a.isActive==true)
                        list1.add(a.variantId);

                      context.read<PromotionSaleDeactivateCubit>().getVariantDeactivate(2,Variable.type_data,list1);
                      showDailogPopUp(
                        context,
                        BlocProvider(
                          create: (context) => PromotionSaleDeactivateCubit()..getVariantDeactivate(2,Variable.type_data,list1),
                          child: ConfigurePopup(

                            // listAssign: listAssign,
                            type: "VariantPromotionCreatativePopup",
                          ),
                        ),
                      );


                    },
                    // table:table,
                    // clear:clear(),

                    onPressed:() async {
                      List<int?> list1=[];
                      for(var a in variantTable)
                        if(a.isActive==true)
                        list1.add(a.variantId);

                      context.read<PromotionSaleDeactivateCubit>().getVariantDeactivate(1,Variable.type_data,list1);
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
            else{
              context.showSnackBarError(data.data2);
            }


          }
          ;
        });
      },
    ),

  ],
  child: BlocConsumer<ReadBuyMoreCubit, ReadBuyMoreState>(
  listener: (context, state) {
    print("state++++++++++++++++++++++++++++++++");
    state.maybeWhen(
        orElse: () {},
        error: () {
          print("error");
        },
        success: (data) {

            print(data);

            titleController.text=data.title??"";
            descriptionController.text=data.description??"";
            imageController.text=data?.image??"";
            imageNameController.text=data?.image??"";
            basedOnController.text=data.basedOn??"";
            buyMoreApplyingPlaceController.text=data.offerAppliedTo??"";

            buyMoreApplyingPlaceIdController.text=data.offerAppliedToId.toString()??"";
            buyMoreApplyingPlaceCodeController.text=data.offerAppliedToCode.toString()??"";
            buyMoreCodeController.text=data.buyMoreCode.toString()??"";
            imageController.text=data.image.toString()??"";
            buyMoreApplyingOnController.text=data.buyMoreApplyingOn??"";
            buyMoreApplyingNameController.text=data.buyMoreApplyingOnName??"";
            buyMoreApplyingNameCodeController.text=data.buyMoreApplyingOnCode??"";
            maximumCountController.text=data.maximumCount==null?"":data.maximumCount?.toString()??"";
            buyMoreApplyingNameIdController.text=data.buyMoreApplyingOnId.toString()??"";
            offerPeriodIdController.text=data?.offerPeriodId.toString()??"";
            offerGroupIdController.text=data?.offerGroupId.toString()??"";
            offerGroupNameController.text=data?.offerGroupName.toString()??"";
            offerPeriodNameController.text=data?.offerPeriodName.toString()??"";

            isAvailableForAll=data.isAvailableForAll??false;
            ;
            isActive=data.isActive??false;
            data.segments != null ? segmentTable =List.from( data?.segments ?? []) : segmentTable = [];
            data.countPricePercentage != null ? countTable =List.from( data?.countPricePercentage ?? []) : countTable = [];
            data.availableCustomerGroups != null ? customerGroup =List.from( data?.availableCustomerGroups ?? []) : customerGroup = [];
            data.lines != null ? variantTable =List.from( data?.lines ?? []) : variantTable = [];
            data.lines != null ? variantTable2 =List.from( data?.lines ?? []) : variantTable2 = [];



        });
  },
  builder: (context, state) {
    return BlocConsumer<BuyMoreVerticalListCubit, BuyMoreVerticalListState>(
  listener: (context, state) {
    state.maybeWhen(
        orElse: () {},
        error: () {
          print("error");
        },
        success: (list) {
          print("aaaaayyyiram"+list.data.toString());
          list=list;

          result = list.data;
          print("seee"+result.toString());
         
            if(result.isNotEmpty){
              if(select){  veritiaclid=result[result.length-1].id;
                selectedVertical=result.length-1;
              context.read<ReadBuyMoreCubit>().getBuyMoreRead(veritiaclid!);}
              else{
                veritiaclid=result[0].id;selectedVertical=0;
                context.read<ReadBuyMoreCubit>().getBuyMoreRead(veritiaclid!);
              }


              select=false;
            }
            else{
              print("common");
              select=true;
              clear();


            }





        });
  },
  builder: (context, state) {
    return Builder(
      builder: (context) {
        return Scaffold(
          backgroundColor: Pellet.bagroundColor,
          body: IntrinsicHeight(
            child: Row(
              children: [
                PromotionBuyMoreVerticalList(
                    list: list,
                    selectedVertical: selectedVertical,
                    itemsearch: itemsearch,ontap: (int index){
                  setState(() {
                    selectedVertical=index;

                    // select=false;
                    // updateCheck=false;


                    veritiaclid = result[index].id;
                    clear();
                    select = false;

                    _myWidgetState.currentState?.clear();
                    // s.currentState?.clears();
                    // clear();


                    context.read<ReadBuyMoreCubit>().getBuyMoreRead(veritiaclid!);




                    setState(() {

                    });
                  });
                },
                    search: (String va) {
                      print(va);
                      context
                          .read<BuyMoreVerticalListCubit>()
                          .searchBuyMoreVerticalList(va);

                      if (va == "") {
                        context
                            .read<BuyMoreVerticalListCubit>()
                            .getBuyMoreVerticalList();

                      }
                    },
                    result: result,
                    child:   tablePagination(
                          () => context
                          .read<BuyMoreVerticalListCubit>()
                          .refresh(),
                      back: list?.previousUrl == null
                          ? null
                          : () {
                        context
                            .read<BuyMoreVerticalListCubit>()
                            .previuosslotSectionPageList();
                      },
                      next: list?.nextPageUrl == null
                          ? null
                          : () {
                        // print(data.nextPageUrl);
                        context
                            .read<BuyMoreVerticalListCubit>()
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
                      SizedBox(height: height*.04,),
                      SegmentBuyMoreGrowableTable(
                          key: buyMoreSegmnetState,
                          select:select,
                          table: segmentTable,
                          updation: tableAssign),

                      SizedBox(height: height*.06,),
                      PromotionByMoreStableTable(
                        variantTableDatsClear:variantTableDatsClear,

                        isSelect: select,
                        imageNameController: imageNameController,
                        activeChange:activeChange,
                        buyMoreApplyingPlaceCode: buyMoreApplyingPlaceCodeController,
                        buyMoreApplyingPlaceId: buyMoreApplyingPlaceIdController,
                        table: segmentTable,
                        maximumCount:maximumCountController,
                        buyMoreApplyingNameCode: buyMoreApplyingNameCodeController,
                        buyMoreApplyingNameId: buyMoreApplyingNameIdController,
                        buyMoreApplyingPlace: buyMoreApplyingPlaceController,
                        buyMoreApplyingPlaceName: buyMoreApplyingPlaceNameController,
                        offerGroupName: offerGroupNameController,
                        offerGroupId: offerGroupIdController,
                        buyMoreCode: buyMoreCodeController,
                        offerPeriodName: offerPeriodNameController,
                        offerPeriodId: offerPeriodIdController,
                        title: titleController,
                        descripion: descriptionController,
                        basedOn: basedOnController,
                        buyMoreApplyinOn: buyMoreApplyingOnController,
                        buyMoreApplyingNmae: buyMoreApplyingNameController,
                         image: imageController,
                        isAvailableForAll: isAvailableForAll,
                        availableCustomerGroups: availableCustomerGroupsController,
                        isActive: isActive, customerGroupList: customerGroup,
                        customGroupListAssign: customGroupListAssign,
                      ),
                      SizedBox(height: height*.06,),
                      CountBuyMoreGrowableTable(updation: countTableAssign,
                        key: buyMoreCountStateState,
                        select:select,

                      ),
                      SizedBox(height: height*.06,), 
                      BuyMoreVariantGrowableTable(
                        select:select,

                    key:_myWidgetState,
                    segmentList: segmentTable,
                    applyingTypeCode: buyMoreApplyingNameCodeController?.text??"",
                    applyingType: buyMoreApplyingOnController?.text??"",
                    updation: variantTableAssign,
                  ),
                    SizedBox(height: 50,),
                      SaveUpdateResponsiveButton(
                        label:  select? "SAVE":"UPDATE",
                        discardFunction: (){
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

                                  context.read<DeleteOfferPeriodCubit>()
                                      .deleteOfferPeriod(veritiaclid,type:"5"
                                  );
                                  // context
                                  //     .read<
                                  //     SalesgeneraldeleteCubit>()
                                  //     .salesGeneralDelete(
                                  //     veritiaclid);
                                },
                              ));
                        },
                        saveFunction: (){
                          print("sssssssssssssssssssss");

                          var segmentTable1=[
                            for(var em in segmentTable)
                              if(em.isActive==true)
                                em
                          ];
                          var countTable1=[
                            for(var em in countTable)
                              if(em.isActive==true)
                                em
                          ];
                          List<VariantModel>? lines1=List.from([]);
                          if(variantTable.isNotEmpty){
                            for(int i=0;i<variantTable.length;i++){
                              if(variantTable[i].isActive==true){
                                lines1.add(VariantModel(
                                  variantName:variantTable[i].variantName??"",
                                  variantId: variantTable[i].variantId,
                                  variantCode: variantTable[i].variantCode,
                                  barcode: variantTable[i].barcode

                                ));
                              }

                            }
                          }
                          if(isSegmentClear==true){
                            print("post case");
                            if(select==false){
                              variantTable.addAll(variantTable2);
                            }



                          }

                          // var variantModel1;
                          //
                          //   for(var em in variantTable) {
                          //     if (em.isActive == true)
                          //       variantModel1.add(VariantModel(
                          //         barcode: em.barcode?.barcodeNumber??"",
                          //         variantCode: em.variantCode,
                          //         variantId: em.variantId,
                          //         variantName: em.variantName
                          //       ));
                          //
                          //
                          //   }
                          print(segmentTable1);

                          PromotionBuyMoreCreationModel model=PromotionBuyMoreCreationModel(
                            segments: segmentTable1,
                            inventoryId: Variable.inventory_ID,
                            offerAppliedTo: buyMoreApplyingPlaceController.text,
                            offerAppliedToId:int.tryParse( buyMoreApplyingPlaceIdController.text),
                            offerAppliedToCode: buyMoreApplyingPlaceCodeController.text,
                            title: titleController.text,
                            description: descriptionController.text,
                            isAvailableForAll: isAvailableForAll,
                            availableCustomerGroups: isAvailableForAll?[]:customerGroup,
                            countPricePercentage: countTable1??[],
                            image: imageController.text,
                            basedOn: basedOnController.text,
                            buyMoreApplyingOn: buyMoreApplyingOnController.text,
                            buyMoreApplyingOnName: buyMoreApplyingNameController.text,
                            buyMoreApplyingOnCode: buyMoreApplyingNameCodeController.text,
                            buyMoreApplyingOnId:int.tryParse( buyMoreApplyingNameIdController.text),
                            createdBy: Variable.created_by,
                            isActive: isActive,
                            maximumCount: int.tryParse(maximumCountController.text),
                            lines:select?lines1:variantTable,
                            offerGroupId: int.tryParse(offerGroupIdController.text),
                            offerPeriodId: int.tryParse(offerPeriodIdController.text),
                          );
                          print(model);



                          select?
                          context.read<BuyMoreCreationCubit>().postCreatePromtionBuyMore(model)
                          :
                          context.read<BuyMoreCreationCubit>().buyMorePromotionSalePatch(veritiaclid,model);
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
