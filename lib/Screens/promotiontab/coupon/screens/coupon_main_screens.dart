import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/promotiontab/coupon/cubit/create_coupon/create_promotion_coupon_cubit.dart';
import 'package:inventory/Screens/promotiontab/coupon/cubit/read_coupon/read_coupon_promotion_cubit.dart';
import 'package:inventory/Screens/promotiontab/coupon/cubit/verticallist/promotion_coupon_vertical_list_cubit.dart';
import 'package:inventory/Screens/promotiontab/coupon/model/crreateCouponModel.dart';
import 'package:inventory/Screens/promotiontab/coupon/screens/coupon_Variant_table.dart';
import 'package:inventory/Screens/promotiontab/coupon/screens/coupon_stable_table.dart';
import 'package:inventory/Screens/promotiontab/coupon/screens/segment_coupon_screen.dart';
import 'package:inventory/Screens/promotiontab/discount/model/promotion_discount_model.dart';
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

class PromotionCouponMainPAge extends StatefulWidget {
  const PromotionCouponMainPAge({Key? key}) : super(key: key);

  @override
  State<PromotionCouponMainPAge> createState() => _PromotionCouponMainPAgeState();
}

class _PromotionCouponMainPAgeState extends State<PromotionCouponMainPAge> {
  final GlobalKey<SegmentCouponGrowableTableState> couponSegmnetState = GlobalKey<SegmentCouponGrowableTableState>();
  final GlobalKey<CouponVariantGrowableTableState> couponVariantState = GlobalKey<CouponVariantGrowableTableState>();
  TextEditingController couponCodeController=TextEditingController();
  TextEditingController nameController=TextEditingController();
  TextEditingController offerPeriodController=TextEditingController();
  TextEditingController offerPeriodNameController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();
  TextEditingController displayNameController=TextEditingController();
  TextEditingController couponApplyingToController=TextEditingController();
  TextEditingController couponApplyingToNameController=TextEditingController();
  TextEditingController couponApplyingToNameCodeController=TextEditingController();
  TextEditingController couponApplyingToNameIdController=TextEditingController();
  TextEditingController couponTypeController=TextEditingController();
  TextEditingController totalValueController=TextEditingController();
  TextEditingController couponApplyinOnController=TextEditingController();
  TextEditingController couponApplyinOnNameController=TextEditingController();
  TextEditingController couponApplyinOnNameCodeController=TextEditingController();
  TextEditingController couponApplyinOnNameIdController=TextEditingController();
  TextEditingController couponBaseOnController=TextEditingController();
  TextEditingController pricePercentageValueController=TextEditingController();
  TextEditingController maximumCountController=TextEditingController();
  TextEditingController imageNameController=TextEditingController();
  TextEditingController imageController=TextEditingController();
  TextEditingController availableCustomerGroupController=TextEditingController();

