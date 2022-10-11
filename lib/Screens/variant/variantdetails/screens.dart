import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/imagepost/imagepost_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/listvraiant/listvraiant_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variant_read.dart';

import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/dropdownbutton.dart';
import 'package:dropdown_search/dropdown_search.dart';



import '../../../core/uttils/variable.dart';
import 'model/screesns/variant tables.dart';
class Identification extends StatefulWidget {
  final TextEditingController barCode;
  final TextEditingController qrCode;
  final TextEditingController rfId;
  final List<AlternativeBarcode> alternativeBarcode;
  final List<AlternativeBarcode> alternativeQrCode;
  final Function barQrCodeTableAssign;
  Identification({required this.barCode,required this.qrCode,required this.rfId, required this.alternativeBarcode,required this.alternativeQrCode, required this.barQrCodeTableAssign});

  @override
  _IdentificationState createState() => _IdentificationState();
}

class _IdentificationState extends State<Identification> {
  TextEditingController controller=TextEditingController();
  List<AlternativeBarcode>alternativeBarcode=[];
  TextEditingController barCodeTextEditingController=TextEditingController();
  TextEditingController barCode2TextEditingController=TextEditingController();
  TextEditingController qrCodeTextEditingController=TextEditingController();
  List<TextEditingController>bacCodeListTextEditing=[];
  bool barActive=false;
  bool qrActive=false;


  List<AlternativeBarcode>alterNativeQrCode=[];
  bool onChange=false;
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    if(!onChange){


  alternativeBarcode=[];
  bacCodeListTextEditing=[];







      if(widget.alternativeBarcode?.isNotEmpty==true){
        for(var i=0;i<widget.alternativeBarcode.length;i++){
          var value=widget.alternativeBarcode[i].barcode;
          if(value==null)
            value="";
         bacCodeListTextEditing.add(TextEditingController(text: value));


        }

  alternativeBarcode= widget?.alternativeBarcode??[];






      }
      if(widget.alternativeBarcode?.isNotEmpty==true){
        alterNativeQrCode= widget?.alternativeQrCode??[];


      }
      setState(() {

      });





    }


