import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/promotiontab/discount/cubit/PromotionDiscountVerticalList/promotion_discount_vertical_list_cubit.dart';
import 'package:inventory/Screens/promotiontab/discount/cubit/creation_promotion_discount/creation_promotion_discount_cubit.dart';
import 'package:inventory/Screens/promotiontab/discount/cubit/read_promotion_discount/read_promotion_discount_cubit.dart';
import 'package:inventory/Screens/promotiontab/discount/model/promotion_discount_model.dart';
import 'package:inventory/Screens/promotiontab/discount/screens/discountstable.dart';
import 'package:inventory/Screens/promotiontab/discount/screens/segment_table.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/Deacivate/promotion_sale_deactivate_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/delete_promotion/delete_offer_period_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/promotionimage/promotion_image_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/saleread/promtion_sale_read_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/Screens/promotiontab/sale/screens/segmenttable.dart';
import 'package:inventory/Screens/promotiontab/sale/screens/stable_expandedtables.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/model/purchaseorder.dart';

import '../../../../commonWidget/commonutils.dart';
import 'discount_bottom_table.dart';

class DiscountMainScreen extends StatefulWidget {
  const DiscountMainScreen({Key? key}) : super(key: key);

  @override
  State<DiscountMainScreen> createState() => _DiscountMainScreenState();
}

class _DiscountMainScreenState extends State<DiscountMainScreen> {
   bool select=false;
   bool active=false;
   final GlobalKey<SegmentDisCountGrowableTableState> discountSegmnetState = GlobalKey<SegmentDisCountGrowableTableState>();
   List<Segment> segmentTable = [];
   tableAssign(List<Segment> table1) {
     print("ethito");

     setState(() {
       segmentTable = List.from(table1);
    for(int i=0;i<offerLines.length-1;i++){
      offerLines[i]=offerLines[i].copyWith(typeId: null,typeCode:"",variants: [] );
    }
       bottomTableState.currentState?.clear();

     });

   }
   TextEditingController  discountCodeController=TextEditingController();
   TextEditingController  offerPeriodController=TextEditingController();
   TextEditingController  offerPeriodNameController=TextEditingController();
   TextEditingController  offerGroupController=TextEditingController();
   TextEditingController  offerGroupNameController=TextEditingController();
   TextEditingController  offerApplyingTypeController=TextEditingController();
   TextEditingController  offerApplyingToNameController=TextEditingController();
   TextEditingController  offerApplyingToCodeController=TextEditingController();
   TextEditingController  offerApplyingToIdController=TextEditingController();
   TextEditingController  titleController=TextEditingController();
   TextEditingController  descriptionController=TextEditingController();
   TextEditingController  imageController=TextEditingController();
   TextEditingController  basedOnController=TextEditingController();
   TextEditingController  discountPercentageOrPriceController=TextEditingController();
   TextEditingController  availableCustomerGroupController=TextEditingController();

   bool isAvailableForAll=true;
   bool overidePriority=false;
   bool isAdminBased=false;
   bool isActive=false;
   int? veritiaclid=0;
   TextEditingController itemsearch = TextEditingController();
   int selectedVertical=0;
   var list;
   List <SaleLinesDiscount>offerLines=[];
   bottomTableAssign(List<SaleLinesDiscount> table1) {
     print("ethito");
     offerLines=List.from(table1);
  print(offerLines);

     setState(() {
       // variantTable = List.from(table1);

     });

   }


   List<salesOrderTypeModel> result = [];



   clear(){
     // isActive=false;
  offerPeriodNameController.clear();
offerPeriodController.clear();
offerGroupNameController.clear();
      titleController.clear();
     offerApplyingTypeController.clear();
    offerApplyingToIdController.clear();
   descriptionController.clear();
     imageController.clear();
 basedOnController.clear();
      discountPercentageOrPriceController.clear();
  isAvailableForAll=true;
     availableCustomerGroupController.clear();
     overidePriority=false;
   discountCodeController.clear();
      offerApplyingToCodeController.clear();
     offerApplyingToIdController.clear();
     offerGroupController.clear();
     bottomTableState.currentState?.clear();
     discountSegmnetState.currentState?.clears();

   }
   final GlobalKey<DiscountBottomGrowableTableState> bottomTableState = GlobalKey<DiscountBottomGrowableTableState>();
   activeChange({int? type,bool val=false}){
     print("ssssssssssssssssssssssssssssssssssssss");
     print(type);
     print(val);


     switch(type) {
       case 1 :
         overidePriority = val;

         break;

       case 2 :
         isAvailableForAll = val;

         break;
       case 3 :
         isActive = val;

         break;
     }
     setState(() {

     });
   }

