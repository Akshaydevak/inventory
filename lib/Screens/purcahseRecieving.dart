import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Invetory/inventorysearch_cubit.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/cubit/general_purchase_read_cubit.dart';
import 'package:inventory/purchaseRecieving_cubits/cubit/purchaserecievig_read_cubit.dart';
import 'package:inventory/purchaserecievingmodel/purchaserecieving_read.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/inputfield.dart';
import 'package:inventory/widgets/itemmenu.dart';
import 'package:inventory/widgets/searchTextfield.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:inventory/model/purchaseorder.dart';

import 'Dashboard.dart';

class PurchaseRecievinScreen extends StatefulWidget {

  @override
  _PurchaseRecievinScreenState createState() => _PurchaseRecievinScreenState();
}

class _PurchaseRecievinScreenState extends State<PurchaseRecievinScreen> {
  TextEditingController controller = TextEditingController();
  TextEditingController orderCodeController = TextEditingController();
  TextEditingController recievingCodeController = TextEditingController();
  TextEditingController orederDateController = TextEditingController();
  TextEditingController orderStatusController = TextEditingController();
  TextEditingController paymentStatusController = TextEditingController();
  TextEditingController invoiceStausController = TextEditingController();
  TextEditingController focController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController unitCostController = TextEditingController();
  TextEditingController vatableAmountController = TextEditingController();
  TextEditingController excessTaxController = TextEditingController();
  TextEditingController vatController = TextEditingController();
  TextEditingController actualCostController=TextEditingController();
  TextEditingController grandTotalController=TextEditingController();
  TextEditingController noteController=TextEditingController();
  TextEditingController remarksController=TextEditingController();

  ScrollController? _scrollController = ScrollController();
  TextEditingController itemsearch = TextEditingController();
  late AutoScrollController scontroller;
  late AutoScrollController verticalController;
  int selectedVertical=0;
  int? veritiaclid=0;
  List<PurchaseOrder> result = [];
  List<RecievingLines> recievingLisnes = [];