    onChange=false;
    return   Builder(
      builder: (context) {

        return Container(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [

                    Expanded(
                      child: Column(

                        children: [
                          NewInputCard(
                              controller: widget.barCode, title: "Barcode"),
                        ],
                      ),
                    ),

                    // Expanded(
                    //
                    //   child: Column(
                    //     children: [
                    //       NewInputCard(
                    //           controller: widget.qrCode, title: "Qr code"),
                    //     ],
                    //   ),
                    // ),

                    Expanded(
                      child: Column(
                        children: [
                          NewInputCard(
                              controller: widget.rfId, title: "RF Id"),
                        ],
                      ),
                    ),
                  ],
                ),


                SizedBox(height: h*.03,),
                Container(
                  width: 2200,
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

                            'ID',

                            padding: EdgeInsets.all(7),

                            height: 46,
                            textColor: Colors.white,
                            // color: Color(0xffE5E5E5),

                            size: 13,


                          ),


                          tableHeadtext(
                            'Alternative Barcode',
                            textColor: Colors.white,
                            padding: EdgeInsets.all(7),
                            height: 46,
                            size: 13,
                            // color: Color(0xffE5E5E5),
                          ),

                          tableHeadtext(
                            'isActive',
                            textColor: Colors.white,
                            padding: EdgeInsets.all(7),
                            height: 46,
                            size: 13,
                            // color: Color(0xffE5E5E5),
                          ),
                          tableHeadtext(
                            '',
                            textColor: Colors.white,
                            padding: EdgeInsets.all(7),
                            height: 46,
                            size: 13,
                            // color: Color(0xffE5E5E5),
                          ),


                        ],

                      ),
        if (alternativeBarcode != null) ...[
        for (var i = 0; i < alternativeBarcode!.length; i++)
                      TableRow(
                          decoration: BoxDecoration(
                              color: Colors.grey
                                  .shade200,
                              shape: BoxShape
                                  .rectangle,
                              border:const  Border(
                                  left: BorderSide(
                                      width: .5,
                                      color: Colors
                                          .grey,
                                      style: BorderStyle
                                          .solid),
                                  bottom: BorderSide(
                                      width: .5,
                                      color: Colors
                                          .grey,
                                      style: BorderStyle
                                          .solid),
                                  right: BorderSide(
                                      color: Colors
                                          .grey,
                                      width: .5,
                                      style: BorderStyle
                                          .solid))),
                          children: [



            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,

              child:textPadding((i+1).toString()),
              // UnderLinedInput(),


            ),
          TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,

              child: UnderLinedInput(
                controller: bacCodeListTextEditing[i],
                  // initialCheck: true,
                  // last:alternativeBarcode?[i].barcode??"",
                onChanged: (va){

                    alternativeBarcode[i]=alternativeBarcode[i].copyWith(barcode: va.toString());
                },

              )),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,

            child:   CheckedBoxs(
                valueChanger:   alternativeBarcode[i].isActive,
                onSelection:(va){


                  bool? isActive =
                      alternativeBarcode[i].isActive;
                  setState(() {
                    setState(() {});
                    isActive = !isActive!;
                    alternativeBarcode[i] = alternativeBarcode[i]
                        .copyWith(
                        isActive: isActive);
                  });

                }

            ),),
                            TableTextButton(

                              label: "upadte",
                              onPress: (){


                                widget.barQrCodeTableAssign(type:"1",list:alternativeBarcode);
                              },



                            ),



                          ]),],

                      TableRow(
                          decoration: BoxDecoration(
                              color: Colors.grey
                                  .shade200,
                              shape: BoxShape
                                  .rectangle,
                              border:const  Border(
                                  left: BorderSide(
                                      width: .5,
                                      color: Colors
                                          .grey,
                                      style: BorderStyle
                                          .solid),
                                  bottom: BorderSide(
                                      width: .5,
                                      color: Colors
                                          .grey,
                                      style: BorderStyle
                                          .solid),
                                  right: BorderSide(
                                      color: Colors
                                          .grey,
                                      width: .5,
                                      style: BorderStyle
                                          .solid))),
                          children: [



                            TableCell(
                              verticalAlignment:
                              TableCellVerticalAlignment.middle,
                              child: textPadding(
                                  (alternativeBarcode.length+1).toString()?? "",
                                  fontSize: 12,
                                  padding: EdgeInsets.only(
                                      left: 11.5, top: 1.5),
                                  fontWeight: FontWeight.w500),
                            ),
                            TableCell(
                                verticalAlignment: TableCellVerticalAlignment.middle,

                                child: UnderLinedInput(
                                  controller: barCodeTextEditingController,


                                  onChanged: (va){

                                  },

                                )),
                            TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,

                              child:   CheckedBoxs(
                                  valueChanger: barActive,
                                  onSelection:(va){



                                    setState(() {

                                      barActive = !barActive!;

                                    });

                                  }

                              ),),
                            TableTextButton(

                              label: "Save",
                              onPress: (){
                                setState(() {
                                  onChange=true;
                                  bacCodeListTextEditing.add(TextEditingController(text: barCodeTextEditingController?.text??""));
                                  AlternativeBarcode model=AlternativeBarcode(
                                    barcode: barCodeTextEditingController.text??"",
                                    isActive: barActive
                                  );
                                  alternativeBarcode.add(model);

                                  widget.barQrCodeTableAssign(type:"1",list:alternativeBarcode);
                                  barCodeTextEditingController.text="";
                                  barActive=false;


                                });



                              },



                            ),



                          ]),


                    ],
                    widths: {
                      0: FlexColumnWidth(5),
                      1: FlexColumnWidth(5),
                      2: FlexColumnWidth(5),
                      3: FlexColumnWidth(2),


                    },

                  ),


                ),
                SizedBox(height: h*.03,),
                // Container(
                //   width: 2200,
                //   margin: EdgeInsets.symmetric(horizontal: w*.02),
                //   child: customTable(
                //
                //     border: const TableBorder(
                //
                //       verticalInside: BorderSide(
                //           width:.5,
                //           color: Colors.black45,
                //           style: BorderStyle.solid),
                //       horizontalInside: BorderSide(
                //           width:.3,
                //           color: Colors.black45,
                //           // color: Colors.blue,
                //           style: BorderStyle.solid),),
                //
                //     tableWidth: .5,
                //
                //     childrens:[
                //       TableRow(
                //
                //         // decoration: BoxDecoration(
                //
                //         //     color: Colors.green.shade200,
                //
                //         //     shape: BoxShape.rectangle,
                //
                //         //     border: const Border(bottom: BorderSide(color: Colors.grey))),
                //
                //         children: [
                //
                //           tableHeadtext(
                //
                //             'ID',
                //
                //             padding: EdgeInsets.all(7),
                //
                //             height: 46,
                //             textColor: Colors.white,
                //             // color: Color(0xffE5E5E5),
                //
                //             size: 13,
                //
                //
                //           ),
                //
                //
                //           tableHeadtext(
                //             'Alternative QR code',
                //             textColor: Colors.white,
                //             padding: EdgeInsets.all(7),
                //             height: 46,
                //             size: 13,
                //             // color: Color(0xffE5E5E5),
                //           ),
                //
                //           tableHeadtext(
                //             'isActive',
                //             textColor: Colors.white,
                //             padding: EdgeInsets.all(7),
                //             height: 46,
                //             size: 13,
                //             // color: Color(0xffE5E5E5),
                //           ),
                //           tableHeadtext(
                //             '',
                //             textColor: Colors.white,
                //             padding: EdgeInsets.all(7),
                //             height: 46,
                //             size: 13,
                //             // color: Color(0xffE5E5E5),
                //           ),
                //
                //
                //         ],
                //
                //       ),
                //           if (alterNativeQrCode != null) ...[
                //           for (var i = 0; i < alterNativeQrCode!.length; i++)
                //             TableRow(
                //                 decoration: BoxDecoration(
                //                     color: Colors.grey
                //                         .shade200,
                //                     shape: BoxShape
                //                         .rectangle,
                //                     border:const  Border(
                //                         left: BorderSide(
                //                             width: .5,
                //                             color: Colors
                //                                 .grey,
                //                             style: BorderStyle
                //                                 .solid),
                //                         bottom: BorderSide(
                //                             width: .5,
                //                             color: Colors
                //                                 .grey,
                //                             style: BorderStyle
                //                                 .solid),
                //                         right: BorderSide(
                //                             color: Colors
                //                                 .grey,
                //                             width: .5,
                //                             style: BorderStyle
                //                                 .solid))),
                //                 children: [
                //
                //
                //
                //                   TableCell(
                //                     verticalAlignment: TableCellVerticalAlignment.middle,
                //
                //                     child: UnderLinedInput(
                //                       initialCheck: true,
                //                       last:alterNativeQrCode?[i].id.toString()??"" ,
                //                     ),
                //                     // UnderLinedInput(),
                //
                //
                //                   ),
                //                   TableCell(
                //                       verticalAlignment: TableCellVerticalAlignment.middle,
                //
                //                       child: UnderLinedInput(
                //                         initialCheck: true,
                //                         last:        alterNativeQrCode?[i].qrcode??"",
                //                         onChanged: (va){
                //
                //                           alterNativeQrCode[i]=alterNativeQrCode[i].copyWith(qrcode: va.toString());
                //                         },
                //
                //                       )),
                //                   TableCell(
                //                     verticalAlignment: TableCellVerticalAlignment.middle,
                //
                //                     child:   CheckedBoxs(
                //                         valueChanger:   alterNativeQrCode[i].isActive??false,
                //                         onSelection:(va){
                //
                //
                //                           bool? isActive =
                //                               alterNativeQrCode[i].isActive;
                //                           setState(() {
                //                             setState(() {});
                //                             isActive = !isActive!;
                //                             alterNativeQrCode[i] = alterNativeQrCode[i]
                //                                 .copyWith(
                //                                 isActive: isActive);
                //                           });
                //
                //                         }
                //
                //                     ),),
                //                   TableTextButton(
                //
                //                     label: "upadte",
                //                     onPress: (){
                //
                //
                //                       widget.barQrCodeTableAssign(type:"2",list:alterNativeQrCode);
                //                     },
                //
                //
                //
                //                   ),
                //
                //
                //
                //                 ]),],
                //       TableRow(
                //           decoration: BoxDecoration(
                //               color: Colors.grey
                //                   .shade200,
                //               shape: BoxShape
                //                   .rectangle,
                //               border:const  Border(
                //                   left: BorderSide(
                //                       width: .5,
                //                       color: Colors
                //                           .grey,
                //                       style: BorderStyle
                //                           .solid),
                //                   bottom: BorderSide(
                //                       width: .5,
                //                       color: Colors
                //                           .grey,
                //                       style: BorderStyle
                //                           .solid),
                //                   right: BorderSide(
                //                       color: Colors
                //                           .grey,
                //                       width: .5,
                //                       style: BorderStyle
                //                           .solid))),
                //           children: [
                //
                //
                //
                //             TableCell(
                //               verticalAlignment:
                //               TableCellVerticalAlignment.middle,
                //               child: textPadding(
                //                   (alterNativeQrCode.length+1).toString()?? "",
                //                   fontSize: 12,
                //                   padding: EdgeInsets.only(
                //                       left: 11.5, top: 1.5),
                //                   fontWeight: FontWeight.w500),
                //             ),
                //             TableCell(
                //                 verticalAlignment: TableCellVerticalAlignment.middle,
                //
                //                 child: UnderLinedInput(
                //                   controller: qrCodeTextEditingController,
                //
                //
                //                   onChanged: (va){
                //
                //                   },
                //
                //                 )),
                //             TableCell(
                //               verticalAlignment: TableCellVerticalAlignment.middle,
                //
                //               child:   CheckedBoxs(
                //                   valueChanger: qrActive,
                //                   onSelection:(va){
                //
                //
                //
                //                     setState(() {
                //
                //                       qrActive = !qrActive!;
                //
                //                     });
                //
                //                   }
                //
                //               ),),
                //             TableTextButton(
                //
                //               label: "Save",
                //               onPress: (){
                //                 setState(() {
                //                   AlternativeBarcode model=AlternativeBarcode(
                //                       qrcode: qrCodeTextEditingController.text??"",
                //                       isActive: qrActive
                //                   );
                //                   alternativeBarcode.add(model);
                //
                //                   widget.barQrCodeTableAssign(type:"2",list:alterNativeQrCode);
                //                   qrCodeTextEditingController.text="";
                //                   qrActive=false;
                //
                //
                //                 });
                //
                //
                //
                //               },
                //
                //
                //
                //             ),
                //
                //
                //
                //           ]),
                //
                //
                //     ],
                //
                //   ),
                //
                //
                // ),
              ],
            ),
          );
      }
    )
    ;
  }
}
class ProductTables extends StatefulWidget {
  final List<Storage>? aboutProducts;
  final bool  addNew;
  List<ProductFeatures>? productDetails;
  List<ProductFeatures>? productFeatures;
  List<ProductFeatures>? additionalInfo;
  List<ProductFeatures>? nutriantsFacts;
  List<ProductFeatures>? imPorantInfo;
  List<Storage>? ingredians;
 final  List<Storage>? usageDirection;
 final  List<Storage>?storage;
 final  List<productBehaviour>?inforMationList;
 final  Function storageTableEdit;
 final  Function productTableEdit;
 final  Function productFeaturesableAssign;
  // final TextEditingController qrCode;
  // final TextEditingController rfId;
  ProductTables({required this.aboutProducts,
    required this.imPorantInfo,required this.
    ingredians,required this.productDetails,

    required this.productFeatures,required this.additionalInfo,required this.usageDirection,required this.nutriantsFacts,required this.storage, required this.storageTableEdit, required this.productTableEdit, required this.addNew, this.inforMationList, required this.productFeaturesableAssign});

  @override
  ProductTablesState createState() => ProductTablesState();
}

class ProductTablesState extends State<ProductTables> {
  TextEditingController controller=TextEditingController();

