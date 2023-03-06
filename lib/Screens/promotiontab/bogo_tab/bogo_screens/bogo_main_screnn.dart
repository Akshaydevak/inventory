import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/promotiontab/bogo_tab/bogo_screens/bogo_segment_screen.dart';
import 'package:inventory/Screens/promotiontab/bogo_tab/bogo_screens/bogo_stable_table.dart';
import 'package:inventory/Screens/promotiontab/bogo_tab/bogo_screens/bogo_variantScreen.dart';
import 'package:inventory/Screens/promotiontab/bogo_tab/cubit/bogo_verticallist/bogo_vertical_list_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/cubits/delete_promotion/delete_offer_period_cubit.dart';
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
  TextEditingController maximumCountController=TextEditingController();
  TextEditingController availableCustomerGroupController=TextEditingController();

  bool isActive=true;
  bool select=false;
  bool isAvailbaleForAll=true;
  int? veritiaclid;
  List<Segment> segmentTable = [];
  List<VariantModel> variantTable=[];
  var list;
  TextEditingController itemsearch = TextEditingController();
  int selectedVertical=0;
  List<OfferPeriodList> result = [];
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
  tableAssign(List<Segment> table1) {
    print("ethito");
    setState(() {
      segmentTable = List.from(table1);
      // _myWidgetState.currentState?.clear();
      // variantTable.clear();
      // saleApplyingCodeController.clear();
      // saleApplyingIdController.clear();
      // saleApplyingNameController.clear();
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
    return MultiBlocListener(
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

            // context.read<BuyMoreVerticalListCubit>().getBuyMoreVerticalList();

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
                    BogoSegmentGrowableTable(
                        key: _segmnetState,
                        table: segmentTable,
                        updation: tableAssign),
                    SizedBox(height: height*.04,),
                    PromotionBogoStableTable(
                      isActive: isActive,
                      select: select,
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
                      variantTableDatsClear: (){},
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
);
  }
}