  @override
  void initState() {
    context
        .read<InventorysearchCubit>()
        .getInventorySearch("code");


    int verticalScrollIndex = 0;
    scontroller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    verticalController = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: MultiBlocProvider(
  providers: [


    BlocProvider(
      create: (context) => PurchaserecievigReadCubit()..getGeneralPurchaseRecievingRead(Variable.verticalid),
    ),


  ],
  child: Builder(
    builder: (context) {
      return Builder(
        builder: (context) {
          // context
          //     .read<InventorysearchCubit>()
          //     .getInventorySearch("code");

          return MultiBlocListener(
  listeners: [
    BlocListener<PurchaserecievigReadCubit, PurchaserecievigReadState>(
  listener: (context, state) {
    state.maybeWhen(
        orElse: () {},
        error: () {
          print("error");
        },
        success: (data) {
          print("the purchase"+data.toString());

          setState(() {
            data?.receivingLines != null
                ? recievingLisnes = data?.receivingLines ?? []
                : recievingLisnes = [];
            print("recievelines"+recievingLisnes.toString());
            print("recievelines"+recievingLisnes.length.toString());
            orderCodeController.text=data.orderCode??"";
            recievingCodeController.text=data.receivingCode??"";
            orederDateController.text=data.orderCreatedDate??"";
            orderStatusController.text=data.orderStatus??"";
            invoiceStausController.text=data.invoiceStatus??"";
            grandTotalController.text=data.grandTotal.toString()??"";
            vatController.text=data.vat.toString()??"";
            vatableAmountController.text=data.vatableAmount.toString()??"";
            excessTaxController.text=data.excessTax.toString()??"";
            unitCostController.text=data.unitCost.toString()??"";
            actualCostController.text=data.actualCost.toString()??"";
            discountController.text=data.discount.toString()??"";














          });
        });
  },
),

  ],
  child: BlocConsumer<InventorysearchCubit, InventorysearchState>(
            
  listener: (context, state) {
    state.maybeWhen(orElse:(){},
        error: (){
          print("error");
        },
        success: (list){
          print("listtt"+list.toString());
          result=list.data;setState(() {
            print("Here is the result");
            print(result);
            print(result[0].id);
          });

        }
    );
  },
  builder: (context, state) {
    return SingleChildScrollView(

                    child: Container(
                      height: 6000,
                     // width: 788,
                      child:Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),

                            child: Visibility(
                              visible:true,
                              child: Container(
                                height: height,
                                // height: double.minPositive,
                                width: width * .172,
                                //width: 232,
                                color: Color(0xffEDF1F2),
                                child: Column(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.all(5),
                                        child: SearchTextfiled(
                                          color: Color(0xffFAFAFA),
                                          hintText: "Search...",
                                          ctrlr: itemsearch,
                                          onChanged: (va) {
                                            context
                                                .read<InventorysearchCubit>()
                                                .getSearch(itemsearch.text);
                                          },
                                        )),
                                    SizedBox(
                                      height:
                                      MediaQuery.of(context).size.height * .008,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: width * 0.009,
                                        right: width * 0.007,
                                      ),
                                      child: Row(
                                        //mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          RectangleContainer(
                                              "asset/rect1.png", context),
                                          SizedBox(
                                            width: width * .003,
                                          ),
                                          Container(
                                            color: Color(0xffFFFFFF),

                                            height: width * .0197,
                                            width: width * .111,
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  width: width * .001,
                                                ),
                                                Icon(
                                                  Icons.add,
                                                  color: Colors.black,
                                                  size: 14,
                                                ),
                                                SizedBox(
                                                  width: width * .007,
                                                ),
                                                Container(
                                                  child: Text(
                                                    "Add a Varient",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: width * .010,
                                                        overflow:
                                                        TextOverflow.ellipsis),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: width * .003,
                                          ),
                                          RectangleContainer(
                                              "asset/rect2.png", context),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * .015,
                                    ),

                                    Expanded(
                                        child: Container(
                                            height: 0,
                                            child: ListView.separated(
                                              separatorBuilder: (context, index) {
                                                return Divider(
                                                  height: 0,
                                                  color: Color(0xff2B3944)
                                                      .withOpacity(0.3),
                                                  // thickness: 1,
                                                );
                                              },
                                              physics: ScrollPhysics(),
                                              controller: verticalController,
                                              itemBuilder: (context, index) {
                                                return AutoScrollTag(
                                                    highlightColor: Colors.red,
                                                    controller: verticalController,
                                                    key: ValueKey(index),
                                                    index: index,
                                                    child: ItemCard(
                                                      index: index,
                                                      selectedVertical: selectedVertical,
                                                      item: result[index].orderCode,
                                                      id: result[index]
                                                          .id
                                                          .toString(),
                                                      onClick: () {
                                                        setState(() {
                                                          // select=false;
                                                          selectedVertical=index;

                                                          veritiaclid =
                                                              result[index].id;
                                                          context
                                                              .read<
                                                              PurchaserecievigReadCubit>()
                                                              .getGeneralPurchaseRecievingRead(
                                                              veritiaclid!);
                                                        });
                                                      },
                                                    ));
                                              },
                                              itemCount: result.length,
                                            )


                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child:Container(
                              child: Column(
                                children: [

                                  Expanded(child:
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          child:Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    orderCodeController.text="";
                                                    recievingCodeController.text="";
                                                    orederDateController.text="";
                                                    orderStatusController.text="";
                                                    paymentStatusController.text="";
                                                    invoiceStausController.text="";
                                                    focController.text="";
                                                    discountController.text="";
                                                    unitCostController.text="";
                                                    vatableAmountController.text="";
                                                    excessTaxController.text="";
                                                    vatController.text="";
                                                    actualCostController.text="";
                                                    grandTotalController.text="";
                                                    noteController.text="";
                                                    remarksController.text="";





                                                  });


                                                },
                                                child: Container(
                                                  margin: EdgeInsets.only(bottom: size.height * .008),
                                                  alignment: Alignment.center,
                                                  height: size.width * .016,
                                                  width: size.width * .016,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    borderRadius: BorderRadius.circular(100),
                                                    border: Border.all(
                                                      color: Colors.black,
                                                    ),

                                                    //more than 50% of width makes circle
                                                  ),
                                                  child: Icon(
                                                    Icons.remove ,
                                                    color: Colors.black,
                                                    size: size.width * .010,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      child: Row(
                                                        children: [
                                              Expanded(
                                              child:Column(
                                                children: [
                                                SizedBox(height: height*.030,),
                                              SizedBox(height: height*.030,),

                                              NewInputCard(
                                                  controller: orderCodeController, title: "Order code"),
                                              SizedBox(height: height*.030,),
                                              NewInputCard(
                                                  controller: recievingCodeController, title: "Receiving code"),
                                              SizedBox(height: height*.030,),
                                              NewInputCard(
                                                controller:orederDateController , title: "Order date",colors: Color(0xff3E4F5B
                                              ),),
                                              SizedBox(height: height*.030,),
                                              NewInputCard(
                                                  controller: orderStatusController, title: "Order Status"),
                                              SizedBox(height: height*.030,),
                                              NewInputCard(
                                                  controller: paymentStatusController, title: "Payment Status"),
                                              SizedBox(height: height*.030,),
                                              NewInputCard(
                                                  controller: invoiceStausController, title: "Invoice Status"),


                                            ],
                                          )
                                        ),
                                        Expanded(
                                            child:Column(
                                              children: [
                                                SizedBox(height: height*.030,),
                                                SizedBox(height: height*.030,),
                                                //  SizedBox(height: height*.030,),
                                                NewInputCard(
                                                    controller: focController, title: "foc"),
                                                SizedBox(height: height*.030,),
                                                NewInputCard(
                                                    controller: discountController, title: "discount"),
                                                SizedBox(height: height*.030,),
                                                NewInputCard(
                                                    controller: unitCostController, title: "unit cost"),
                                                SizedBox(height: height*.030,),
                                                NewInputCard(
                                                    controller: vatableAmountController, title: "vatable amount"),
                                                SizedBox(height: height*.030,),
                                                NewInputCard(
                                                    controller: excessTaxController, title: "excess tax"),
                                                SizedBox(height: height*.030,),
                                                NewInputCard(
                                                    controller: vatController, title: "vat"),


                                              ],
                                            )
                                        ),
                                        Expanded(
                                            child:Column(

                                              children: [

                                                SizedBox(height: height*.030,),
                                                SizedBox(height: height*.030,),
                                                NewInputCard(
                                                    controller: actualCostController, title: "actual cost"),
                                                SizedBox(height: height*.030,),
                                                NewInputCard(
                                                    controller: grandTotalController, title: "grand total"),
                                                SizedBox(height: height*.030,),
                                                NewInputCard(
                                                  controller: noteController, title: "note",height: 90,maxLines: 3,),
                                                SizedBox(height: height*.030,),
                                                NewInputCard(
                                                  controller: remarksController, title: "remarks",height: 90,maxLines: 3,),
                                                SizedBox(height: height*.030,),
                                                SizedBox(height: height*.036,),
                                                // SizedBox(height: height*.010,),

                                              ],
                                            )
                                        ),




                                                        ],
                                                      ),
                                                    ),
                                                  )

                                                ],
                                              ),
                                              SizedBox(height: height*.010,),
                                              TextWidget(text: "recieving lines"),
                                              Divider(color: Colors.grey,thickness: 1,),
                                              // ScrollableTable(),
                                              SizedBox(height: 11,),
                                              Scrollbar(
                                                  controller: scontroller,
                                                  isAlwaysShown: true,
                                                  child:Container(
                                                    alignment: Alignment.topRight,
                                                    height: 300,
                                                    child: ListView(

                                                      controller: scontroller,
                                                      physics: ScrollPhysics(),
                                                      scrollDirection: Axis.horizontal,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            SingleChildScrollView(
                                                            child: Container(
                                                              width: MediaQuery.of(context)
                                                                  .size
                                                                  .width,
                                                              padding: EdgeInsets.all(10),
                                                              child:customTable(
                                                                border: const TableBorder(
                                                                    verticalInside: BorderSide(
                                                                        width: 1,
                                                                        color: Colors.black45,
                                                                        // color: Colors.blue,
                                                                        style:
                                                                        BorderStyle.solid),
                                                                    horizontalInside:
                                                                    BorderSide.none),
                                                                tableWidth: .5,
                                                                childrens: [
                                                                  TableRow(
                                                                    // decoration: BoxDecoration(
                                                                    //     color: Colors.green.shade200,
                                                                    //     shape: BoxShape.rectangle,
                                                                    //     border: const Border(bottom: BorderSide(color: Colors.grey))),
                                                                      children: [
                                                                        tableHeadtext(
                                                                          'Sno',
                                                                          padding:
                                                                          EdgeInsets.all(7),
                                                                          height: 46,
                                                                          size: 13,
                                                                          // color: Palette.containerDarknew,
                                                                          // textColor: Palette.white,
                                                                        ),
                                                                        tableHeadtext(
                                                                          'orderline id',
                                                                          padding:
                                                                          EdgeInsets.all(7),
                                                                          height: 50,
                                                                          size: 12,
                                                                          // color: Palette.containerDarknew,
                                                                          // textColor: Palette.white
                                                                        ),
                                                                        tableHeadtext(
                                                                          'Variant id',
                                                                          padding:
                                                                          EdgeInsets.all(7),
                                                                          height: 46,
                                                                          size: 13,
                                                                          // color: Palette.containerDarknew,
                                                                          // textColor: Palette.white
                                                                        ),
                                                                        tableHeadtext(
                                                                          'Variant name',
                                                                          padding:
                                                                          EdgeInsets.all(7),
                                                                          height: 46,
                                                                          size: 13,
                                                                          // color: Palette.containerDarknew,
                                                                          // textColor: Palette.white
                                                                        ),
                                                                        // tableHeadtext('description', size: 10, color: null),
                                                                        tableHeadtext(
                                                                          'barcode',
                                                                          padding:
                                                                          EdgeInsets.all(7),
                                                                          height: 46,
                                                                          size: 13,
                                                                          // color: Palette.containerDarknew,
                                                                          // textColor: Palette.white
                                                                        ),

                                                                        tableHeadtext(
                                                                          'supplier ref code',
                                                                          padding:
                                                                          EdgeInsets.all(7),
                                                                          height: 46,
                                                                          size: 13,
                                                                          // color: Palette.containerDarknew,
                                                                          // textColor: Palette.white
                                                                        ),

                                                                        tableHeadtext(
                                                                          'current qty',
                                                                          padding:
                                                                          EdgeInsets.all(7),
                                                                          height: 46,
                                                                          size: 13,
                                                                          // color: Palette.containerDarknew,
                                                                          // textColor: Palette.white
                                                                        ),
                                                                        tableHeadtext(
                                                                          'purchase uom',
                                                                          padding:
                                                                          EdgeInsets.all(7),
                                                                          height: 46,
                                                                          size: 13,
                                                                          // color: Palette.containerDarknew,
                                                                          // textColor: Palette.white
                                                                        ),
                                                                        tableHeadtext(
                                                                          'recieved qty',
                                                                          padding:
                                                                          EdgeInsets.all(7),
                                                                          height: 46,
                                                                          size: 13,
                                                                          // color: Palette.containerDarknew,
                                                                          // textColor: Palette.white
                                                                        ),
                                                                        tableHeadtext(
                                                                          'is recieved',
                                                                          padding:
                                                                          EdgeInsets.all(7),
                                                                          height: 46,
                                                                          size: 13,
                                                                          // color: Palette.containerDarknew,
                                                                          // textColor: Palette.white
                                                                        ),
                                                                        tableHeadtext(
                                                                          'discount',
                                                                          padding:
                                                                          EdgeInsets.all(7),
                                                                          height: 46,
                                                                          size: 13,
                                                                          // color: Palette.containerDarknew,
                                                                          // textColor: Palette.white
                                                                        ),
                                                                        tableHeadtext(
                                                                          'Foc',
                                                                          padding:
                                                                          EdgeInsets.all(7),
                                                                          height: 46,
                                                                          size: 13,
                                                                          // color: Palette.containerDarknew,
                                                                          // textColor: Palette.white
                                                                        ),
                                                                        tableHeadtext(
                                                                          'Unitcost',
                                                                          padding:
                                                                          EdgeInsets.all(7),
                                                                          height: 46,
                                                                          size: 13,
                                                                          // color: Palette.containerDarknew,
                                                                          // textColor: Palette.white
                                                                        ),

                                                                        tableHeadtext(
                                                                          'vatable amount',
                                                                          padding:
                                                                          EdgeInsets.all(7),
                                                                          height: 46,
                                                                          size: 13,
                                                                          // color: Palette.containerDarknew,
                                                                          // textColor: Palette.white
                                                                        ),

                                                                        tableHeadtext(
                                                                          'vat',
                                                                          padding:
                                                                          EdgeInsets.all(7),
                                                                          height: 46,
                                                                          size: 13,
                                                                          // color: Palette.containerDarknew,
                                                                          // textColor: Palette.white
                                                                        ),
                                                                        tableHeadtext(
                                                                         'excise tax',
                                                                          padding:
                                                                          EdgeInsets.all(7),
                                                                          height: 46,
                                                                          size: 13,
                                                                          // color: Palette.containerDarknew,
                                                                          // textColor: Palette.white
                                                                        ),
                                                                        tableHeadtext(
                                                                          'actual cost',
                                                                          padding:
                                                                          EdgeInsets.all(7),
                                                                          height: 46,
                                                                          size: 13,
                                                                          // color: Palette.containerDarknew,
                                                                          // textColor: Palette.white
                                                                        ),
                                                                        tableHeadtext(
                                                                          'grand total',
                                                                          padding:
                                                                          EdgeInsets.all(7),
                                                                          height: 46,
                                                                          size: 13,
                                                                          // color: Palette.containerDarknew,
                                                                          // textColor: Palette.white
                                                                        ),
                                                                        tableHeadtext(
                                                                          'is invoiced',
                                                                          padding:
                                                                          EdgeInsets.all(7),
                                                                          height: 46,
                                                                          size: 13,
                                                                          // color: Palette.containerDarknew,
                                                                          // textColor: Palette.white
                                                                        ),
                                                                        tableHeadtext(
                                                                          'is free',
                                                                          padding:
                                                                          EdgeInsets.all(7),
                                                                          height: 46,
                                                                          size: 13,
                                                                          // color: Palette.containerDarknew,
                                                                          // textColor: Palette.white
                                                                        ),
                                                                        tableHeadtext(
                                                                          'is active',
                                                                          padding:
                                                                          EdgeInsets.all(7),
                                                                          height: 46,
                                                                          size: 13,
                                                                          // color: Palette.containerDarknew,
                                                                          // textColor: Palette.white
                                                                        ),
                                                                        // if (widget.onAddNew) textPadding(''),
                                                                      ]),
                                                      if (recievingLisnes != null)...[
                                                        for(var i=0;i<recievingLisnes.length;i++)
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
                                                                      textPadding(
                                                                          ( i+1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                              1.5),
                                                                          fontWeight: FontWeight.w500),
                                                                      textPadding(
                                                                          recievingLisnes[i].orderLineCode.toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                      1.5),
                                                                          fontWeight: FontWeight.w500),
                                                                      textPadding(
                                                                          recievingLisnes[i].variantId??"", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                      1.5),
                                                                          fontWeight: FontWeight.w500),
                                                                      textPadding(  recievingLisnes[i].variantName??"",
                                                                          fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                      1.5),
                                                                          fontWeight: FontWeight.w500),
                                                                      textPadding(
                                                                          recievingLisnes[i].barcode??"", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                      1.5),
                                                                          fontWeight: FontWeight.w500),
                                                                      textPadding(
                                                                         " aa."??"", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                      1.5),
                                                                          fontWeight: FontWeight.w500),
                                                                      textPadding(
                                                                          recievingLisnes[i].purchaseUom??"", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                      1.5),
                                                                          fontWeight: FontWeight.w500),
                                                                      textPadding(
                                                                         " aa"??"", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                      1.5),
                                                                          fontWeight: FontWeight.w500),
                                                                      Checkbox(
                                                                        value: recievingLisnes[i]
                                                                            .isReceived==null?false: recievingLisnes[i]
                                                                            .isReceived,
                                                                        onChanged: (bool?
                                                                        value) {
                                                                          setState(() {

                                                                          });
                                                                        },
                                                                      ),
                                                                      textPadding(
                                                                          recievingLisnes[i]
                                                                              .discount.toString()??"", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                      1.5),
                                                                          fontWeight: FontWeight.w500),
                                                                      textPadding(
                                                                          recievingLisnes[i]
                                                                              .foc.toString()??"", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                      1.5),
                                                                          fontWeight: FontWeight.w500),
                                                                      textPadding(
                                                                          recievingLisnes[i]
                                                                              .unitCost.toString()??"", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                      1.5),
                                                                          fontWeight: FontWeight.w500),
                                                                      textPadding(
                                                                          recievingLisnes[i]
                                                                              .vatableAmount.toString()??"", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                      1.5),
                                                                          fontWeight: FontWeight.w500),
                                                                      textPadding(
                                                                          recievingLisnes[i]
                                                                              .vat.toString()??"", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                      1.5),
                                                                          fontWeight: FontWeight.w500),
                                                                      textPadding(
                                                                          recievingLisnes[i]
                                                                              .excessTax.toString()??"", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                      1.5),
                                                                          fontWeight: FontWeight.w500),
                                                                      textPadding(
                                                                          recievingLisnes[i]
                                                                              .actualCost.toString()??"", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                      1.5),
                                                                          fontWeight: FontWeight.w500),
                                                                      textPadding(
                                                                          recievingLisnes[i]
                                                                              .grandTotal.toString()??"", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                      1.5),
                                                                          fontWeight: FontWeight.w500),
                                                                      Checkbox(
                                                                        value: recievingLisnes[i]
                                                                            .isInvoiced==null?false: recievingLisnes[i]
                                                                            .isInvoiced,
                                                                        onChanged: (bool?
                                                                        value) {
                                                                          setState(() {

                                                                          });
                                                                        },
                                                                      ),
                                                                      textPadding(

                                                                             "aaa"??"", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                      1.5),
                                                                          fontWeight: FontWeight.w500),
                                                                      Checkbox(
                                                                        value: recievingLisnes[i]
                                                                            .isFree==null?false: recievingLisnes[i]
                                                                            .isFree,
                                                                        onChanged: (bool?
                                                                        value) {
                                                                          setState(() {

                                                                          });
                                                                        },
                                                                      ),
                                                                      Checkbox(
                                                                        value: recievingLisnes[i]
                                                                            .isActive==null?false: recievingLisnes[i]
                                                                            .isActive,
                                                                        onChanged: (bool?
                                                                        value) {
                                                                          setState(() {

                                                                          });
                                                                        },
                                                                      ),




                                                                    ]
                                                                  )
                                  ]

                                                                ]

                                                              ) ,
                                                            ),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  )
                                              ),

                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  Buttons(icon: Icons.check,iconColor: Colors.white,
                                                    text: "generator Order",clr: Color(0xff53A9F9),height: 24,width: 152,labelcolor: Colors.white,),

                                                ],
                                              ),
                                              SizedBox(height: 10,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  TextWidget(text: "generate a pop up to fill PO details with old Po details ",),
                                                ],
                                              ),
                                              SizedBox(height: height*.020,),
                                              TextWidget(text: "additional variants"),
                                              Divider(color: Colors.grey,thickness: 1,),
                                              Scrollbar(
                                                  controller: scontroller,
                                                  isAlwaysShown: true,
                                                  child:Container(
                                                    alignment: Alignment.topRight,
                                                    height: 300,
                                                    child: ListView(

                                                      controller: scontroller,
                                                      physics: ScrollPhysics(),
                                                      scrollDirection: Axis.horizontal,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            SingleChildScrollView(
                                                              child: Container(
                                                                width: MediaQuery.of(context)
                                                                    .size
                                                                    .width,
                                                                padding: EdgeInsets.all(10),
                                                                child:customTable(
                                                                    border: const TableBorder(
                                                                        verticalInside: BorderSide(
                                                                            width: 1,
                                                                            color: Colors.black45,
                                                                            // color: Colors.blue,
                                                                            style:
                                                                            BorderStyle.solid),
                                                                        horizontalInside:
                                                                        BorderSide.none),
                                                                    tableWidth: .5,
                                                                    childrens: [
                                                                      TableRow(
                                                                        // decoration: BoxDecoration(
                                                                        //     color: Colors.green.shade200,
                                                                        //     shape: BoxShape.rectangle,
                                                                        //     border: const Border(bottom: BorderSide(color: Colors.grey))),
                                                                          children: [
                                                                            tableHeadtext(
                                                                              'Sno',
                                                                              padding:
                                                                              EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white,
                                                                            ),

                                                                            tableHeadtext(
                                                                              'Variant id',
                                                                              padding:
                                                                              EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'Variant name',
                                                                              padding:
                                                                              EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            // tableHeadtext('description', size: 10, color: null),


                                                                            tableHeadtext(
                                                                              'supplier ref code',
                                                                              padding:
                                                                              EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'barcode',
                                                                              padding:
                                                                              EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'current qty',
                                                                              padding:
                                                                              EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'purchase uom',
                                                                              padding:
                                                                              EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'recieved qty',
                                                                              padding:
                                                                              EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'is recieved',
                                                                              padding:
                                                                              EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'discount',
                                                                              padding:
                                                                              EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'Foc',
                                                                              padding:
                                                                              EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'Unitcost',
                                                                              padding:
                                                                              EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),

                                                                            tableHeadtext(
                                                                              'vatable amount',
                                                                              padding:
                                                                              EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),

                                                                            tableHeadtext(
                                                                              'vat',
                                                                              padding:
                                                                              EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'excise tax',
                                                                              padding:
                                                                              EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'actual cost',
                                                                              padding:
                                                                              EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'grand total',
                                                                              padding:
                                                                              EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'is invoiced',
                                                                              padding:
                                                                              EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'is free',
                                                                              padding:
                                                                              EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            tableHeadtext(
                                                                              'is active',
                                                                              padding:
                                                                              EdgeInsets.all(7),
                                                                              height: 46,
                                                                              size: 13,
                                                                              // color: Palette.containerDarknew,
                                                                              // textColor: Palette.white
                                                                            ),
                                                                            // if (widget.onAddNew) textPadding(''),
                                                                          ]),
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
                                                                          
                                                                            textPadding(
                                                                                ( 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                            1.5),
                                                                                fontWeight: FontWeight.w500),
                                                                            textPadding(
                                                                                ( 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                            1.5),
                                                                                fontWeight: FontWeight.w500),
                                                                            textPadding(
                                                                                ( 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                            1.5),
                                                                                fontWeight: FontWeight.w500),
                                                                            textPadding(
                                                                                ( 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                            1.5),
                                                                                fontWeight: FontWeight.w500),
                                                                            textPadding(
                                                                                ( 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                            1.5),
                                                                                fontWeight: FontWeight.w500),
                                                                            textPadding(
                                                                                ( 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                            1.5),
                                                                                fontWeight: FontWeight.w500),
                                                                            textPadding(
                                                                                ( 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                            1.5),
                                                                                fontWeight: FontWeight.w500),
                                                                            textPadding(
                                                                                ( 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                            1.5),
                                                                                fontWeight: FontWeight.w500),
                                                                            textPadding(
                                                                                ( 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                            1.5),
                                                                                fontWeight: FontWeight.w500),
                                                                            textPadding(
                                                                                ( 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                            1.5),
                                                                                fontWeight: FontWeight.w500),
                                                                            textPadding(
                                                                                ( 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                            1.5),
                                                                                fontWeight: FontWeight.w500),
                                                                            textPadding(
                                                                                ( 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                            1.5),
                                                                                fontWeight: FontWeight.w500),
                                                                            textPadding(
                                                                                ( 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                            1.5),
                                                                                fontWeight: FontWeight.w500),
                                                                            textPadding(
                                                                                ( 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                            1.5),
                                                                                fontWeight: FontWeight.w500),
                                                                            textPadding(
                                                                                ( 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                            1.5),
                                                                                fontWeight: FontWeight.w500),
                                                                            textPadding(
                                                                                ( 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                            1.5),
                                                                                fontWeight: FontWeight.w500),
                                                                            textPadding(
                                                                                ( 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                            1.5),
                                                                                fontWeight: FontWeight.w500),
                                                                            textPadding(
                                                                                ( 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                            1.5),
                                                                                fontWeight: FontWeight.w500),
                                                                            textPadding(
                                                                                ( 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                            1.5),
                                                                                fontWeight: FontWeight.w500),
                                                                            textPadding(
                                                                                ( 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                                                            1.5),
                                                                                fontWeight: FontWeight.w500),





                                                                          ]
                                                                      )


                                                                    ]

                                                                ) ,
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  )
                                              ),



                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  Buttons(icon: Icons.check,iconColor: Colors.white,
                                                    text: "generator Order",clr: Color(0xff53A9F9),height: 27,width: 152,labelcolor: Colors.white,),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  Buttons(icon: Icons.check,iconColor: Colors.white,
                                                    text: "Save",clr: Color(0xff53A9F9),height: 32,width: 90,labelcolor: Colors.white,),
                                                ],
                                              ),


                                            ],
                                          )
                                        )
                                      ],
                                    ),
                                  ))


                                ],
                              ),
                            ) ,
                          )
                        ],

                      )

                    ),
                  );
  },
),
);
        }
      );
    }
  ),
),
    );
  }
}