  bool onChange = false;
  List<Storage>? aboutProducts=[];

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    if(!onChange){
      aboutProducts=widget.aboutProducts;
    }
    onChange=false;
    return   Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ProductTable(
                  aboutProducts:widget.aboutProducts,
                    storageTableEdit:widget.storageTableEdit,
                  key:widget.key,
                  addNew:widget.addNew,




                ),
              ),
              
              Expanded(
                child: VariantProductDetails(
                    productDetails:widget.productDetails,
                  productTableEdit:widget.productTableEdit,

                ),
              )


            ],
          ),
          SizedBox(height: h*.02,),
          Row(
            children: [
              Expanded(
                child: PrtoductFeatures(
                  productFeatures:widget.productFeatures,
                  productTableEdit:widget.productTableEdit,

                ),
              ),
              
              Expanded(
                child: AdditionaslInfo(
                  additionalInfo:widget.additionalInfo,
                  productTableEdit:widget.productTableEdit,
                ),
              ),
             


            ],
          ),
          SizedBox(height: h*.02,),
          Row(
            children: [
              
              Expanded(
                child: NeutrialFacts(
                  nutriantsFacts:   widget.nutriantsFacts,
                  productTableEdit:widget.productTableEdit,
                ),
              ),
              
              Expanded(
                child: Ingredians(
                    ingredians:  widget.ingredians,
                  storageTableEdit:widget.storageTableEdit,
                ),
              ),
              

            ],
          ),


          SizedBox(height: h*.02,),
          Row(
            children: [
            
              Expanded(
                child: UsageDirection(
                  usageDirection:     widget.usageDirection,
                  storageTableEdit:widget.storageTableEdit,
                ),
              ),
              
              Expanded(
                child: StoragesWidget(
                  storage: widget.storage,
                  storageTableEdit:widget.storageTableEdit,
                ),
              )



            ],
          ),
          SizedBox(height: h*.02,),
          Row(
            children: [
              
              Expanded(
                child: ImportantInfo(
                  importantInfo:   widget.imPorantInfo,
                  productTableEdit:widget.productTableEdit,
                ),
              ),


              // Container(
              //   width: w/2.2,
              //   margin: EdgeInsets.symmetric(horizontal: w*.02),
              //   child: customTable(
              //
              //     border: const TableBorder(
              //
              //       verticalInside: BorderSide(
              //           width:.5,
              //           color: Colors.black45,
              //           style: BorderStyle.solid),
              //       horizontalInside: BorderSide(
              //           width:.3,
              //           color: Colors.black45,
              //           // color: Colors.blue,
              //           style: BorderStyle.solid),),
              //
              //     tableWidth: .5,
              //
              //     childrens:[
              //       TableRow(
              //
              //         // decoration: BoxDecoration(
              //
              //         //     color: Colors.green.shade200,
              //
              //         //     shape: BoxShape.rectangle,
              //
              //         //     border: const Border(bottom: BorderSide(color: Colors.grey))),
              //
              //         children: [
              //
              //           tableHeadtext(
              //
              //             'Gender Group',
              //
              //             padding: EdgeInsets.all(7),
              //
              //             height: 46,
              //             textColor: Colors.black,
              //             color: Color(0xffE5E5E5),
              //
              //             size: 13,
              //
              //
              //           ),
              //
              //
              //           tableHeadtext(
              //             'Age Group',
              //             textColor: Colors.black,
              //             padding: EdgeInsets.all(7),
              //             height: 46,
              //             size: 13,
              //             color: Color(0xffE5E5E5),
              //           ),
              //
              //           tableHeadtext(
              //             'Etinlk',
              //             textColor: Colors.black,
              //             padding: EdgeInsets.all(7),
              //             height: 46,
              //             size: 13,
              //             color: Color(0xffE5E5E5),
              //           ),
              //           tableHeadtext(
              //             'Countries',
              //             textColor: Colors.black,
              //             padding: EdgeInsets.all(7),
              //             height: 46,
              //             size: 13,
              //             color: Color(0xffE5E5E5),
              //           ),
              //           tableHeadtext(
              //             'Purpose',
              //             textColor: Colors.black,
              //             padding: EdgeInsets.all(7),
              //             height: 46,
              //             size: 13,
              //             color: Color(0xffE5E5E5),
              //           ),
              //           tableHeadtext(
              //             '',
              //             textColor: Colors.black,
              //             padding: EdgeInsets.all(7),
              //             height: 46,
              //             size: 13,
              //             color: Color(0xffE5E5E5),
              //           ),
              //
              //
              //         ],
              //
              //       ),
              //       if(inforMationList?.isNotEmpty==true)...[
              //         for(var i=0;i<inforMationList!.length;i++)
              //           TableRow(
              //               decoration: BoxDecoration(
              //                   color: Colors.grey
              //                       .shade200,
              //                   shape: BoxShape
              //                       .rectangle,
              //                   border:const  Border(
              //                       left: BorderSide(
              //                           width: .5,
              //                           color: Colors
              //                               .grey,
              //                           style: BorderStyle
              //                               .solid),
              //                       bottom: BorderSide(
              //                           width: .5,
              //                           color: Colors
              //                               .grey,
              //                           style: BorderStyle
              //                               .solid),
              //                       right: BorderSide(
              //                           color: Colors
              //                               .grey,
              //                           width: .5,
              //                           style: BorderStyle
              //                               .solid))),
              //               children: [
              //
              //                 TableCell(
              //                   verticalAlignment: TableCellVerticalAlignment.middle,
              //
              //                   child:  CustomDropDown(choosenValue: inforMationList?[i].gender??"",onChange: (val){
              //                     inforMationList[i].gender=val;
              //                     print(inforMationList);
              //
              //                   }, ),
              //
              //
              //                 ),
              //                 TableCell(
              //                   verticalAlignment: TableCellVerticalAlignment.middle,
              //
              //                   child:  UnderLinedInput(
              //
              //                     initialCheck: true,
              //                     last: inforMationList[i].age,
              //                     formatter: false,
              //                     onChanged: (val){
              //                       inforMationList[i].age=val;
              //                     },
              //
              //
              //
              //                   ),
              //
              //
              //                 ),
              //                 TableCell(
              //                   verticalAlignment: TableCellVerticalAlignment.middle,
              //
              //                   child:  UnderLinedInput(
              //                     formatter: false,
              //                     initialCheck: true,
              //                     last: inforMationList[i].ethlink,
              //                     onChanged: (val){
              //                       inforMationList[i].ethlink=val;
              //                     },
              //
              //
              //                   ),
              //
              //
              //                 ),
              //                 TableCell(
              //                   verticalAlignment: TableCellVerticalAlignment.middle,
              //
              //                   child: Container(
              //
              //                     // width: 100,
              //                     child: DropdownSearch<String>(
              //                       dropdownSearchDecoration:InputDecoration(
              //                         border: InputBorder.none,
              //
              //                       ),
              //
              //
              //                       // mode of dropdown
              //                       mode: Mode.DIALOG,
              //                       //to show search box
              //                       showSearchBox: true,
              //                       showSelectedItem: true,
              //
              //                       //list of dropdown items
              //                       items: [
              //                         "India",
              //                         "USA",
              //                         "Brazil",
              //                         "Canada",
              //                         "Australia",
              //                         "Singapore"
              //                       ],
              //                       // label: "Country",
              //                       onChanged: (String? va){
              //                         print(va);
              //                         inforMationList[i].countries=va;
              //
              //                       },
              //                       //show selected item
              //                       selectedItem: inforMationList[i].countries??"",
              //                     ),
              //                   ),),
              //                 TableCell(
              //                   verticalAlignment: TableCellVerticalAlignment.middle,
              //
              //                   child:   UnderLinedInput(
              //                     formatter: false,
              //                     initialCheck: true,
              //                     last: inforMationList[i].purpose,
              //                     onChanged: (val){
              //                       inforMationList[i].purpose=val;
              //                     },
              //
              //
              //
              //                   ),),
              //                 TableCell(
              //                   verticalAlignment: TableCellVerticalAlignment.middle,
              //
              //                   child:   TableTextButton(
              //                     label: "Add",
              //                     onPress: (){
              //                       // inforMationList?.add(InformationClass(
              //                       //   gender: choosenValue,
              //                       //   age: ageGroupController.text,
              //                       //    ,
              //                       //   countries:countryController.text,
              //                       //   purpose: purposeController.text,
              //                       //
              //                       // ));
              //                       setState(() {
              //
              //                       });
              //                       print(inforMationList!.length);
              //
              //
              //                     },
              //
              //
              //                   ),),
              //
              //
              //               ]),
              //
              //       ],
              //
              //       TableRow(
              //           decoration: BoxDecoration(
              //               color: Colors.grey
              //                   .shade200,
              //               shape: BoxShape
              //                   .rectangle,
              //               border:const  Border(
              //                   left: BorderSide(
              //                       width: .5,
              //                       color: Colors
              //                           .grey,
              //                       style: BorderStyle
              //                           .solid),
              //                   bottom: BorderSide(
              //                       width: .5,
              //                       color: Colors
              //                           .grey,
              //                       style: BorderStyle
              //                           .solid),
              //                   right: BorderSide(
              //                       color: Colors
              //                           .grey,
              //                       width: .5,
              //                       style: BorderStyle
              //                           .solid))),
              //           children: [
              //
              //             TableCell(
              //               verticalAlignment: TableCellVerticalAlignment.middle,
              //
              //               child:  CustomDropDown(choosenValue: choosenValue,onChange:(val){
              //                 choosenValue=val;
              //
              //               } ),
              //
              //
              //             ),
              //             TableCell(
              //               verticalAlignment: TableCellVerticalAlignment.middle,
              //
              //               child:  UnderLinedInput(
              //                 formatter: false,
              //
              //                 controller: ageGroupController,
              //
              //               ),
              //
              //
              //             ),
              //             TableCell(
              //               verticalAlignment: TableCellVerticalAlignment.middle,
              //
              //               child:  UnderLinedInput(
              //                 formatter: false,
              //                 controller: ethlinkController,
              //
              //               ),
              //
              //
              //             ),
              //             TableCell(
              //                 verticalAlignment: TableCellVerticalAlignment.middle,
              //
              //                 child: Container(
              //
              //                   // width: 100,
              //                   child: DropdownSearch<String>(
              //                     dropdownSearchDecoration:InputDecoration(
              //                       border: InputBorder.none,
              //
              //                     ),
              //
              //
              //                     // mode of dropdown
              //                     mode: Mode.DIALOG,
              //                     //to show search box
              //                     showSearchBox: true,
              //                     showSelectedItem: true,
              //
              //                     //list of dropdown items
              //                     items: [
              //                       "India",
              //                       "USA",
              //                       "Brazil",
              //                       "Canada",
              //                       "Australia",
              //                       "Singapore"
              //                     ],
              //                     // label: "Country",
              //                     onChanged: (String? va){
              //                       print(va);
              //                     },
              //                     //show selected item
              //                     selectedItem: "India",
              //                   ),
              //                 ),),
              //             TableCell(
              //               verticalAlignment: TableCellVerticalAlignment.middle,
              //
              //               child:   UnderLinedInput(
              //                 formatter: false,
              //                 controller: purposeController,
              //
              //
              //
              //               ),),
              //             TableCell(
              //               verticalAlignment: TableCellVerticalAlignment.middle,
              //
              //               child:   TableTextButton(
              //                 label: "Add",
              //                 onPress: (){
              //                   setState(() {
              //                     inforMationList?.add(InformationClass(
              //                       gender: choosenValue,
              //                       age: ageGroupController.text??'',
              //                       ethlink: ethlinkController.text,
              //                       countries:countryController.text,
              //                       purpose: purposeController.text,
              //
              //                     ));
              //                     choosenValue='';
              //                     ageGroupController.text="";
              //                     countryController.text="";
              //                     purposeController.text="";
              //                     ethlinkController.text="";
              //
              //
              //
              //                     print(inforMationList?[0].gender);
              //
              //                   });
              //
              //
              //
              //
              //                 },
              //
              //
              //               ),),
              //
              //
              //           ]),
              //
              //
              //     ],
              //
              //   ),
              //
              //
              // ),



            ],
          ),


          SizedBox(height: h*.04,),

          Row(
            children: [
              Expanded(

                child: ProductBehaviour(
                    inforMationList:  widget.inforMationList,
                    productFeaturesableAssign:widget.productFeaturesableAssign

                ),
              ),
            ],
          ),

        ],
      ),
    )
    ;
  }
}



