import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/variant/stock/cubits/stockpost/stockpost_cubit.dart';
import 'package:inventory/Screens/variant/stock/cubits/stockread/stockread_cubit.dart';
import 'package:inventory/Screens/variant/stock/cubits/stocktableread/stocktableread_cubit.dart';
import 'package:inventory/Screens/variant/stock/models/stock_read.dart';
import 'package:inventory/Screens/variant/stock/models/stocktableread.dart';
import 'package:inventory/Screens/variant/stock/screens/stock_bottom_table.dart';
import 'package:inventory/Screens/variant/stock/screens/stock_stableTable.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/listvraiant/listvraiant_cubit.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/Navigationprovider.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:provider/provider.dart';

import '../../../../commonWidget/Textwidget.dart';

class StockScreen extends StatefulWidget {
  @override
  _StockScreenState createState() => _StockScreenState();
}

class _StockScreenState extends State<StockScreen> {
  TextEditingController variantCodeController = TextEditingController();
  TextEditingController stockCodeController = TextEditingController();
  TextEditingController salesUomController = TextEditingController();
  TextEditingController salesUomNameController = TextEditingController();
  TextEditingController baseUomController = TextEditingController();
  TextEditingController baseUomName = TextEditingController();
  TextEditingController purchaseUomController = TextEditingController();
  TextEditingController purchaseUomNameController = TextEditingController();
  TextEditingController safetyStockController = TextEditingController();
  TextEditingController totalQuantityController = TextEditingController();
  TextEditingController salesStockQuantityController = TextEditingController();
  TextEditingController salesBlockQuantityController = TextEditingController();
  TextEditingController purchaseBlockController = TextEditingController();
  TextEditingController reorderPointQuantityController = TextEditingController();
  TextEditingController reorderQuantityController = TextEditingController();
  TextEditingController cancelledQuantityController = TextEditingController();
  TextEditingController reservedQuantityController = TextEditingController();
  TextEditingController damagedQuantityController = TextEditingController();
  TextEditingController returnedQuantityController = TextEditingController();
  TextEditingController replaceMentQuantityController = TextEditingController();
  TextEditingController virtualStockTypeController = TextEditingController();
  TextEditingController virtualStockController = TextEditingController();
  TextEditingController addVirtualStockController = TextEditingController();
  TextEditingController minMaxRatioController = TextEditingController();
  TextEditingController maximumQuantityController = TextEditingController();
  TextEditingController minimumQuantityController = TextEditingController();
  TextEditingController channelTypeController = TextEditingController();
  NavigationProvider commonProvider = NavigationProvider();
  StockData? stockData=StockData();
  bool stockwarning = false;
  bool check = false;
  bool suffixIconCheck = false;
  int? variantId  ;
  bool salesBlock = false;
  bool purchaseBlock = false;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  int selectedVertical = 0;
  var list1;
  int? veritiaclid = 0;
  List<StockTableReadModel> data=[];
  bool addVirtualLimit=false;
  addCheckLimit(bool val){
    setState(() {
      addVirtualLimit=val;
    });

  }
  clear(){
    stockData=null;
    variantCodeController.text="";
    variantId=0;
    stockCodeController.text="";
    salesUomController.text="";
    salesUomNameController.text="";
    baseUomController.text="";
    baseUomName.text="";
    purchaseUomController.text="";
    purchaseUomNameController.text="";
    salesStockQuantityController.text="";
    channelTypeController.text="";
    salesBlockQuantityController.text="";
    purchaseBlockController.text="";
    cancelledQuantityController.text="";
    reservedQuantityController.text="";
    reorderPointQuantityController.text="";
    reorderQuantityController.text="";
    damagedQuantityController.text="";
    returnedQuantityController.text="";
    minimumQuantityController.text="";
    maximumQuantityController.text="";
    minMaxRatioController.text="";
    totalQuantityController.text="";
    stockwarning=false;
    salesBlock=false;
    purchaseBlock=false;
    virtualStockTypeController.text="";
    virtualStockController.text="";
    addVirtualStockController.text="";

  }

