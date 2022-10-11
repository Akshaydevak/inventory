import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/variant/stock/cubits/stockpost/stockpost_cubit.dart';
import 'package:inventory/Screens/variant/stock/cubits/stockread/stockread_cubit.dart';
import 'package:inventory/Screens/variant/stock/cubits/stocktableread/stocktableread_cubit.dart';
import 'package:inventory/Screens/variant/stock/models/stock_read.dart';
import 'package:inventory/Screens/variant/stock/models/stocktableread.dart';
import 'package:inventory/Screens/variant/stock/screens/stock_bottom_table.dart';
import 'package:inventory/Screens/variant/stock/screens/stock_stableTable.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/listvraiant/listvraiant_cubit.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';

import '../../../../commonWidget/Textwidget.dart';

class StockScreen extends StatefulWidget {
  @override
  _StockScreenState createState() => _StockScreenState();
}

class _StockScreenState extends State<StockScreen> {
  TextEditingController variantCodeController = TextEditingController();
  TextEditingController stockCodeController = TextEditingController();
  TextEditingController salesUomController = TextEditingController();
  TextEditingController baseUomController = TextEditingController();
  TextEditingController purchaseUomController = TextEditingController();
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
  TextEditingController minMaxRatioController = TextEditingController();
  TextEditingController maximumQuantityController = TextEditingController();
  TextEditingController minimumQuantityController = TextEditingController();
  TextEditingController channelTypeController = TextEditingController();
  bool stockwarning = false;
  int? variantId  ;
  bool salesBlock = false;
  bool purchaseBlock = false;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  int selectedVertical = 0;
  var list;
  int? veritiaclid = 0;
  List<StockTableReadModel> data=[];