class VariantStabletable extends StatefulWidget {
  final TextEditingController itemId;
  final TextEditingController variantCode;
  final TextEditingController variantName;
  final TextEditingController variantValue;
  final TextEditingController variantFrameWork;
  final TextEditingController searchName;
  final TextEditingController displayName;
  final TextEditingController manuFactureId;
  final TextEditingController manuFactureName;
  final TextEditingController saftyStock;
  final TextEditingController reorderPoint;
  final TextEditingController reorderQuantity;
  final bool salesBlock;
  final TextEditingController image1;
  final TextEditingController image2;
  final TextEditingController image3;
  final TextEditingController image4;
  final TextEditingController image5;
  final TextEditingController catalog1;
  final TextEditingController catalog2;
  final TextEditingController catalog3;
  final TextEditingController catalog4;
  final TextEditingController catalog5;
  final TextEditingController catalog6;
  final TextEditingController catalog7;
  final TextEditingController catalog8;
  final TextEditingController description;
  final TextEditingController arabicDescription;
  final TextEditingController additionDescription;
  final TextEditingController posName;
  final TextEditingController uomGroup;
  final TextEditingController baseuom;
  final TextEditingController salesUom;
  final TextEditingController purchaseUom;
  final TextEditingController grossWeight;
  final TextEditingController netWeight;
  final TextEditingController unitCost;
  final TextEditingController landingCost;
  final TextEditingController actualCost;
  final TextEditingController unitPrize;
  final TextEditingController basePrize;
  final TextEditingController producedCountry;
  final TextEditingController ratioEccomerce;
  final TextEditingController minMax;
  final TextEditingController wholeSaleStock;
  final TextEditingController minSalesOrderLimit;
  final TextEditingController maxSalesOrderLimit;
  final TextEditingController sellingId;
  final TextEditingController relatedItem;
  final TextEditingController linkedItem;
  final TextEditingController videoUrl;
  final TextEditingController minimumGp;
  final TextEditingController maximumGp;
  final TextEditingController averageGp;
  final TextEditingController targetedgp;
  final TextEditingController minPurchaseOrderLimit;
  final TextEditingController maxPurchaseOrderLimit;
  final TextEditingController vat;
  final TextEditingController exciseTax;
  final TextEditingController returnType;
  final TextEditingController returnTime;
  final TextEditingController status;
  final bool purchaseBlock;
  final int? veritiaclid;
  final bool stockWarning;
  final bool itmCatelog;
  final bool itmImage;
  final bool active;
  final Function({String type}) imagePostCheck;
  final Function({String type,bool val}) trueOrFalseChange;


  VariantStabletable({
    required this.imagePostCheck,
 required this.itemId,
    required this.image3,
    required this.image2,
    required this.actualCost,
    required this.landingCost,
    required this.unitPrize,
    required this.image1,
    required this.searchName,
    required this.variantFrameWork,
    required this.displayName,
    required this.variantName,
    required this.image4,
    required this.image5,
    required this.manuFactureId,
    required this.manuFactureName,
    required this.reorderPoint,
    required this.reorderQuantity,
    required this.saftyStock,
    required this.salesBlock,
    required this.variantCode,
    required this.variantValue,
    required this.description,
    required this.arabicDescription,
    required this.additionDescription,
    required this.posName,
    required this.uomGroup,
    required this.baseuom,
    required this.salesUom,
    required this.purchaseUom,
    required this.grossWeight,
    required this.netWeight,
    required this.unitCost,
    required this.basePrize,
    required this.producedCountry,
    required this.purchaseBlock,
    required this.ratioEccomerce,
    required this.minMax,
    required this.wholeSaleStock,
    required this.minSalesOrderLimit,
    required this.maxSalesOrderLimit,
    required this.stockWarning,
    required this.itmCatelog,
    required this.itmImage,
    required this.active,
    required this.sellingId,
    required this.relatedItem,
    required this.linkedItem,
    required this.videoUrl,
    required this.minimumGp,
    required this.maximumGp,
    required this.averageGp,
    required this.targetedgp,
    required this.minPurchaseOrderLimit,
    required this.maxPurchaseOrderLimit,
    required this.vat,
    required this.exciseTax,
    required this.returnType,
    required this.returnTime,
    required this.status, required this.trueOrFalseChange, required this.catalog1, required this.catalog2, required this.catalog3, required this.catalog4, required this.catalog5, required this.catalog6, required this.catalog7, required this.catalog8, required this.veritiaclid,




  });
  @override
  _VariantStabletableState createState() => _VariantStabletableState();
}