  @override
  void initState() {
    context.read<ListvraiantCubit>().getVariantList();
    super.initState();
  }
  ratiooCheck(String value,String type){
    double sum = 0;

    var b = value.split(":");
    for (var a in b) {


      sum = sum + double.parse(a.isEmpty?"0":a);
    }
    if(sum!=10) {
      type=="1"?  context.showSnackBarError("the channel Allocation Ratio is in 10"): context.showSnackBarError("the Min Max Ratio is in 10");
      check=true;
    }else{
      check=false;
    }

  }


  minMaxRatioCalculation(){
    print(minMaxRatioController.text);
    double sum = 0;
    if(minMaxRatioController.text.isNotEmpty){
      var minMax = minMaxRatioController.text.split(":");
      print(minMax);
      if(minMax.length>2){
        context.showSnackBarError("the ratio range is in 2");

      }
      else{
        for (var ratio in minMax) {


          sum = sum + double.parse(ratio.isEmpty?"0":ratio);
        }
        print(sum);
        if(sum!=10) {
          context.showSnackBarError("the Min Max Ratio is in 10");

        }
        else{

          if(totalQuantityController.text.isNotEmpty==true &&totalQuantityController.text!="0" ){

            double? total=double.tryParse(totalQuantityController?.text??"0");
            print(total);
            if(total!=null &&total!=0){
              double? dividedvalue=total/10;
              double? minimum=double.tryParse(minMax[0]);
              double? maximum=double.tryParse(minMax[1]);
              if(minimum!=null && minimum!=0){
                setState(() {
                  minimumQuantityController.text=(dividedvalue*minimum).round().toString();
                });

              }    if(maximum!=null && maximum!=0){
                setState(() {
                  maximumQuantityController.text=(dividedvalue*maximum).round().toString();
                });

              }

            }


          }
          else{
            double? virtual=double.tryParse(virtualStockController?.text??"0");
            double? addVirtual=double.tryParse(addVirtualStockController?.text??"0");
            if(addVirtual==null){
              addVirtual=0;
            }
            if(virtual==null){
              virtual=0;
            }

            print(virtual);
            print(addVirtual);
            double? total=virtual!+addVirtual!;
            print(total);

            if(total!=0 && total!=null){
              double? dividedvalue=total/10;
              double? minimum=double.tryParse(minMax[0]);
              double? maximum=double.tryParse(minMax[1]);
              if(minimum!=null && minimum!=0){
                setState(() {
                  minimumQuantityController.text=(dividedvalue*minimum).round().toString();
                });

              }    if(maximum!=null && maximum!=0){
                setState(() {
                  maximumQuantityController.text=(dividedvalue*maximum).round().toString();
                });

              }

            }

          }
        }



      }

    }


  }
  trueOrFalseChange({String? type, bool val = false}) {
    switch (type) {
      case '1' :
        stockwarning = val;
        setState(() {

        });
        break;

      case '2' :
        salesBlock = val;
        setState(() {

        });
        break;

      case '3' :
        purchaseBlock = val;
        setState(() {

        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size.width;
    commonProvider = Provider.of<NavigationProvider>(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => StockreadCubit(),
        ),
        BlocProvider(
          create: (context) => StocktablereadCubit(),
        ),
        BlocProvider(
          create: (context) => StockpostCubit(),
        ),
      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [
                BlocListener<StockreadCubit, StockreadState>(
                  listener: (context, state) {
                    print("state++++++++++++++++++++++++++++++++");
                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          print("error");
                        },
                        success: (data) {
                          setState(() {
                            print("data.stockData${data.stockData}");
                            stockData=data.stockData;
                            variantCodeController.text=stockData?.variantCode??"";
                            variantId=stockData?.variantId;
                            stockCodeController.text=stockData?.stockCode??"";
                            salesUomController.text=stockData?.salesUOM.toString()??"";
                            salesUomNameController.text=stockData?.salesUomName.toString()??"";
                            baseUomController.text=stockData?.baseUom.toString()??"";
                            baseUomName.text=stockData?.baseUomName.toString()??"";
                            purchaseUomController.text=stockData?.purchaseUom.toString()??"";
                            purchaseUomNameController.text=stockData?.purchaseUomName??"";
                            salesStockQuantityController.text=stockData?.salesBlockQuantity.toString()??"";
                            channelTypeController.text=stockData?.channelTypeAllocationRatio.toString()??"";
                            salesBlockQuantityController.text=stockData?.salesBlockQuantity.toString()??"";
                            purchaseBlockController.text=stockData?.purchaseBlockQuantity.toString()??"";
                            cancelledQuantityController.text=stockData?.availablcancelledQuantityeQuantity.toString()??"";
                            reservedQuantityController.text=stockData?.reservedQuantity.toString()??"";
                            reorderPointQuantityController.text=stockData?.reOrderPoint.toString()??"";
                            reorderQuantityController.text=stockData?.reOrderQuantity.toString()??"";
                            damagedQuantityController.text=stockData?.damagedQuantity.toString()??"";
                            returnedQuantityController.text=stockData?.returnQuantity.toString()??"";
                            minimumQuantityController.text=stockData?.minimumQuantity.toString()??"";
                            maximumQuantityController.text=stockData?.maximumQuantity.toString()??"";
                            minMaxRatioController.text=stockData?.minMaxRatio.toString()??"";
                            totalQuantityController.text=stockData?.availableQuantity.toString()??"";
                            stockwarning=stockData?.stockWarning??false;
                            salesBlock=stockData?.salesBlocked??false;
                            purchaseBlock=stockData?.purchaseBlocked??false;
                            virtualStockTypeController.text=stockData?.virtualType.toString()??"";
                            virtualStockController.text=stockData?.virtualStock.toString()??"";
                            addVirtualStockController.text=stockData?.addVirtualStock.toString()??"";

                          });
                        });
                  },
                ),
                BlocListener<StockpostCubit, StockpostState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loading");
                    }, error: () {
                      commonProvider.setLoadingSaveUpdate(false);
                      ;
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      if (data.data1) {
                        context.showSnackBarSuccess(data.data2);



                      } else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      commonProvider.setLoadingSaveUpdate(false);
                      ;
                    });
                  },
                ),


                BlocListener<StocktablereadCubit, StocktablereadState>(
                  listener: (context, state) {
                    print("state++++++++++++++++++++++++++++++++");
                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          print("error");
                        },
                        success: (data) {
                          setState(() {
                            print("aval ethito" + data.toString());
                            data=data;

                            // group=data;


                            // purchaseBlock=data.stockData?.pu??false;
                            // virtualStockTypeController.text=data.stockData?.v.toString()??"";
                            // replaceMentQuantityController.text=data.stockData?.re.toString()??"";

                            // addNew=false;
















                          });





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
                        list1 = list;

                        result = list.data;
                        print("seee" + result.toString());
                        setState(() {
                          if (result.isNotEmpty) {
                            veritiaclid = result[0].id;
                            // Variable.verticalid=result[0].id;
                            // print("Variable.ak"+Variable.verticalid.toString());
                            context.read<StocktablereadCubit>().getStockTableRead(result[0].code);
                            context.read<StockreadCubit>().getStockRead(veritiaclid!);
                          }
                          else {
                           clear();
                            // select=true;
                            setState(() {});
                          }


                          setState(() {});
                        });
                      });
                  // TODO: implement listener
                },
                builder: (context, state) {
                  return Scaffold(
                    backgroundColor: Pellet.bagroundColor,
                    body: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          VariantVerticalList(
                            list: list1,
                            suffixIconCheck: suffixIconCheck,


                            selectedVertical: selectedVertical,
                            itemsearch: itemsearch,
                            ontap: (int index) {
                              setState(() {
                                selectedVertical = index;
                                check=false;
                                addVirtualLimit=false;

                                // select=false;
                                clear();
                                // exportCheck=false;
                                // addNew=true;

                                setState(() {
                                  veritiaclid=result[index].id;
                                  // context.read<StocktablereadCubit>().getStockTableRead(result[index].code);
                                  context.read<StockreadCubit>().getStockRead(veritiaclid!);

                                });
                              });
                            },
                            search: (String va) {
                              print(va);
                              context
                                  .read<ListvraiantCubit>()
                                  .getSearchVariantList(va);
                              suffixIconCheck=true;
                              if (va == "") {
                                context
                                    .read<ListvraiantCubit>()
                                    .getVariantList();
                                suffixIconCheck=false;
                              }
                            },
                            result: result,
                         child:   tablePagination(
                                  () => context
                                  .read<ListvraiantCubit>()
                                  .refresh(),
                              back: list1?.previousUrl == null
                                  ? null
                                  : () {
                                context
                                    .read<ListvraiantCubit>()
                                    .previuosslotSectionPageList();
                              },
                              next: list1?.nextPageUrl == null
                                  ? null
                                  : () {
                                // print(data.nextPageUrl);
                                context
                                    .read<ListvraiantCubit>()
                                    .nextslotSectionPageList();
                              },
                            ),
                          ),
                          Expanded(child:stockData?.id==null?Container(
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),

                            child: Text(" NO Stock Data",style: TextStyle(fontSize: 18),),
                          ): SingleChildScrollView(
                            child: Column(
                              children: [
                                VAriantStockStableTable(
                                  addCheckLimit: addCheckLimit,
                                  check: addVirtualLimit,
                                  salesUomName: salesUomNameController,
                                  purchaseUomName: purchaseUomNameController,
                                  baseUomName: baseUomName,
                                  minMaxRatioCalculation:minMaxRatioCalculation,

                                  stockWarning: stockwarning,
                                  purchaseBlock: purchaseBlock,
                                  purchaseUom: purchaseUomController,
                                  salesUom: salesUomController,
                                  variantCode: variantCodeController,
                                  baseUom: baseUomController,
                                  cancelledQuantity: cancelledQuantityController,
                                  channelTypeAllocationRatio: channelTypeController,
                                  damagedQuantity: damagedQuantityController,
                                  maximumQuantity: maximumQuantityController,
                                  minimumQuantity: minimumQuantityController,
                                  minMaxRatio: minMaxRatioController,
                                  purchaseBlockQuantity: purchaseBlockController,
                                  reLOrderQuantity: reorderQuantityController,
                                  reOrderPoint: reorderPointQuantityController,
                                  replacementQuantity: replaceMentQuantityController,
                                  reservedQuantity: reservedQuantityController,
                                  returnedQuantity: returnedQuantityController,
                                  safetyStockQuantity: safetyStockController,
                                  salesBlockQuantity: salesBlockQuantityController,
                                  salesBolck: salesBlock,
                                  salesStockQuantity: salesStockQuantityController,
                                  stockCode: stockCodeController,
                                  totalQuantity: totalQuantityController,
                                  trueOrFalseChange: trueOrFalseChange,
                                  virtualStock: virtualStockController,
                                  virtualStockType: virtualStockTypeController,
                                 addVirtualStockType: addVirtualStockController,

                                ),
                                SizedBox(height: 35,),
                                // Row(mainAxisAlignment: MainAxisAlignment.start,
                                //   children: [
                                //     TextWidget(text: "Based On Batch"),
                                //   ],
                                // ),
                                // // Divider(color: Colors.grey, thickness: 1,),
                                // SizedBox(height: height*.01,),
                                //
                                // StockBottomTable(
                                //     data:data
                                // ),


                                SizedBox(height: height * .1,),
                                SaveUpdateResponsiveButton(
                                  isSaveUpdateLoading: commonProvider.isLoadingSaveupdate,
                                  isClearDeketeLoading:commonProvider.isLoadingDeleteClear ,
                                  label:"SAVE" ,
                                  isDelete: true,

                                  discardFunction: (){},
                                  saveFunction: (){
                                    ratiooCheck(minMaxRatioController.text,"");
                                    ratiooCheck(channelTypeController.text,"1");
                                    if(check!=true){
                                      commonProvider.setLoadingSaveUpdate(true);
                                      StockData model=StockData(
                                        inventoryId: Variable.inventory_ID,
                                        variantId: variantId,
                                        stockWarning: stockwarning,
                                        reOrderPoint:int.tryParse( reorderPointQuantityController?.text??""),
                                        reOrderQuantity: int.tryParse(reorderQuantityController?.text??""),
                                        channelTypeAllocationRatio: channelTypeController?.text??"",
                                        minMaxRatio: minMaxRatioController?.text??"",
                                        salesBlocked: salesBlock??false,
                                        maximumQuantity:int.tryParse(maximumQuantityController?.text??""),
                                        minimumQuantity: int.tryParse(minimumQuantityController?.text??""),
                                        addVirtualStock:int.tryParse(addVirtualStockController.text),
                                        // int.tryParse(virtualStockController.text)??null,
                                        virtualType: virtualStockTypeController?.text??"",
                                        purchaseBlocked: purchaseBlock??false,

                                      );
                                      print(model);
                                      context.read<StockpostCubit>().postStock(model);
                                    }

                                  },
                                ),
                               //  Container(
                               //    margin:  EdgeInsets.symmetric(horizontal:width *.0155 ),
                               //    child: Row(
                               //      mainAxisAlignment: MainAxisAlignment.end,
                               //      children: [
                               //        Button(Icons.delete, Colors.red,
                               //            ctx: context,
                               //            text: "DISCARD",
                               //            onApply: () {
                               //              // if(updateCheck){
                               //              //   // clears();
                               //              //
                               //              //
                               //              // }
                               //
                               //            },
                               //            height: 29,
                               //            width: 90,
                               //            labelcolor: Colors.red,
                               //            iconColor: Colors.red,
                               //            bdr: true),
                               //        SizedBox(
                               //          width: width * .008,
                               //        ),
                               //        Button(Icons.check, Colors.grey,
                               //            ctx: context,
                               //            text: "SAVE",
                               //            height: 29,
                               //            Color: Color(0xff3E4F5B),
                               //            width: 90,
                               //            labelcolor: Colors.white,
                               //            iconColor: Colors.white,
                               //            onApply: () {
                               //      ratiooCheck(minMaxRatioController.text,"");
                               //      ratiooCheck(channelTypeController.text,"1");
                               // if(check!=true){
                               //     StockData model=StockData(
                               //       inventoryId: Variable.inventory_ID,
                               //       variantId: variantId,
                               //       stockWarning: stockwarning,
                               //       reOrderPoint:int.tryParse( reorderPointQuantityController?.text??""),
                               //       reOrderQuantity: int.tryParse(reorderQuantityController?.text??""),
                               //       channelTypeAllocationRatio: channelTypeController?.text??"",
                               //       minMaxRatio: minMaxRatioController?.text??"",
                               //       salesBlocked: salesBlock??false,
                               //       maximumQuantity:int.tryParse(maximumQuantityController?.text??""),
                               //       minimumQuantity: int.tryParse(minimumQuantityController?.text??""),
                               //       addVirtualStock:int.tryParse(addVirtualStockController.text),
                               //       // int.tryParse(virtualStockController.text)??null,
                               //       virtualType: virtualStockTypeController?.text??"",
                               //       purchaseBlocked: purchaseBlock??false,
                               //
                               //     );
                               //     print(model);
                               //     context.read<StockpostCubit>().postStock(model);
                               // }
                               //
                               //
                               //
                               //
                               //
                               //
                               //            }),
                               //        SizedBox(
                               //          width: width * .008,
                               //        ),
                               //      ],
                               //    ),
                               //  ),

                              ],
                            ),
                          )

                          )

                        ],
                      ),
                    ),

                  );
                },
              ),
            );
          }
      ),
    );
  }
}

