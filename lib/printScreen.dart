
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:inventory/assets/icon_constants.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'commonWidget/popupinputfield.dart';

class PrintScreen extends StatefulWidget {
  final String vendorCode;
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
    this.remarks="",
    this.orderDate="",
    required this.table,
    this.actualCost=0.00,
    this.variableAmount=0.00,
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
      body: SingleChildScrollView(
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

                                          child: Text("purchase order code :")),

                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                          padding: EdgeInsets.only(top: 9),
                                        decoration: BoxDecoration(
                                          border:Border(
                                            bottom: BorderSide(width: .5, color: Color(0xffACACAC66).withOpacity(.4)),
                                          )
                                        ),
                                          width: 120,
                                          child:Text(widget.orderCode.toString()??"")
                                      ),
                                      Container(
                                          width: 100,
                                          child:  TextField(
                                            style: TextStyle(fontSize: 13),

                                              autocorrect: true,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                hintText: widget.orderCode.toString()??"",
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
                                        Text(widget.vendorCode,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                                      ],
                                    ),
                                    SizedBox(width: 12,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("ORDER CODE",style: TextStyle(color:Color(0xff565555),)),
                                        SizedBox(height: 2,),
                                        Text(widget.orderCode??"",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                                      ],
                                    ),
                                    SizedBox(width: 12,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("ORDER DATE",style: TextStyle(color:Color(0xff565555),),),
                                        SizedBox(height: 2,),
                                        Text(widget.orderDate??"",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
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
                          // height: 51,
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
                                          width: width,
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
                                                      // padding:
                                                      // EdgeInsets.all(15),
                                                      height: 60,
                                                      size: 13,
                                                      color: Color(0xff1F6BA9)
                                                    ),
                                                    tableHeadtext(
                                                      'Variant Id ',
                                                      // padding:
                                                      // EdgeInsets.all(15),
                                                      height: 60,
                                                      size: 13,
                                                      color: Color(0xff1F6BA9)
                                                    ),


                                                    tableHeadtext(
                                                      'Barcode',
                                                      // padding:
                                                      // EdgeInsets.all(15),
                                                      height: 60,
                                                      size: 13,
                                                      color:  Color(0xff1F6BA9)
                                                    ),

                                                    tableHeadtext(
                                                      'Purchase UOM',
                                                      // padding:
                                                      // EdgeInsets.all(15),
                                                      height: 60,
                                                      size: 13,
                                                        color:  Color(0xff1F6BA9)
                                                    ),
                                                    tableHeadtext(
                                                      'Requested Qty',
                                                      // padding:
                                                      // EdgeInsets.all(15),
                                                      height: 60,
                                                      size: 13,
                                                        color:  Color(0xff1F6BA9)
                                                    ),



                                                    tableHeadtext(
                                                      'Unit cost',
                                                     //padding:
                                                      //EdgeInsets.all(15),
                                                      height: 60,
                                                      size: 13,
                                                        color:  Color(0xff1F6BA9)
                                                    ),
                                                    tableHeadtext(
                                                      'Exsise tax',
                                                      // padding:
                                                      // EdgeInsets.all(15),
                                                      height: 60,
                                                      size: 13,
                                                        color:  Color(0xff1F6BA9)
                                                    ),
                                                    tableHeadtext(
                                                      'Discount',
                                                      // padding:
                                                      // EdgeInsets.all(15),
                                                      height: 60,
                                                      size: 13,
                                                        color:  Color(0xff1F6BA9)
                                                    ),

                                                    tableHeadtext(
                                                      'Vatable amount',
                                                      // padding:
                                                      // EdgeInsets.all(15),
                                                      height: 60,
                                                      size: 13,
                                                        color:  Color(0xff1F6BA9)
                                                    ),
                                                    tableHeadtext(
                                                      'Vat',
                                                      padding:
                                                      EdgeInsets.all(15),
                                                      height: 60,
                                                      size: 13,
                                                        color:  Color(0xff1F6BA9)
                                                    ),
                                                    tableHeadtext(
                                                      'Actual cost',
                                                      // padding:
                                                      // EdgeInsets.all(15),
                                                      height: 60,
                                                      size: 13,
                                                        color:  Color(0xff1F6BA9)
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
                                        if (widget.table != null)...[
                        for (var i = 0;
                        i <widget. table.length;
                            i++)
                                              TableRow(
                                                  children: [

                      textPadding(
                      (i + 1)
                          .toString(),
                        fontSize: 12,
                        padding: EdgeInsets
                            .only(
                            left:
                            11.5,
                            top:
                            1.5),
                        fontWeight:
                        FontWeight
                            .w500),

                    textPadding(
                        widget.table[i].vendorRefCode??"",
                        fontSize: 12,
                        padding: EdgeInsets
                            .only(
                            left:
                            11.5,
                            top:
                            1.5),
                        fontWeight:
                        FontWeight
                            .w500),
                    textPadding(
                        widget.table[i].barcode??"",
                        fontSize: 12,
                        padding: EdgeInsets
                            .only(
                            left:
                            11.5,
                            top:
                            1.5),
                        fontWeight:
                        FontWeight
                            .w500),
                                                    textPadding(
                                                        widget.table[i].purchaseuom??"",
                                                        fontSize: 12,
                                                        padding: EdgeInsets
                                                            .only(
                                                            left:
                                                            11.5,
                                                            top:
                                                            1.5),
                                                        fontWeight:
                                                        FontWeight
                                                            .w500),
                                                    textPadding(
                                                        widget.table[i].requestedQty.toString()??"",
                                                        fontSize: 12,
                                                        padding: EdgeInsets
                                                            .only(
                                                            left:
                                                            11.5,
                                                            top:
                                                            1.5),
                                                        fontWeight:
                                                        FontWeight
                                                            .w500),

                                                    textPadding(
                                                        widget.table[i].unitCost.toString()??"",
                                                        fontSize: 12,
                                                        padding: EdgeInsets
                                                            .only(
                                                            left:
                                                            11.5,
                                                            top:
                                                            1.5),
                                                        fontWeight:
                                                        FontWeight
                                                            .w500),
                                                    textPadding(
                                                        widget.table[i].excessTax.toString()??"",
                                                        fontSize: 12,
                                                        padding: EdgeInsets
                                                            .only(
                                                            left:
                                                            11.5,
                                                            top:
                                                            1.5),
                                                        fontWeight:
                                                        FontWeight
                                                            .w500),
                                                    textPadding(
                                                        widget.table[i].discount.toString()??"",
                                                        fontSize: 12,
                                                        padding: EdgeInsets
                                                            .only(
                                                            left:
                                                            11.5,
                                                            top:
                                                            1.5),
                                                        fontWeight:
                                                        FontWeight
                                                            .w500),

                                                    textPadding(
                                                        widget.table[i].variableAmount.toString()??"",
                                                        fontSize: 12,
                                                        padding: EdgeInsets
                                                            .only(
                                                            left:
                                                            11.5,
                                                            top:
                                                            1.5),
                                                        fontWeight:
                                                        FontWeight
                                                            .w500),
                                                    textPadding(
                                                        widget.table[i].vat.toString()??"",
                                                        fontSize: 12,
                                                        padding: EdgeInsets
                                                            .only(
                                                            left:
                                                            11.5,
                                                            top:
                                                            1.5),
                                                        fontWeight:
                                                        FontWeight
                                                            .w500),
                                                    textPadding(
                                                        widget.table[i].actualCost.toString()??"",
                                                        fontSize: 12,
                                                        padding: EdgeInsets
                                                            .only(
                                                            left:
                                                            11.5,
                                                            top:
                                                            1.5),
                                                        fontWeight:
                                                        FontWeight
                                                            .w500),






                                                  ]
                                              )
                      ]

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
                              Text(widget.discount.toString())
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text("UnitCost:"),
                              Text(widget.unitCost.toString())
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text("Excise Tax:"),
                              Text(widget.excisetax.toString())
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text("VAT Amount:"),
                              Text(widget.vat.toString())
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text("Vatable Amount:"),
                              Text(widget.variableAmount.toString())
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text("Actual cost:"),
                              Text(widget.actualCost.toString())
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
                                          Text(widget.remarks??"",style: TextStyle(color: Color(0xff252525),fontSize: 14),),

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
