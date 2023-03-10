import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/promotiontab/bogo_tab/cubit/bogo_read/bogo_read_cubit.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/widgets/customtable.dart';

class BogoVariantGrowableTable extends StatefulWidget {
  final  List<Segment> segmentList;
  final Function updation;
  final String applyingType;
  final String applyingTypeCode;
  final bool select;
  // final  bool addNew;
  final  Key? key;
  BogoVariantGrowableTable({ required this.segmentList, required this.updation, required this.applyingType, required this.applyingTypeCode, this.key, required this.select});
  @override
  BogoVariantGrowableTableState createState() => BogoVariantGrowableTableState();
}

class BogoVariantGrowableTableState extends State<BogoVariantGrowableTable> {
  String variantCode="";
  String variantName="";
  int? variantId;
  bool isActive=false;
  Barcode barcode=Barcode();
  List<VariantModel>table=[];
  bool onSaveActive = false;
  saveButtonActovde(String key,String val){
    print(key);
    print(val);

    key=(key.replaceAll(' ', ''));
    val=(val.replaceAll(' ', ''));
    if(key.isNotEmpty==true && val.isNotEmpty==true){
      setState(() {
        onSaveActive=true;
      });
    }
    else{
      setState(() {
        onSaveActive=false;
      });

    }
  }
  clear(){
    variantCode="";
    variantName="";
    isActive=false;
    variantId=null;
    table=[];
    barcode=barcode.copyWith(barcodeNumber: "",fileName: "");
  }

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;

    return
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


