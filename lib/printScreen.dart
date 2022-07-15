
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:inventory/assets/icon_constants.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'commonWidget/popupinputfield.dart';

class PrintScreen extends StatefulWidget {
  final String vendorCode;
  final String note;
  final bool select;
  final String orderCode;
  final String orderDate;
  final String remarks;
  final double? discount;
  final double? vat;
  final double? variableAmount;
  final double? actualCost;
  final double? unitCost;
  final double? excisetax;
  final  List<OrderLines> table;

  PrintScreen({
    this.vendorCode="",
    this.orderCode="",
    this.note="",
    this.remarks="",
    this.orderDate="",
    required this.table,
    this.actualCost=0.00,
    this.variableAmount=0.00,
    this.select=false,
    this.discount=0.00,
    this.vat=0.00,
    this.unitCost=0.00,
    this.excisetax=0.00,




  });

  @override
  _PrintScreenState createState() => _PrintScreenState();
}

class _PrintScreenState extends State<PrintScreen> {
  late AutoScrollController _scrollController;
  @override
  void initState() {

    _scrollController = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }


  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(

      body:PdfPreview(
        build: (format) => _generatePdf(format,"title",widget.orderDate, widget.orderCode,context,widget.vendorCode,
            widget.discount,widget.actualCost,widget.variableAmount,widget.unitCost,widget.excisetax,widget.vat,widget.note,widget.remarks,widget.table),
      ),

    );
  }
}
Future<Uint8List> _generatePdf(PdfPageFormat format, String title,String orderDate,String orderCode,BuildContext context,String vendorCode,
    double? discount,double? actualCost,double? variableAmount,double? unitCost
    ,double? excisetax,double? vat,String note,String remarks,List<OrderLines> table) async {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  final pdf = pw.Document(version: PdfVersion.pdf_1_5, compress: true);
  final font = await PdfGoogleFonts.nunitoExtraLight();
  // final logo = await networkImage('https://rgcdynamics-logos.s3.ap-south-1.amazonaws.com/Ahlan%20New-03.png');

  pdf.addPage(
    pw.Page(
      pageFormat:    format.copyWith(marginLeft: 0, marginTop: 0, marginRight: 0, marginBottom: 0),
      build: (context) {
        return
         pw. Container(

            // backgroundColor: Colors.white,
            child:pw.Column(
              children: [

              pw.  Container(
                  height:height*.155 ,


                color: PdfColor.fromInt(0xAAF7F7F7),
                  child:pw. Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                    // pw.  Container(
                    //
                    //     height: 16,
                    //     width: 16,
                    //     // decoration: pw. BoxDecoration(
                    //     //     image:pw. DecorationImage(
                    //     //         image: NetworkImage("https://i.pinimg.com/736x/d2/53/fb/d253fbcb29b2c743b57816b23746fe12--portugal-national-team-cristiano-ronaldo-portugal.jpg")
                    //     //     )
                    //     // ),
                    //     child: pw. Container(
                    //         child: pw.Image(logo)),
                    //
                    //   ),
                     pw. Spacer(),
                     pw. Container(
                       margin:  pw.EdgeInsets.symmetric(horizontal:width/103),
                        // padding:pw. EdgeInsets.only(right: width*.01),

                        child:pw. Column(
                          crossAxisAlignment:pw. CrossAxisAlignment.end,
                          children: [
                          pw.  SizedBox(height: height*.06,),
                          pw.  Text("8606200441",
                              style: pw.TextStyle(
                                 // color:Color(0xff565555) ,
                                  fontSize:7 ),),
                          pw.  SizedBox(height: height*.005,),
                           pw. Text("akshaygmail,com",
                              style:pw. TextStyle(
                                  // color:Color(0xff565555) ,
                                  fontSize:7 ),),
                         pw.   SizedBox(height: height*.009,),
                           pw. Text("PURCHASE ORDER",
                              style:pw. TextStyle(

                                  color: PdfColor.fromInt(0xAA1F6BA9),
                                fontSize:height*.029,fontWeight: pw.FontWeight.bold ,  letterSpacing: 2.0,),),
                         pw.  SizedBox(height: height*.009,)

                          ],
                        ),
                      ),




                    ],
                  ),
                ),

             // pw.   PrintTitleScreen(),


                pw.   Container(
                  // color:pw. Colors.white,
                  child:pw. Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      pw.  SizedBox(height: 10,),
                      pw.  Container(
                        margin:  pw.EdgeInsets.symmetric(horizontal:width/103),
                        child:pw. Row(
                          mainAxisAlignment:  pw.MainAxisAlignment.start,
                          children: [
                            pw. Container(
                              height: 70,
                              child: pw.Column(
                                crossAxisAlignment:pw. CrossAxisAlignment.start,
                                children: [
                                  pw.   Text("Ahlan cart company Limed",
                                    style:  pw.TextStyle( fontSize:15,fontWeight:pw. FontWeight.bold ),),
                                  pw.  SizedBox(height: 2,),
                                  pw.  Text("Shop no. 514 5th floor aditya arcademall",
                                    style:  pw.TextStyle( fontSize:7 ),),
                                  pw.   SizedBox(height: 2,),
                                  pw. Text("road mumai MUMBAI,400004",
                                    style:  pw.TextStyle(fontSize:7),)

                                ],
                              ),
                            ),
                            pw.  Spacer(),

                            pw.   Container(
                              height: 70,
                              child: pw. Row(
                                children: [
                                  pw.  Column(
                                    crossAxisAlignment:  pw.CrossAxisAlignment.end,
                                    children: [
                                      pw. Container(
                                          padding: pw. EdgeInsets.only(top: 9),

                                          child:  pw.Text("Date :",style:  pw.TextStyle(fontSize:9))),
                                      pw.  Container(
                                          padding: pw. EdgeInsets.only(top: 9),

                                          child:  pw.Text("purchase order code :",style:  pw.TextStyle(fontSize:9))),

                                    ],
                                  ),
                                  pw. Column(
                                    mainAxisAlignment:pw. MainAxisAlignment.start,
                                    children: [

                                      pw. Container(
                                          // padding:  pw.EdgeInsets.only(top: 9),
                                          decoration:  pw.BoxDecoration(color:PdfColor.fromInt(0xAAACACAC),
                                              border: pw.Border(
                                                bottom:pw. BorderSide(width: .5,),
                                              )
                                          ),
                                          width: 120,
                                          child: pw.Text(orderDate==""?DateTime.now()
                                              ?.toIso8601String()
                                              .split("T")[0] ??
                                              "".toString():orderDate.toString(),style:  pw.TextStyle(fontSize:9))
                                      ),
                                      pw.  Container(
                                          // padding:  pw.EdgeInsets.only(top: 9),
                                          decoration: pw. BoxDecoration(
                                              border: pw.Border(
                                                bottom: pw. BorderSide(width: .5,
                                                    // color: Color(0xffACACAC66).withOpacity(.4)
                                                ),
                                              )
                                          ),
                                          width: 120,
                                          child: pw.Text(orderCode.toString()??"",style:  pw.TextStyle(fontSize:9))
                                      ),

                                    ],
                                  )
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                      // pw. SizedBox(height: 30,),
                      pw. Container(
                        width: width,
                        height: height*.15,
                        margin:  pw.EdgeInsets.symmetric(horizontal:width/103),
                        decoration: pw. BoxDecoration(

                            border: pw. Border.all(
                                width: .6,

                              color: PdfColor.fromInt(0xAAACACAC),


                            )
                        ),
                        child:  pw.Column(
                          crossAxisAlignment:  pw.CrossAxisAlignment.start,
                          children: [
                            pw.Container(
                              height:height*.04,
                              width: width,
                            color: PdfColor.fromInt(0xAA1F6BA9),
                              child:  pw.Center(
                                child: pw. Container(
                                    alignment:  pw.Alignment.topLeft,


                                    margin:pw. EdgeInsets.only(left: width*.01,top: 8),
                                    child: pw.Text("Basic Details",style:pw. TextStyle(fontSize:8,color: PdfColors.white,),)),
                              ),

                            ),
                            pw. Expanded(child: pw. Container(
                              //color: Colors.red,
                              child: pw.Center(
                                child: pw. Row(

                                  mainAxisAlignment: pw. MainAxisAlignment.spaceAround,
                                  children: [
                                    pw. Column(
                                      mainAxisAlignment: pw. MainAxisAlignment.center,
                                      crossAxisAlignment:  pw.CrossAxisAlignment.start,
                                      children: [
                                        pw. Text("Supplier",
                                            style:
                                        pw. TextStyle(fontSize:height*.015,color: PdfColor.fromInt(0xAA565555)
                                        )),

                                        pw.SizedBox(height: 3,),
                                        pw.Text(vendorCode,style:  pw.TextStyle(fontWeight:pw. FontWeight.bold,fontSize:height*.015,color: PdfColor.fromInt(0xAA565555)),),
                                      ],
                                    ),
                                    pw.  SizedBox(width: 12,),
                                    pw.  Column(
                                      mainAxisAlignment:  pw.MainAxisAlignment.center,
                                      crossAxisAlignment: pw. CrossAxisAlignment.start,
                                      children: [
                                        pw.Text("ORDER CODE",style: pw. TextStyle(fontSize:height*.015,color: PdfColor.fromInt(0xAA565555)
                                          // color:Color(0xff565555),
                                        )),
                                        pw. SizedBox(height: 3,),
                                        pw. Text(orderCode??"",style: pw. TextStyle(
                                            fontSize:height*.015,color: PdfColor.fromInt(0xAA565555),
                                            // color: Colors.black,
                                            fontWeight: pw.FontWeight.bold),),
                                      ],
                                    ),
                                    pw.  SizedBox(width: 12,),
                                    pw.  Column(
                                      mainAxisAlignment: pw. MainAxisAlignment.center,
                                      crossAxisAlignment:  pw.CrossAxisAlignment.start,
                                      children: [
                                        pw. Text("ORDER DATE",style:pw. TextStyle(
                                            fontSize:height*.015,color: PdfColor.fromInt(0xAA565555)
                                          ),),
                                        pw.SizedBox(height: 3,),
                                        pw.  Text(orderDate??"",style: pw. TextStyle(
                                            fontSize:height*.015,color: PdfColor.fromInt(0xAA565555),
                                            // color: pw.C.black,
                                            fontWeight: pw.FontWeight.bold),),
                                      ],
                                    ),
                                    pw. SizedBox(width: 12,)
                                  ],
                                ),
                              ) ,
                            ))
                          ],
                        ),
                      ),
        pw.SizedBox(height: 3),
        pw.Container(
          // height: 400,
          margin:  pw.EdgeInsets.symmetric(horizontal:width/103),
         child:  pw.Table(
           border: pw. TableBorder(
               bottom:pw. BorderSide(
                   width: .5,
                   color: PdfColors.grey,
                   style:
                   pw. BorderStyle.solid),
               right:pw. BorderSide(
                   width: .5,
                   color: PdfColors.grey,
                   style:
                   pw. BorderStyle.solid),
               left:pw. BorderSide(
                   width: .5,
                   color: PdfColors.grey,
                   style:
                   pw. BorderStyle.solid),
               verticalInside: pw.BorderSide(
                   width: .5,
                   color: PdfColors.grey,
                   style:
                   pw. BorderStyle.solid),
               // horizontalInside:
               // pw.   BorderSide(
               //
               //     width: .5,
               //     color: PdfColors.grey,
               //     style:
               //     pw.  BorderStyle.solid)
           ),
           // tableWidth:.5,
           columnWidths: {

             0: pw.FlexColumnWidth(2),
             1:pw. FlexColumnWidth(3),
             2:pw. FlexColumnWidth(5),
             3: pw.FlexColumnWidth(3),
             4:pw. FlexColumnWidth(3),
             5:pw. FlexColumnWidth(2),
             6: pw.FlexColumnWidth(2),
             7:pw. FlexColumnWidth(2),
             8: pw.FlexColumnWidth(3),
             9: pw.FlexColumnWidth(2),
             10:pw. FlexColumnWidth(2),
             11:pw. FlexColumnWidth(4),
             12: pw.FlexColumnWidth(4),
             13:pw. FlexColumnWidth(4),
             14:pw. FlexColumnWidth(4),
             15:pw. FlexColumnWidth(3),
             16:pw. FlexColumnWidth(3),
             17: pw.FlexColumnWidth(3),


           },
           children: [
             pw. TableRow(

                 children: [
                   pw. Container(
                     color:  PdfColor.fromInt(0xAA1F6BA9),
                     alignment:pw. Alignment.center,
                     child:pw.Text( 'Sl.No',style:pw. TextStyle(fontSize:height*.013, color: PdfColors.white,)),
                     height: 35,

                   ),
                   pw. Container(
                     color:  PdfColor.fromInt(0xAA1F6BA9),
                     alignment:pw. Alignment.center,
                     child:pw.Text(  'Variant Id ',style:pw. TextStyle(fontSize:height*.013,color: PdfColors.white,)),
                     height: 35,
                   ),


                   pw.  Container(
                     color: PdfColor.fromInt(0xAA1F6BA9),
                     alignment:pw. Alignment.center,
                     child:pw.Text(   'Barcode',style:pw. TextStyle(fontSize:height*.013,color: PdfColors.white,)),
                     height: 35,
                   ),
                   pw.  Container(
                     color:  PdfColor.fromInt(0xAA1F6BA9),
                     alignment:pw. Alignment.center,
                     child:pw.Text( 'Purchase UOM',style:pw. TextStyle(fontSize: height*.013,color: PdfColors.white,)),
                     height: 35,

                   ),
                   pw.  Container(
                     color:  PdfColor.fromInt(0xAA1F6BA9),
                     alignment:pw. Alignment.center,
                     child:pw.Text( 'Requested Qty',style:pw. TextStyle(fontSize: height*.013,color: PdfColors.white,)),
                     height: 35,
                   ),



                   pw.   Container(
                     color: PdfColor.fromInt(0xAA1F6BA9),
                     alignment:pw. Alignment.center,
                     child:pw.Text(   'Unit cost',style:pw. TextStyle(fontSize: height*.013,color: PdfColors.white,)),
                     height: 35,
                   ),
                   pw.  Container(
                     color:  PdfColor.fromInt(0xAA1F6BA9),
                     alignment:pw. Alignment.center,
                     child:pw.Text(  'Exsise tax',style:pw. TextStyle(fontSize:height*.013,color: PdfColors.white,)),
                     height: 35,
                   ),
                   pw.  Container(
                     color: PdfColor.fromInt(0xAA1F6BA9),
                     alignment:pw. Alignment.center,
                     child:pw.Text('Discount',style:pw. TextStyle(fontSize:height*.013,color: PdfColors.white,)),
                     height: 35,

                   ),

                   pw.  Container(
                     color: PdfColor.fromInt(0xAA1F6BA9),
                     alignment:pw. Alignment.center,
                     child:pw.Text( 'Vatable amount',style:pw. TextStyle(fontSize: height*.013,color: PdfColors.white,)),
                     height: 35,
                   ),
                   pw.       Container(
                     color:  PdfColor.fromInt(0xAA1F6BA9),
                     alignment:pw. Alignment.center,
                     child:pw.Text( 'Vat',style:pw. TextStyle(fontSize: 7,color: PdfColors.white,)),
                     height: 35,

                   ),
                   pw. Container(
                     color:  PdfColor.fromInt(0xAA1F6BA9),
                     alignment:pw. Alignment.center,
                     child:pw.Text( 'Actual cost',style:pw. TextStyle(fontSize: 7,color: PdfColors.white,)),
                     height: 35,
                   ),


                   // tableHeadtext(
                   //   'Is free',
                   //   padding:
                   //   EdgeInsets.all(15),
                   //   height: 80,
                   //   size: 13,
                   //     color:  Color(0xff1F6BA9)
                   // ),


                 ]),
             if (table != null)...[
               for (var i = 0;
               i < table.length;
               i++)
                 pw. TableRow(
                     children: [

                       pw.    Container(
                         padding: pw.EdgeInsets.only(top: height*.019),
                         alignment:pw. Alignment.center,

                         child: pw.Text(   (i + 1)
                             .toString(),style:pw. TextStyle(fontSize: height*.013)),


                       ),

                       pw.  Container(
                         padding: pw.EdgeInsets.only(top:height*.014),
                         alignment:pw. Alignment.center,
                         height: 40,
                         child:pw. Text(
                             table[i].variantId??"",style:pw. TextStyle(fontSize: height*.013)),
                       ),
                       pw.   Container(
                         padding: pw.EdgeInsets.only(top: height*.014),
                         alignment:pw. Alignment.center,
                         height: 40,
                         child:pw. Text(
                             table[i].barcode??"",style:pw. TextStyle(fontSize: height*.013)),

                       ),
                       pw.   Container(
                         padding: pw.EdgeInsets.only(top: height*.019),
                         alignment:pw. Alignment.center,
                         child:pw. Text(
                             table[i].purchaseuom??"",style:pw. TextStyle(fontSize: height*.013)),

                       ),
                       pw.  Container(
                         padding: pw.EdgeInsets.only(top: height*.019),
                         alignment:pw. Alignment.center,
                         child: pw.Text(
                             table[i].requestedQty.toString()??"",style:pw. TextStyle(fontSize: height*.013)),

                       ),

                       pw. Container(
                         padding: pw.EdgeInsets.only(top:height*.019),
                         alignment:pw. Alignment.center,
                         child: pw.Text(
                             table[i].unitCost.toString()??"",style:pw. TextStyle(fontSize:height*.013)),


                       ),
                       pw.  Container(
                         padding: pw.EdgeInsets.only(top: height*.019),

                         alignment:pw. Alignment.center,
                         child: pw.Text(
                             table[i].excessTax.toString()??"",style:pw. TextStyle(fontSize: 8)),
                         // fontSize: 12,


                       ),
                       pw. Container(
                         padding: pw.EdgeInsets.only(top:height*.019),
                         alignment:pw. Alignment.center,
                         child:pw. Text(
                             table[i].discount.toString()??"",style:pw. TextStyle(fontSize: 8)),
                       ),

                       pw. Container(
                         alignment:pw. Alignment.center,
                         padding: pw.EdgeInsets.only(top:height*.019),
                         child:pw. Text(
                             table[i].variableAmount.toString()??"",style:pw. TextStyle(fontSize: height*.013)),
                         // fontSize: 12,
                       ),
                       pw.  Container(
                         padding: pw.EdgeInsets.only(top: height*.019),
                         alignment:pw. Alignment.center,
                         child: pw.Text(
                             table[i].vat.toString()??"",style:pw. TextStyle(fontSize: height*.013)),
                         // fontSize: 12,

                       ),
                       pw.  Container(
                         padding: pw.EdgeInsets.only(top:height*.019),
                         alignment:pw. Alignment.center,
                         child:pw. Text(
                             actualCost.toString()??"",style:pw. TextStyle(fontSize:height*.013)),

                       ),






                     ]
                 )
             ]

           ],
         ),
         // width: width,

        ),
                      pw.SizedBox(height: 3),

                    pw.  Container(
                        margin:  pw.EdgeInsets.symmetric(horizontal:width/103),
                          width: width,
                          height: 27,

                          decoration:pw. BoxDecoration(

                              color:  PdfColor.fromInt(0xAAF7F7F7),


                          ),
                          child:pw.Row(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                            children: [
                              pw.Container(
                                child:pw. Row(
                                  children: [
                                    pw.Text("Discount:",style: pw.TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8 ),),
                                    pw. Text(discount.toString(),style: pw.TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8 ),)
                                  ],
                                ),
                              ),

                              pw. Container(
                                child: pw.Row(
                                  children: [
                                    pw. Text("UnitCost:",style: pw.TextStyle(fontWeight:pw.FontWeight.bold ,fontSize: 8 ),),
                                    pw. Text(unitCost.toString(),style:pw. TextStyle(fontWeight:pw.FontWeight.bold ,fontSize: 8 ),)
                                  ],
                                ),
                              ),
                              pw.  Container(
                                child:pw. Row(
                                  children: [
                                    pw.  Text("Excise Tax:",style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),),
                                    pw. Text(excisetax.toString(),style: pw.TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),)
                                  ],
                                ),
                              ),
                              pw.Container(
                                child:pw. Row(
                                  children: [
                                    pw. Text("VAT Amount:",style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),),
                                    pw.Text(vat.toString(),style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),)
                                  ],
                                ),
                              ),
                              pw. Container(
                                child:pw. Row(
                                  children: [
                                    pw.  Text("Vatable Amount:",style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8 ),),
                                    pw.Text(variableAmount.toString(),style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),)
                                  ],
                                ),
                              ),
                              pw. Container(
                                child:pw. Row(
                                  children: [
                                    pw. Text("Actual cost:",style:pw. TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),),
                                    pw.Text(actualCost.toString(),style: pw.TextStyle(fontWeight:pw.FontWeight.bold,fontSize: 8  ),)
                                  ],
                                ),
                              )

                            ],
                          )
                      ),
                      //calculation
                      pw.  SizedBox(height: height*0.15,),
                      //
                      pw.  Row(
                        children: [

                          pw.  Spacer(),
                          pw. Container(
                            margin: pw.EdgeInsets.only(right: width*.02),
                            height: height*.12,
                            width:width*.14,
                            decoration:pw. BoxDecoration(

                              // Red border with the width is equal to 5
                                border:pw. Border.all(
                                    width: .6,


                                    color: PdfColor.fromInt(0xAAACACAC)
                                )
                            ),
                            child:pw. Column(
                              crossAxisAlignment:pw. CrossAxisAlignment.start,
                              children: [
                                pw. Container(
                                    margin:pw. EdgeInsets.only(
                                      top:height*.018,
                                      left:height*.015,
                                    ),
                                    child: pw.Text("Authorized by:",style:pw. TextStyle(
                                      // color: Colors.black,
                                      fontWeight:pw. FontWeight.normal,fontSize:height*.016,),)),
                                //
                                // Row(
                                //   children: [
                                //     Text("Aftabu rahman",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,height: 19),),
                                //
                                //   ],
                                // )

                              ],
                            ),

                          )

                        ],
                      )
                      //last section



                    ],
                  ),

                ),
             pw.   SizedBox(height: height*.03,)

              ],
            ) ,
          );

        //   pw.Column(
        //   children: [
        //     pw.SizedBox(
        //       width: double.infinity,
        //       child: pw.FittedBox(
        //         child: pw.Text(title, style: pw.TextStyle(font: font)),
        //       ),
        //     ),
        //     pw.SizedBox(height: 20),
        //     pw.Flexible(child: pw.FlutterLogo())
        //   ],
        // );
      },
    ),
  );

  return pdf.save();
}

