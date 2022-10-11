import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/cubit/percentagegp_cubit.dart';

import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/dropdownbutton.dart';

class CostingStableTable extends StatefulWidget {
  final TextEditingController costingmethod;
  final TextEditingController pricingGroupId;
  final TextEditingController channelStockCode;
  final TextEditingController costingCode;
  final TextEditingController channelName;
  final TextEditingController unitCost;
  final TextEditingController pricingGptype;
  final TextEditingController gpPercentage;
  final TextEditingController sellingPrice;
 final TextEditingController costingName ;
 final Function sellingPriceCalculation ;
 final int? channelId ;
  TextEditingController pricingName ;


  CostingStableTable({

  required this.channelId,required this.costingName,required this.pricingName , required this.costingmethod, required this.pricingGroupId, required this.channelStockCode, required this.costingCode, required this.channelName, required this.unitCost, required this.pricingGptype, required this.gpPercentage, required this.sellingPrice, required this.sellingPriceCalculation});

  @override
  _CostingStableTableState createState() => _CostingStableTableState();
}

class _CostingStableTableState extends State<CostingStableTable> {



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
    return
      MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => PercentagegpCubit(),
          ),

        ],
        child: MultiBlocListener(
          listeners: [
            BlocListener<PercentagegpCubit, PercentagegpState>(
              listener: (context, state) {
                print(state);
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("the reasons");
                      setState(() {
                        widget.gpPercentage.text="0";;
                      });

                    }, success: (data) {
                  if (data.data1) {
                    print("the reasons2");
                    // context.showSnackBarSuccess(data.data2);
                    widget.gpPercentage.text=data.data2["gp_percentage"];


                  }
                  else {
                    print("the reasons3");
                    setState(() {
                      widget.gpPercentage.text="0";;
                    });
                    // context.showSnackBarError(data.data2);
                    // print(data.data1);
                  }
                  widget.sellingPriceCalculation(unitCost:int.tryParse(widget.unitCost.text),gp:int.tryParse(widget.gpPercentage.text));
                    }
                    );
              },
            ),

          ],
          child: Builder(
              builder: (context) {
                return Column(
                  children: [

                    Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(child: Column(
                            children: [


                              SelectableDropDownpopUp(

                                controller: widget.costingName,
                                label: "Costing Method Id",
                                type: "CostingCreateMethodPopUpCall",
                                value: widget.costingName.text,
                                onchange: (vale) {
                                  // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                },
                                enable: true,
                                onSelection: (CostingCreatePostModel? va) {
                                  setState(() {
                                    costingTypeMethodeCheck = true;
                                  });
                                  setState(() {
                                    widget.costingmethod.text =
                                        va?.id.toString() ?? "";
                                    widget.costingName.text = va?.methodName ?? "";


                                    // onChange = true;
                                    // orderType.text = va!;
                                  });
                                },
                                onAddNew: () {
                                  showDailogPopUp(
                                    context,
                                    ConfigurePopup(
                                      type: "create_costingCreate",
                                    ),


                                  );
                                },
                              ),
                              SizedBox(
                                height: height * .030,
                              ),
                              SelectableDropDownpopUp(

                                controller: widget.pricingName,
                                label: "Pricing  GroupId Id",
                                type: "Pricing_PopUpCall",
                                value: widget.pricingName.text,
                                onchange: (vale) {
                                  // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                },
                                enable: true,
                                onSelection: (PricingTypeListModel? va) {
                                  setState(() {
                                    costingTypeMethodeCheck = true;
                                  });
                                  setState(() {
                                    print("the searching value is"+va.toString());
                                    widget.pricingName.text = va?.pricingGroupName ?? "";
                                    widget.pricingGroupId.text = va?.pricingTypeId.toString() ?? "";


                                    // onChange = true;
                                    // orderType.text = va!;
                                  });
                                },
                                onAddNew: () {
                                  showDailogPopUp(
                                    context,
                                    ConfigurePopup(
                                      type: "PricingCreatePopUp",
                                    ),


                                  );
                                },
                              ),


                              // SelectableDropDownpopUp(
                              //
                              //   controller:widget.pricingGroupId,
                              //   label: "Costing Method Id",
                              //   type:"Pricing_GroupPopUpCall",
                              //   value:  widget.pricingGroupId.text,
                              //   onchange: (vale){
                              //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                              //   },
                              //   enable: true,
                              //   onSelection: (PricingGroupListModel? va) {
                              //     setState(() {
                              //       costingTypeMethodeCheck=true;
                              //     });
                              //     setState(() {
                              //
                              //       widget.pricingGroupId.text=va?.pricingTypeName??"";
                              //       setState(() {
                              //
                              //       });
                              //
                              //
                              //       // onChange = true;
                              //       // orderType.text = va!;
                              //     });
                              //   },
                              //   onAddNew: () {
                              //
                              //     showDailogPopUp(
                              //       context,
                              //       ConfigurePopup(
                              //         type: "create_pricing",
                              //       ),
                              //
                              //
                              //     );
                              //   },
                              // ),


                              SizedBox(
                                height: height * .030,
                              ),
                              NewInputCard(
                                  readOnly: true,
                                  controller: widget.channelStockCode,
                                  title: "Channel Stock Code"),


                            ],
                          )),
                          Expanded(child: Column(children: [


                            NewInputCard(
                              readOnly: true,
                                controller: widget.costingCode,
                                title: "Costing Code"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                              readOnly: true,


                                controller: widget.channelName,
                                title: "Channel Name"),
                            SizedBox(
                              height: height * .030,
                            ),
                            // UnderLinedInput(
                            //   initialCheck: true,
                            //   last: widget.unitCost.text,
                            //   l
                            //
                            // )
                            NewInputCard(
                                formatter: true,
                                onChange: (va){
                                  print("the value${va}");
                                  widget.sellingPriceCalculation(unitCost:int.tryParse(va),gp:int.tryParse(widget.gpPercentage?.text??"0"));
                                },


                                controller: widget.unitCost,
                                title: "Unit Cost"),


                          ],)),
                          Expanded(child: Column(children: [
                            SelectableDropDownpopUp(
                              label: "Pricing GP type",
                              type: "Pgtype_PopUpCall",
                              value: widget.pricingGptype.text,
                              onSelection: (String? va) {
                                print(
                                    "++++se+++++++++++++++++++");
                                setState(() {
                                  widget.pricingGptype.text = va ?? "";
                                });
                                context.read<PercentagegpCubit>().percentageGp(widget.channelId, va);



                                // onChange = true;
                                // orderType = va!;

                              },

                              restricted: true,
                            ),

                            SizedBox(
                              height: height * .030,
                            ),

                            NewInputCard(
                              readOnly: true,
                                formatter: true,

                                controller: widget.gpPercentage,
                                title: "GP percentage"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                formatter: true,


                                controller: widget.sellingPrice,
                                title: "Selling Price"),


                          ],))

                        ],
                      ),
                    ),


                  ],
                );
              }
          ),
        ),
      );
  }
}