            data.lines != null ? table =List.from( data?.lines ?? []) : table = [];


          });
        });
  },
  child: Builder(
          builder: (context) {
            return   Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  // width: w/5,
                  margin: EdgeInsets.symmetric(horizontal: w*.02),
                  child: customTable(

                    border: const TableBorder(

                      verticalInside: BorderSide(
                          width:.5,
                          color: Colors.black45,
                          style: BorderStyle.solid),
                      horizontalInside: BorderSide(
                          width:.3,
                          color: Colors.black45,
                          // color: Colors.blue,
                          style: BorderStyle.solid),),

                    tableWidth: .5,

                    childrens:[
                      TableRow(

                        // decoration: BoxDecoration(

                        //     color: Colors.green.shade200,

                        //     shape: BoxShape.rectangle,

                        //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                        children: [

                          tableHeadtext(

                            'Variant Id',

                            // padding: EdgeInsets.all(7),
                            //
                            // height: 46,
                            textColor: Colors.white,


                            size: 13,


                          ),
                          tableHeadtext(

                            'Variant Name',

                            // padding: EdgeInsets.all(7),
                            //
                            // height: 46,
                            textColor: Colors.white,


                            size: 13,


                          ),
                          tableHeadtext(

                            "Barcode",

                            // padding: EdgeInsets.all(7),
                            //
                            // height: 46,
                            textColor: Colors.white,


                            size: 13,


                          ),
                          tableHeadtext(

                            "Is Active",

                            // padding: EdgeInsets.all(7),
                            //
                            // height: 46,
                            textColor: Colors.white,


                            size: 13,


                          ),       tableHeadtext(

                            "",

                            // padding: EdgeInsets.all(7),
                            //
                            // height: 46,
                            textColor: Colors.white,


                            size: 13,


                          ),





                        ],

                      ),
                      if (table.isNotEmpty==true ) ...[


                        for (var i = 0; i < table.length; i++)
                          TableRow(
                              decoration: BoxDecoration(
                                  color: Pellet.tableRowColor,
                                  shape: BoxShape.rectangle,
                                  border:  Border(
                                      left: BorderSide(

                                          color: Color(0xff3E4F5B).withOpacity(.1),
                                          width: .4,
                                          style: BorderStyle.solid),
                                      bottom: BorderSide(

                                          color:   Color(0xff3E4F5B).withOpacity(.1),
                                          style: BorderStyle.solid),
                                      right: BorderSide(
                                          color:   Color(0xff3E4F5B).withOpacity(.1),
                                          width: .4,

                                          style: BorderStyle.solid))),
                              children: [

                                TableCell(
                                  verticalAlignment: TableCellVerticalAlignment.middle,

                                  child:
                                  VariantIdTAble(
                                    text:table[i].variantCode,
                                    onTap: (){
                                      List<String> list=[];

                                      for (var val in widget.segmentList)
                                        list.add(val.segmentCode.toString());
                                      print("sasasaaaaaaaaaaaaaa"+list.toString());

                                      PromotionVariantPostModel model=PromotionVariantPostModel(
                                          applyingTypeCode: widget.applyingTypeCode,
                                          applyinType: widget.applyingType,
                                          searchElement: "",
                                          segmentList:list,
                                          inventoryId: Variable.inventory_ID
                                      );
                                      showDailogPopUp(
                                        context,
                                        TableConfigurePopup(
                                          object: model,
                                          // inventory: Variable.inventory_ID,
                                          type: "VariantListPopup",
                                          valueSelect: (SaleLines? va) {


                                            setState(() {
                                              table[i]=table[i].copyWith(variantCode:va?.variantCode??"",variantName:va?.variantName??"",updateCheck: true,barcode: va?.barcode?.barcodeNumber  );




                                              // orderType = va!;
                                            });
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                  // textPadding(table[i].variantCode.toString()??"")



                                ),
                                TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,

                                    child:textPadding(table[i].variantName.toString())



                                ),
                                TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,

                                    child:textPadding(table[i].barcode.toString()??"")



                                ),
                                TableCell(
                                  verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                                  child: CheckedBoxs(
                                      valueChanger:
                                      table?[i].isActive == null
                                          ? false
                                          : table?[i].isActive,
                                      onSelection: (bool? value) {
                                        bool? isActive =table[i].isActive;
                                        setState(() {
                                          // widget.updateCheck(true);
                                          // print("aaaaaaaaaaa"+isActive.toString());
                                          // table1[i] = table1[i].copyWith(updatecheck: true);
                                          table[i] = table[i].copyWith(updateCheck: true);
                                          setState(() {});
                                          isActive = !isActive!;
                                          print("aaaaaaaaaaa"+isActive.toString());
                                          table[i] = table[i]
                                              .copyWith(
                                              isActive: isActive);
                                        });



                                      }),
                                ),

                                TableCell(
                                  verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TableTextButton(
                                          onPress: () {

                                            setState(() {
                                              // widget.updateCheck(false);
                                              table[i]=      table[i].copyWith(updateCheck: false);
                                              widget.updation(table);


                                            });

                                          },
                                          textColor:table[i].updateCheck==true?Pellet.tableBlueHeaderPrint:Colors.grey ,
                                          label:
                                          table[i].updateCheck==true? "UPDATE":"",
                                        ),
                                      ),
                                      SizedBox(width: 4,),


                                    if(widget.select!)  TableIconTextButton(

                                        // textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                                        // buttonBagroundColor:upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                                        // bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Colors.transparent,
                                        onPress: () {

                                          setState(() {


                                            table?.removeAt(i);
                                            widget.updation(table);

                                          });
                                        },
                                        icon: Icons.delete,
                                        label: "",
                                      ), SizedBox(width: 4,),

                                    ],
                                  ),
                                )




                              ]),],
                      TableRow(
                          decoration: BoxDecoration(
                              color: Pellet.tableRowColor,
                              shape: BoxShape.rectangle,
                              border:  Border(
                                  left: BorderSide(

                                      color: Color(0xff3E4F5B).withOpacity(.1),
                                      width: .4,
                                      style: BorderStyle.solid),
                                  bottom: BorderSide(

                                      color:   Color(0xff3E4F5B).withOpacity(.1),
                                      style: BorderStyle.solid),
                                  right: BorderSide(
                                      color:   Color(0xff3E4F5B).withOpacity(.1),
                                      width: .4,

                                      style: BorderStyle.solid))),
                          children: [

                            TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,

                              child:
                              VariantIdTAble(
                                text:variantCode,
                                onTap: (){
                                  List<String> list=[];

                                  for (var val in widget.segmentList)
                                    list.add(val.segmentCode.toString());
                                  print("sasasaaaaaaaaaaaaaa"+list.toString());

                                  PromotionVariantPostModel model=PromotionVariantPostModel(
                                      applyingTypeCode: widget.applyingTypeCode,
                                      applyinType: widget.applyingType,
                                      searchElement: "",
                                      segmentList:list,
                                      inventoryId: Variable.inventory_ID
                                  );
                                  showDailogPopUp(
                                    context,
                                    TableConfigurePopup(
                                      object: model,
                                      // inventory: Variable.inventory_ID,
                                      type: "VariantListPopup",
                                      valueSelect: (SaleLines? va) {


                                        setState(() {
                                          variantCode=va?.variantCode??"";
                                          variantId=va?.variantId??null;
                                          variantName=va?.variantName??"";
                                          print("barcodeeeeeeeeeeee");
                                          print(va?.barcode?.barcodeNumber??"");
                                          barcode=      barcode.copyWith(barcodeNumber: va?.barcode?.barcodeNumber??"");
                                          saveButtonActovde(variantCode,variantName);



                                          // orderType = va!;
                                        });
                                      },
                                    ),
                                  );
                                },
                              ),
                              // UnderLinedInput(
                              //   formatter: false,
                              // ),


                            ),

                            TableCell(
                                verticalAlignment: TableCellVerticalAlignment.middle,

                                child:textPadding(variantName??"")
                              // UnderLinedInput(
                              //   formatter: false,
                              // ),


                            ),

                            TableCell(
                                verticalAlignment: TableCellVerticalAlignment.middle,

                                child:textPadding(barcode?.barcodeNumber??"")
                              // UnderLinedInput(
                              //   formatter: false,
                              // ),


                            ),
                            TableCell(
                              verticalAlignment:
                              TableCellVerticalAlignment.middle,
                              child: CheckedBoxs(
                                // color: Color(0xff3E4F5B),
                                valueChanger: isActive,
                                onSelection: (bool? value) {
                                  // clear=true;
                                  setState(() {
                                    isActive = !isActive!;
                                  });
                                },
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                              TableCellVerticalAlignment.middle,
                              child: TableTextButton(
                                  buttonBagroundColor:onSaveActive?Pellet.bagroundColor:Colors.transparent,
                                  textColor:onSaveActive?Pellet.bagroundColor:Colors.black,
                                  bagroundColor: onSaveActive?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),
                                  label: "Save",
                                  onPress: () {
                                    setState(() {
                                      if(variantCode.isNotEmpty && variantName.isNotEmpty){
                                        table.add(VariantModel(
                                          variantCode: variantCode,
                                          barcode: barcode.barcodeNumber,
                                          variantName: variantName.isEmpty?"":variantName,
                                          isActive: isActive,
                                        ));
                                        variantCode="";
                                        variantName="";
                                        variantId=null;
                                        barcode=barcode.copyWith(barcodeNumber: "",fileName: "");
                                        onSaveActive=false;
                                        isActive=false;
                                        widget.updation(table);
                                      }

                                    });
                                  }),
                            )


                          ])


                    ],
                    widths: {
                      0: FlexColumnWidth(3),
                      1: FlexColumnWidth(3),
                      2: FlexColumnWidth(3),
                      3: FlexColumnWidth(1.5),
                      4: FlexColumnWidth(1.5),

                    },

                  ),


                ),
              ],
            );
          }
      ),
);

  }
}