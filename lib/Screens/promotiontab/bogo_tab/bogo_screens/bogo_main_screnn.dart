import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/promotiontab/bogo_tab/bogo_screens/bogo_segment_screen.dart';
import 'package:inventory/Screens/promotiontab/bogo_tab/bogo_screens/bogo_stable_table.dart';
import 'package:inventory/Screens/promotiontab/bogo_tab/bogo_screens/bogo_variantScreen.dart';
import 'package:inventory/Screens/promotiontab/bogo_tab/cubit/bogo_read/bogo_read_cubit.dart';
import 'package:inventory/Screens/promotiontab/bogo_tab/cubit/bogo_verticallist/bogo_vertical_list_cubit.dart';
import 'package:inventory/Screens/promotiontab/bogo_tab/cubit/create_bogo_cubit.dart';
import 'package:inventory/Screens/promotiontab/bogo_tab/model/bogo_creation_model.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/Deacivate/promotion_sale_deactivate_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/delete_promotion/delete_offer_period_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/promotionimage/promotion_image_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';

class PromotionBogoMnainScreen extends StatefulWidget {
  const PromotionBogoMnainScreen({Key? key}) : super(key: key);

  @override
  State<PromotionBogoMnainScreen> createState() => _PromotionBogoMnainScreenState();
}

class _PromotionBogoMnainScreenState extends State<PromotionBogoMnainScreen> {
  final GlobalKey<BogoSegmentGrowableTableState> _segmnetState = GlobalKey<BogoSegmentGrowableTableState>();
  final GlobalKey<BogoVariantGrowableTableState> _variantState = GlobalKey<BogoVariantGrowableTableState>();
  TextEditingController bogoCodeController=TextEditingController();
  TextEditingController offerPeriodIdController=TextEditingController();
  TextEditingController offerPeriodNameController=TextEditingController();
  TextEditingController titleController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();
  TextEditingController bogoApplyingPlaceTypeController=TextEditingController();
  TextEditingController bogoApplyingPlaceNameController=TextEditingController();
  TextEditingController bogoApplyingPlaceCodeController=TextEditingController();
  TextEditingController bogoApplyingPlaceIdController=TextEditingController();
  TextEditingController buyCountController=TextEditingController();
  TextEditingController getCountController=TextEditingController();
  TextEditingController bogoApplyingOnController=TextEditingController();
  TextEditingController bogoApplyingNameController=TextEditingController();
  TextEditingController bogoApplyingNameIdController=TextEditingController();
  TextEditingController bogoApplyingNameCodeController=TextEditingController();
  TextEditingController imageController=TextEditingController();
  TextEditingController imageNameController=TextEditingController();
  TextEditingController maximumCountController=TextEditingController();
  TextEditingController availableCustomerGroupController=TextEditingController();

  bool isActive=true;
  bool isSegmentClear=false;
  bool select=false;
  bool isAvailbaleForAll=true;
  int? veritiaclid;
  List<Segment> segmentTable = [];
  List<VariantModel> variantTable=[];
  List<VariantModel> variantTable2=[];
  var list;
  TextEditingController itemsearch = TextEditingController();
  int selectedVertical=0;
  List<OfferPeriodList> result = [];

