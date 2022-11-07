import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/dropdownbutton.dart';

class AllocationStockStableTable extends StatefulWidget {
  final TextEditingController variantCode;
  final TextEditingController channelStockCode;
  final TextEditingController channelStockTypeCode;
  final TextEditingController channeTypeStockCode;
  final TextEditingController totalQuantity;
  final TextEditingController channelTypeAllocationRatio;
  final TextEditingController purchaseBlockQuantity;
  final TextEditingController salesBlockQuantity;
  final TextEditingController safetyStock;

  final TextEditingController reOrderPoint;
  final TextEditingController reLOrderQuantity;
  final TextEditingController cancelledQuantity;
  final TextEditingController reservedQuantity;
  final TextEditingController damagedQuantity;
  final TextEditingController returnedQuantity;
  final TextEditingController replacementQuantity;
  final TextEditingController virtualStockType;
  final TextEditingController virtualStock;
  final TextEditingController addVirtualStock;
  final TextEditingController channelStatusMediumPoint;
  final TextEditingController channelStatusCrucialPoint;


  final Function trueOrFalseChange;
  final bool stockWarning;
  final bool salesBolck;
  final bool purchaseBlock;











  AllocationStockStableTable({
    required this.stockWarning,
    required this.safetyStock,
    required this.purchaseBlock,
    required this.trueOrFalseChange,
    required this.addVirtualStock,
    required this.channelStatusCrucialPoint,
    required this.channelStatusMediumPoint,
    required this.channelStockTypeCode,
    required this.channelStockCode,


    required this.reOrderPoint,
    required this.variantCode,

    required this.cancelledQuantity,
    required this.channelTypeAllocationRatio,
    required this.damagedQuantity,

    required this.purchaseBlockQuantity,
    required this.reLOrderQuantity,
    required this.replacementQuantity,
    required this.reservedQuantity,
    required this.returnedQuantity,

    required this.salesBlockQuantity,
    required this.salesBolck,

    required this.totalQuantity,
    required this.virtualStock,required this.virtualStockType,  required this.channeTypeStockCode,





  });
  @override
  _AllocationStockStableTableState createState() => _AllocationStockStableTableState();
}

class _AllocationStockStableTableState extends State<AllocationStockStableTable> {

  String imageName1="";
  String imageName2="";
  String imageName3="";
  String imageName4="";
  String imageName5="";
  String imageName6="";
  String imageName7="";
  String imageName8="";
  String imageEncode="";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return
      Builder(
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
                          SizedBox(
                            height: height * .035,
                          ),

                          NewInputCard(
                              readOnly: true,
                              controller: widget.variantCode,
                              title: "Variant Code"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(  readOnly: true,
                              controller: widget.channelStockCode, title: " Channel Stock Code"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(  readOnly: true,
                              controller: widget.channelStockTypeCode, title: "Channel Stock Type"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              readOnly: true,


                              controller: widget.channeTypeStockCode, title: "Channel Type  Stock Code"),
                          SizedBox(
                            height: height * .030,
                          ),

                          NewInputCard(
                            formatter: true,

                              controller: widget.totalQuantity, title: "Total Quantity"),
                          SizedBox(
                            height: height * .030,
                          ),
                          // NewInputCard(
                          //  formatter: true,
                          //
                          //
                          //
                          //
                          //     controller: widget.channelTypeAllocationRatio, title: "channel Allocation Ratio"),
                          // SizedBox(
                          //   height: height * .030,
                          // ),
                          NewInputCard(
                              readOnly: true,


                              controller: widget.salesBlockQuantity, title: "Sales Block Quantity"),
                          SizedBox(
                            height: height * .030,
                          ),  NewInputCard(
                              readOnly: true,


                              controller: widget.safetyStock, title: "Safety Stock "),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              readOnly: true,


                              controller: widget.purchaseBlockQuantity, title: "Purchase Block Quantity"),
                          // SizedBox(
                          //   height: height * .120,
                          // ),



                        ],
                      )),
                      Expanded(child: Column(children: [
                        SizedBox(
                          height: height * .035,
                        ),

                        NewInputCard(
                          formatter: true,
                            controller: widget.reOrderPoint, title: "Reorder Point"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                          formatter: true,


                            controller: widget.returnedQuantity, title: "Reorder Quantity"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                          readOnly: true,
                            controller: widget.cancelledQuantity, title: "Cancelled Quantity"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                          readOnly: true,


                            controller: widget.reservedQuantity, title: "Reserved Quantity"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                          readOnly: true,


                            controller: widget.damagedQuantity, title: "Damaged Quantity"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                          readOnly: true,
                            controller: widget.returnedQuantity, title: "Returned Quantity"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            readOnly: true,
                            controller: widget.replacementQuantity, title: "Replacement Quantity"),
                        SizedBox(
                          height: height * .12,
                        ),







                      ],)),
                      Expanded(child: Column(children: [
                        SelectableDropDownpopUp(
                          label: "Virtual Stock Type",
                          type: "VirtualStockTypePopupCall",
                          value: widget.virtualStockType.text,
                          onSelection: (String? va) {
                            print(
                                "++++se+++++++++++++++++++");
                            setState(() {
                              widget.virtualStockType.text = va ?? "";
                            });




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
                            controller: widget.virtualStock, title: "Virtual Stock"),
                        SizedBox(
                          height: height * .030,
                        ),

                        NewInputCard(
                          formatter: true,

                            controller: widget.addVirtualStock, title: "Add Virtual Stock"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                          // readOnly: true,
                          formatter: true,


                            controller: widget.channelStatusMediumPoint, title: "Channel Status Medium Point"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            formatter: true,

                            controller: widget.channelStatusCrucialPoint, title: "Channel Status Crucial Point"),
                        SizedBox(
                          height: height * .030,
                        ),


                        PopUpSwitchTile(
                            value:widget?. stockWarning??false,
                            title: "Stock Warning",
                            onClick: (gg) {
                              bool val=widget.stockWarning;
                              val=!val;
                              widget.trueOrFalseChange(type: "1",val:val);





                              // extendedWarranty = gg;
                              // widget.changeExtendedWarranty(gg);
                              // onChangeExtWarranty = gg;
                              setState(() {});
                            }),
                        SizedBox(
                          height: height * .030,
                        ),

                        PopUpSwitchTile(
                            value:widget?. salesBolck??false,
                            title: "Sales Block",
                            onClick: (gg) {
                              bool val=widget.salesBolck;
                              val=!val;
                              widget.trueOrFalseChange(type: "2",val:val);
                              setState(() {});
                            }),                SizedBox(
                          height: height * .030,
                        ),

                        PopUpSwitchTile(
                            value:widget?. purchaseBlock??false,
                            title: "Purchase Block",
                            onClick: (gg) {
                              bool val=widget.purchaseBlock;
                              val=!val;
                              widget.trueOrFalseChange(type: "3",val:val);
                              setState(() {});
                            }),
                        SizedBox(
                          height: height * .05,
                        ),














                      ],))

                    ],
                  ),
                ),


              ],
            );
          }
      );
  }
}