   @override
  void initState() {
     context.read<PromotionDiscountVerticalListCubit>().getPromotionDiscountVerticalList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
  create: (context) => PromtionSaleReadCubit()),
        BlocProvider(
  create: (context) => ReadPromotionDiscountCubit()),
        BlocProvider(
  create: (context) => CreationPromotionDiscountCubit()),
      ],
  child:MultiBlocListener(
  listeners: [
    BlocListener<CreationPromotionDiscountCubit, CreationPromotionDiscountState>(
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
                context.read<PromotionDiscountVerticalListCubit>().getPromotionDiscountVerticalList();
                // select=false;
              });
            });
          } else {
            if( Variable.isTypeDataCheck==true){
              showDailogPopUp(
                  context,
                  LogoutPopup(
                    onLeftText: "View All Products",
                    onRightText: "Deactivate",
                    message: data.data2,
                    onLeftPress: (){
                      print("anaghaaaaaaaaaaaa"+offerLines.toString());
                      List<int?> list1=[];
                      if(offerLines.isNotEmpty){
                        for(var i=0;i<offerLines.length;i++){
                          for(var a in offerLines[i].variants??[])
                            list1.add(a.variantIdd);

                        }
                      }
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
                      print("anaghaaaaaaaaaaaa"+offerLines.toString());
                    if(offerLines.isNotEmpty){
                      for(var i=0;i<offerLines.length-1;i++){
                        for(var a in offerLines[i].variants??[])
                          list1.add(a.variantIdd);

                      }
                    }


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
    BlocListener<PromotionImageCubit, PromotionImageState>(
      listener: (context, state) {
        print("postssssssss" + state.toString());
        state.maybeWhen(orElse: () {
          // context.
        }, error: () {
          context.showSnackBarError(Variable.errorMessege);
        }, success: (data) {
          if (data.data1) {
            // imageController.text = data.data2.toString();
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

            context.read<PromotionDiscountVerticalListCubit>().getPromotionDiscountVerticalList();

          } else {
            context.showSnackBarError(data.data2);
            print(data.data1);
          }
          ;
        });
      },
    ),
    BlocListener<ReadPromotionDiscountCubit, ReadPromotionDiscountState>(
      listener: (context, state) {
        print("state++++++++++++++++++++++++++++++++");
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error");
            },
            success: (data) {
              setState(() {
                print("taskssss"+data.toString());

                titleController.text=data.title??"";
                offerPeriodNameController.text=data.offerPeriodName??"";
                offerApplyingTypeController.text=data.offerAppliedTo??"";
                offerApplyingToIdController.text=data.offerAppliedToId??"";
                offerApplyingToCodeController.text=data.offerAppliedToCode??"";
                discountCodeController.text=data.discountCode??"";
                descriptionController.text=data.description??"";
                imageController.text=data.image??"";
                basedOnController.text=data.basedOn??"";
                offerPeriodController.text=data.offerPeriodId.toString()??"";
                offerGroupController.text=data.offerGroupId.toString()??"";
                offerGroupNameController.text=data.offerGroupName??"";
                discountPercentageOrPriceController.text=data.discountPercentageOrPrice.toString()??"";
                isAvailableForAll=data.isAvailableForAll??false;
                isActive=data.isActive??false;



                data.segments != null ? segmentTable =List.from( data?.segments ?? []) : segmentTable = [];
                data.offerLines != null ? offerLines =List.from( data?.offerLines ?? []) : offerLines = [];

              });
            });
      },
    ),

  ],
  child: BlocConsumer<PromotionDiscountVerticalListCubit, PromotionDiscountVerticalListState>(
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
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        if(select){
                          veritiaclid = result[result.length-1].id;
                          context.read<ReadPromotionDiscountCubit>().getPromotionDiscountRead(
                              veritiaclid!);
                        }
                        else{ veritiaclid = result[0].id;
                        context.read<ReadPromotionDiscountCubit>().getPromotionDiscountRead(
                            veritiaclid!);}

                        select = false;
                      }
                      else {
                        print("common");
                        select = true;
                        clear();
                        setState(() {});
                      }


                      setState(() {});
                    });
                  });
            },
  builder: (context, state) {
        return Builder(
          builder: (context) {
            return Scaffold(
                backgroundColor: Pellet.bagroundColor,
                body: IntrinsicHeight(
            child:Row(
                children: [
                  PromotionSaleVerticalList(
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
                      isActive=true;
                      // _myWidgetState.currentState?.clear();
                      // _segmnetState.currentState?.clears();
                      // clear()


                      context.read<ReadPromotionDiscountCubit>().getPromotionDiscountRead(
                          veritiaclid!);




                      setState(() {

                      });
                    });
                  },
                      search: (String va) {
                        print(va);
                        context
                            .read<PromotionDiscountVerticalListCubit>()
                            .searchPromotionList(va);

                        if (va == "") {
                          context
                              .read<PromotionDiscountVerticalListCubit>()
                              .getPromotionDiscountVerticalList();

                        }
                      },
                      result: result,
                      child:   tablePagination(
                            () => context
                            .read<PromotionDiscountVerticalListCubit>()
                            .refresh(),

                        back: list?.previousUrl == null
                            ? null
                            : () {
                          context
                              .read<PromotionDiscountVerticalListCubit>()
                              .previuosslotSectionPageList();
                        },

                        next: list?.nextPageUrl == null
                            ? null
                            : () {
                          // print(data.nextPageUrl);
                          context
                              .read<PromotionDiscountVerticalListCubit>()
                              .nextslotSectionPageList();
                        },
                      )

                  ),
                  Expanded(
                    child: SingleChildScrollView(
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
                                    clear();
                                    isActive=true;

                                    // clear();
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
                          SizedBox(height: height*.06,),
                          SegmentDisCountGrowableTable(
                              key: discountSegmnetState,
                              table: segmentTable,

                              updation: tableAssign),
                          SizedBox(height: height*.04,),
                          PromotionDiscountStableTable(
                            isActive: isActive,
                            select: select,
                            activeChange:activeChange,
                            offerPeriodName: offerPeriodNameController,
                            offerPeriod: offerPeriodController,
                            offerGroupName: offerGroupNameController,
                            title: titleController,
                            offerApplyingType: offerApplyingTypeController,
                            offerApplyingTo: offerApplyingToNameController,
                            description: descriptionController,
                            image: imageController,
                            basedOn: basedOnController,
                            discountPercenagePrice: discountPercentageOrPriceController,
                            isAvailableforAll: isAvailableForAll,
                            availableCustomerGroup: availableCustomerGroupController,
                            overridePriority: overidePriority,
                            discountCode: discountCodeController,
                            offerApplyingCode: offerApplyingToCodeController,
                            offerApplyingId: offerApplyingToIdController,
                           offerGroup: offerGroupController,

                          ),
                          SizedBox(height: height*.04,),
                          DiscountBottomGrowableTable(
                            updation:bottomTableAssign ,
                            segmentList: segmentTable,
                            key:bottomTableState ,
                          ),

                          SizedBox(height: 50,),
                          SaveUpdateResponsiveButton(
                            label:  select ? "SAVE":"UPDATE",
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

                                      context
                                          .read<DeleteOfferPeriodCubit>()
                                          .deleteOfferPeriod(veritiaclid,type:"4"
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
                              var offerLines1=[
                                for(var em in offerLines)
                                  if(em.isActive==true)
                                    em
                              ];
                              PromotionDiscountCreationModel model=PromotionDiscountCreationModel(
                                isActive: isActive,
                                title: titleController.text,
                                inventoryId: Variable.inventory_ID,
                                description: descriptionController.text,
                                image:select?Variable.img1!=null? Variable.img1.toString():null:imageController.text,
                                discountPercentageOrPrice: double.tryParse(discountPercentageOrPriceController.text),
                                basedOn: basedOnController.text,
                                offerPeriodId:
                                // 1,
                                int.tryParse(offerPeriodController.text),
                                offerGroupId: int.tryParse(offerGroupController.text),
                                offerAppliedTo: offerApplyingTypeController.text,
                                offerAppliedToId:int.tryParse( offerApplyingToIdController.text),
                                offerAppliedToCode: offerApplyingToCodeController.text,
                                isAvailableFor: isAvailableForAll,
                                createdBy: Variable.created_by,
                                segments:select?segmentTable1: segmentTable,
                                availableCustomerGroups: [],
                                offerLines: select?offerLines1:offerLines,

                              );
                              print(model);

                              select? context.read<CreationPromotionDiscountCubit>().postCreatePromtionDiscount(model): context.read<CreationPromotionDiscountCubit>().getPromotionDiscountPatch(veritiaclid,model);




                            },
                          ),







                        ],
                      ),

                    ),

                  )

                ]
            )
            ));
          }
        );
  },
),
),
);


  }
}
//