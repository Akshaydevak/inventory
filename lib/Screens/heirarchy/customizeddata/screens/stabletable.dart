import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/dropdownbutton.dart';

class CustomizedStableTable extends StatefulWidget {
  final TextEditingController group;
  final TextEditingController groupNameController;
  final TextEditingController code;
  final TextEditingController minimumGp;
  final TextEditingController averageGp;
  final TextEditingController maximumGp;
  final TextEditingController targetedGp;
  final TextEditingController vat;
  final TextEditingController excessTax;
  final TextEditingController returnType;
  final TextEditingController returnTime;
  final TextEditingController weightUomId;
  final TextEditingController height;
  final TextEditingController width;
  final TextEditingController length;
  final TextEditingController shelfType;
  final TextEditingController shelfTime;

  final bool active;
  final bool select;
  final bool haveGiftOption;
  final bool haveWrapOption;
  final bool needMultipleIntegreation;
  final Function activeChange;


  CustomizedStableTable({
    required this.groupNameController,required this.needMultipleIntegreation,required this.select,
    required this.group, required this.code, required this.minimumGp, required this.averageGp, required this.maximumGp, required this.targetedGp, required this.vat, required this.excessTax, required this.returnType, required this.returnTime, required this.weightUomId, required this.height, required this.width, required this.length, required this.active, required this.activeChange, required this.shelfType, required this.shelfTime, required this.haveGiftOption, required this.haveWrapOption});
  @override
  _CustomizedStableTableState createState() => _CustomizedStableTableState();
}

class _CustomizedStableTableState extends State<CustomizedStableTable> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return
      Builder(
          builder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  child: Row(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(child: Column(
                        children: [
                          NewInputCard(controller: widget.groupNameController,
                            icondrop:true,title: "Group",ontap: (){
                              showDailogPopUp(
                                context,
                                TableConfigurePopup(
                                  type: "GroupAllTabale_Popup", valueSelect: (BrandListModel va){

                                  setState(() {



                                    widget.groupNameController.text=va?.name??"";
                                    widget.group.text=va?.id.toString()??"";
                                    // Variable.uomGroupId=va?.id;
                                    setState(() {

                                    });


                                    // onChange = true;
                                    // orderType.text = va!;
                                  });

                                },
                                ),


                              );

                            },),





                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                            readOnly: true,
                              controller: widget.code, title: "Code"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                            formatter: true,
                              controller: widget.minimumGp, title: "Minimum Gp"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              formatter: true,
                              controller: widget.averageGp, title: "Average Gp"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              formatter: true,

                              controller: widget.maximumGp, title: "Maximum Gp"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              formatter: true,
                              controller: widget.targetedGp, title: "Targeted Gp"),

                          // SizedBox(
                          //   height: height * .030,
                          // ),
                          //
                          // SizedBox(
                          //   height: height * .080,
                          // ),



                        ],
                      )),
                      Expanded(child: Column(children: [

                        NewInputCard(controller: widget.vat,
                          formatter: true,

                          title: "VAT",
                        ),

                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                          formatter: true,
                            controller: widget.excessTax, title: "Excess Tax"),


                        SizedBox(
                          height: height * .030,
                        ),
                        SelectableDropDownpopUp(

                          label: "Return Type",
                          type:"CustomReturnTypePopupCall",
                          value: widget.returnType.text,
                          onSelection: (String? va) {
                            print(
                                "+++++++++++++++++++++++");
                            //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                            setState(() {
                              widget.returnType.text=va??"";
                            });
                          },

                          restricted: true,
                        ),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            formatter: true,
                            controller: widget.returnTime, title: "Return Time"),
                        SizedBox(
                          height: height * .030,
                        ),
                        SelectableDropDownpopUp(


                          label: "Shelf Type",
                          type:"CustomReturnTypePopupCall",
                          value: widget.shelfType.text,
                          onSelection: (String? va) {
                            print(
                                "+++++++++++++++++++++++");
                            //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                            setState(() {
                              widget.shelfType.text=va??"";
                            });
                          },

                          restricted: true,
                        ),
                        SizedBox(
                          height: height * .030,
                        ),



                        NewInputCard(
                            formatter: true,
                            controller: widget.shelfTime, title: "Shelf Time"),
                      ],)),
                      Expanded(child: Column(children: [

                        NewInputCard(
                          formatter: true,
                            controller: widget.weightUomId, title: "Weight(Kg)"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            formatter: true,
                            controller: widget.height, title: "Height(meter)"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            formatter: true,
                            controller: widget.width, title: "Width(meter)"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            formatter: true,
                            controller: widget.length, title: "Length(meter)"),
                        SizedBox(
                          height: height * .030,
                        ),
                        PopUpSwitchTile(
                            value:widget.select?true:widget. active,
                            title: "Is Active",
                            onClick: (gg) {
                              if(widget.select==false){
                                widget.activeChange(!widget.active,type:"1");
                              }

                              setState(() {});
                            }),
                        SizedBox(height: height*.030,),
                        PopUpSwitchTile(
                            value:widget. needMultipleIntegreation??false,
                            title: "Need Multiple Integration",
                            onClick: (gg) {
                              widget.activeChange(!widget.needMultipleIntegreation,type:"2");




                              setState(() {});
                            }),
                        SizedBox(height: height*.030,),
                        PopUpSwitchTile(
                            value:widget. haveGiftOption??false,
                            title: "Have Gift Option",
                            onClick: (gg) {
                              widget.activeChange(!widget.haveGiftOption,type:"3");




                              setState(() {});
                            }),
                        SizedBox(height: height*.030,),
                        PopUpSwitchTile(
                            value:widget. haveWrapOption??false,
                            title: "Have Wrap Option",
                            onClick: (gg) {
                              widget.activeChange(!widget.haveWrapOption,type:"4");




                              setState(() {});
                            }),



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