  clear(){

    setState(() {


    titleController.text="";
    bogoApplyingPlaceTypeController.text="";
    bogoApplyingPlaceIdController.text="";
    bogoApplyingPlaceCodeController.text="";
    bogoApplyingNameController.text="";
    bogoCodeController.text="";
    descriptionController.text="";
    imageController.text="";
    imageNameController.text="";
    offerPeriodIdController.text="";
    getCountController.text="";
    buyCountController.text="";
    buyCountController.text="";
    offerPeriodNameController.text="";
    maximumCountController.text="";
    bogoApplyingOnController.text="";
    bogoApplyingNameCodeController.text="";
    bogoApplyingNameIdController.text="";
    variantTable.clear();
    _variantState?.currentState!.clear();
    _segmnetState?.currentState!.clears();
    segmentTable.clear();
    isAvailbaleForAll=true;
    isActive=false;
    isSegmentClear=false;
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
    print("ssssssssssssssssssssssssssssssssssssss");
    print(type);
    print(val);


    switch(type) {
      case 1 :
        isAvailbaleForAll = val;

        break;

      case 2 :
        isActive = val;

        break;

    }
    setState(() {

    });
  }
  variantTableDatsClear(){
    setState(() {
      variantTable.clear();
      _variantState.currentState?.clear();
      segmentCleartymVariantAdd();
    });

  }
  tableAssign(List<Segment> table1) {
    print("ethito");
    setState(() {
      segmentTable = List.from(table1);
      _variantState.currentState?.clear();
      variantTable.clear();
      bogoApplyingNameController.clear();
      bogoApplyingNameCodeController.clear();
      bogoApplyingNameIdController.clear();
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
  variantTableAssign(List<VariantModel> table1) {
    print("ethito");

    setState(() {
      variantTable = List.from(table1);

    });

  }
  @override
  void initState() {
    context.read<BogoVerticalListCubit>().getBogoVerticalList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return MultiBlocProvider(
  providers: [
    BlocProvider(
  create: (context) => CreateBogoCubit(),
),
    BlocProvider(
  create: (context) => BogoReadCubit(),
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
    BlocListener<BogoReadCubit, BogoReadState>(
      listener: (context, state) {
        print("state++++++++++++++++++++++++++++++++");
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error");
            },
            success: (data) {
              setState(() {


                titleController.text=data.name??"";
                bogoApplyingPlaceTypeController.text=data.offerAppliedTo??"";
                bogoApplyingPlaceIdController.text=data.offerAppliedToId??"";
                bogoApplyingPlaceCodeController.text=data.offerAppliedToCode??"";
                bogoCodeController.text=data.bogoCode??"";
                descriptionController.text=data.description??"";
                bogoApplyingNameController.text=data.bogoApplyingOnName??"";


                imageController.text=data?.image??"";
                imageNameController.text=data.image.toString()??"";
                offerPeriodIdController.text=data?.offerPeriodId.toString()??"";
                offerPeriodNameController.text=data?.offerPeriodName.toString()??"";
                getCountController.text=data?.getCount.toString()??"";
                buyCountController.text=data?.buyCount.toString()??"";
                buyCountController.text=data?.buyCount.toString()??"";
                maximumCountController.text=data?.maximumCount.toString()??"";
                bogoApplyingOnController.text=data?.bogoApplyingOn??"";
                bogoApplyingNameCodeController.text=data?.bogoApplyingOnCode??"";
                bogoApplyingNameIdController.text=data?.bogoApplyingOnId.toString()??"";
                isAvailbaleForAll=data.isAvailableForAll??false;
                isActive=data.isActive??false;
                data.segments != null ? segmentTable =List.from( data?.segments ?? []) : segmentTable = [];
                data.lines != null ? variantTable =List.from( data?.lines ?? []) : variantTable = [];
                data.lines != null ? variantTable2 =List.from( data?.lines ?? []) : variantTable2 = [];


              });
            });
      },
    ),
    BlocListener<CreateBogoCubit, CreateBogoState>(
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
               select? context.read<BogoVerticalListCubit>().getBogoVerticalList(): context.read<BogoReadCubit>().getPromotionBogoRead(veritiaclid!);
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

            context.read<BogoVerticalListCubit>().getBogoVerticalList();

          } else {
            context.showSnackBarError(data.data2);
            print(data.data1);
          }
          ;
        });
      },
    ),
  ],
  child: BlocConsumer<BogoVerticalListCubit, BogoVerticalListState>(
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
              context.read<BogoReadCubit>().getPromotionBogoRead(veritiaclid!);
              }
              else{
                veritiaclid=result[0].id;
                context.read<BogoReadCubit>().getPromotionBogoRead(veritiaclid!);
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


                    context.read<BogoReadCubit>().getPromotionBogoRead(veritiaclid!);




                    setState(() {

                    });
                  });
                },
                    search: (String va) {
                      print(va);
                      context
                          .read<BogoVerticalListCubit>()
                          .searchBogoVerticalList(va);

                      if (va == "") {
                        context
                            .read<BogoVerticalListCubit>()
                            .getBogoVerticalList();

                      }
                    },
                    result: result,
                    child:   tablePagination(
                          () => context
                          .read<BogoVerticalListCubit>()
                          .refresh(),
                      back: list?.previousUrl == null
                          ? null
                          : () {
                        context
                            .read<BogoVerticalListCubit>()
                            .previuosslotSectionPageList();
                      },
                      next: list?.nextPageUrl == null
                          ? null
                          : () {
                        // print(data.nextPageUrl);
                        context
                            .read<BogoVerticalListCubit>()
                            .nextslotSectionPageList();
                      },
                    )

                ),
                Expanded(child: SingleChildScrollView(child: Column(
                  children: [
                    SizedBox(height: height*.06,),
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
                    BogoSegmentGrowableTable(
                      select:select,
                        key: _segmnetState,
                        table: segmentTable,
                        updation: tableAssign),
                    SizedBox(height: height*.04,),
                    PromotionBogoStableTable(
                      isActive: isActive,
                      select: select,
                      imageName: imageNameController,
                      isAvailableForAll: isAvailbaleForAll,
                      title: titleController,
                      offerPeriodName: offerPeriodNameController,
                      offerPeriod: offerPeriodIdController,
                      description: descriptionController,
                      availableCustomer: availableCustomerGroupController,
                      bogoApplyingName: bogoApplyingNameController,
                      bogoApplyingNameCode: bogoApplyingNameCodeController,
                      bogoApplyingNameId: bogoApplyingNameIdController,
                      bogoApplyingOn: bogoApplyingOnController,
                      bogoApplyingPlaceCode: bogoApplyingPlaceCodeController,
                      bogoApplyingPlaceId: bogoApplyingPlaceIdController,
                      bogoApplyingPlaceName: bogoApplyingPlaceNameController,
                      bogoApplyingPlaceType: bogoApplyingPlaceTypeController,
                      bogoCode: bogoCodeController,
                      byCount: buyCountController,
                       geCount: getCountController,
                      iamge: imageController,
                      maximumCount: maximumCountController,
                      table: segmentTable,
                      variantTableDatsClear: variantTableDatsClear,
                      activeChange: activeChange,


                    ),
                    SizedBox(height: height*.04,),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextWidget(text: "BOGO Lines"),
                      ],
                    ),
                    SizedBox(height: height*.02,),
                    BogoVariantGrowableTable(
                      segmentList: segmentTable,
                      key: _variantState,
                      applyingType: bogoApplyingOnController.text,
                      applyingTypeCode: bogoApplyingNameCodeController.text,
                      updation: variantTableAssign,
                      select:select

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
                                    .deleteOfferPeriod(veritiaclid,type:"6"
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
                                  variantId: variantTable[i].id,
                                  variantCode: variantTable[i].variantCode,
                                  barcode: variantTable[i].barcode.toString()

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





                        PromotionBogoCreationModel model=PromotionBogoCreationModel(
                          lines: select?lines1:variantTable,
                          inventoryId: Variable.inventory_ID,
                          segments:segmentTable1,
                          offerAppliedTo: bogoApplyingPlaceTypeController.text,
                          offerAppliedToId: bogoApplyingPlaceIdController.text,
                          offerAppliedToCode: bogoApplyingPlaceCodeController.text,
                          name: titleController.text,
                          description: descriptionController.text,
                          getCount: int.tryParse(getCountController.text),
                          buyCount: int.tryParse(buyCountController.text),
                          maximumCount: int.tryParse(maximumCountController.text),
                          isAvailableForAll: isAvailbaleForAll,
                          availableCustomerGroups:[],
                          image: imageController.text,
                          bogoApplyingOn: bogoApplyingOnController.text,
                          bogoApplyingOnName: bogoApplyingNameController.text,
                          bogoApplyingOnCode: bogoApplyingNameCodeController.text,
                          createdBy: Variable.created_by,
                          bogoApplyingOnId:int.tryParse( bogoApplyingNameIdController.text),
                          isActive: true,
                          offerPeriodId:int.tryParse( offerPeriodIdController.text),
                        );
                        print(model);
                       select? context.read<CreateBogoCubit>().postPromtionBogo(model):context.read<CreateBogoCubit>().bogoPromotionPatch(veritiaclid,model);
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
),
),
);
  }
}
