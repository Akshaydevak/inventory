
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:inventory/assets/icon_constants.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class PrintScreen extends StatefulWidget {
  final String vendorCode;
  final String orderCode;
  final String receiptDate;
  PrintScreen({
    this.vendorCode="",this.orderCode="",
    this.receiptDate=""

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

    return SingleChildScrollView(
      child: Container(
        height: 4000,

        // backgroundColor: Colors.white,
        child:Column(
          children: [
            PrintTitleScreen(),


            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height*.06,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width*.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 70,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ahlan cart company Limed",
                                  style: TextStyle(color:Color(0xff565555) ,fontSize:21,fontWeight: FontWeight.w800 ),),
                                Text("Shop no. 514 5th floor aditya arcademall",
                                  style: TextStyle(color:Color(0xff565555) ,fontSize:12 ),),
                                Text("road mumai MUMBAI,400004",
                                  style: TextStyle(color:Colors.black ,fontSize:12),)

                              ],
                            ),
                          ),
                          Spacer(),

                          Container(
                            height: 70,
                            child: Row(
                              children: [
                                Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                        padding: EdgeInsets.only(top: 9),

                                        child: Text("Date :")),
                                    Container(
                                        padding: EdgeInsets.only(top: 9),

                                        child: Text("purchase order no :")),

                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                        width: 100,
                                        child:  TextField(

                                            autocorrect: true,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              // hintText: 'Type Text Here',
                                              enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color:Color(0xffACACAC)),
                                              ),
                                              focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Color(0xffACACAC)),
                                              ),
                                            )
                                        )
                                    ),
                                    Container(
                                        width: 100,
                                        child:  TextField(

                                            autocorrect: true,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              // hintText: 'Type Text Here',
                                              enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color:Color(0xffACACAC)),
                                              ),
                                              focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Color(0xffACACAC)),
                                              ),
                                            )
                                        )
                                    ),

                                  ],
                                )
                              ],
                            ),
                          )

                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      width: width,
                      height: height*.2,
                      margin: EdgeInsets.symmetric(horizontal: 17),
                      decoration: BoxDecoration(

                          // Red border with the width is equal to 5
                          border: Border.all(
                              width: 1,
                              color: Color(0xffACACAC)
                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height:height*.06,
                            width: width,
                            color: Color(0xff1F6BA9),
                            child: Center(
                              child: Container(
                                alignment: Alignment.topLeft,

                                margin: EdgeInsets.only(left: width*.03),
                                  child: Text("Basic Details",style: TextStyle(color: Colors.white),)),
                            ),

                          ),
                          Expanded(child: Container(
                            //color: Colors.red,
                            child:Center(
                              child: Row(

                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Supplier",style: TextStyle(color:Color(0xff565555),)),

                                      SizedBox(height: 2,),
                                      Text("united Sales Partner",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  SizedBox(width: 12,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("ORDER CODE",style: TextStyle(color:Color(0xff565555),)),
                                      SizedBox(height: 2,),
                                      Text("MH-1830472349-3020",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  SizedBox(width: 12,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("ORDER DATE",style: TextStyle(color:Color(0xff565555),),),
                                      SizedBox(height: 2,),
                                      Text("MH-1830472349-3020",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  SizedBox(width: 12,)
                                ],
                              ),
                            ) ,
                          ))
                        ],
                      ),
                    ),
                  Container(
                    height: 200,
                    // width: context.blockSizeHorizontal*85,
                    child: Scrollbar(
                      controller: _scrollController,
                      isAlwaysShown: true,
                      child: Container(
                        alignment: Alignment.topRight,
                        height: 511,
                        child: ListView(
                            controller: _scrollController,
                            physics: ScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  SingleChildScrollView(
                                      child: Container(
                                        width: 2000,
                                        padding: EdgeInsets.all(10),
                                        child: customTable(
                                          border: const TableBorder(
                                              verticalInside: BorderSide(
                                                  width: 1,
                                                  color: Colors.black45,
                                                  style:
                                                  BorderStyle.solid),
                                              horizontalInside:
                                              BorderSide(width: 1,color: Colors.black45,
                                                  style:
                                                  BorderStyle.solid)),
                                          tableWidth: .5,
                                          widths: {

                                            0: FlexColumnWidth(2),
                                            1: FlexColumnWidth(3),
                                            2: FlexColumnWidth(4),
                                            3: FlexColumnWidth(4),
                                            4: FlexColumnWidth(4),
                                            5: FlexColumnWidth(4),
                                            6: FlexColumnWidth(4),
                                            7: FlexColumnWidth(4),
                                            8: FlexColumnWidth(4),
                                            9: FlexColumnWidth(4),
                                            10: FlexColumnWidth(4),
                                            11: FlexColumnWidth(4),
                                            12: FlexColumnWidth(4),
                                            13: FlexColumnWidth(4),
                                            14: FlexColumnWidth(4),
                                            15: FlexColumnWidth(4),
                                            16: FlexColumnWidth(4),
                                            17: FlexColumnWidth(4),


                                          },
                                          childrens: [
                                            TableRow(

                                                children: [
                                                  tableHeadtext(
                                                    'Sl.No',
                                                    padding:
                                                    EdgeInsets.all(15),
                                                    height: 80,
                                                    size: 13,
                                                    color: Color(0xff1F6BA9)
                                                  ),
                                                  tableHeadtext(
                                                    'Variant Id ',
                                                    padding:
                                                    EdgeInsets.all(15),
                                                    height: 80,
                                                    size: 13,
                                                    color: Color(0xff1F6BA9)
                                                  ),


                                                  tableHeadtext(
                                                    'Barcode',
                                                    padding:
                                                    EdgeInsets.all(15),
                                                    height: 80,
                                                    size: 13,
                                                    color:  Color(0xff1F6BA9)
                                                  ),

                                                  tableHeadtext(
                                                    'Purchase UOM',
                                                    padding:
                                                    EdgeInsets.all(15),
                                                    height: 80,
                                                    size: 13,
                                                      color:  Color(0xff1F6BA9)
                                                  ),
                                                  tableHeadtext(
                                                    'Requested Qty',
                                                    padding:
                                                    EdgeInsets.all(15),
                                                    height: 80,
                                                    size: 13,
                                                      color:  Color(0xff1F6BA9)
                                                  ),
                                                  tableHeadtext(
                                                    'Min order qty',
                                                    padding:
                                                    EdgeInsets.all(15),
                                                    height: 80,
                                                    size: 13,
                                                      color:  Color(0xff1F6BA9)
                                                  ),
                                                  tableHeadtext(
                                                    'Max order qty',
                                                    padding:
                                                    EdgeInsets.all(15),
                                                    height: 80,
                                                    size: 13,
                                                      color:  Color(0xff1F6BA9)
                                                  ),

                                                  tableHeadtext(
                                                    'Unit cost',
                                                    padding:
                                                    EdgeInsets.all(15),
                                                    height: 80,
                                                    size: 13,
                                                      color:  Color(0xff1F6BA9)
                                                  ),
                                                  tableHeadtext(
                                                    'Exsise tax',
                                                    padding:
                                                    EdgeInsets.all(15),
                                                    height: 80,
                                                    size: 13,
                                                      color:  Color(0xff1F6BA9)
                                                  ),
                                                  tableHeadtext(
                                                    'Discount',
                                                    padding:
                                                    EdgeInsets.all(15),
                                                    height: 80,
                                                    size: 13,
                                                      color:  Color(0xff1F6BA9)
                                                  ),
                                                  tableHeadtext(
                                                    'FOC',
                                                    padding:
                                                    EdgeInsets.all(15),
                                                    height: 80,
                                                    size: 13,
                                                      color:  Color(0xff1F6BA9)
                                                  ),
                                                  tableHeadtext(
                                                    'Vatable amount',
                                                    padding:
                                                    EdgeInsets.all(15),
                                                    height: 80,
                                                    size: 13,
                                                      color:  Color(0xff1F6BA9)
                                                  ),
                                                  tableHeadtext(
                                                    'Vat',
                                                    padding:
                                                    EdgeInsets.all(15),
                                                    height: 80,
                                                    size: 13,
                                                      color:  Color(0xff1F6BA9)
                                                  ),
                                                  tableHeadtext(
                                                    'Actual cost',
                                                    padding:
                                                    EdgeInsets.all(15),
                                                    height: 80,
                                                    size: 13,
                                                      color:  Color(0xff1F6BA9)
                                                  ),

                                                  tableHeadtext(
                                                    'Is invoiced',
                                                    padding:
                                                    EdgeInsets.all(15),
                                                    height: 80,
                                                    size: 13,
                                                      color:  Color(0xff1F6BA9)
                                                  ),
                                                  tableHeadtext(
                                                    'Is free',
                                                    padding:
                                                    EdgeInsets.all(15),
                                                    height: 80,
                                                    size: 13,
                                                      color:  Color(0xff1F6BA9)
                                                  ),
                                                  tableHeadtext(
                                                    'Is active',
                                                    padding:
                                                    EdgeInsets.all(15),
                                                    height: 80,
                                                    size: 13,
                                                      color:  Color(0xff1F6BA9)
                                                  ),

                                                ]),
                                            TableRow(
                                                children: [

                                                  TextField(),
                                                  TextField(),
                                                  TextField(),
                                                  TextField(),
                                                  TextField(),
                                                  TextField(),
                                                  TextField(),
                                                  TextField(),
                                                  TextField(),
                                                  TextField(),
                                                  TextField(),
                                                  TextField(),
                                                  TextField(),
                                                  TextField(),
                                                  TextField(),
                                                  TextField(),
                                                  TextField(),




                                                ]
                                            )

                                          ],
                                        ),
                                      )
                                  ),
                                ],

                              ),

                            ]
                        ),
                      ),

                    ),

                  ),

