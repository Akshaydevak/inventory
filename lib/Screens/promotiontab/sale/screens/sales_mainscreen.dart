import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/imagepost/imagepost_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/Deacivate/promotion_sale_deactivate_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/chennellist/channel_list_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/delete_promotion/delete_offer_period_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/promotionimage/promotion_image_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/saleread/promtion_sale_read_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/salevertical_list/promotionsale_vertical_list_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/Screens/promotiontab/sale/screens/productliststable_tsablescreen.dart';
import 'package:inventory/Screens/promotiontab/sale/screens/segmenttable.dart';
import 'package:inventory/Screens/promotiontab/sale/screens/stable_expandedtables.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/model/purchaseorder.dart';

import '../cubits/createpromotionsale/create_promotion_sale_cubit.dart';

class  SalesMainScreen extends StatefulWidget {
  @override
  _SalesMainScreenState createState() => _SalesMainScreenState();
}

class _SalesMainScreenState extends State< SalesMainScreen> {
  TextEditingController  saleCodeController=TextEditingController();
  TextEditingController  offerPeriodController=TextEditingController();
  TextEditingController  offerPeriodNameController=TextEditingController();
  TextEditingController  offerGroupNameController=TextEditingController();
  TextEditingController  offerGroupController=TextEditingController();
  TextEditingController  saleApplyingPlaceController=TextEditingController();
  TextEditingController  saleApplyingPlaceNameController=TextEditingController();
  TextEditingController  saleApplyingPlaceIdController=TextEditingController();
  TextEditingController  saleApplyingPlaceCodedController=TextEditingController();
  TextEditingController  titleController=TextEditingController();
  TextEditingController  descriptionController=TextEditingController();
  TextEditingController  imageController=TextEditingController();
  TextEditingController  basedOnController=TextEditingController();
  TextEditingController  discountPercentagePriceController=TextEditingController();
  TextEditingController  totalPricePriceController=TextEditingController();
  TextEditingController  saleApplyingOnController=TextEditingController();
  TextEditingController  saleApplyingNameController=TextEditingController();
  TextEditingController  saleApplyingCodeController=TextEditingController();
  TextEditingController  saleApplyingIdController=TextEditingController();
  TextEditingController  maximumCountController=TextEditingController();
  TextEditingController  availableCustomerGroupController=TextEditingController();
  TextEditingController  priorityController=TextEditingController();
  bool isAvailableForAll=true;
  bool overidePriority=false;
  bool isAdminBased=false;
  bool isActive=false;
  bool isSegmentClear=false;
  final GlobalKey<ProductListGrowableTableState> _myWidgetState = GlobalKey<ProductListGrowableTableState>();
  final GlobalKey<SegmentGrowableTableState> _segmnetState = GlobalKey<SegmentGrowableTableState>();

