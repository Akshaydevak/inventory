import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/dropdownbutton.dart';

class VAriantStockStableTable extends StatefulWidget {
  final TextEditingController variantCode;
  final TextEditingController stockCode;
  final TextEditingController salesUomName;
  final TextEditingController salesUom;
  final TextEditingController baseUom;
  final TextEditingController baseUomName;
  final TextEditingController purchaseUom;
  final TextEditingController purchaseUomName;
  final TextEditingController totalQuantity;
  final TextEditingController safetyStockQuantity;
  final TextEditingController salesBlockQuantity;
  final TextEditingController salesStockQuantity;
  final TextEditingController purchaseBlockQuantity;
  final TextEditingController reOrderPoint;
  final TextEditingController reLOrderQuantity;
  final TextEditingController cancelledQuantity;
  final TextEditingController reservedQuantity;
  final TextEditingController damagedQuantity;
  final TextEditingController returnedQuantity;
  final TextEditingController replacementQuantity;
  final TextEditingController virtualStockType;
  final TextEditingController virtualStock;
  final TextEditingController minMaxRatio;
  final TextEditingController maximumQuantity;
  final TextEditingController minimumQuantity;
  final TextEditingController addVirtualStockType;
  final TextEditingController channelTypeAllocationRatio;
  final Function trueOrFalseChange;
  final Function addCheckLimit;
  final Function minMaxRatioCalculation;
  final bool stockWarning;
  final bool check;
  final bool salesBolck;
  final bool purchaseBlock;


  VAriantStockStableTable({
    required this.addCheckLimit,
    required this.check,
    required this.minMaxRatioCalculation,
    required this.stockWarning,required this.addVirtualStockType,
    required this.trueOrFalseChange,
    required this.minMaxRatio,
    required this.purchaseBlock,
    required this.purchaseUom,
    required this.salesUom,
    required this.reOrderPoint,
    required this.variantCode,
    required this.baseUom,
    required this.cancelledQuantity,
    required this.channelTypeAllocationRatio,
    required this.damagedQuantity,
    required this.maximumQuantity,
    required this.minimumQuantity,
    required this.purchaseBlockQuantity,
    required this.reLOrderQuantity,
    required this.replacementQuantity,
    required this.reservedQuantity,
    required this.returnedQuantity,
    required this.safetyStockQuantity,
    required this.salesBlockQuantity,
    required this.salesBolck,
    required this.stockCode,
    required this.totalQuantity,
    required this.virtualStock,required this.virtualStockType,
    required this.salesStockQuantity, required this.salesUomName, required this.baseUomName, required this.purchaseUomName




  });
  @override
  _VAriantStockStableTableState createState() => _VAriantStockStableTableState();
}

class _VAriantStockStableTableState extends State<VAriantStockStableTable> {

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
                          NewInputCard(
                            readOnly: true,
                              controller: widget.stockCode, title: "Stock Code"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                            readOnly: true,
                              controller: widget.salesUomName, title: "Sales UOM"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                            readOnly: true,


                              controller: widget.baseUomName, title: "Base UOM"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                            readOnly: true,
                              controller: widget.purchaseUomName, title: "Purchase UOM"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                            readOnly: true,

                              controller: widget.totalQuantity, title: "Total Quantity"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                            readOnly: true,



                              controller: widget.salesStockQuantity, title: "Safety Stock Quantity"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              readOnly: true,


                              controller: widget.salesBlockQuantity, title: "Sales Block Quantity"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              readOnly: true,


                              controller: widget.purchaseBlockQuantity, title: "Purchase Block Quantity"),



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


                            controller: widget.reLOrderQuantity, title: "Reorder Quantity"),
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
                          height: height * .030,
                        ),
                        SelectableDropDownpopUp(
                          label: "Virtual Stock Type",
                          type: "VirtualStockTypePopupCall",
                          value: widget.virtualStockType.text=="null"?"":widget.virtualStockType.text,
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
                            formatter: true,
                            controller: widget.virtualStock, title: "Virtual Stock"),



                      ],)),
                      Expanded(child: Column(children: [

                        NewInputCard(
                          readOnly: widget.check,

                          onChange: (va){
                            if(widget.addVirtualStockType.text.length>21){
                              setState(() {
                                widget.addCheckLimit(true);
                              });

                              (widget.addVirtualStockType.text.substring(0, 21));
                              context.showSnackBarError("the limit is finished");

                            }else{
                              widget.minMaxRatioCalculation();
                            }
                          },
                            formatter: true,

                            controller: widget.addVirtualStockType, title: "Add Virtual Stock"),
                        SizedBox(
                          height: height * .030,
                        ),   NewInputCreateCard(
                          ontap: (){
                            widget.minMaxRatioCalculation();
                          },
                            subTitle: "calculate",
                            formatter: true,

                            controller: widget.minMaxRatio, title: "Min Max Ratio"),
                        SizedBox(
                          height: height * .030,
                        ),

                        NewInputCard(
                            readOnly: true,
                            controller: widget.minimumQuantity, title: "Minimum Quantity"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            readOnly: true,
                            controller: widget.maximumQuantity, title: "Maximum Quantity"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            formatter: true,
                            integerOnly: true,

                            controller: widget.channelTypeAllocationRatio, title: "Channel Type Allocation Ratio"),
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
                              // bool val=widget.salesBolck;
                              // val=!val;
                              // widget.trueOrFalseChange(type: "2",val:val);
                              // setState(() {});
                            }),
                        SizedBox(
                          height: height * .030,
                        ),

                        PopUpSwitchTile(
                            value:widget?. purchaseBlock??false,
                            title: "Purchase Block",
                            onClick: (gg) {
                              // bool val=widget.purchaseBlock;
                              // val=!val;
                              // widget.trueOrFalseChange(type: "3",val:val);
                              // setState(() {});
                            }),
                        SizedBox(
                          height: height * .195,
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