  @override
  void initState() {
    context.read<ListvraiantCubit>().getVariantList();
    super.initState();
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
        .size
        .width;
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
                            print("aval ethito" + data.toString());

                            // group=data;

                            variantCodeController.text=data.stockData?.variantCode??"";
                            variantId=data.stockData?.variantId;
                            stockCodeController.text=data.stockData?.stockCode??"";
                            salesUomController.text=data.stockData?.salesUOM.toString()??"";
                            baseUomController.text=data.stockData?.baseUom.toString()??"";
                            purchaseUomController.text=data.stockData?.purchaseUomName??"";
                            salesStockQuantityController.text=data.stockData?.salesBlockQuantity.toString()??"";
                            salesBlockQuantityController.text=data.stockData?.salesBlockQuantity.toString()??"";
                            purchaseBlockController.text=data.stockData?.purchaseBlockQuantity.toString()??"";
                            cancelledQuantityController.text=data.stockData?.availablcancelledQuantityeQuantity.toString()??"";
                            reservedQuantityController.text=data.stockData?.reservedQuantity.toString()??"";
                            reorderPointQuantityController.text=data.stockData?.reOrderPoint.toString()??"";
                            returnedQuantityController.text=data.stockData?.returnQuantity.toString()??"";
                            damagedQuantityController.text=data.stockData?.damagedQuantity.toString()??"";
                            returnedQuantityController.text=data.stockData?.returnQuantity.toString()??"";
                            minimumQuantityController.text=data.stockData?.minimumQuantity.toString()??"";
                            maximumQuantityController.text=data.stockData?.maximumQuantity.toString()??"";
                            // channelTypeController.text=data.stockData?.c.toString()??"";
                            stockwarning=data.stockData?.stockWarning??false;
                            salesBlock=data.stockData?.salesBlocked??false;
                            purchaseBlock=data.stockData?.purchaseBlocked??false;
                            virtualStockTypeController.text=data.stockData?.virtualType.toString()??"";
                            virtualStockController.text=data.stockData?.addVirtualStock.toString()??"";
                            // replaceMentQuantityController.text=data.stockData?.re.toString()??"";

                            // addNew=false;
















                          });





                        });
                  },
                ),

                BlocListener<StockpostCubit, StockpostState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loadingggg");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      if (data.data1) {
                        context.showSnackBarSuccess(data.data2);

                          setState(() {
                            // context.read<ListvraiantCubit>().getVariantList();
                            // select=false;
                          });

                      } else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
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
                        print("aaaaayyyiram" + list.data.toString());
                        list = list;

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
                            print("common");
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
                    backgroundColor: Colors.white,
                    body: SingleChildScrollView(
                      child: IntrinsicHeight(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            VariantVerticalList(
                              list: list,


                              selectedVertical: selectedVertical,
                              itemsearch: itemsearch,
                              ontap: (int index) {
                                setState(() {
                                  selectedVertical = index;

                                  // select=false;
                                  // clear();
                                  // exportCheck=false;
                                  // addNew=true;

                                  // updateCheck=false;
                                  print("rijina" + result[index].id.toString());


                                  veritiaclid = result[index].id;
                                  // clear();
                                  // select=true;
                                  //
                                  //


                                  setState(() {
                                    context.read<StocktablereadCubit>().getStockTableRead(result[index].code);
                                    context.read<StockreadCubit>().getStockRead(veritiaclid!);

                                  });
                                });
                              },
                              search: (String va) {
                                print(va);
                                context
                                    .read<ListvraiantCubit>()
                                    .getSearchVariantList(va);
                                if (va == "") {
                                  context
                                      .read<ListvraiantCubit>()
                                      .getVariantList();
                                }
                              },
                              result: result,
                            ),
                            Expanded(child: Column(
                              children: [
                                VAriantStockStableTable(
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
                                  reLOrderQuantity: reorderPointQuantityController,
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

                                ),
                                SizedBox(height: 15,),
                                Row(mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    TextWidget(text: "Based On Batch"),
                                  ],
                                ),
                                Divider(color: Colors.grey, thickness: 1,),
                                SizedBox(height: 15,),
                                StockBottomTable(
                                    data:data
                                ),


                                SizedBox(height: height * .13,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Button(Icons.delete, Colors.red,
                                        ctx: context,
                                        text: "Discard",
                                        onApply: () {
                                          // if(updateCheck){
                                          //   // clears();
                                          //
                                          //
                                          // }

                                        },
                                        height: 29,
                                        width: 90,
                                        labelcolor: Colors.red,
                                        iconColor: Colors.red,
                                        bdr: true),
                                    SizedBox(
                                      width: width * .008,
                                    ),
                                    Button(Icons.check, Colors.grey,
                                        ctx: context,
                                        text: "Save",
                                        height: 29,
                                        Color: Color(0xff3E4F5B),
                                        width: 90,
                                        labelcolor: Colors.white,
                                        iconColor: Colors.white,
                                        onApply: () {
                                          StockData model=StockData(
                                            inventoryId: Variable.inventory_ID,
                                            variantId: variantId,
                                            stockWarning: stockwarning,
                                            reOrderPoint:int.tryParse( reorderPointQuantityController?.text??""),
                                            reOrderQuantity: int.tryParse(returnedQuantityController?.text??""),
                                            channelTypeAllocationRatio: channelTypeController?.text??"",
                                            minMaxRatio: minMaxRatioController?.text??"",
                                            salesBlocked: salesBlock??false,
                                            maximumQuantity:int.tryParse(maximumQuantityController?.text??""),
                                            minimumQuantity: int.tryParse(minimumQuantityController?.text??""),
                                            addVirtualStock:3,
                                            // int.tryParse(virtualStockController.text)??null,
                                            virtualType: virtualStockTypeController?.text??"",
                                            purchaseBlocked: purchaseBlock??false,

                                          );
                                          print(model);
                                          context.read<StockpostCubit>().postStock(model);





                                        }),
                                    SizedBox(
                                      width: width * .008,
                                    ),
                                  ],
                                ),

                              ],
                            )

                            )

                          ],
                        ),
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