class _VariantStabletableState extends State<VariantStabletable> {
  TextEditingController  controller=TextEditingController();
  TextEditingController  codecontroller=TextEditingController();
  TextEditingController  namecontroller=TextEditingController();
  TextEditingController  imagecontroller=TextEditingController();
  TextEditingController  parentIdcontroller=TextEditingController();
  TextEditingController  descriptioncontroller=TextEditingController();
  TextEditingController  brandIdentifiercontroller=TextEditingController();
  TextEditingController  brandcontroller=TextEditingController();
  String imageName1="";
  String imageName2="";
  String imageName3="";
  String imageName4="";
  String imageName5="";
  String imageName6="";
  String imageName7="";
  String imageName8="";
  String imageEncode="";
  int? base_uom=0;

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
                              controller: widget.itemId,
                              title: "Item Id"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                            readOnly: true,
                              controller: widget.variantCode, title: "Variant Code"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                            readOnly: true,
                              controller: widget.variantName, title: "Variant Name"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              readOnly: true,
                              controller: widget.variantValue, title: "Variant value"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                            readOnly: true,

                             
                              controller: widget.variantFrameWork, title: "Variant freamework"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(


                              controller: widget.searchName, title: "Search Name"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(


                              controller: widget.displayName, title: "Display Name"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(


                              controller: widget.description, title: "Description"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(


                              controller: widget.arabicDescription, title: " ArabicDescription"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(


                              controller: widget.additionDescription, title: "Addition Description"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(


                              controller: widget.posName, title: "Pos Name"),
                          SizedBox(
                            height: height * .030,
                          ),
                          SelectableDropDownpopUp(

                            controller:widget.uomGroup,
                            label: "Uom Group",
                            type:"Uomgroup_PopUpCall",
                            value:  widget.uomGroup.text,
                            onchange: (vale){
                              // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                            },
                            enable: true,
                            onSelection: (BrandListModel? va) {
                              setState(() {

                                widget.uomGroup.text=va?.id.toString()??"";
                                Variable.uomGroupId=va?.id;
                                setState(() {

                                });


                                // onChange = true;
                                // orderType.text = va!;
                              });
                            },
                            onAddNew: () {


                            },
                          ),

                          SizedBox(
                            height: height * .030,
                          ),
                          SelectableDropDownpopUp(

                            controller: widget.baseuom,
                            label: "Base Uom",
                            type:"Uom_PopUpCall",
                            value:   widget.baseuom.text,
                            onchange: (vale){
                              // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                            },
                            enable: true,
                            onSelection: (BrandListModel? va) {
                              setState(() {

                                widget.baseuom.text=va?.id.toString()??"";
                                base_uom=va?.id;
                                Variable.uomId=va?.id;
                                setState(() {

                                });


                                // onChange = true;
                                // orderType.text = va!;
                              });
                            },

                          ),

                          SizedBox(
                            height: height * .030,
                          ),

                          SelectableDropDownpopUp(

                            controller: widget.salesUom,
                            label: "Sales Uom",
                              type:"SalesUom_PopUpCall",
                            id:base_uom??0,
                            value:   widget.salesUom.text,
                            onchange: (vale){
                              // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                            },
                            enable: true,
                            onSelection: (BrandListModel? va) {
                              setState(() {

                                widget.salesUom.text=va?.id.toString()??"";
                                setState(() {

                                });


                                // onChange = true;
                                // orderType.text = va!;
                              });
                            },

                          ),

                          SizedBox(
                            height: height * .030,
                          ),

                          SelectableDropDownpopUp(

                            controller: widget.purchaseUom,
                            label: "Purchase Uom",
                            type:"SalesUom_PopUpCall",
                            id:base_uom??0,
                            value:   widget.purchaseUom.text,
                            onchange: (vale){
                              // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                            },
                            enable: true,
                            onSelection: (BrandListModel? va) {
                              setState(() {

                                widget.purchaseUom.text=va?.id.toString()??"";
                                setState(() {

                                });


                                // onChange = true;
                                // orderType.text = va!;
                              });
                            },

                          ),

                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(


                              controller: widget.grossWeight, title: "Gross Weight"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard( formatter: true,



                              controller: widget.netWeight, title: "Net Weight"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              formatter: true,


                              controller: widget.unitCost, title: "Unit Cost"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                            formatter: true,


                              controller: widget.landingCost, title: "Landing Cost"),

                          SizedBox(
                            height: height * .229,
                          ),








                        ],
                      )),
                      Expanded(child: Column(children: [

                        NewInputCard(
                            formatter: true,


                            controller: widget.actualCost, title: "Actual Cost"),
                        SizedBox(
                          height: height * .030,
                        ),

                        NewInputCard(
                            formatter: true,


                            controller: widget.basePrize, title: "Base Prize"),
                        SizedBox(
                          height: height * .030,
                        ),

                        NewInputCard(


                            controller: widget.producedCountry, title: "Produced Country"),
                        SizedBox(
                          height: height * .030,
                        ),

                        NewInputCard(
                            formatter: true,
                            controller: widget.manuFactureId, title: "Manufacture Id"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            controller: widget.manuFactureName, title: "Manufacture Name"),

                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            controller: widget.saftyStock, title: "Safety Stock"),

                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            controller: widget.reorderPoint, title: "Reorder Point"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            formatter: true,
                            controller: widget.reorderQuantity, title: "Reorder  qty"),
                        SizedBox(
                          height: height * .030,
                        ),

                        NewInputCard(
                            controller: widget.ratioEccomerce, title: "Ratio to Ecommerce"),

                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            controller: widget.minMax, title: "Min Max ratio"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            controller: widget.wholeSaleStock, title: "Whole Sale Stock"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            formatter: true,
                            controller: widget.reorderQuantity, title: "Min Order Sale Limit"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            formatter: true,
                            controller: widget.maxSalesOrderLimit, title: "Max Sales Order Limit"),
                        SizedBox(
                          height: height * .030,
                        ),
                        SelectableDropDownpopUp(


                          controller:widget.sellingId,
                          label: "Sebling Id",
                          type:"Sebling_ListPopUpCall",
                          value:  widget.sellingId.text,
                          onchange: (vale){
                            print(vale);
                            context.read<ListvraiantCubit>().getSearchVariantList(vale);
                          },
                          enable: true,

                          onSelection: (BrandListModel? va) {
                            setState(() {

                              widget.sellingId.text=va?.code??"";

                              setState(() {

                              });


                              // onChange = true;
                              // orderType.text = va!;
                            });
                          },
                          onAddNew: () {


                          },
                        ),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCreateCard(title:"Linked Item" ,controller: widget.linkedItem,ontap: (){      showDailogPopUp(
                          context,
                          ConfigurePopup(
                            veritiaclid:widget.veritiaclid,
                            type: "LinkedItemCreatePopUp",
                          ),


                        );},),
                        // SelectableDropDownpopUp(
                        //
                        //   controller: widget.linkedItem,
                        //   label: "Linked Item",
                        //   // type: "Pricing_PopUpCall",
                        //   value: widget.linkedItem.text,
                        //
                        //   onchange: (vale) {
                        //
                        //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                        //   },
                        //   enable: true,
                        //   onSelection: (PricingTypeListModel? va) {
                        //
                        //   },
                        //   onAddNew: () {
                        //
                        //   },
                        // ),


                        // NewInputCard(
                        //     controller: widget.linkedItem, title: "Linked Item"),
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
                            controller: widget.maxSalesOrderLimit, title: "Maximum Gp"),
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
                            controller: widget.targetedgp, title: "targeted Gp"),

                        SizedBox(
                          height: height * .205,
                        ),





















                      ],)),
                      Expanded(child: Column(children: [




                        NewInputCard(
                            formatter: true,
                            controller: widget.minPurchaseOrderLimit, title: "Min purchase  order Limit"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            formatter: true,
                            controller: widget.maxPurchaseOrderLimit, title: "Max Purchase order Limit"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            formatter: true,
                            controller: widget.vat, title: "vat"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            formatter: true,
                            controller: widget.exciseTax, title: "Excise Tax"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            controller: widget.returnType, title: "Return type"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            controller: widget.returnTime, title: "Return time"),
                        SizedBox(
                          height: height * .030,
                        ),

                        FileUploadField(
                            fileName:widget.image1.text,
                            fileUrl:widget.image1.text,
                            onChangeTap: (p0) {
                              // loading = true;
                              setState(() {});
                            },
                            onChange: (myFile) {
                              widget.imagePostCheck(type: "1");
                              widget.image1.text=myFile?.fileName??"";
                              // Variable.mobileBannerImage = myFile.toUint8List();
                              var   imageEncode =
                              myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              context
                                  .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image1");
                              // Variable.bannerEncodedMobileBannerImage =
                              //     myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              //   context
                              //       .read<CreateWebImageCubit>()
                              //       .createMobImage();
                              // else
                              //   context.showSnackBarError(
                              //       "Please upload Banner of size Lesser than 230kb");
                            },
                            onImageChange: (newFile) async {
                              // Variable.popUp = false;

                              if (newFile.length <= 240000) {
                                // loading
                                //     ? showDailogPopUp(context, DialoguePopUp())
                                //     : Navigator.pop(context);
                                // context
                                //     .read<CreateWebImageCubit>()
                                //     .createMobImage();
                              } else
                                context.showSnackBarError(
                                    "Please upload Banner of size Lesser than 230kb");
                              setState(() {});
                            },
                            onCreate: true,
                            label: "image1"),

                        SizedBox(
                          height: height * .030,
                        ),
                        FileUploadField(
                            fileName:widget.image2.text,
                            fileUrl:widget.image2.text,
                            onChangeTap: (p0) {
                              // loading = true;
                              setState(() {});
                            },
                            onChange: (myFile) {
                              widget.imagePostCheck(type: "2");
                              widget.image2.text=myFile?.fileName??"";
                              // Variable.mobileBannerImage = myFile.toUint8List();
                              var   imageEncode =
                              myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              context
                                  .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image2");
                              // Variable.bannerEncodedMobileBannerImage =
                              //     myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              //   context
                              //       .read<CreateWebImageCubit>()
                              //       .createMobImage();
                              // else
                              //   context.showSnackBarError(
                              //       "Please upload Banner of size Lesser than 230kb");
                            },
                            onImageChange: (newFile) async {
                              // Variable.popUp = false;

                              if (newFile.length <= 240000) {
                                // loading
                                //     ? showDailogPopUp(context, DialoguePopUp())
                                //     : Navigator.pop(context);
                                // context
                                //     .read<CreateWebImageCubit>()
                                //     .createMobImage();
                              } else
                                context.showSnackBarError(
                                    "Please upload Banner of size Lesser than 230kb");
                              setState(() {});
                            },
                            onCreate: true,
                            label: "image2"),
                        SizedBox(
                          height: height * .030,
                        ),
                        FileUploadField(
                            fileName: widget.image3.text,
                            fileUrl:widget.image3.text,
                            onChangeTap: (p0) {
                              // loading = true;
                              setState(() {});
                            },
                            onChange: (myFile) {
                              widget.imagePostCheck(type: "3");
                              widget.image3.text=myFile?.fileName??"";
                              var    imageEncode =
                              myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              context
                                  .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image3");
                              // Variable.mobileBannerImage = myFile.toUint8List();

                              // Variable.bannerEncodedMobileBannerImage =
                              //     myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              //   context
                              //       .read<CreateWebImageCubit>()
                              //       .createMobImage();
                              // else
                              //   context.showSnackBarError(
                              //       "Please upload Banner of size Lesser than 230kb");
                            },
                            onImageChange: (newFile) async {
                              // Variable.popUp = false;

                              if (newFile.length <= 240000) {
                                // loading
                                //     ? showDailogPopUp(context, DialoguePopUp())
                                //     : Navigator.pop(context);
                                // context
                                //     .read<CreateWebImageCubit>()
                                //     .createMobImage();
                              } else
                                context.showSnackBarError(
                                    "Please upload Banner of size Lesser than 230kb");
                              setState(() {});
                            },
                            onCreate: true,
                            label: "image3"),


                        SizedBox(
                          height: height * .030,
                        ),

                        FileUploadField(
                            fileName: widget.image4.text,
                            fileUrl:widget.image4.text,
                            onChangeTap: (p0) {
                              // loading = true;
                              setState(() {});
                            },
                            onChange: (myFile) {
                              widget.imagePostCheck(type: "4");
                              widget.image4.text=myFile?.fileName??"";
                              // Variable.mobileBannerImage = myFile.toUint8List();
                              var imageEncode =
                              myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              context
                                  .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image4");


                              // Variable.bannerEncodedMobileBannerImage =
                              //     myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              //   context
                              //       .read<CreateWebImageCubit>()
                              //       .createMobImage();
                              // else
                              //   context.showSnackBarError(
                              //       "Please upload Banner of size Lesser than 230kb");
                            },
                            onImageChange: (newFile) async {
                              // Variable.popUp = false;

                              if (newFile.length <= 240000) {
                                // loading
                                //     ? showDailogPopUp(context, DialoguePopUp())
                                //     : Navigator.pop(context);
                                // context
                                //     .read<CreateWebImageCubit>()
                                //     .createMobImage();
                              } else
                                context.showSnackBarError(
                                    "Please upload Banner of size Lesser than 230kb");
                              setState(() {});
                            },
                            onCreate: true,
                            label: "Image4"),
                        SizedBox(
                          height: height * .030,
                        ),
                        FileUploadField(
                            fileName: widget.image5.text,
                            fileUrl:widget.image5.text,
                            onChangeTap: (p0) {
                              // loading = true;
                              setState(() {});
                            },
                            onChange: (myFile) {
                              widget.imagePostCheck(type: "5");
                              widget.image5.text=myFile?.fileName??"";
                              var     imageEncode =
                              myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              context
                                  .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "image5");
                              // Variable.mobileBannerImage = myFile.toUint8List();

                              // Variable.bannerEncodedMobileBannerImage =
                              //     myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              //   context
                              //       .read<CreateWebImageCubit>()
                              //       .createMobImage();
                              // else
                              //   context.showSnackBarError(
                              //       "Please upload Banner of size Lesser than 230kb");
                            },
                            onImageChange: (newFile) async {
                              // Variable.popUp = false;

                              if (newFile.length <= 240000) {
                                // loading
                                //     ? showDailogPopUp(context, DialoguePopUp())
                                //     : Navigator.pop(context);
                                // context
                                //     .read<CreateWebImageCubit>()
                                //     .createMobImage();
                              } else
                                context.showSnackBarError(
                                    "Please upload Banner of size Lesser than 230kb");
                              setState(() {});
                            },
                            onCreate: true,
                            label: "Image5"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            controller: widget.videoUrl, title: "Video Url"),
                        SizedBox(
                          height: height * .030,
                        ),


                        FileUploadField(
                            fileName:widget.catalog1.text,
                            fileUrl:widget.catalog1.text,
                            onChangeTap: (p0) {
                              // loading = true;
                              setState(() {});
                            },
                            onChange: (myFile) {
                              widget.imagePostCheck(type: "6");
                              widget.catalog1.text=myFile?.fileName??"";
                              // Variable.mobileBannerImage = myFile.toUint8List();
                              var   imageEncode =
                              myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              context
                                  .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "1");
                              // Variable.bannerEncodedMobileBannerImage =
                              //     myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              //   context
                              //       .read<CreateWebImageCubit>()
                              //       .createMobImage();
                              // else
                              //   context.showSnackBarError(
                              //       "Please upload Banner of size Lesser than 230kb");
                            },
                            onImageChange: (newFile) async {
                              // Variable.popUp = false;

                              if (newFile.length <= 240000) {
                                // loading
                                //     ? showDailogPopUp(context, DialoguePopUp())
                                //     : Navigator.pop(context);
                                // context
                                //     .read<CreateWebImageCubit>()
                                //     .createMobImage();
                              } else
                                context.showSnackBarError(
                                    "Please upload Banner of size Lesser than 230kb");
                              setState(() {});
                            },
                            onCreate: true,
                            label: "catalog1"),



                        SizedBox(
                          height: height * .030,
                        ),
                        FileUploadField(
                            fileName:widget.catalog2.text,
                            fileUrl:widget.catalog2.text,
                            onChangeTap: (p0) {
                              // loading = true;
                              setState(() {});
                            },
                            onChange: (myFile) {
                              widget.imagePostCheck(type: "7");
                              widget.catalog2.text=myFile?.fileName??"";
                              // Variable.mobileBannerImage = myFile.toUint8List();
                              var   imageEncode =
                              myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              context
                                  .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "2");
                              // Variable.bannerEncodedMobileBannerImage =
                              //     myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              //   context
                              //       .read<CreateWebImageCubit>()
                              //       .createMobImage();
                              // else
                              //   context.showSnackBarError(
                              //       "Please upload Banner of size Lesser than 230kb");
                            },
                            onImageChange: (newFile) async {
                              // Variable.popUp = false;

                              if (newFile.length <= 240000) {
                                // loading
                                //     ? showDailogPopUp(context, DialoguePopUp())
                                //     : Navigator.pop(context);
                                // context
                                //     .read<CreateWebImageCubit>()
                                //     .createMobImage();
                              } else
                                context.showSnackBarError(
                                    "Please upload Banner of size Lesser than 230kb");
                              setState(() {});
                            },
                            onCreate: true,
                            label: "catalog2"),


                        SizedBox(
                          height: height * .030,
                        ),


                        FileUploadField(
                            fileName:widget.catalog3.text,
                            fileUrl:widget.catalog3.text,
                            onChangeTap: (p0) {
                              // loading = true;
                              setState(() {});
                            },
                            onChange: (myFile) {
                              widget.imagePostCheck(type: "8");
                              widget.catalog3.text=myFile?.fileName??"";
                              // Variable.mobileBannerImage = myFile.toUint8List();
                              var   imageEncode =
                              myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              context
                                  .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "3");
                              // Variable.bannerEncodedMobileBannerImage =
                              //     myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              //   context
                              //       .read<CreateWebImageCubit>()
                              //       .createMobImage();
                              // else
                              //   context.showSnackBarError(
                              //       "Please upload Banner of size Lesser than 230kb");
                            },
                            onImageChange: (newFile) async {
                              // Variable.popUp = false;

                              if (newFile.length <= 240000) {
                                // loading
                                //     ? showDailogPopUp(context, DialoguePopUp())
                                //     : Navigator.pop(context);
                                // context
                                //     .read<CreateWebImageCubit>()
                                //     .createMobImage();
                              } else
                                context.showSnackBarError(
                                    "Please upload Banner of size Lesser than 230kb");
                              setState(() {});
                            },
                            onCreate: true,
                            label: "catalog3"),

                        SizedBox(
                          height: height * .030,
                        ),


                        FileUploadField(
                            fileName:widget.catalog4.text,
                            fileUrl:widget.catalog4.text,
                            onChangeTap: (p0) {
                              // loading = true;
                              setState(() {});
                            },
                            onChange: (myFile) {
                              widget.imagePostCheck(type: "9");
                              widget.catalog4.text=myFile?.fileName??"";
                              // Variable.mobileBannerImage = myFile.toUint8List();
                              var   imageEncode =
                              myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              context
                                  .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "4");
                              // Variable.bannerEncodedMobileBannerImage =
                              //     myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              //   context
                              //       .read<CreateWebImageCubit>()
                              //       .createMobImage();
                              // else
                              //   context.showSnackBarError(
                              //       "Please upload Banner of size Lesser than 230kb");
                            },
                            onImageChange: (newFile) async {
                              // Variable.popUp = false;

                              if (newFile.length <= 240000) {
                                // loading
                                //     ? showDailogPopUp(context, DialoguePopUp())
                                //     : Navigator.pop(context);
                                // context
                                //     .read<CreateWebImageCubit>()
                                //     .createMobImage();
                              } else
                                context.showSnackBarError(
                                    "Please upload Banner of size Lesser than 230kb");
                              setState(() {});
                            },
                            onCreate: true,
                            label: "catalog4"),
                        SizedBox(
                          height: height * .030,
                        ),


