import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/widgets/NewinputScreen.dart';

class CustomizedStableTable extends StatefulWidget {
  final TextEditingController group;
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

  final bool active;
  final Function activeChange;


  CustomizedStableTable({
    required this.group, required this.code, required this.minimumGp, required this.averageGp, required this.maximumGp, required this.targetedGp, required this.vat, required this.excessTax, required this.returnType, required this.returnTime, required this.weightUomId, required this.height, required this.width, required this.length, required this.active, required this.activeChange});
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
              children: [
                Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(child: Column(
                        children: [

                          NewInputCard(
                              readOnly: true,
                              controller: widget.group,
                              title: "Group"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              controller: widget.code, title: "Code"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              controller: widget.minimumGp, title: "Minimum Gp"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              controller: widget.averageGp, title: "Average Gp"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(

                              controller: widget.maximumGp, title: "Maximum Gp"),
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


                        NewInputCard(
                            controller: widget.targetedGp, title: "Targeted Gp"),
                        SizedBox(
                          height: height * .030,
                        ),
                        // NewInputCard(controller: widget.uomGroupNameController,
                        //   icondrop:true,title: "Uom Group",ontap: (){
                        //     showDailogPopUp(
                        //       context,
                        //       TableConfigurePopup(
                        //         type: "UomGroupTabalePopup", valueSelect: (BrandListModel va){
                        //
                        //         setState(() {
                        //
                        //
                        //
                        //           widget.uomGroupController.text=va?.code??"";
                        //           widget.uomGroupNameController.text=va?.name??"";
                        //           Variable.uomGroupId=va?.id;
                        //           setState(() {
                        //
                        //           });
                        //
                        //
                        //           // onChange = true;
                        //           // orderType.text = va!;
                        //         });
                        //
                        //       },
                        //       ),
                        //
                        //
                        //     );
                        //
                        //   },),
                        // SelectableDropDownpopUp(
                        //
                        //   controller:widget.uomGroupNameController,
                        //   label: "Uom Group",
                        //   type:"Uomgroup_PopUpCall",
                        //   value:  widget.uomGroupNameController.text,
                        //   onchange: (vale){
                        //     print("Akkk"+vale.toString());
                        //     context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                        //   },
                        //   enable: true,
                        //   onSelection: (BrandListModel? va) {
                        //     setState(() {
                        //       widget.uomGroupController.text=va?.code??"";
                        //     widget.uomGroupNameController.text=va?.name??"";
                        //     Variable.uomGroupId=va?.id;
                        //
                        //
                        //     });
                        //
                        //
                        //
                        //
                        //
                        //
                        //
                        //
                        //       // onChange = true;
                        //       // orderType.text = va!;
                        //
                        //   },
                        //   onAddNew: () {
                        //
                        //     showDailogPopUp(
                        //       context,
                        //       ConfigurePopup(
                        //         type: "uomgroup",
                        //
                        //       ),
                        //
                        //
                        //     );
                        //   },
                        // ),




                        NewInputCard(controller: widget.vat,
                          icondrop:true,
                          title: "VAT",
                          // ontap: (){
                          //   showDailogPopUp(
                          //     context,
                          //     TableConfigurePopup(
                          //       type: "baseUomTabalePopup", valueSelect: (BrandListModel va){
                          //
                          //       setState(() {
                          //         print(va?.uomCode);
                          //         print(va);
                          //
                          //
                          //
                          //         widget.uomController.text=va?.uomCode??"";
                          //         widget.baseuomNameController.text=va?.name??"";
                          //         setState(() {
                          //
                          //         });
                          //
                          //
                          //         // onChange = true;
                          //         // orderType.text = va!;
                          //       });
                          //
                          //     },
                          //     ),
                          //
                          //
                          //   );
                          //
                          // },


                        ),
                        // SelectableDropDownpopUp(
                        //
                        //   controller:widget.baseuomNameController,
                        //   label: "base uom",
                        //   type:"Uom_PopUpCall",
                        //   value:  widget.baseuomNameController.text,
                        //   onchange: (vale){
                        //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                        //   },
                        //   enable: true,
                        //   onSelection: (BrandListModel? va) {
                        //     setState(() {
                        //
                        //       widget.uomController.text=va?.uomCode??"";
                        //       widget.baseuomNameController.text=va?.name??"";
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
                        //         type: "base_uom",
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
                            controller: widget.excessTax, title: "Excess  Tax"),


                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            controller: widget.returnType, title: "Return Type"),
                        SizedBox(
                          height: height * .030,
                        ),

                        NewInputCard(
                            controller: widget.returnTime, title: "Return Time"),
                        // NewInputCard(
                        //   controller: widget.status, title: "Status", ),
                        // SizedBox(
                        //   height: height * .045,
                        // ),




                        // SizedBox(
                        //   height: height * .145,
                        //
                        // ),
                        // SizedBox(
                        //   height:height*.034,
                        //
                        // ),


                      ],)),
                      Expanded(child: Column(children: [
                        NewInputCard(
                            controller: widget.weightUomId, title: "Weight UOM Id"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            controller: widget.height, title: "Height"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            controller: widget.width, title: "Width"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            controller: widget.length, title: "Length"),
                        SizedBox(
                          height: height * .030,
                        ),
                        PopUpSwitchTile(
                            value:widget. active??false,
                            title: "Is Active",
                            onClick: (gg) {
                              widget.activeChange(!widget.active);





                              // extendedWarranty = gg;
                              // widget.changeExtendedWarranty(gg);
                              // onChangeExtWarranty = gg;
                              setState(() {});
                            }),
                        SizedBox(height: height*.030,)


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