class PrintTitleScreen extends StatefulWidget {
  @override
  _PrintTitleScreenState createState() => _PrintTitleScreenState();
}

class _PrintTitleScreenState extends State<PrintTitleScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return
      Container(
      height:height*.165 ,


      color: Color(0xffF7F7F7),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(

            height: 16,
            width: 16,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://i.pinimg.com/736x/d2/53/fb/d253fbcb29b2c743b57816b23746fe12--portugal-national-team-cristiano-ronaldo-portugal.jpg")
                )
            ),
            // child:  Container(
            //     child: Image.network("https://rgcdynamics-logos.s3.ap-south-1.amazonaws.com/Ahlan%20New-03.png")),

          ),
          Spacer(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: width*.02),
            padding: EdgeInsets.only(right: width*.01),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: height*.036,),
                Text("8606200441",
                  style: TextStyle(color:Color(0xff565555) ,fontSize:12 ),),
                SizedBox(height: height*.005,),
                Text("akshaygmail,com",
                  style: TextStyle(color:Color(0xff565555) ,fontSize:12 ),),
                SizedBox(height: height*.009,),
                Text("PURCHASE ORDER",
                  style: TextStyle(color:Color(0xff1F6BA9) ,fontSize:height*.042,fontWeight: FontWeight.w900 ,  letterSpacing: 2.0,),),
                SizedBox(height: height*.009,)

              ],
            ),
          ),




        ],
      ),
    );
  }
}
