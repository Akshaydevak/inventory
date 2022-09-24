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


  CostingStableTable({

    required this.costingmethod, required this.pricingGroupId, required this.channelStockCode, required this.costingCode, required this.channelName, required this.unitCost, required this.pricingGptype, required this.gpPercentage, required this.sellingPrice});

  @override
  _CostingStableTableState createState() => _CostingStableTableState();
}

class _CostingStableTableState extends State<CostingStableTable> {
  TextEditingController costing = TextEditingController();
  TextEditingController pricing = TextEditingController();

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
                      print("error");
                    },
                    success: (data) {
                      setState(() {
                        print("aaakkku"+data.toString());
                        widget.gpPercentage.text=data.gpPrecentage.toString();
                        // group = data.data;
                        // print("Akshgayaa" + group.toString());
                        // channels=data?.results??[];

                      });
                    });
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

                                controller: costing,
                                label: "Costing Method Id",
                                type: "CostingCreateMethodPopUpCall",
                                value: costing.text,
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
                                    costing.text = va?.methodName ?? "";


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

                                controller: pricing,
                                label: "Pricing  GroupId Id",
                                type: "Pricing_PopUpCall",
                                value: pricing.text,
                                onchange: (vale) {
                                  // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                },
                                enable: true,
                                onSelection: (PricingTypeListModel? va) {
                                  setState(() {
                                    costingTypeMethodeCheck = true;
                                  });
                                  setState(() {
                                    pricing.text = va?.pricingGroupName ?? "";
                                    widget.pricingGroupId.text =
                                        va?.pricingTypeId.toString() ?? "";


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
                                controller: widget.costingCode,
                                title: "Costing Code"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(


                                controller: widget.channelName,
                                title: "Channel Name"),
                            SizedBox(
                              height: height * .030,
                            ),
                            NewInputCard(
                                formatter: true,


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
                                context.read<PercentagegpCubit>().percentageGp(1, va);



                                // onChange = true;
                                // orderType = va!;

                              },

                              restricted: true,
                            ),

                            SizedBox(
                              height: height * .030,
                            ),

                            NewInputCard(
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