  bool isActive=true;
  bool isAvailableForAll=true;
  bool canApplyMultiplTimes=false;
  bool canApplyTogather=false;
  List<VariantModel> variantTable=[];
   List<VariantModel> variantTable2=[];
  bool isSegmentClear=false;
  bool select=false;
  var list;
  TextEditingController itemsearch = TextEditingController();
  int selectedVertical=0;
  List<OfferPeriodList> result = [];
  int? veritiaclid;
  List<Segment> segmentTable = [];
  variantTableAssign(List<VariantModel> table1) {
    print("ethito");
    print(table1);

    setState(() {
      variantTable = List.from(table1);

    });

  }
  List<AvailableCustomerGroups> customerGroup=[];
  void customGroupListAssign(List<AvailableCustomerGroups> customerGroupList){



    setState(() {
      customerGroup=List.from(customerGroupList);
      print(customerGroup);

    });
  }
  clear(){
    descriptionController.text="";
    customerGroup.clear();
    offerPeriodNameController.text="";
    nameController.text="";
    couponCodeController.text="";
    displayNameController.text="";
    variantTable2.clear();
    couponApplyinOnController.text="";
    couponApplyinOnNameController.text="";
    couponApplyinOnNameCodeController.text="";
    couponApplyinOnNameIdController.text="";
    couponApplyingToController.text="";
    couponApplyingToController.text="";
    couponApplyingToNameIdController.text="";
    couponApplyingToNameCodeController.text="";
    couponApplyingToNameController.text="";

    couponBaseOnController.text="";
    couponTypeController.text="";
    pricePercentageValueController.text="";
    imageController.text="";
    imageNameController.text="";
    imageController.text="";
    isAvailableForAll=true;
    canApplyMultiplTimes=false;
    canApplyTogather=false;
    maximumCountController.text="";
    totalValueController.text="";
    isActive=true;
     segmentTable=[];
     variantTable = [];
    isSegmentClear=false;
    couponSegmnetState?.currentState?.clears();
    couponVariantState?.currentState?.clear();

  }
  variantTableDatsClear(){
    setState(() {
      variantTable.clear();
      couponVariantState.currentState?.clear();
      segmentCleartymVariantAdd();
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
  activeChange({int? type,bool val=false}){

    print(type);
    print(val);


    switch(type) {
      case 1 :
        isAvailableForAll = val;

        break;

      case 2 :
        isActive = val;

        break;
      case 3 :
        canApplyMultiplTimes = val;

        break;
        case 4 :
        canApplyTogather = val;

        break;
    }
    setState(() {

    });
  }
  tableAssign(List<Segment> table1) {
    print("ethito");

    setState(() {
      segmentTable = List.from(table1);
      couponApplyinOnNameIdController.clear();
      couponApplyinOnNameController.clear();
      couponApplyinOnNameCodeController.clear();
      variantTable.clear();
      couponVariantState.currentState?.clear();
      segmentCleartymVariantAdd();

    });

  }

  @override
  void initState() {
    context.read<PromotionCouponVerticalListCubit>().getCouPenVerticalList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return  MultiBlocProvider(
  providers: [
    BlocProvider(
  create: (context) => CreatePromotionCouponCubit(),
), 
    BlocProvider(
  create: (context) => ReadCouponPromotionCubit(),
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
    BlocListener<CreatePromotionCouponCubit, CreatePromotionCouponState>(
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
                context.read<PromotionCouponVerticalListCubit>().getCouPenVerticalList();;
              });
            });

          }
          else {


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

                      context.read<PromotionSaleDeactivateCubit>().getVariantDeactivate(2,Variable.type_data,list1,isCoupon: true);
                      showDailogPopUp(
                        context,
                        BlocProvider(
                          create: (context) => PromotionSaleDeactivateCubit()..getVariantDeactivate(2,Variable.type_data,list1,isCoupon: true),
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

                      context.read<PromotionSaleDeactivateCubit>().getVariantDeactivate(1,Variable.type_data,list1,isCoupon: true);
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

            context.read<PromotionCouponVerticalListCubit>().getCouPenVerticalList();

          } else {
            context.showSnackBarError(data.data2);
            print(data.data1);
          }
          ;
        });
      },
    ),
  ],
  child:
  BlocConsumer<ReadCouponPromotionCubit, ReadCouponPromotionState>(
  listener: (context, state) {
    state.maybeWhen(
        orElse: () {},
        error: () {
          print("error");
        },
        success: (data) {

            print(data);
            descriptionController.text=data.description??"";
            offerPeriodNameController.text=data.offerPeriodName??"";
            offerPeriodController.text=data.offerPeriodId.toString()??"";
            nameController.text=data.name??"";
            couponCodeController.text=data.couponCode??"";
            displayNameController.text=data.displayName??"";
            couponApplyinOnController.text=data.couponApplyingOn??"";
            couponApplyinOnNameController.text=data.couponApplyingOnName??"";
            couponApplyinOnNameCodeController.text=data.couponApplyingOnCode??"";
            couponApplyinOnNameIdController.text=data.couponApplyingOnId??"";
            couponApplyingToController.text=data.couponAppliedTo??"";
            couponApplyingToController.text=data.couponAppliedTo??"";
            couponApplyingToNameIdController.text=data.couponAppliedToId??"";
            couponApplyingToNameCodeController.text=data.couponAppliedToCode??"";
            couponApplyingToNameController.text=data.couponAppliedToName??"";

            couponBaseOnController.text=data.basedOn??"";
            couponTypeController.text=data.couponType??"";
            pricePercentageValueController.text=data.priceOrPercentage?.toString()??"";
            imageController.text=data?.image??"";
            imageNameController.text=data?.image??"";
            imageController.text=data.image.toString()??"";
            isAvailableForAll=data.isAvailableToAll??false;
            canApplyMultiplTimes=data.canApplyMultipleTimes??false;
            canApplyTogather=data.canApplyTogether??false;
            maximumCountController.text=data.maximumCount==null?"":data.maximumCount?.toString()??"";
            totalValueController.text=data.totalValue==null?"":data.totalValue?.toString()??"";
            isActive=data.isActive??false;
            data.segments != null ? segmentTable =List.from( data?.segments ?? []) : segmentTable = [];
            data.availableCustomerGroups != null ? customerGroup =List.from( data?.availableCustomerGroups ?? []) : customerGroup = [];
            data.line != null ? variantTable =List.from( data?.line ?? []) : variantTable = [];
            data.line != null ? variantTable2 =List.from( data?.line ?? []) : variantTable2 = [];
          });

  },
  builder: (context, state) {
    return BlocConsumer<PromotionCouponVerticalListCubit, PromotionCouponVerticalListState>(
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
          setState(() {
            if(result.isNotEmpty){
              if(select){  veritiaclid=result[result.length-1].id;
                selectedVertical=result.length-1;
              context.read<ReadCouponPromotionCubit>().getPromotionCouponRead(veritiaclid!);
              }
              else{
               // selectedVertical=veritiaclid;
                context.read<ReadCouponPromotionCubit>().getPromotionCouponRead(veritiaclid!);
              }


              select=false;
            }
            else{
              print("common");
              select=true;
              clear();


            }


            setState(() {});

          });
        });
    // TODO: implement listener
  },
  builder: (context, state) {
    return Builder(
      builder: (context) {
        return Scaffold(
          backgroundColor: Pellet.bagroundColor,

          body:IntrinsicHeight(
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

                    // _myWidgetState.currentState?.clear();
                    // s.currentState?.clears();
                    // clear();


                    context.read<ReadCouponPromotionCubit>().getPromotionCouponRead(veritiaclid!);




                    setState(() {

                    });
                  });
                },
                    search: (String va) {
                      print(va);
                      context
                          .read<PromotionCouponVerticalListCubit>()
                          .searchCouponVerticalList(va);

                      if (va == "") {
                        context
                            .read<PromotionCouponVerticalListCubit>()
                            .getCouPenVerticalList();

                      }
                    },
                    result: result,
                    child:   tablePagination(
                          () => context
                          .read<PromotionCouponVerticalListCubit>()
                          .refresh(),
                      back: list?.previousUrl == null
                          ? null
                          : () {
                        context
                            .read<PromotionCouponVerticalListCubit>()
                            .previuosslotSectionPageList();
                      },
                      next: list?.nextPageUrl == null
                          ? null
                          : () {
                        // print(data.nextPageUrl);
                        context
                            .read<PromotionCouponVerticalListCubit>()
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
                      SegmentCouponGrowableTable(
                          key: couponSegmnetState,
                          select:select,
                          table: segmentTable,
                          updation: tableAssign),
                      SizedBox(height: height*.06,),
                      PromotionCouponStableTable(
                        maximumCount: maximumCountController,
                        customGroupListAssign: customGroupListAssign,
                        customerGroupList: customerGroup,
                        imageName: imageNameController,
                        image: imageController,
                        activeChange: activeChange,
                        availableCustomerGroup: availableCustomerGroupController,
                        canApplyMultipleTimes: canApplyMultiplTimes,
                        canApplyTogather: canApplyTogather,
                        couponApplyingOn: couponApplyinOnController,
                        couponApplyingOnName: couponApplyinOnNameController,
                        couponApplyingOnNameCode: couponApplyinOnNameCodeController,
                        couponApplyingOnNameId: couponApplyinOnNameIdController,
                        couponApplyingTo: couponApplyingToController,
                        couponApplyingToName: couponApplyingToNameController,
                        couponApplyingToNameCode: couponApplyingToNameCodeController,
                        couponApplyingToNameId: couponApplyingToNameIdController,
                        couponBasedOn: couponBaseOnController,
                        couponCode: couponCodeController,
                        couponType: couponTypeController,
                        descripion: descriptionController,
                        displayName: displayNameController,
                        isActive: isActive,
                        isAvailableForAll: isAvailableForAll,
                        isSelect: select,
                        name: nameController,
                        offerPeriodId: offerPeriodController,
                        offerPeriodName: offerPeriodNameController,
                        priceOrpercentageValue: pricePercentageValueController,
                        table: segmentTable,
                        totalValue: totalValueController,
                        variantTableDatsClear: variantTableDatsClear,
                      ),
                      SizedBox(height: height*.06,),
                      CouponVariantGrowableTable(
                        select:select,
                        key:couponVariantState,
                        segmentList: segmentTable,
                        applyingTypeCode:couponApplyinOnNameCodeController ?.text??"",
                        applyingType:couponApplyinOnController.text??"",
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
                                      .deleteOfferPeriod(veritiaclid,type:"7"
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
                          var segmentTable1=[
                            for(var em in segmentTable)
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
                                    barcode: variantTable[i].barcode,

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
                          PromotionCouponCreationModel model=PromotionCouponCreationModel(
                            line:select?lines1: variantTable.isEmpty?[]:variantTable,
                            inventoryId: Variable.inventory_ID,
                            name: nameController?.text??null,
                            description: descriptionController?.text??null,
                            displayName: displayNameController?.text??null,
                            image: imageController.text.isEmpty?null:imageController.text,
                            basedOn: couponBaseOnController?.text??null,
                            couponType: couponTypeController?.text??null,
                            priceOrPercentage:double.tryParse( pricePercentageValueController.text),
                            maximumCount:int.tryParse( maximumCountController.text),
                            availableCustomerGroups:isAvailableForAll?[]:customerGroup,
                            isAvailableToAll: isAvailableForAll,
                            canApplyMultipleTimes: canApplyMultiplTimes,
                            canApplyTogether: canApplyTogather,
                            totalValue:int.tryParse( totalValueController.text),
                            segments: segmentTable1,
                            couponApplyingOn: couponApplyinOnController?.text??null,
                            couponApplyingOnId: couponApplyinOnNameIdController?.text??null,
                            couponApplyingOnCode: couponApplyinOnNameCodeController?.text??null,
                            couponApplyingOnName: couponApplyinOnNameController?.text??null,
                            couponAppliedTo: couponApplyingToController?.text??null,
                            couponAppliedToId: couponApplyingToNameIdController?.text??null,
                            couponAppliedToCode: couponApplyingToNameCodeController?.text??null,
                            couponAppliedToName: couponApplyingToNameController?.text??null,
                            createdBy: Variable.created_by,
                            isActive: isActive,
                            offerPeriodId: int.tryParse(offerPeriodController.text),

                          );
                          print(model);

                          select?context.read<CreatePromotionCouponCubit>().postCreatePromtionCoupon(model): context.read<CreatePromotionCouponCubit>().couponPromotionPatch(veritiaclid,model);
                          isSegmentClear=false;





                        },
                      ),



                    ],
                  ),
                ))

              ],
            ),

          ) ,
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
