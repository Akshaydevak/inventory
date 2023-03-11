import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/promotiontab/coupon/cubit/verticallist/promotion_coupon_vertical_list_cubit.dart';
import 'package:inventory/Screens/promotiontab/coupon/screens/coupon_Variant_table.dart';
import 'package:inventory/Screens/promotiontab/coupon/screens/coupon_stable_table.dart';
import 'package:inventory/Screens/promotiontab/coupon/screens/segment_coupon_screen.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/delete_promotion/delete_offer_period_cubit.dart';
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
  bool canApplyMultiplTimes=true;
  bool canApplyTogather=true;
  List<VariantModel> variantTable=[];
  bool select=false;
  var list;
  TextEditingController itemsearch = TextEditingController();
  int selectedVertical=0;
  List<OfferPeriodList> result = [];
  int? veritiaclid;
  List<Segment> segmentTable = [];
  variantTableAssign(List<VariantModel> table1) {
    print("ethito");

    setState(() {
      variantTable = List.from(table1);

    });

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
      // buyMoreApplyingNameCodeController.clear();
      // buyMoreApplyingNameIdController.clear();
      // buyMoreApplyingNameController.clear();
      // variantTable.clear();
      // _myWidgetState.currentState?.clear();
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

  @override
  void initState() {
    context.read<PromotionCouponVerticalListCubit>().getCouPenVerticalList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return  MultiBlocListener(
  listeners: [

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
  child: BlocConsumer<PromotionCouponVerticalListCubit, PromotionCouponVerticalListState>(
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
              // context.read<ReadBuyMoreCubit>().getBuyMoreRead(veritiaclid!);
              }
              else{
                veritiaclid=result[0].id;
                // context.read<ReadBuyMoreCubit>().getBuyMoreRead(veritiaclid!);
              }


              select=false;
            }
            else{
              print("common");
              select=true;
              // clear();
              setState(() {
              });

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
                    // clear();
                    select = false;

                    // _myWidgetState.currentState?.clear();
                    // s.currentState?.clears();
                    // clear();


                    // context.read<ReadBuyMoreCubit>().getBuyMoreRead(veritiaclid!);




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
                      SizedBox(height: height*.04,),
                      SegmentCouponGrowableTable(
                          key: couponSegmnetState,
                          select:select,
                          table: segmentTable,
                          updation: tableAssign),
                      SizedBox(height: height*.06,),
                      PromotionCouponStableTable(
                        maximumCount: maximumCountController,
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
                        variantTableDatsClear: (){},
                      ),
                      SizedBox(height: height*.06,),
                      CouponVariantGrowableTable(
                        select:select,
                        key:couponVariantState,
                        segmentList: segmentTable,
                        applyingTypeCode: couponApplyinOnController?.text??"",
                        applyingType:couponApplyinOnNameCodeController.text??"",
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
),
);
  }

}