                        FileUploadField(
                            fileName:widget.catalog5.text,
                            fileUrl:widget.catalog5.text,
                            onChangeTap: (p0) {
                              // loading = true;
                              setState(() {});
                            },
                            onChange: (myFile) {
                              widget.imagePostCheck(type: "10");
                              widget.catalog5.text=myFile?.fileName??"";
                              // Variable.mobileBannerImage = myFile.toUint8List();
                              var   imageEncode =
                              myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              context
                                  .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "5");
                              // Variable.bannerEncodedMobileBannerImage =
                              //     myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              //   context
                              //       .read<CreateWebImageCubit>()
                              //       .createMobImage();
                              // else
                              //   context.showSnackBarError(
                              //       "Please upload Banner of size Lesser than 230kb");
                            },
                            onImageChange: (newFile) async {
                              // Variable.popUp = false;

                              if (newFile.length <= 240000) {
                                // loading
                                //     ? showDailogPopUp(context, DialoguePopUp())
                                //     : Navigator.pop(context);
                                // context
                                //     .read<CreateWebImageCubit>()
                                //     .createMobImage();
                              } else
                                context.showSnackBarError(
                                    "Please upload Banner of size Lesser than 230kb");
                              setState(() {});
                            },
                            onCreate: true,
                            label: "catalog5"),
                        SizedBox(
                          height: height * .030,
                        ),


                        FileUploadField(
                            fileName:widget.catalog6.text,
                            fileUrl:widget.catalog6.text,
                            onChangeTap: (p0) {
                              // loading = true;
                              setState(() {});
                            },
                            onChange: (myFile) {
                              widget.imagePostCheck(type: "11");
                              widget.catalog6.text=myFile?.fileName??"";
                              // Variable.mobileBannerImage = myFile.toUint8List();
                              var   imageEncode =
                              myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              context
                                  .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "6");
                              // Variable.bannerEncodedMobileBannerImage =
                              //     myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              //   context
                              //       .read<CreateWebImageCubit>()
                              //       .createMobImage();
                              // else
                              //   context.showSnackBarError(
                              //       "Please upload Banner of size Lesser than 230kb");
                            },
                            onImageChange: (newFile) async {
                              // Variable.popUp = false;

                              if (newFile.length <= 240000) {
                                // loading
                                //     ? showDailogPopUp(context, DialoguePopUp())
                                //     : Navigator.pop(context);
                                // context
                                //     .read<CreateWebImageCubit>()
                                //     .createMobImage();
                              } else
                                context.showSnackBarError(
                                    "Please upload Banner of size Lesser than 230kb");
                              setState(() {});
                            },
                            onCreate: true,
                            label: "catalog6"),
                        SizedBox(
                          height: height * .030,
                        ),


                        FileUploadField(
                            fileName:widget.catalog7.text,
                            fileUrl:widget.catalog7.text,
                            onChangeTap: (p0) {
                              // loading = true;
                              setState(() {});
                            },
                            onChange: (myFile) {
                              widget.imagePostCheck(type: "12");
                              widget.catalog7.text=myFile?.fileName??"";
                              // Variable.mobileBannerImage = myFile.toUint8List();
                              var   imageEncode =
                              myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              context
                                  .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "7");
                              // Variable.bannerEncodedMobileBannerImage =
                              //     myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              //   context
                              //       .read<CreateWebImageCubit>()
                              //       .createMobImage();
                              // else
                              //   context.showSnackBarError(
                              //       "Please upload Banner of size Lesser than 230kb");
                            },
                            onImageChange: (newFile) async {
                              // Variable.popUp = false;

                              if (newFile.length <= 240000) {
                                // loading
                                //     ? showDailogPopUp(context, DialoguePopUp())
                                //     : Navigator.pop(context);
                                // context
                                //     .read<CreateWebImageCubit>()
                                //     .createMobImage();
                              } else
                                context.showSnackBarError(
                                    "Please upload Banner of size Lesser than 230kb");
                              setState(() {});
                            },
                            onCreate: true,
                            label: "catalog7"),
                        SizedBox(
                          height: height * .030,
                        ),



                        FileUploadField(
                            fileName:widget.catalog8.text,
                            fileUrl:widget.catalog8.text,
                            onChangeTap: (p0) {
                              // loading = true;
                              setState(() {});
                            },
                            onChange: (myFile) {
                              widget.imagePostCheck(type: "13");
                              widget.catalog8.text=myFile?.fileName??"";
                              // Variable.mobileBannerImage = myFile.toUint8List();
                              var   imageEncode =
                              myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              context
                                  .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode,type: "8");
                              // Variable.bannerEncodedMobileBannerImage =
                              //     myFile.toBase64();
                              // widget.fileMobileNameCtrl.text =
                              //     myFile.fileName ?? "";
                              // if (Variable.bannerimage!.length <= 240000)
                              //   context
                              //       .read<CreateWebImageCubit>()
                              //       .createMobImage();
                              // else
                              //   context.showSnackBarError(
                              //       "Please upload Banner of size Lesser than 230kb");
                            },
                            onImageChange: (newFile) async {
                              // Variable.popUp = false;

                              if (newFile.length <= 240000) {
                                // loading
                                //     ? showDailogPopUp(context, DialoguePopUp())
                                //     : Navigator.pop(context);
                                // context
                                //     .read<CreateWebImageCubit>()
                                //     .createMobImage();
                              } else
                                context.showSnackBarError(
                                    "Please upload Banner of size Lesser than 230kb");
                              setState(() {});
                            },
                            onCreate: true,
                            label: "catalog8"),

                        SizedBox(
                          height: height * .12,
                        ),

                      ],))

                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                PopUpSwitchTile(
                value:widget?.salesBlock??false,
                title: "Sales Block",
                onClick: (gg) {
                bool val=widget.salesBlock;
                val=!val;
                widget.trueOrFalseChange(type: "Sales",val:val);

                // widget.activeChange(!widget.active);





                // extendedWarranty = gg;
                // widget.changeExtendedWarranty(gg);
                // onChangeExtWarranty = gg;
                setState(() {});
                }),

                PopUpSwitchTile(
                value:widget?.purchaseBlock??false,
                title: "Purchase Block",
                onClick: (gg) {
                bool val=widget.purchaseBlock;
                val=!val;
                widget.trueOrFalseChange(type:"Purchase",val:val);







                // extendedWarranty = gg;
                // widget.changeExtendedWarranty(gg);
                // onChangeExtWarranty = gg;
                setState(() {});
                }),

                    PopUpSwitchTile(
                        value:widget?.stockWarning??false,
                        title: "Stock Warning",
                        onClick: (gg) {
                          bool val=widget.stockWarning;
                          val=!val;
                          widget.trueOrFalseChange(type:"Stock",val:val);





                          // extendedWarranty = gg;
                          // widget.changeExtendedWarranty(gg);
                          // onChangeExtWarranty = gg;
                          setState(() {});
                        }),

                    PopUpSwitchTile(
                        value:widget?.itmCatelog??false,
                        title: "itm catelog",
                        onClick: (gg) {
                          bool val=widget.itmCatelog;
                          val=!val;
                          widget.trueOrFalseChange(type:"Catalog",val:val);





                          // extendedWarranty = gg;
                          // widget.changeExtendedWarranty(gg);
                          // onChangeExtWarranty = gg;
                          setState(() {});
                        }),

                    PopUpSwitchTile(
                        value:widget?.itmImage??false,
                        title: "itm Image",
                        onClick: (gg) {
                          bool val=widget.itmImage;
                          val=!val;
                          widget.trueOrFalseChange(type:"Image",val:val);





                          // extendedWarranty = gg;
                          // widget.changeExtendedWarranty(gg);
                          // onChangeExtWarranty = gg;
                          setState(() {});
                        }),

                    PopUpSwitchTile(
                        value:widget.active??false,
                        title: "Active",
                        onClick: (gg) {
                          bool val=widget.active;
                          val=!val;
                          widget.trueOrFalseChange(type:"Active",val:val);
                          // widget.activeChange(!widget.active);





                          // extendedWarranty = gg;
                          // widget.changeExtendedWarranty(gg);
                          // onChangeExtWarranty = gg;
                          setState(() {});
                        }),

                  ],
                )


              ],
            );
          }
      );
  }
}