  var list;
  int? veritiaclid=0;
  bool select=false;
  List<salesOrderTypeModel> result = [];
  List<Segment> segmentTable = [];
  List<SaleLines> variantTable = [];
  List<SaleLines> variantTable2 = [];
  tableAssign(List<Segment> table1) {
    print("ethito");
    setState(() {
      segmentTable = List.from(table1);
      _myWidgetState.currentState?.clear();
      variantTable.clear();
      saleApplyingCodeController.clear();
      saleApplyingIdController.clear();
      saleApplyingNameController.clear();
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
 variantTableAssign(List<SaleLines> table1) {
    print("ethito");

    setState(() {
      variantTable = List.from(table1);

    });

  }
  variantTableDatsClear(){
    setState(() {
      variantTable.clear();
      _myWidgetState.currentState?.clear();
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
        case 3 :
        isAdminBased = val;

        break;
    }
    setState(() {

    });
  }
  clear(){
    saleApplyingIdController.clear();
  saleApplyingCodeController.clear();
   saleApplyingCodeController.clear() ;
     saleApplyingIdController.clear();
     offerPeriodNameController.clear();
     offerGroupNameController.clear();


    segmentTable.clear();
    priorityController.clear();
    descriptionController.clear();
    imageController.clear();
    isSegmentClear=false;
     totalPricePriceController.clear();
    availableCustomerGroupController.clear();
     basedOnController.clear();
   discountPercentagePriceController.clear();
    isAdminBased=false;
     isAvailableForAll=false;
    maximumCountController.clear();
 offerGroupController.clear();
   offerPeriodController.clear();
     overidePriority=false;
    saleApplyingNameController.clear();
  saleApplyingOnController.clear();
  saleApplyingPlaceController.clear();
     saleApplyingPlaceNameController.clear();
     saleCodeController.clear();
   titleController.clear();
    variantTable.clear();

  }
  TextEditingController itemsearch = TextEditingController();
  int selectedVertical=0;
  @override
  void initState() {
    context.read<PromotionsaleVerticalListCubit>().getPromotionSaleVerticalListt();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return MultiBlocProvider(
  providers: [
    BlocProvider(
  create: (context) => CreatePromotionSaleCubit(),
),    BlocProvider(
  create: (context) => PromtionSaleReadCubit(),
),
    BlocProvider(
  create: (context) => PromotionSaleDeactivateCubit(),
),

  ],
  child: MultiBlocListener(
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

            context.read<PromotionsaleVerticalListCubit>().getPromotionSaleVerticalListt();;

          } else {
            context.showSnackBarError(data.data2);
            print(data.data1);
          }
          ;
        });
      },
    ),
    BlocListener<PromtionSaleReadCubit, PromtionSaleReadState>(
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
                saleCodeController.text=data?.saleCode??"";
                titleController.text=data.name??"";
                descriptionController.text=data.description??"";
                imageController.text=data.image??"";
                basedOnController.text=data.basedOn??"";
                saleApplyingPlaceController.text=data.salesApplyingPlace??"";
                saleApplyingPlaceIdController.text=data.salesApplyingPlaceId?.toString()??"";
                saleApplyingPlaceCodedController.text=data.salesApplyingPlaceCode?.toString()??"";
                saleApplyingPlaceNameController.text=data.salesApplyingPlaceName?.toString()??"";
                saleApplyingOnController.text=data.salesApplyingOn??"";
                saleApplyingNameController.text=data.salesApplyingOnName??"";
                saleApplyingCodeController.text=data.salesApplyingOnCode??"";
                totalPricePriceController.text=data.totalPrice?.toString()??"";
                maximumCountController.text=data.maximumCount?.toString()??"";
                offerPeriodController.text=data.offerPriodId?.toString()??"";
                offerGroupController.text=data.offerGroupId?.toString()??"";
                saleApplyingIdController.text=data.salesApplyingOnId?.toString()??"";
                discountPercentagePriceController.text=data.discountPercentage?.toString()??"";
                isAvailableForAll=data.isAvailableForAll??false;
                isAdminBased=data.isAdminBased??false;
                isActive=data.isActive??false;
                data.segments != null ? segmentTable =List.from( data?.segments ?? []) : segmentTable = [];
                data.saleLines != null ? variantTable =List.from( data?.saleLines ?? []) : variantTable = [];

              });
            });
      },
    ),
    BlocListener<CreatePromotionSaleCubit, CreatePromotionSaleState>(
      listener: (context, state) {
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
                // context
                //     .read<VertiacalCubit>()
                //     .getGeneralVertical();
                // currentStock.clear();
                context.read<PromotionsaleVerticalListCubit>().getPromotionSaleVerticalListt();
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


    BlocListener<CreatePromotionSaleCubit, CreatePromotionSaleState>(
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
                // context
                //     .read<VertiacalCubit>()
                //     .getGeneralVertical();
                select
                    ?  context.read<PromotionsaleVerticalListCubit>().getPromotionSaleVerticalListt()
                    : context.read<PromtionSaleReadCubit>().getPromotionSaleRead(veritiaclid!);
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
                    message:data.data2,
                    onLeftPress: (){
                      print("akskskskks");
                      List<int?> list1=[];
                      for(var a in variantTable)
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
  ],
  child: BlocConsumer<PromotionsaleVerticalListCubit, PromotionsaleVerticalListState>(
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


              if(select){
                veritiaclid=result[result.length-1].id;
                context.read<PromtionSaleReadCubit>().getPromotionSaleRead(veritiaclid!);
              }else{
                veritiaclid=result[0].id;
                context.read<PromtionSaleReadCubit>().getPromotionSaleRead(veritiaclid!);
              }



              select=false;
            }
            else{
              print("common");
              select=true;
              clear();
              setState(() {
              });

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    // clear();
                    select = false;
                    _myWidgetState.currentState?.clear();
                    _segmnetState.currentState?.clears();
                    clear();
                    context.read<PromtionSaleReadCubit>().getPromotionSaleRead(veritiaclid!);
                    setState(() {
                    });
                  });
                },
                    search: (String va) {
                      print(va);
                      context
                          .read<PromotionsaleVerticalListCubit>().searchPromotionList(va);

                      if (va == "") {
                        context
                            .read<PromotionsaleVerticalListCubit>().getPromotionSaleVerticalListt();}
                    },
                    result: result,
                 child:   tablePagination(
                          () => context
                          .read<PromotionsaleVerticalListCubit>()
                          .refresh(),
                      back: list?.previousUrl == null
                          ? null
                          : () {
                        context
                            .read<PromotionsaleVerticalListCubit>()
                            .previuosslotSectionPageList();
                      },
                      next: list?.nextPageUrl == null
                          ? null
                          : () {
                        // print(data.nextPageUrl);
                        context
                            .read<PromotionsaleVerticalListCubit>()
                            .nextslotSectionPageList();
                      },
                    )

                ),
                Expanded(child: SingleChildScrollView(
                  child: Column(children: [
                    // SizedBox(height: height*.06,),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.end,
                      children: [
                        TextButtonLarge(
                          // marginCheck:true,

                          onPress: () {
                            setState(() {
                              select = true;

                              _myWidgetState.currentState?.clear();
                              _segmnetState.currentState?.clears();
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
                    SizedBox(height: height*.06,),
                    SegmentGrowableTable(
                        key: _segmnetState,
                        table: segmentTable,
                        updation: tableAssign),
                    SizedBox(height: height*.04,),
                    PromotionSaleStableTable(
                      isActive: isActive,
                      variantTableDatsClear:variantTableDatsClear,
                      select: select,
                      offerGroupName: offerGroupNameController,
                      offerPeriodName: offerPeriodNameController,
                      saleApplyingPlaceId: saleApplyingPlaceIdController,
                      saleApplyingPlaceCode: saleApplyingPlaceCodedController,
                      saleApplyingCode:saleApplyingCodeController ,
                      saleApplyingId: saleApplyingIdController,
                      activeChange:activeChange,
                      table:segmentTable,
                      priority: priorityController,
                      description: descriptionController,
                      image: imageController,
                       totalprice: totalPricePriceController,
                      availableCustomerGroup: availableCustomerGroupController,
                      basedOn: basedOnController,
                      discountPercenagePrice: discountPercentagePriceController,
                      isAdminBased: isAdminBased,
                      isAvailableforAll: isAvailableForAll,
                      maximumCount: maximumCountController,
                      offerGroup: offerGroupController,
                      offerPeriod: offerPeriodController,
                      overridePriority: overidePriority,
                      saleApplyingName: saleApplyingNameController,
                      saleApplyingOn: saleApplyingOnController,
                      saleApplyingPlace: saleApplyingPlaceController,
                      saleApplyingPlaceName: saleApplyingPlaceNameController,
                      salesCode: saleCodeController,
                      title: titleController,
                    ),
                    SizedBox(height: height*.04,),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextWidget(text: "Based On Batch"),
                      ],
                    ),
                    SizedBox(height: height*.02,),
                    ProductListGrowableTable(
                      key:_myWidgetState,
                      segmentList: segmentTable,
                      applyingTypeCode: saleApplyingCodeController?.text??"",
                      applyingType: saleApplyingOnController?.text??"",
                      updation: variantTableAssign,
                      select:select,
                    ),
                    SizedBox(height: 50,),
                    SaveUpdateResponsiveButton(
                      label:  select ? "SAVE":"UPDATE",
                      discardFunction: (){
                        // showDailogPopUp(
                        //     context,
                        //     LogoutPopup(
                        //       message: "Do you want to delete the order",
                        //       // table:table,
                        //       // clear:clear(),
                        //       // verticalId: veritiaclid,
                        //       onPressed: () {
                        //         print("akshay");
                        //         Navigator.pop(context);
                        //
                        //         context
                        //             .read<DeleteOfferPeriodCubit>()
                        //             .deleteOfferPeriod(veritiaclid,type:"3"
                        //             );
                        //         // context
                        //         //     .read<
                        //         //     SalesgeneraldeleteCubit>()
                        //         //     .salesGeneralDelete(
                        //         //     veritiaclid);
                        //       },
                        //     ));


                        showDailogPopUp(
                            context,
                            LogoutPopup(
                              onLeftText: "View All Products",
                              onRightText: "Deactivate",
                              message: "Sorry,some of products  are already include in offer sale/discount",
                              onLeftPress: (){
                                List<int?> list1=[];
                                for(var a in variantTable)
                                  list1.add(a.variantId);

                                context.read<PromotionSaleDeactivateCubit>().getVariantDeactivate(2,"sale",list1);
                                showDailogPopUp(
                                  context,
                                  BlocProvider(
                                    create: (context) => PromotionSaleDeactivateCubit()..getVariantDeactivate(1,"sale",list1),
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
                                  list1.add(a.variantId);

                                context.read<PromotionSaleDeactivateCubit>().getVariantDeactivate(2,"sale",list1);
                                showDailogPopUp(
                                  context,
                                  BlocProvider(
  create: (context) => PromotionSaleDeactivateCubit()..getVariantDeactivate(2,"sale",list1),
  child: ConfigurePopup(

                                    // listAssign: listAssign,
                                    type: "VariantPromotionCreatativePopup",
                                  ),
),
                                );


                              },


                            ));
                      },
                      saveFunction: (){
                        var variantTable1=[
                          for(var em in variantTable)
                            if(em.isActive==true)
                              em
                        ];
                        var segmentTable1=[
                          for(var em in segmentTable)
                            if(em.isActive==true)
                              em
                        ];
                        if(isSegmentClear==true){
                          print("post case");
                          if(select==false){
                            variantTable.addAll(variantTable2);
                          }



                        }
                        PromotionSaleCreateModel model=PromotionSaleCreateModel(
                          name: titleController?.text??null,
                          offerPeriodId:
                          // 1,
                          int.tryParse(offerPeriodController.text),
                          offerGroupId: int.tryParse(offerGroupController.text),
                          basedOn: basedOnController?.text??null,
                          discountPercentageOrPrice:int.tryParse( discountPercentagePriceController.text),
                          inventoryId: Variable.inventory_ID,
                          totalPrice: int.tryParse(totalPricePriceController.text),
                          salesApplyingOn: saleApplyingOnController?.text??null,
                          salesApplyingOnName: saleApplyingNameController?.text??null,
                          salesApplyingOnCode: saleApplyingCodeController?.text??null,
                          salesApplyingOnId: int.tryParse(saleApplyingIdController.text),
                          image:
                          // null,
                          imageController.text,
                          isAvailableForAll: isAvailableForAll,
                          description: descriptionController?.text??null,
                          isAdminBased: isAdminBased,
                          maximumCount:int.tryParse( maximumCountController.text),
                          isActive: isActive,
                          createdBy: Variable.created_by,
                          saleLines:select?variantTable1: variantTable,
                          segments: segmentTable1??[],
                          availableCustomerGroup: "aaa",
                          salesApplyingPlace:saleApplyingPlaceController.text,
                          salesApplyingPlaceCode: saleApplyingPlaceCodedController.text,
                          salesApplyingPlaceName: saleApplyingPlaceNameController.text,
                          offerAppliedToCode:saleApplyingPlaceCodedController.text,
                          offerAppliedToType: saleApplyingPlaceController.text

                        );
                        print(model);
                      select?  context.read<CreatePromotionSaleCubit>().postPromotionSale(model):
                      context.read<CreatePromotionSaleCubit>().getPromotionSalePatch(veritiaclid,model);
                      isSegmentClear=false;




                      },
                    ),

                  ],),
                ))

              ],
            ),
          ),
        );
      }
    );
  },
),
),
);
  }
}