//                     Container(
//                       margin: EdgeInsets.symmetric(horizontal: width*.007),
//                       // height: 500,
//                       width: MediaQuery.of(context)
//                           .size
//                           .width,
//                       padding: EdgeInsets.all(10),
//                       child: customTable(
//                         border: const TableBorder(
//                           verticalInside: BorderSide(
//                               width:.5,
//                               color: Color(0xff9B9B9B),
//                               // color: Colors.blue,
//                               style:
//                               BorderStyle.solid),
//
//                           horizontalInside:
//                           BorderSide(
//                               width:.3,
//                               color: Colors.black45,
//                               // color: Colors.blue,
//                               style:
//                               BorderStyle.solid),),
//                         tableWidth: .5,
//                         childrens: [
//                           TableRow(
//                             // decoration: BoxDecoration(
//                             //     color: Colors.green.shade200,
//                             //     shape: BoxShape.rectangle,
//                             //     border: const Border(      top: BorderSide(
//                             //         width: .5,
//                             //         color: Colors.black45,
//                             //         // color: Colors.blue,
//                             //         style: BorderStyle.solid
//                             //     ),)),
//                               children: [
//                                 tableHeadtext(
//                                   'Sno',
//                                   color: Color(0xff1F6BA9),
//                                   padding:
//                                   EdgeInsets.all(7),
//                                   height: 46,
//                                   size: 13,
//                                   // color: Palette.containerDarknew,
//                                   // textColor: Palette.white,
//                                 ),
//                                 tableHeadtext(
//                                   'Code',
//                                   color: Color(0xff1F6BA9),
//                                   padding:
//                                   EdgeInsets.all(7),
//                                   height: 50,
//                                   size: 12,
//
//                                 ),
//                                 tableHeadtext(
//                                   'Item Name',
//                                   color: Color(0xff1F6BA9),
//                                   padding:
//                                   EdgeInsets.all(7),
//                                   height: 46,
//                                   size: 13,
//                                   // color: Palette.containerDarknew,
//                                   // textColor: Palette.white
//                                 ),
//                                 tableHeadtext(
//                                   'UOM',
//                                   color: Color(0xff1F6BA9),
//                                   padding:
//                                   EdgeInsets.all(7),
//                                   height: 46,
//                                   size: 13,
//
//                                 ),
//                                 // tableHeadtext('description', size: 10, color: null),
//                                 tableHeadtext(
//                                   'Qty',
//                                   color: Color(0xff1F6BA9),
//                                   padding:
//                                   EdgeInsets.all(7),
//                                   height: 46,
//                                   size: 13,
//
//                                 ),
//
//                                 tableHeadtext(
//                                   'Rate',
//                                   color: Color(0xff1F6BA9),
//                                   padding:
//                                   EdgeInsets.all(7),
//                                   height: 46,
//                                   size: 13,
//                                   // color: Palette.containerDarknew,
//                                   // textColor: Palette.white
//                                 ),
//                                 tableHeadtext(
//                                   'FOC',
//                                   color: Color(0xff1F6BA9),
//                                   padding:
//                                   EdgeInsets.all(7),
//                                   height: 46,
//                                   size: 13,
//                                   // color: Palette.containerDarknew,
//                                   // textColor: Palette.white
//                                 ),
//                                 tableHeadtext(
//                                   'Dis',
//                                   color: Color(0xff1F6BA9),
//                                   padding:
//                                   EdgeInsets.all(7),
//                                   height: 46,
//                                   size: 13,
//                                   // color: Palette.containerDarknew,
//                                   // textColor: Palette.white
//                                 ),
//                                 tableHeadtext(
//                                   'LC',
//                                   color: Color(0xff1F6BA9),
//                                   padding:
//                                   EdgeInsets.all(7),
//                                   height: 46,
//                                   size: 13,
//                                   // color: Palette.containerDarknew,
//                                   // textColor: Palette.white
//                                 ),
//                                 tableHeadtext(
//                                   'Rbt',
//                                   color: Color(0xff1F6BA9),
//                                   padding:
//                                   EdgeInsets.all(7),
//                                   height: 46,
//                                   size: 13,
//
//                                 ),
//                                 tableHeadtext(
//                                   'Ex.VAT ',
//                                   color: Color(0xff1F6BA9),
//                                   padding:
//                                   EdgeInsets.all(7),
//                                   height: 46,
//                                   size: 13,
//                                   // color: Palette.containerDarknew,
//                                   // textColor: Palette.white
//                                 ),
//                                 tableHeadtext(
//                                   'VAT',
//                                   color: Color(0xff1F6BA9),
//                                   padding:
//                                   EdgeInsets.all(7),
//                                   height: 46,
//                                   size: 13,
//                                   // color: Palette.containerDarknew,
//                                   // textColor: Palette.white
//                                 ),
//                                 tableHeadtext(
//                                   'TOTAL',
//                                   color: Color(0xff1F6BA9),
//                                   padding:
//                                   EdgeInsets.all(7),
//                                   height: 46,
//                                   size: 13,
//                                   // color: Palette.containerDarknew,
//                                   // textColor: Palette.white
//                                 ),
//
//                                 // if (widget.onAddNew) textPadding(''),
//                               ]),
//                           // if (!widget.onAddNew &&
//                           //     widget.order?.orderLines != null &&
//                           //     widget.order!.orderLines!.isNotEmpty) ...[
//                           //   for (var i = 0; i < widget.order!.orderLines!.length; i++)
//
//
//
// //********************************************************************************************************************
//
//                         ],
//                         widths: {
//                           0: FractionColumnWidth(.032),
//                           1: FractionColumnWidth(.054),
//                            2: FractionColumnWidth(.18),
//                           //  3: FractionColumnWidth(.06),
//                           //  4: FractionColumnWidth(.05),
//                           //  5: FractionColumnWidth(.05),
//                           //  6: FractionColumnWidth(.05),
//                           //  7: FractionColumnWidth(.05),
//                           //  8: FractionColumnWidth(.05,),
//                           //  9: FractionColumnWidth(.05),
//                           //  10: FractionColumnWidth(.05),
//                           //  11: FractionColumnWidth(.05),
//                            12: FractionColumnWidth(.12),
//                           13: FractionColumnWidth(.035),
//                           14: FractionColumnWidth(.035),
//                           //  15: FractionColumnWidth(.05),
//                           16: FractionColumnWidth(.045),
//                           // 17: FractionColumnWidth(.05),
//                           //  18: FractionColumnWidth(.05),
//                           19: FractionColumnWidth(.046),
//                           20: FractionColumnWidth(.042),
//                         },
//                       ),
//                     ),

              Container(
                width: width,
                height: 30,
                margin: EdgeInsets.symmetric(horizontal: 17),
                decoration: BoxDecoration(
                  color: Color(0xffF7F7F7)


              ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text("Discount:"),
                            Text("0:00")
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text("LCC:"),
                            Text("0:00")
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text("VAT Amount:"),
                            Text("0:00")
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text("Vatable Amount:"),
                            Text("0:00")
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text("Total Amount:"),
                            Text("0:00")
                          ],
                        ),
                      )

                    ],
                  )
              ),
                    SizedBox(height: height*0.2,),

                    Row(

                      children: [

                        Container(
                          margin: EdgeInsets.symmetric(horizontal: width*.02),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Remarks:",style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(height: height*0.01,),
                              Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          child: Image.asset(
                                            "asset/dot1.png",

                                          ),
                                        ),
                                        SizedBox(width: width*.009,),
                                        Text("Lorem ipsum dolor site amet,consector adipiscing elit.",style: TextStyle(color: Color(0xff252525),fontSize: 14),),

                                      ],
                                    ),
                                    SizedBox(width: width*.009,),
                                    Row(
                                      children: [
                                      Container(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        "asset/dot1.png",

                                      ),
                                    ),
                                        SizedBox(width: width*.009,),
                                        Text("Lorem ipsum dolor site amet,consector adipiscing elit.",style: TextStyle(color: Color(0xff252525),fontSize: 14),),

                                      ],
                                    ),
                                    SizedBox(width: width*.009,),
                                    Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          child: Image.asset(
                                            "asset/dot1.png",

                                          ),),
                                        SizedBox(width: width*.009,),
                                        Text("Lorem ipsum dolor site amet,consector adipiscing elit.",style: TextStyle(color: Color(0xff252525),fontSize: 14),),

                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: height*.16,
                          width:width*.18,
                          decoration: BoxDecoration(

                            // Red border with the width is equal to 5
                              border: Border.all(
                                  width: 1,
                                  color: Color(0xffACACAC)
                              )
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  top:height*.012,
                                  left:height*.012,
                                ),
                                  child: Text("Authorized by:",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),)),
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



                  ],
                ),

              ),
            ),

          ],
        ) ,
      ),
    );
  }
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
    return   Container(
      height:height*.185 ,
     
      color: Color(0xffF7F7F7),
      child: Row(
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(

            height: 30,
            width: 30,
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
                  style: TextStyle(color:Color(0xff1F6BA9) ,fontSize:28,fontWeight: FontWeight.w800 ,  letterSpacing: 2.0,),),
                SizedBox(height: height*.009,)

              ],
            ),
          ),




        ],
      ),
    );
  }
}