class VendorDetailsVarient extends StatefulWidget {
 final  List<VendorDetails>? vendorDetails;
 final  Function vendorTableEdit;
 VendorDetailsVarient({required this.vendorDetails,required this.vendorTableEdit});
  @override
  _VendorDetailsVarientState createState() => _VendorDetailsVarientState();
}

class _VendorDetailsVarientState extends State<VendorDetailsVarient> {
  bool onChange=false;
  List<VendorDetails> vendorDetails=[];
  TextEditingController code=TextEditingController();
  TextEditingController refCode=TextEditingController();
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
    if(!onChange){
      print("welcome to the entire place");
      setState(() {
        vendorDetails.clear();
      });


      if(widget.vendorDetails?.isNotEmpty==true){
        vendorDetails=widget.vendorDetails??[];

      }





    }
    onChange=false;
    return  Container(
      width: width/2,
      margin: EdgeInsets.symmetric(horizontal: width*.02),
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

                ' Vendor ID',

                padding: EdgeInsets.all(7),

                height: 46,
                textColor: Colors.white,
                // color: Color(0xffE5E5E5),

                size: 13,


              ),


              tableHeadtext(
                'Vendor Name',
                textColor: Colors.white,
                padding: EdgeInsets.all(7),
                height: 46,
                size: 13,
                // color: Color(0xffE5E5E5),
              ),
              tableHeadtext(
                'Vendor reference code',
                textColor: Colors.white,
                padding: EdgeInsets.all(7),
                height: 46,
                size: 13,
                // color: Color(0xffE5E5E5),
              ),
              tableHeadtext(
                '',
                textColor: Colors.white,
                padding: EdgeInsets.all(7),
                height: 46,
                size: 13,
                // color: Color(0xffE5E5E5),
              ),



            ],

          ),
          if (vendorDetails?.isNotEmpty==true ) ...[


            for (var i = 0; i <vendorDetails!.length; i++)
              TableRow(
                  decoration: BoxDecoration(
                      color: Colors.grey
                          .shade200,
                      shape: BoxShape
                          .rectangle,
                      border:const  Border(
                          left: BorderSide(
                              width: .5,
                              color: Colors
                                  .grey,
                              style: BorderStyle
                                  .solid),
                          bottom: BorderSide(
                              width: .5,
                              color: Colors
                                  .grey,
                              style: BorderStyle
                                  .solid),
                          right: BorderSide(
                              color: Colors
                                  .grey,
                              width: .5,
                              style: BorderStyle
                                  .solid))),
                  children: [

    TableCell(
    verticalAlignment: TableCellVerticalAlignment.middle,

    child: textPadding((i+1).toString()) ,),
                    TableCell(

                        verticalAlignment: TableCellVerticalAlignment.middle,

                        child:
                        // Text(keys[i].value??"",)
                        UnderLinedInput(
                          initialCheck: true,
                          last: vendorDetails?[i].vendorCode??""??"",
                          formatter: false,
                          onChanged: (va){
                            print(va);
                            vendorDetails[i]=vendorDetails[i].copyWith(vendorCode: va);
                          },
                        )
                    ),
    UnderLinedInput(
    initialCheck: true,
    last: vendorDetails?[i].vendorReerenceCode??""??"",
    formatter: false,
    onChanged: (va){
    print(va);
    vendorDetails[i]=vendorDetails[i].copyWith(vendorReerenceCode: va);
    },
    ),

                    TableTextButton(onPress: (){
                      widget.vendorTableEdit(list:vendorDetails);

                    },label: "",)


                  ])],
          TableRow(
              decoration: BoxDecoration(
                  color: Colors.grey
                      .shade200,
                  shape: BoxShape
                      .rectangle,
                  border:const  Border(
                      left: BorderSide(
                          width: .5,
                          color: Colors
                              .grey,
                          style: BorderStyle
                              .solid),
                      bottom: BorderSide(
                          width: .5,
                          color: Colors
                              .grey,
                          style: BorderStyle
                              .solid),
                      right: BorderSide(
                          color: Colors
                              .grey,
                          width: .5,
                          style: BorderStyle
                              .solid))),
              children: [
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,

                  child: textPadding((vendorDetails.length+1).toString()) ,),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,

                  child:
                  UnderLinedInput(
                    formatter: false,
                    controller: code,
                  ),
                ),
                TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,

                    child:  UnderLinedInput(
                      formatter: false,
                      controller: refCode,
                    )),
                TableTextButton(onPress: (){
                  widget.vendorTableEdit(list:vendorDetails);
                  VendorDetails model=VendorDetails(
                    vendorCode: code.text??"",
                    vendorReerenceCode: refCode.text??"",
                  );
                  onChange=true;
                  setState(() {
                    vendorDetails.add(model);
                    widget.vendorTableEdit(list:vendorDetails);
                    code.text="";
                    refCode.text="";
                  });


                },label: "Save",)



              ]),


        ],

      ),


    );
  }
}


class InformationClass{
  String? gender;
  String? age;
  String? countries;
  String? ethlink;
  String? purpose;
  InformationClass({required this.gender,required this.age,required this.countries,required this.purpose,required this.ethlink});


}