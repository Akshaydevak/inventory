
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:inventory/Invetory/inventorysearch_cubit.dart';
import 'package:inventory/Screens/purcahseRecieving.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/cubit/cubit/cubit/vendor_details_cubit/vendordetails_cubit.dart';
import 'package:inventory/cubits/cubit/cubit/purchase_stock_cubit.dart';
import 'package:inventory/cubits/cubit/table_details_cubit_dart_cubit.dart';
import 'package:inventory/model/purchase_current_stock_qty.dart';
import 'package:inventory/model/purchase_order_table_model.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/purchaserecievingmodel/purchaserecieving_read.dart';
import 'package:inventory/requestformrecieving/cubit/generaterequestform_cubit.dart';
import 'package:inventory/requestformrecieving/cubit/patchreceive_cubit.dart';
import 'package:inventory/requestformrecieving/cubit/readrequestrecieving_cubit.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/inputfield.dart';
import 'package:inventory/widgets/popupcallwidgets/popupcallwidget.dart';

import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:inventory/model/purchaseorder.dart';

import '../commonWidget/Colors.dart';
import 'heirarchy/general/generalscreen.dart';

class RequestFormReceivigScreen extends StatefulWidget {
  @override
  _RequestFormReceivigScreenState createState() => _RequestFormReceivigScreenState();
}

class _RequestFormReceivigScreenState extends State<RequestFormReceivigScreen> {
  TextEditingController controller = TextEditingController();
  TextEditingController orderCodeController = TextEditingController();
  TextEditingController receivingcodeController = TextEditingController();
  TextEditingController orderDateController = TextEditingController();
  TextEditingController orderstatusController = TextEditingController();
  TextEditingController paymentstatusController = TextEditingController();
  TextEditingController invoiceStatusController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController focController = TextEditingController();
  TextEditingController unitCostController = TextEditingController();
  TextEditingController variableAmountController = TextEditingController();
  TextEditingController excessTaxController = TextEditingController();
  TextEditingController expirydateController = TextEditingController();
  TextEditingController vatController = TextEditingController();
  TextEditingController actualCostController = TextEditingController();
  TextEditingController grandtotalCostController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  TextEditingController remarksController = TextEditingController();
  TextEditingController unitCostCheck = TextEditingController();//
  var expirydateControllerList = <TextEditingController>[];
  var expirydateControllerList2 = <TextEditingController>[];
  late AutoScrollController recieveController;
  int selectedVertical=0;
  bool select=false;
bool  recievlinequantityCheck=false;
  int? veritiaclid=0;
  TextEditingController itemsearch=TextEditingController();
  List<PurchaseOrder>result=[];
  List<RecievingLines> recievingLisnes = [];
  List<RecievingLines> additionalVariants = [];
  String? inventoryId = "";
  bool stockCheck=false;
  int? receivingId ;
  String? variantId;
  String? supplierRefCode="";
  String? vendorCode="";
  String? barcode;
  String? varinatname;
  String? vrefcod;
  String? purchaseUomName;
  double? unitcost=0;
  double? actualCost1;
  double? grandTotal1;
  double? vatableAmount1;
  bool isReceived1=false;
  bool isActive1=false;
  bool isFree1=false;
  bool isInvoiced1=false;
  double?foc1=0;
  double?vat1=0;

  int? recievedQty=0;
  double?excess1=0;
  double?discount=0;
  int?stock=0;
  double unitcost1 = 0;
  double discountValue = 0;
  double grands = 0;
  double focValue = 0;
  double VatableValue = 0;
  double excessTax = 0;
 bool  updateCheck=false;
   var paginatedList;
  double vatValue = 0;
  double actualValue = 0;
  double excessTAxValue = 0;
  double vatableValue = 0;
  String vendorAddress="";
  bool? vendorcheck=false;
  bool? variantIdcheck=false;
  String vendorTrn="";
  List<int?> currentStock = [];
  PurchaseCureentStockQty? purchaseCurrentStock;
  PurchaseOrderTableModel? purchaseTable;
  VariantDetailsModel? vendorDetails;
  List<PartnerOrganizationData>?partnerOrganizationData;

  clear(){

  setState(() {
    variantId="";
    varinatname="";
    vendorCode="";
    barcode="";
    unitCostCheck.text="";
    purchaseUomName="";
    recievedQty=0;
    supplierRefCode="";
    expirydateController.text="";
    excess1=0;
    isReceived1=false;
    discount=0;
    foc1=0;
    unitcost=0;
    vatableAmount1=0;
    vat1=0;
    grandTotal1=0;
    actualCost1=0;
    isActive1=false;
    isFree1=false;
    isInvoiced1=false;
    stock=0;
  });


  }



  void initState() {
    context.read<InventorysearchCubit>().getInventorySearch("code",tab:"RF");
    recieveController = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }
  Future _getCurrentUser() async {

    if(recievingLisnes.isNotEmpty) {

      for (var i = 0; i < recievingLisnes.length; i++) {
        print("variantaaaaaa" + recievingLisnes[i].variantId.toString());
        print("variantaaaaaa" + Variable.inventory_ID);
        var b = await context.read<PurchaseStockCubit>().getCurrentStock(Variable.inventory_ID, recievingLisnes[i].variantId);
        print("b" + b.toString());
      }
      setState(() {});
    }
  }
  addition() {
    for (var i = 0; i < recievingLisnes.length; i++) {
      if (recievingLisnes[i].isActive == true) {
        var unicosts= recievingLisnes[i].unitCost??0;
        var vatValue1= recievingLisnes[i].vat??0;
        var grands1= recievingLisnes[i].grandTotal??0;
        var actualValue1= recievingLisnes[i].actualCost??0;
        var discountValue1= recievingLisnes[i].discount??0;
        var focValue1= recievingLisnes[i].foc??0;
        var VatableValue1= recievingLisnes[i].vatableAmount??0;
        var excessTAxValue1= recievingLisnes[i].excessTax??0;



        unitcost1 = unitcost1 + unicosts;
        grands = grands + grands1;
        actualValue = actualValue + actualValue1;
        vatValue = vatValue + vatValue1;
        discountValue = discountValue +discountValue1;
        focValue = focValue + focValue1;
        VatableValue = VatableValue + VatableValue1;
        print("excessTaxvalue"+excessTAxValue.toString());
        excessTAxValue = excessTAxValue + excessTAxValue1;
      }
    }
    unitCostController.text =  unitcost1.toString();
    grandtotalCostController.text = grands.toString();
    vatController.text = vatValue?.toString()??"";
    actualCostController.text = actualValue.toString();

    focController.text = focValue.toString();
    discountController.text = discountValue.toString();
    excessTaxController.text = excessTAxValue.toString();
    variableAmountController.text = VatableValue.toString();
  }
  assigniningDetails(String address,String trn){
    if(Variable.tableedit==true && vendorcheck==false){
      print("this casssss");
      additionalVariants[Variable.tableindex] = additionalVariants[Variable.tableindex].copyWith(vendorAddress:address,vendorTrnNumber:trn  );
    }
    else if(Variable.tableedit==true && vendorcheck==true){
      print("this casssss for ist table");
      recievingLisnes[Variable.tableindex] = recievingLisnes[Variable.tableindex].copyWith(vendorAddress:address,vendorTrnNumber:trn  );
    }
    else{
      vendorAddress=address;
      vendorTrn=trn;
    }

    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: MultiBlocProvider(
  providers: [
    BlocProvider(
      create: (context) => InventorysearchCubit()..getInventorySearch("code",tab:"RF"),
    ),
    BlocProvider(
      create: (context) => ReadrequestrecievingCubit(),
    ),
    BlocProvider(
      create: (context) => PatchreceiveCubit(),
    ),
    BlocProvider(
      create: (context) => GeneraterequestformCubit(),
    ),
  ],
  child: Builder(
    builder: (context) {
      return MultiBlocListener(
  listeners: [
    BlocListener<InventorysearchCubit, InventorysearchState>(
  listener: (context, state) {
    state.maybeWhen(orElse:(){},
        error: (){
          print("error");
        },
        success: (list){
          paginatedList=list;
          print("listtt"+list.toString());
          result=list.data;setState(() {
           if(result.isNotEmpty){
             Variable.verticalid=result[0].id;
             veritiaclid=result[0].id;
             context
                 .read<
                 ReadrequestrecievingCubit>()
                 .getRequestFormReceivingRead(
                 veritiaclid!);

             setState(() {
             });
           }
          });
        }
    );
  },
),
    BlocListener<VendordetailsCubit, VendordetailsState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error");
            },
            success: (data) {
              vendorDetails = data;
              setState(() {
                print("vendorDetails"+vendorDetails.toString());
                partnerOrganizationData=vendorDetails?.partnerOrganizationdata;
                // email=vendorDetails.partnerOrganizationdata[1].
              });
            });
      },
    ),
    BlocListener<ReadrequestrecievingCubit, ReadrequestrecievingState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error");
            },
            success: (data) {
              setState(() {
                print("searching"+data.toString());
                 stockCheck==false;

    data?.receivingLines != null
                    ? recievingLisnes = data?.receivingLines ?? []
                    : recievingLisnes = [];
                print("tablsssssssssssssssssse"+recievingLisnes.toString());
                setState(() {
                });  for(var i=0;i<recievingLisnes.length;i++){
                  var date = new TextEditingController(text:recievingLisnes[i].expiryDate??"");
                  expirydateControllerList2.add(date);
                  print("expirydate"+expirydateControllerList2.toString());
                  print("length of  recievingLines"+recievingLisnes.length.toString());




                }
                print("Anvar");

                orderCodeController.text=data?.orderCode??"";
                receivingcodeController.text=data?.receivingCode??"";
                orderDateController.text=data?.orderCreatedDate??"";
                orderstatusController.text=data?.orderStatus??"";
                paymentstatusController.text=data?.paymentStatus??"";
                invoiceStatusController.text=data?.invoiceStatus??"";
                discountController.text=data?.discount.toString()??"";
                focController.text=data?.foc.toString()??"";
                unitCostController.text=data?.unitCost.toString()??"";
                variableAmountController.text=data?.vatableAmount.toString()??"";
                excessTaxController.text=data?.excessTax.toString()??"";
                vatController.text=data.vat.toString()??"";
                actualCostController.text=data?.actualCost.toString()??"";
                grandtotalCostController.text=data?.grandTotal.toString()??"";
                noteController.text=data?.note.toString()??"";
                remarksController.text=data?.remarks.toString()??"";

                receivingId=data.id;
                _getCurrentUser();
              });
            });
      },
    ),
    BlocListener<TableDetailsCubitDartCubit, TableDetailsCubitDartState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error");
            },
            success: (data) {
              purchaseTable = data;
              print("purchasetable"+purchaseTable.toString());
              setState(() {


                if(Variable.tableedit==true) {
                  additionalVariants[Variable.tableindex] =
                      additionalVariants[Variable.tableindex].copyWith(variantName:purchaseTable?.name??"",unitCost:purchaseTable?.unitCost,vat:purchaseTable?.vat,purchaseUom: purchaseTable?.purchaseUomName??"",barcode:  purchaseTable?.barCode?.barcodeNumber.toString()??"",   );
                  setState(() {

                  });
                }
                else if( variantIdcheck==true){
                  recievingLisnes[Variable.tableindex] = recievingLisnes[Variable.tableindex].copyWith(variantName:purchaseTable?.name??"",unitCost:purchaseTable?.unitCost,vat:purchaseTable?.vat,purchaseUom: purchaseTable?.purchaseUomName??"",barcode:  purchaseTable?.barCode?.barcodeNumber.toString()??"",   );
                  setState(() {

                  });
                }
                else{
                  varinatname = purchaseTable?.name??"";
                  unitcost = purchaseTable?.unitCost;
                  vat1 = purchaseTable?.vat;
                  unitCostCheck.text = purchaseTable?.unitCost.toString()??"";
                  // supplierRefCode=purchaseTable?.vendorDetails?.vendorRefCode??"";
                  print(  supplierRefCode);
                  print("unitttt"+unitcost.toString());
                 // unitcost1.text=purchaseTable?.unitCost.toString()??"";
                  // // vm.totalUnitcost = (vm.totalUnitcost!) + (check!);
                  // print(
                  //     "vm.totalUnitcost" + vm.totalUnitcost.toString());
                  //
                  purchaseUomName = purchaseTable?.purchaseUomName??"";
                  vrefcod = purchaseTable?.code??"";
                  // vid = purchaseTable?.id;
                  // purchaseTable?.excessTax != null
                  //     ? eTax = purchasef?.excessTax
                  //     : eTax = 0;
                  //
                  barcode =
                      purchaseTable?.barCode?.barcodeNumber.toString()??"";
                }

                //

              }
              );
            });
      },
    ),
    BlocListener<GeneraterequestformCubit, GeneraterequestformState>(
      listener: (context, state) {
        print("postssssssss" + state.toString());
        state.maybeWhen(orElse: () {
          // context.
          context.showSnackBarError("Loading");
        }, error: () {
          context.showSnackBarError(Variable.errorMessege);
        }, success: (data) {
          if (data.data1) {
            context.showSnackBarSuccess(data.data2);
            context.read<InventorysearchCubit>().getInventorySearch("code",tab:"RF");
            context.read<ReadrequestrecievingCubit>().getRequestFormReceivingRead(veritiaclid!);
          }

          else {
            context.showSnackBarError(data.data2);
            print(data.data1);
          }
          ;
        });
      },
    ),
    BlocListener<PurchaseStockCubit, PurchaseStockState>(
      listener: (context, state) {
        print("state++++++++++++++++++++++++++++++++");

        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error");
            },
            success: (data) {
              print("Akshayaaaaa" + data.toString());
              purchaseCurrentStock = data;
              var stockQty = purchaseCurrentStock?.StockQty;
              print("stockqty" + stockQty.toString());
              print("stockCheck"+stockCheck.toString());
              if(stockCheck==false){
                print("Stockcheck==false");
                currentStock.add(stockQty??0);
                setState(() {
                });
              }
              else if(recievlinequantityCheck){
                print("recievlinequantityCheck==true");
                currentStock[Variable.tableindex]=stockQty;
              }
              else{
                print("enterd in this..case ");
                if(Variable.tableedit==false){
                  print("Variable==false");
                  print("findinf");
                  stock=stockQty;
                }
                else if(Variable.tableedit==true){
                  print("Variable==true");
                  additionalVariants[Variable.tableindex] = additionalVariants[Variable.tableindex].copyWith(currentStock:purchaseCurrentStock?.StockQty   );
                }
              }
            });
      },
    ),
        BlocListener<PatchreceiveCubit,
      PatchreceiveState>(
      listener: (context, state) {
      state.maybeWhen(orElse: () {
      // context.
      context.showSnackBarError("Loadingggg");
      }, error: () {
      context.showSnackBarError(Variable.errorMessege);
      }, success: (data) {
      if (data.data1)
      context.showSnackBarSuccess(data.data2);
      else {
      context.showSnackBarError(data.data2);
      print(data.data1);
      }
      ;
      });
      },
        )

  ],
  child: SingleChildScrollView(
child: IntrinsicHeight(
      child:   Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          VerticalList(
            tab:"RF",
            selectedVertical: selectedVertical,
            itemsearch: itemsearch,ontap: (int index){
              setState(() {
                print("taped");
                select=false;
                expirydateControllerList2.clear();
                additionalVariants.clear();
                selectedVertical=index;
                stockCheck=false;
                currentStock.clear();
                unitCostCheck.text="";
                expirydateControllerList.clear();
                clear();
                variantIdcheck=false;
                recievlinequantityCheck=false;

                updateCheck=false;
                veritiaclid = result[index].id;
                context.read<ReadrequestrecievingCubit>().getRequestFormReceivingRead(veritiaclid!);
              });
            },result: result,
       child:     tablePagination(
                  () => context
                  .read<InventorysearchCubit>()
                  .refresh(),
              back: paginatedList?.previousUrl == null
                  ? null
                  : () {
                context
                    .read<InventorysearchCubit>()
                    .previuosslotSectionPageList();
              },
              next:paginatedList?.nextPageUrl == null
                  ? null
                  : () {
                // print(data.nextPageUrl);
                context
                    .read<InventorysearchCubit>()
                    .nextslotSectionPageList("");
              },
            ),
          ),
          Expanded(
            child: Column(

              children: [
                Row(
                    mainAxisAlignment:
                    MainAxisAlignment.end,
                    children: [


                      TextButtonLarge(
                        text: "PREVIEW",
                        onPress: (){
                          print("Akshay");
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>
                                PurchaseReceivingPrintScreen2(table:recievingLisnes,
                                  note: noteController.text,
                                  // select: select,
                                  // vendorCode:vendorCode.text,
                                  orderCode:orderCodeController.text ,
                                  orderDate:orderDateController .text,
                                  // table:table,
                                  vat: double.tryParse( vatController.text),
                                  actualCost:double.tryParse( actualCostController.text),
                                  variableAmount:double.tryParse( variableAmountController.text) ,
                                  discount:double.tryParse( discountController.text) ,
                                  unitCost:double.tryParse( unitCostController.text) ,
                                  excisetax:double.tryParse( excessTaxController.text) ,
                                  remarks: remarksController.text ,





                                )),
                          );


                        },
                      ),
                    ]
                ),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Expanded(child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,

                children: [


                      NewInputCard(readOnly: true, controller: orderCodeController, title: "Order Code"),
                      SizedBox(height: height*.030,),
                      NewInputCard(
                          readOnly: true,
                          controller: receivingcodeController, title: "Receiving Code"),
                      SizedBox(height: height*.030,),
                      NewInputCard(
                          readOnly: true,
                          controller: orderDateController, title: "Ordered Date"),
                      SizedBox(height: height*.030,),
                      NewInputCard(
                          readOnly: true,
                          controller: orderstatusController, title: "Ordered Status"),
                      SizedBox(height: height*.030,),
                      NewInputCard(
                          readOnly: true,
                          controller: paymentstatusController, title: "Payment Status"),
                      SizedBox(height: height*.030,),
                      NewInputCard(
                          readOnly: true,
                          controller: invoiceStatusController, title: "Invoice Status"),
                      SizedBox(height: height*.040,),
                    ],)),
                    Expanded(child:
                    Column(children: [



                      NewInputCard(

                          readOnly: true,
                          controller: discountController, title: "Discount"),

                      SizedBox(height: height*.030,),

                      NewInputCard(
                          readOnly: true,

                          controller: focController, title: "FOC"),

                      SizedBox(height: height*.030,),

                      NewInputCard(
                          readOnly: true,

                          controller: unitCostController, title: "Unit cost"),

                      SizedBox(height: height*.030,),

                      NewInputCard(
                          readOnly: true,

                          controller: variableAmountController, title: "Vatable Amount"),

                      SizedBox(height: height*.030,),

                      NewInputCard(
                          readOnly: true,

                          controller: excessTaxController, title: "Excess Tax"),

                      SizedBox(height: height*.030,),

                      NewInputCard(
                          readOnly: true,

                          controller: vatController, title: "VAT"),

                      SizedBox(height: height*.030,),



                    ],)),

                    Expanded(child:

                    Column(children: [



                      NewInputCard(
                          readOnly: true,

                          controller: actualCostController, title: "Actual Cost"),

                      SizedBox(height: height*.030,),

                      NewInputCard(
                          readOnly: true,

                          controller: grandtotalCostController, title: "Grand Total"),

                      SizedBox(height: height*.030,),

                      NewInputCard(
                          controller: noteController, title: "Note",height: 90,maxLines: 3,),

                      SizedBox(height: height*.030,),

                      NewInputCard(
                          controller: remarksController, title: "Remarks",height: 90,maxLines: 3,),

                      SizedBox(height: height*.075,),

                      SizedBox(height: height*.072,),



                    ],)),

                  ],

                ),

                SizedBox(height: 5,),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextWidget(text: "Recieving Lines"),
                    SizedBox(width: 10,),
                    TextButton.icon(onPressed: (){}, icon: Icon(Icons.visibility), label:Text( "Preview", style: TextStyle(
                      // fontSize: 50,
                      decoration: TextDecoration.underline, // <-- SEE HERE
                    ),),),
                    TextButtonLarge(
                      text: "PREVIEW",
                      onPress: (){
                        print("Akshay");
                        List<RecievingLines> recievingLisnes1=[];
                        if(recievingLisnes.isNotEmpty){
                          for(var i=0;i<recievingLisnes.length;i++){
                            if(recievingLisnes[i].isReceived==false){
                              recievingLisnes1.add(recievingLisnes[i]);}
                          }
                        }
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>
                              PurchaseReceivingPrintScreen2(table:recievingLisnes1,
                                note: noteController.text,
                                // select: select,
                                // vendorCode:vendorCode.text,
                                orderCode:orderCodeController.text ,
                                orderDate:orderDateController .text,
                                // table:table,
                                vat: double.tryParse( vatController.text),
                                actualCost:double.tryParse( actualCostController.text),
                                variableAmount:double.tryParse( variableAmountController.text) ,
                                discount:double.tryParse( discountController.text) ,
                                unitCost:double.tryParse( unitCostController.text) ,
                                excisetax:double.tryParse( excessTaxController.text) ,
                                remarks: remarksController.text ,





                              )),
                        );


                      },
                    ),
                  ],
                ),
                Divider(color: Colors.grey,thickness: 1,),
                SizedBox(height: 5,),
                Scrollbar(
               controller: recieveController,
              isAlwaysShown: true,
              child:Container(
                color: Colors.white,
                alignment: Alignment.topRight,


                child: SingleChildScrollView(

                  controller:recieveController ,

                  physics: ScrollPhysics(),

                  scrollDirection: Axis.horizontal,



                 child:   Column(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        SingleChildScrollView(

                          child:Container(
                            width:  2200,

                  padding: EdgeInsets.all(10),

                            child: customTable(

                              // border: const TableBorder(
                              //
                              //   verticalInside: BorderSide(
                              //
                              //       width:.5,
                              //
                              //       color: Colors.black45,
                              //
                              //       // color: Colors.blue,
                              //
                              //       style:
                              //
                              //       BorderStyle.solid),
                              //
                              //
                              //
                              //   horizontalInside:
                              //
                              //   BorderSide(
                              //
                              //       width:.3,
                              //
                              //       color: Colors.black45,
                              //
                              //       // color: Colors.blue,
                              //
                              //       style:
                              //
                              //       BorderStyle.solid),),

                              tableWidth: .5,

                                childrens:[

                                  TableRow(

                                    // decoration: BoxDecoration(

                                    //     color: Colors.green.shade200,

                                    //     shape: BoxShape.rectangle,

                                    //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                                      children: [
                                        tableHeadtext(
                                          'Sno',

                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Orderline Id',

                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          'Variant Id',
                                        ),
                                        tableHeadtext(
                                          'Variant Name',

                                          size: 13,
                                          // color: Palette.containerDarknew,
                                          // textColor: Palette.white
                                        ),
                                        // tableHeadtext('description', size: 10, color: null),





                                        tableHeadtext(

                                          'Barcode',



                                          size: 13,

                                          // color: Palette.containerDarknew,

                                          // textColor: Palette.white

                                        ),



                                        tableHeadtext(

                                          'Current Qty',



                                          size: 13,

                                          // color: Palette.containerDarknew,

                                          // textColor: Palette.white

                                        ),

                                        tableHeadtext(

                                          'Purchase UOM',



                                          size: 13,

                                          // color: Palette.containerDarknew,

                                          // textColor: Palette.white

                                        ),

                                        tableHeadtext(

                                          'Vendor  Id',



                                          size: 13,

                                          // color: Palette.containerDarknew,

                                          // textColor: Palette.white

                                        ),

                                        tableHeadtext(

                                          'Recieved Qty',



                                          size: 13,

                                          // color: Palette.containerDarknew,

                                          // textColor: Palette.white

                                        ),

                                        tableHeadtext(

                                          'Is Recieved',



                                          size: 13,

                                          // color: Palette.containerDarknew,

                                          // textColor: Palette.white

                                        ),

                                        tableHeadtext(

                                          'Unit Cost',



                                          size: 13,

                                          // color: Palette.containerDarknew,

                                          // textColor: Palette.white

                                        ),

                                        tableHeadtext(

                                          'Excise Tax',



                                          size: 13,

                                          // color: Palette.containerDarknew,

                                          // textColor: Palette.white

                                        ),

                                        tableHeadtext(

                                          'Discount',



                                          size: 13,

                                          // color: Palette.containerDarknew,

                                          // textColor: Palette.white

                                        ),



                                        tableHeadtext(

                                          'FOC',


                                          size: 13,

                                          // color: Palette.containerDarknew,

                                          // textColor: Palette.white

                                        ),



                                        tableHeadtext(

                                          'Vatable Amount',



                                          size: 13,

                                          // color: Palette.containerDarknew,

                                          // textColor: Palette.white

                                        ),

                                        tableHeadtext(

                                          'VAT',



                                          size: 13,

                                          // color: Palette.containerDarknew,

                                          // textColor: Palette.white

                                        ),

                                        tableHeadtext(

                                          'Actual Cost',



                                          size: 13,

                                          // color: Palette.containerDarknew,

                                          // textColor: Palette.white

                                        ),

                                        tableHeadtext(

                                          'Grand Total',



                                          size: 13,

                                          // color: Palette.containerDarknew,

                                          // textColor: Palette.white

                                        ),

                                        tableHeadtext(

                                          'Is Invoiced',



                                          size: 13,

                                          // color: Palette.containerDarknew,

                                          // textColor: Palette.white

                                        ),

                                        tableHeadtext(

                                          'Expiry Date',



                                          size: 13,

                                          // color: Palette.containerDarknew,

                                          // textColor: Palette.white

                                        ),

                                        tableHeadtext(
                                          'Is Free',

                                          size: 13,


                                        ),
                                        tableHeadtext(
                                          'Is Active',

                                          size: 13,
                                        ),
                                        tableHeadtext(
                                          '',

                                          size: 13,
                                        ),

                                        // if (widget.onAddNew) textPadding(''),

                                      ]),
                                  if(recievingLisnes.isEmpty)...[
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
                                        textPadding(""),
                                        textPadding(""),
                                        textPadding(""),
                                        textPadding(""),
                                        textPadding(""),
                                        textPadding(""),
                                        textPadding(""),
                                        textPadding(""),
                                        textPadding(""),
                                        textPadding(""),
                                        textPadding(""),
                                        textPadding(""),
                                        textPadding(""),
                                        textPadding(""),
                                        textPadding(""),
                                        textPadding(""),
                                        textPadding(""),
                                        textPadding(""),
                                        textPadding(""),
                                        textPadding(""),
                                        textPadding(""),
                                        textPadding(""),
                                        Container(height: 42,),
                                      ],
                                    )


                                  ],
                  if (recievingLisnes != null) ...[
                for (var i = 0; i < recievingLisnes.length; i++)
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
                                          child: textPadding((i + 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(recievingLisnes[i].orderLineCode.toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: PopUpCall(
                                            inventory: Variable.inventory_ID,

                                            type:"cost-method-list",
                                            value: recievingLisnes[i].variantId,
                                            onSelection: (VariantId? va) {
                                              updateCheck=true;
                                              recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                              setState(() {

                                              });
                                              recievingLisnes[i] = recievingLisnes[i].copyWith(variantId:va?.code );
                                              setState(() {
                                                var  variant= va?.code;
                                                int? id = va!.id;
                                                Variable.tableindex =i;
                                                recievlinequantityCheck=true;
                                                stockCheck=true;
                                                Variable.tableedit=false;

                                                variantIdcheck=true;
                                                context.read<TableDetailsCubitDartCubit>().getTableDetails(id);
                                                context.read<PurchaseStockCubit>().getCurrentStock(Variable.inventory_ID, variant);

                                                // orderType = va!;
                                              });
                                            }, // restricted: true,
                                          ),
                                        ),
                                        // TableCell(
                                        //   verticalAlignment: TableCellVerticalAlignment.middle,
                                        //   child: textPadding(recievingLisnes[i].variantId ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                        // ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(recievingLisnes[i].variantName ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                        ),

                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(recievingLisnes[i].barcode ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(
                                             currentStock.length!=recievingLisnes.length?"": currentStock[i]?.toString()??"",
                                              fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(recievingLisnes[i].purchaseUom ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: PopUpCall(

                                            type:
                                            "VendorCodeGeneral",
                                            value: recievingLisnes[i].vendorId ??"",
                                            onSelection:
                                                (Result? va) {
                                                  updateCheck=true;
                                                  recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                                  setState(() {

                                                  });

                                                  recievingLisnes[i] = recievingLisnes[i].copyWith(vendorId:va?.partnerCode??"" );
                                              setState(() {
                                                var  variant=
                                                    va?.partnerCode;
                                                int? id = va!.id;
                                                Variable.tableindex =i;
                                                Variable.tableedit=true;
                                                vendorcheck=true;
                                                context.read<
                                                    VendordetailsCubit>()
                                                    .getVendorDetails(
                                                    variant);


                                                showDailogPopUp(
                                                    context,
                                                    VendorPopup(
                                                      assign:  assigniningDetails,

                                                    ));
                                                // context
                                                //     .read<
                                                //     TableDetailsCubitDartCubit>()
                                                //     .getTableDetails(
                                                //     id);
                                                // context
                                                //     .read<PurchaseStockCubit>()
                                                //     .getCurrentStock(Variable.inventory_ID, variant);

                                                // orderType = va!;
                                              });
                                            }, // restricted: true,
                                          ),
                                        ),

                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: UnderLinedInput(
                                            initialCheck: true,
                                            last: recievingLisnes[i].receivedQty.toString() ?? "",
                                            onChanged: (va) {
                                              updateCheck=true;
                                              recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                              setState(() {

                                              });
                                              print(va);
                                              if (va == "") {
                                                print("entered");
                                                recievingLisnes[i] = recievingLisnes[i].copyWith(receivedQty: 0, vatableAmount: 0, actualCost: 0, grandTotal: 0);
                                              } else {
                                                var qty = int.tryParse(va);
                                                var dis = recievingLisnes[i].discount;
                                                var excess = recievingLisnes[i].excessTax;
                                                var unitcost = recievingLisnes[i].unitCost;
                                                var vat = recievingLisnes[i].vat;
                                                var foc = recievingLisnes[i].foc;
                                                if (qty == 0 || unitcost == 0) {
                                                  recievingLisnes[i] = recievingLisnes[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0);
                                                }else {
                                                  var Vamount;
                                                var vactualCost;
                                                if(foc==0 || foc==""){
                                                  Vamount  = (((unitcost! *
                                                      qty!) +
                                                      excess!) -
                                                      dis!)
                                                      .toDouble();
                                                  if(vat==0 ||vat==""){
                                                    vactualCost=Vamount;
                                                  }
                                                  else{

                                                    vactualCost  = (Vamount! +
                                                        ((Vamount! *
                                                            vat!) /
                                                            100));
                                                  }


                                                  recievingLisnes[i] =
                                                      recievingLisnes[i]
                                                          .copyWith(
                                                          vatableAmount: Vamount,
                                                          actualCost: vactualCost,
                                                          grandTotal: vactualCost,
                                                          receivedQty: qty);
                                                }
                                                else{

                                                  var   Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-dis!);
                                                  var vactualCost = (Vamount! +
                                                      ((Vamount! *
                                                          vat!) /
                                                          100));

                                                  recievingLisnes[i] =
                                                      recievingLisnes[i]
                                                          .copyWith(
                                                          vatableAmount: Vamount,
                                                          actualCost: vactualCost,
                                                          grandTotal: vactualCost,
                                                          receivedQty: qty);
                                                }


                                                }}

                                              setState(() {});
                                            },
                                          ),
                                        ),

                                        // textPadding(
                                        //     recievingLisnes[i]
                                        //         .receivedQty.toString()??"", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                        // 1.5),
                                        //     fontWeight: FontWeight.w500),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: CheckedBoxs(
                                              valueChanger:recievingLisnes[i].isReceived == null ? false : recievingLisnes[i].isReceived,
                                              onSelection:(bool ? value){
                                                updateCheck=true;
                                                recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                                setState(() {

                                                });

                                                bool? isRecieved = recievingLisnes[i].isReceived;
                                                setState(() {
                                                  isRecieved = !isRecieved!;
                                                  recievingLisnes[i] = recievingLisnes[i].copyWith(isReceived: isRecieved);
                                                  print(recievingLisnes);

                                                });

                                              }),
                                          // Checkbox(
                                          //   value: recievingLisnes[i].isReceived == null ? false : recievingLisnes[i].isReceived,
                                          //   onChanged: (bool? value) {
                                          //     bool? isRecieved = recievingLisnes[i].isReceived;
                                          //     setState(() {
                                          //       isRecieved = !isRecieved!;
                                          //       recievingLisnes[i] = recievingLisnes[i].copyWith(isReceived: isRecieved);
                                          //       print(recievingLisnes);
                                          //     });
                                          //   },
                                          // ),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: UnderLinedInput(
                                              initialCheck: true,
                                            last: recievingLisnes[i].unitCost.toString() ?? "",
                                            onChanged: (va) {
                                              updateCheck=true;
                                              recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                              setState(() {

                                              });
                                              double? unitcost;
                                              if (va == "") {
                                                print("entered");
                                                unitcost = 0;
                                                print("disc" + unitcost.toString());
                                                recievingLisnes[i] = recievingLisnes[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
                                              }
                                              unitcost = double.tryParse(va);
                                              print("unitcost" + unitcost.toString());

                                              var qty = recievingLisnes[i].receivedQty;
                                              print("qty" + qty.toString());
                                              var excess = recievingLisnes[i].excessTax;
                                              print("excess" + excess.toString());
                                              var disc = recievingLisnes[i].discount;
                                              var foc=recievingLisnes[i].foc;

                                              var vat = recievingLisnes[i].vat;
                                              print("vat" + vat.toString());
                                              print("qty" + qty.toString());
                                              if (qty == 0 || qty == null) {
                                                print("checking case");

                                                recievingLisnes[i] = recievingLisnes[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
                                                setState(() {});
                                              } else {
                                                if(foc==0 || foc=="") {
                                                  var Vamount = (((unitcost! *
                                                      qty!) +
                                                      excess!) -
                                                      disc!)
                                                      .toDouble();
                                                  print(
                                                      "Vamount" +
                                                          Vamount
                                                              .toString());

                                                  var vactualCost = (Vamount! +
                                                      ((Vamount! *
                                                          vat!) /
                                                          100));
                                                  print(
                                                      "vactualCost" +
                                                          vactualCost
                                                              .toString());
                                                  recievingLisnes[i] =
                                                      recievingLisnes[i]
                                                          .copyWith(
                                                          vatableAmount: Vamount,
                                                          actualCost: vactualCost,
                                                          grandTotal: vactualCost,
                                                          unitCost: unitcost);
                                                  setState(() {});
                                                }else{
                                                  var   Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-disc!);
                                                  var vactualCost = (Vamount! +
                                                      ((Vamount! *
                                                          vat!) /
                                                          100));
                                                  recievingLisnes[i] =
                                                      recievingLisnes[i]
                                                          .copyWith(
                                                          vatableAmount: Vamount,
                                                          actualCost: vactualCost,
                                                          grandTotal: vactualCost,
                                                          unitCost: unitcost);
                                                  setState(() {});


                                                }
                                              }
                                            },
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: UnderLinedInput(
                                              initialCheck: true,
                                            last: recievingLisnes[i].excessTax.toString() ?? "",
                                            onChanged: (va) {
                                              updateCheck=true;
                                              recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                              setState(() {

                                              });
                                              double? excess;
                                              if (va == "") {
                                                excess = 0;
                                                setState(() {});
                                              } else {
                                                excess = double.tryParse(va);
                                                setState(() {});
                                              }

                                              var qty = recievingLisnes[i].receivedQty;
                                              var vat = recievingLisnes[i].vat;
                                              var foc = recievingLisnes[i].foc;

                                              print("excess" + excess.toString());
                                              var unitcost = recievingLisnes[i].unitCost;
                                              print("unitcost" + unitcost.toString());
                                              var Vdiscount = recievingLisnes[i].discount;
                                              if(qty==0 || unitcost==0){
                                                recievingLisnes[i] = recievingLisnes[i].copyWith(actualCost: 0, grandTotal: 0, vatableAmount: 0, excessTax: excess);
                                                setState(() {

                                                });

                                              }else {
                                                var Vamount;

                                                if(foc==0 ||foc=="") {
                                                  Vamount =
                                                      (((unitcost! *
                                                          qty!) +
                                                          excess!) -
                                                          Vdiscount!)
                                                          .toDouble();
                                                }else{
                                                  Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-Vdiscount!);

                                                }
                                                var vactualCost = (Vamount! +
                                                    ((Vamount! *
                                                        vat!) /
                                                        100));
                                                var Vgrnadtotal = (Vamount! +
                                                    ((Vamount! *
                                                        vat!) /
                                                        100));
                                                recievingLisnes[i] =
                                                    recievingLisnes[i]
                                                        .copyWith(
                                                        actualCost: vactualCost,
                                                        grandTotal: Vgrnadtotal,
                                                        vatableAmount: Vamount,
                                                        excessTax: excess);
                                                setState(() {});
                                              } },
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: UnderLinedInput(
                                              initialCheck: true,
                                            last: recievingLisnes[i].discount.toString() ?? "",
                                            onChanged: (va) {
                                              updateCheck=true;
                                              recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                              setState(() {

                                              });
                                              double? disc;
                                              if (va ==
                                                  "") {
                                                print(
                                                    "entered");
                                                disc =
                                                0;
                                                print(
                                                    "disc" +
                                                        disc
                                                            .toString());
                                              } else {
                                                disc =
                                                    double
                                                        .tryParse(
                                                        va);
                                                print(
                                                    "disc1" +
                                                        disc
                                                            .toString());
                                              }

                                              var qty = recievingLisnes[i]
                                                  .receivedQty;
                                              print(
                                                  "qty" +
                                                      qty
                                                          .toString());
                                              var excess = recievingLisnes[i]
                                                  .excessTax;
                                              print(
                                                  "excess" +
                                                      excess
                                                          .toString());
                                              var unitcost = recievingLisnes[i]
                                                  .unitCost;
                                              print(
                                                  "unitcost" +
                                                      unitcost
                                                          .toString());
                                              var vat = recievingLisnes[i].vat;
                                              var foc = recievingLisnes[i]
                                                  .foc;

                                              print(
                                                  "vat" +
                                                      vat
                                                          .toString());
                                              if (unitcost ==
                                                  0 ||
                                                  qty ==
                                                      0) {
                                                recievingLisnes[i] =
                                                    recievingLisnes[i]
                                                        .copyWith(
                                                        vatableAmount: 0,
                                                        actualCost: 0,
                                                        grandTotal: 0,
                                                        discount: disc);
                                              }

                                              else {
                                                if(foc==0 ||foc=="") {
                                                  var Vamount = (((unitcost! *
                                                      qty!) +
                                                      excess!) -
                                                      disc!)
                                                      .toDouble();
                                                  print(
                                                      "Vamount" +
                                                          Vamount
                                                              .toString());

                                                  var vactualCost = (Vamount! +
                                                      ((Vamount! *
                                                          vat!) /
                                                          100));
                                                  print(
                                                      "vactualCost" +
                                                          vactualCost
                                                              .toString());
                                                  recievingLisnes[i] =
                                                      recievingLisnes[i]
                                                          .copyWith(
                                                          vatableAmount: Vamount,
                                                          actualCost: vactualCost,
                                                          grandTotal: vactualCost,
                                                          discount: disc);
                                                  setState(() {});
                                                }
                                                else{
                                                  var   Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-disc!);
                                                  var vactualCost = (Vamount! +
                                                      ((Vamount! *
                                                          vat!) /
                                                          100));
                                                  recievingLisnes[i] =
                                                      recievingLisnes[i]
                                                          .copyWith(
                                                          vatableAmount: Vamount,
                                                          actualCost: vactualCost,
                                                          grandTotal: vactualCost,
                                                          discount: disc);
                                                  setState(() {});

                                                }
                                              }

                                            }
                                            ,

                                          ),
                                        ),

                                        // textPadding(
                                        //     recievingLisnes[i]
                                        //         .discount.toString()??"", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                        // 1.5),
                                        //     fontWeight: FontWeight.w500),
                                        // textPadding(
                                        //     recievingLisnes[i]
                                        //         .foc.toString()??"", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                        // 1.5),
                                        //     fontWeight: FontWeight.w500),

                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: UnderLinedInput(
                                              initialCheck: true,
                                            last: recievingLisnes[i].foc.toString() ?? "",
                                            onChanged: (va) {
                                              updateCheck=true;
                                              recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                              setState(() {

                                              });
                                              double? foc;
                                              if (va == "") {
                                                foc=0;
                                                recievingLisnes[i] = recievingLisnes[i].copyWith(foc: 0);
                                              } else {
                                                foc  = double.tryParse(va);
                                                recievingLisnes[i] = recievingLisnes[i].copyWith(foc: foc);
                                              }
                                              var qty = recievingLisnes[i].receivedQty;
                                              var vat = recievingLisnes[i].vat;
                                              print("qty" + qty.toString());
                                              var excess = recievingLisnes[i].excessTax;
                                              print("excess" + excess.toString());
                                              var disc = recievingLisnes[i].discount;
                                              var unitcost=recievingLisnes[i].unitCost;
                                              if (qty == 0 || unitcost == 0) {
                                                print("checking case");

                                                recievingLisnes[i] = recievingLisnes[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0, foc: foc);
                                                setState(() {});
                                              }
                                              else{
                                                var Vamount;
                                                if(foc==0 ||foc==""){
                                                  Vamount = (((unitcost! *
                                                      qty!) +
                                                      excess!) -
                                                      disc!)
                                                      .toDouble();
                                                  setState(() {

                                                  });

                                                }else{
                                                  Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-disc!);
                                                  setState(() {

                                                  });

                                                }
                                                var vactualCost = (Vamount! +
                                                    ((Vamount! *
                                                        vat!) /
                                                        100));
                                                recievingLisnes[i] =
                                                    recievingLisnes[i]
                                                        .copyWith(
                                                      vatableAmount: Vamount,
                                                      actualCost: vactualCost,
                                                      grandTotal: vactualCost,
                                                    );
                                                setState(() {});


                                              }

                                              print(recievingLisnes);
                                            },
                                          ),
                                        ),

                                        // textPadding(
                                        //     recievingLisnes[i]
                                        //         .unitCost.toString()??"", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top:
                                        // 1.5),
                                        //     fontWeight: FontWeight.w500),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(recievingLisnes[i].vatableAmount.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(recievingLisnes[i].vat.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                        ),
                                        // TableCell(
                                        //   verticalAlignment: TableCellVerticalAlignment.middle,
                                        //   child: UnderLinedInput(
                                        //       initialCheck: true,
                                        //     last: recievingLisnes[i].vat.toString() ?? "",
                                        //     onChanged: (va) {
                                        //       updateCheck=true;
                                        //       recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                        //       setState(() {
                                        //
                                        //       });
                                        //       if (va == "") {
                                        //         print("sss");
                                        //         var vatableAmount = recievingLisnes[i].vatableAmount;
                                        //         recievingLisnes[i] = recievingLisnes[i].copyWith(actualCost: vatableAmount, grandTotal: vatableAmount, vat: 0);
                                        //         setState(() {});
                                        //       } else {
                                        //         var vat = double.tryParse(va);
                                        //         var Vamount = recievingLisnes[i].vatableAmount;
                                        //         print("qty" + Vamount.toString());
                                        //         var excess = recievingLisnes[i].excessTax;
                                        //         print("excess" + excess.toString());
                                        //         var unitcost = recievingLisnes[i].unitCost;
                                        //         var qty = recievingLisnes[i].receivedQty;
                                        //         var foc = recievingLisnes[i].foc;
                                        //         var dis = recievingLisnes[i].discount;
                                        //         print("unitcost" + unitcost.toString());
                                        //         if(unitcost==0 || qty==0){
                                        //           recievingLisnes[i] = recievingLisnes[i].copyWith(actualCost: 0, grandTotal: 0, vat: vat);
                                        //
                                        //         }else{
                                        //           if(foc==0 || foc=="") {
                                        //             var Vamount = (((unitcost! *
                                        //                 qty!) +
                                        //                 excess!) -
                                        //                 dis!)
                                        //                 .toDouble();
                                        //             var vactualCost = (Vamount! +
                                        //                 ((Vamount! *
                                        //                     vat!) /
                                        //                     100));
                                        //             var Vgrnadtotal = (Vamount! +
                                        //                 ((Vamount! *
                                        //                     vat!) /
                                        //                     100));
                                        //             recievingLisnes[i] =
                                        //                 recievingLisnes[i]
                                        //                     .copyWith(
                                        //                     vatableAmount: Vamount,
                                        //                     actualCost: vactualCost,
                                        //                     grandTotal: Vgrnadtotal,
                                        //                     vat: vat);
                                        //             setState(() {});
                                        //           }
                                        //           else{
                                        //             var   Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-dis!);
                                        //
                                        //             var vactualCost = (Vamount! +
                                        //                 ((Vamount! *
                                        //                     vat!) /
                                        //                     100));
                                        //             var Vgrnadtotal = (Vamount! +
                                        //                 ((Vamount! *
                                        //                     vat!) /
                                        //                     100));
                                        //             recievingLisnes[i] =
                                        //                 recievingLisnes[i]
                                        //                     .copyWith(
                                        //                     vatableAmount: Vamount,
                                        //                     actualCost: vactualCost,
                                        //                     grandTotal: Vgrnadtotal,
                                        //                     vat: vat);
                                        //             setState(() {
                                        //
                                        //             });
                                        //           }
                                        //         }}
                                        //     },
                                        //   ),
                                        // ),


                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(recievingLisnes[i].actualCost.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(recievingLisnes[i].grandTotal.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: CheckedBoxs(
                                              valueChanger:recievingLisnes[i].isInvoiced == null ? false : recievingLisnes[i].isInvoiced,
                                              onSelection:(bool ? value){
                                                bool? isInvoiced = recievingLisnes[i].isInvoiced;
                                                setState(() {
                                                  // isInvoiced = !isInvoiced!;
                                                  // recievingLisnes[i] = recievingLisnes[i].copyWith(isInvoiced: isInvoiced);
                                                  // print(isInvoiced);

                                                });

                                              }),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.fill,
                                          child: Tabledate(

                                              format:DateFormat('yyyy-MM-dd'),
                                              controller:recievingLisnes.length!=expirydateControllerList2.length?TextEditingController(text:""):expirydateControllerList2[i],
                                              label: "Promised reciept date",
                                              onSaved: (newValue) {
                                                updateCheck=true;
                                                recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                                setState(() {

                                                });
                                                recievingLisnes[i] =
                                                    recievingLisnes[i]
                                                        .copyWith(
                                                        expiryDate:newValue
                                                            ?.toIso8601String()
                                                            .split("T")[0] ??
                                                            "" );
                                                setState(() {
                                                });
                                              },
                                              enable: true),
                                        ),


                                        // Checkbox(
                                        //   value: recievingLisnes[i].isInvoiced == null ? false : recievingLisnes[i].isInvoiced,
                                        //   onChanged: (bool? value) {
                                        //     setState(() {});
                                        //   },
                                        // ),


                                        TableCell(
                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                          child:CheckedBoxs(
                                              valueChanger:recievingLisnes[i].isFree == null ? false : recievingLisnes[i].isFree,
                                              onSelection:(bool ? value){
                                                bool? isInvoiced = recievingLisnes[i].isFree;
                                                setState(() {
                                                  // isInvoiced = !isInvoiced!;
                                                  // recievingLisnes[i] = recievingLisnes[i].copyWith(isFree: isInvoiced);
                                                  // print(isInvoiced);

                                                });

                                              }),
                                          // Checkbox(
                                          //   value: recievingLisnes[i].isFree == null ? false : recievingLisnes[i].isFree,
                                          //   onChanged: (bool? value) {
                                          //     setState(() {});
                                          //   },vis
                                          // ),
                                        ),


                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: Checkbox(
                                            value: recievingLisnes[i]
                                                .isActive==null?false:recievingLisnes[i]
                                                .isActive,
                                            onChanged: (bool?
                                            value) {
                                              updateCheck=true;
                                              recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                              setState(() {

                                              });
                                              bool? isActive = recievingLisnes[i].isActive;
                                              setState(() {
                                                isActive = !isActive!;
                                                recievingLisnes[i] = recievingLisnes[i].copyWith(isActive: isActive);

                                                setState(() {

                                                });

                                              });
                                            },
                                          ),
                                        ),
                                        TableTextButton(label:recievingLisnes[i].updateCheck==true? 'Update':"",

                                          onPress: (){

                                            var variant = recievingLisnes[i].variantId??0;


                                            var excess = recievingLisnes[i].excessTax??0;
                                            print("excess" + excess.toString());
                                            var unitcosts = recievingLisnes[i].unitCost??0;
                                            var qty = recievingLisnes[i].receivedQty??0;
                                            var foc = recievingLisnes[i].foc??0;
                                            var dis = recievingLisnes[i].discount??0;
                                            var exp = recievingLisnes[i].expiryDate??"";
                                            if(variant=="null"||unitcosts==0){
                                              context.showSnackBarError("please fill all the fields");
                                            }
                                            else if(qty==0||qty==""){
                                              context.showSnackBarError(
                                                  "the requested quantity not be 0 or empty");

                                            }
                                            else if(qty!<foc!){
                                              context.showSnackBarError("the received qty allways greater than  foc");

                                            }
                                            else if(exp==null||exp=="null"||exp=="")
                                              context.showSnackBarError("please select expiry date");

                                            else{
                                              updateCheck=false;
                                              addition();
                                              unitcost1= 0;
                                              recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: false);
                                              setState(() {

                                              });


                                              grands = 0;
                                              actualValue = 0;
                                              vatValue = 0;
                                              discountValue = 0;
                                              focValue =0;

                                              VatableValue = 0;

                                              excessTAxValue = 0;
                                              setState(() {

                                              });
                                            }

                                          },)


                                      ],
                                  ),

    ]



                                ],
                              widths: {
                                0: FlexColumnWidth(2),
                                1: FlexColumnWidth(4),
                                2: FlexColumnWidth(6),
                                3: FlexColumnWidth(3),
                                4: FlexColumnWidth(3),
                                5: FlexColumnWidth(3),
                                6: FlexColumnWidth(3),
                                7: FlexColumnWidth(3),
                                8: FlexColumnWidth(3),
                                9: FlexColumnWidth(3),
                                10: FlexColumnWidth(3),
                                11: FlexColumnWidth(3),
                                12: FlexColumnWidth(3),
                                13: FlexColumnWidth(3),
                                14: FlexColumnWidth(3),
                                15: FlexColumnWidth(3),
                                16: FlexColumnWidth(3),
                                17: FlexColumnWidth(3),
                                18: FlexColumnWidth(2),
                                19: FlexColumnWidth(4),
                                20: FlexColumnWidth(2),
                                21: FlexColumnWidth(2.4),
                                22: FlexColumnWidth(2.4),

                              },





                            )

                          ) ,
                        )

                      ],
                    )

                ),
              )
            ),
                SizedBox(height: 33,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(text: "Additional Variants"),


                  ],
                ),
                Divider(color: Colors.grey,thickness: 1,),
                SizedBox(height: 5,),
                Scrollbar(

                    controller: recieveController,

                    isAlwaysShown: true,

                    child:Container(

                      color: Colors.white,

                      alignment: Alignment.topRight,



                      child: SingleChildScrollView(

                        controller:recieveController ,

                        physics: ScrollPhysics(),

                        scrollDirection: Axis.horizontal,



                         child: Column(

                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [

                              SingleChildScrollView(

                                child:Container(

                                  width: 2200,

                                  padding: EdgeInsets.all(10),

                                  child: customTable(



                                      tableWidth: .5,

                                      childrens:[

                                        TableRow(

                                          // decoration: BoxDecoration(

                                          //     color: Colors.green.shade200,

                                          //     shape: BoxShape.rectangle,

                                          //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                                            children: [

                                              tableHeadtext(

                                                'Sno',



                                                size: 13,

                                                // color: Palette.containerDarknew,

                                                // textColor: Palette.white,

                                              ),



                                              tableHeadtext(

                                                'Variant Id',



                                                size: 13,

                                                // color: Palette.containerDarknew,

                                                // textColor: Palette.white

                                              ),

                                              tableHeadtext(

                                                'Variant Name',



                                                size: 13,

                                                // color: Palette.containerDarknew,

                                                // textColor: Palette.white

                                              ),

                                              // tableHeadtext('description', size: 10, color: null),





                                              tableHeadtext(
                                                'Barcode',

                                                size: 13,
                                              ),

                                              tableHeadtext(

                                                'Current Qty',



                                                size: 13,

                                                // color: Palette.containerDarknew,

                                                // textColor: Palette.white

                                              ),

                                              tableHeadtext(

                                                'Purchase UOM',



                                                size: 13,

                                                // color: Palette.containerDarknew,

                                                // textColor: Palette.white

                                              ),

                                              tableHeadtext(

                                                'Vendor Id',



                                                size: 13,

                                                // color: Palette.containerDarknew,

                                                // textColor: Palette.white

                                              ),

                                              tableHeadtext(

                                                'Received Qty',



                                                size: 13,

                                                // color: Palette.containerDarknew,

                                                // textColor: Palette.white

                                              ),

                                              tableHeadtext(

                                                'Is Received',



                                                size: 13,

                                                // color: Palette.containerDarknew,

                                                // textColor: Palette.white

                                              ),

                                              tableHeadtext(

                                                'Unit Cost',



                                                size: 13,

                                                // color: Palette.containerDarknew,

                                                // textColor: Palette.white

                                              ),

                                              tableHeadtext(

                                                'Excise Tax',



                                                size: 13,
                                                // color: Palette.containerDarknew,
                                                // textColor: Palette.white
                                              ),
                                              tableHeadtext(
                                                'Discount',

                                                size: 13,
                                              ),
                                              tableHeadtext(

                                                'FOC',


                                                size: 13,

                                                // color: Palette.containerDarknew,

                                                // textColor: Palette.white

                                              ),



                                              tableHeadtext(

                                                'Vatable Amount',



                                                size: 13,

                                                // color: Palette.containerDarknew,

                                                // textColor: Palette.white

                                              ),

                                              tableHeadtext(

                                                'VAT',


                                                size: 13,

                                                // color: Palette.containerDarknew,

                                                // textColor: Palette.white

                                              ),

                                              tableHeadtext(

                                                'Actual cost',



                                                size: 13,

                                                // color: Palette.containerDarknew,

                                                // textColor: Palette.white

                                              ),

                                              tableHeadtext(

                                                'Grand Total',



                                                size: 13,

                                                // color: Palette.containerDarknew,

                                                // textColor: Palette.white

                                              ),

                                              tableHeadtext(

                                                'Is Invoiced',



                                                size: 13,


                                              ),

                                              tableHeadtext(
                                                'Expiry Date',

                                                size: 13,
                                                // color: Palette.containerDarknew,
                                                // textColor: Palette.white
                                              ),
                                              tableHeadtext(
                                                'Is Free',

                                                size: 13,
                                                // color: Palette.containerDarknew,
                                                // textColor: Palette.white
                                              ),
                                              tableHeadtext(
                                                'Is Active',

                                                size: 13,

                                              ),
                                              tableHeadtext(
                                                '',

                                                size: 13,
                                              ),

                                              // if (widget.onAddNew) textPadding(''),

                                            ]),
                        if (additionalVariants != null)...[
                for(var i=0;i<additionalVariants.length;i++)
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
                                                child: textPadding((i + 1).toString(), fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),

                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: PopUpCall(
                                                  inventory: Variable.inventory_ID,


                                                  type:"cost-method-list",
                                                  value: additionalVariants[i].variantId,
                                                  onSelection: (VariantId? va) {
                                                    additionalVariants[i] = additionalVariants[i].copyWith(variantId:va?.code );
                                                    setState(() {
                                                      var  variant=
                                                          va?.code;
                                                      int? id = va!.id;
                                                      Variable.tableindex =i;
                                                      Variable.tableedit=true;
                                                      variantIdcheck=false;



                                                      context
                                                          .read<
                                                          TableDetailsCubitDartCubit>()
                                                          .getTableDetails(
                                                          id);
                                                      context
                                                          .read<PurchaseStockCubit>()
                                                          .getCurrentStock(Variable.inventory_ID, variant);

                                                      // orderType = va!;
                                                    });
                                                  }, // restricted: true,
                                                ),
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(additionalVariants[i].variantName ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                              ),

                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(additionalVariants[i].barcode ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(additionalVariants[i].currentStock?.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(additionalVariants[i].purchaseUom.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: PopUpCall(

                                                  type:
                                                  "VendorCodeGeneral",
                                                  value: additionalVariants[i].vendorId ??"",
                                                  onSelection:
                                                      (Result? va) {

                                                    additionalVariants[i] = additionalVariants[i].copyWith(vendorId:va?.partnerCode??"" );
                                                    setState(() {
                                                      var  variant=
                                                          va?.partnerCode;
                                                      int? id = va!.id;
                                                      Variable.tableindex =i;
                                                      recievlinequantityCheck=false;
                                                      stockCheck=true;
                                                      Variable.tableedit=true;
                                                      vendorcheck=false;
                                                      context.read<VendordetailsCubit>().getVendorDetails(variant);
                                                      showDailogPopUp(context, VendorPopup(assign:  assigniningDetails,));

                                                      // context
                                                      //     .read<
                                                      //     TableDetailsCubitDartCubit>()
                                                      //     .getTableDetails(
                                                      //     id);
                                                      // context
                                                      //     .read<PurchaseStockCubit>()
                                                      //     .getCurrentStock(Variable.inventory_ID, variant);

                                                      // orderType = va!;
                                                    });
                                                  }, // restricted: true,
                                                ),
                                              ),


                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: UnderLinedInput(
                                                    initialCheck: true,
                                                  last: additionalVariants[i].receivedQty.toString() ?? "",
                                                  onChanged: (va) {
                                                    print(va);
                                                    if (va == "") {
                                                      print("entered");
                                                      additionalVariants[i] = additionalVariants[i].copyWith(receivedQty: 0, vatableAmount: 0, actualCost: 0, grandTotal: 0);
                                                    } else {
                                                      var qty = int.tryParse(va);
                                                      var dis = additionalVariants[i].discount;
                                                      var excess = additionalVariants[i].excessTax;
                                                      var unitcost = additionalVariants[i].unitCost;
                                                      var vat = additionalVariants[i].vat;
                                                      var foc = additionalVariants[i].foc;
                                                      if (qty == 0 || unitcost == 0) {
                                                        additionalVariants[i] = additionalVariants[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0);
                                                      }else {
                                                        var Vamount;
                                                        var vactualCost;
                                                        if(foc==0 || foc==""){
                                                          Vamount  = (((unitcost! *
                                                              qty!) +
                                                              excess!) -
                                                              dis!)
                                                              .toDouble();
                                                          if(vat==0 ||vat==""){
                                                            vactualCost=Vamount;
                                                          }
                                                          else{

                                                            vactualCost  = (Vamount! +
                                                                ((Vamount! *
                                                                    vat!) /
                                                                    100));
                                                          }


                                                          additionalVariants[i] =
                                                              additionalVariants[i]
                                                                  .copyWith(
                                                                  vatableAmount: Vamount,
                                                                  actualCost: vactualCost,
                                                                  grandTotal: vactualCost,
                                                                  receivedQty: qty);
                                                        }
                                                        else{

                                                          var   Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-dis!);
                                                          var vactualCost = (Vamount! +
                                                              ((Vamount! *
                                                                  vat!) /
                                                                  100));

                                                          additionalVariants[i] =
                                                              additionalVariants[i]
                                                                  .copyWith(
                                                                  vatableAmount: Vamount,
                                                                  actualCost: vactualCost,
                                                                  grandTotal: vactualCost,
                                                                  receivedQty: qty);
                                                        }


                                                      }}

                                                    setState(() {});
                                                  },
                                                ),
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: Checkbox(
                                                  value: additionalVariants[i].isReceived == null ? false : additionalVariants[i].isReceived,
                                                  onChanged: (bool? value) {
                                                    bool? isRecieved = additionalVariants[i].isReceived;
                                                    setState(() {
                                                      isRecieved = !isRecieved!;
                                                      additionalVariants[i] = additionalVariants[i].copyWith(isReceived: isRecieved);
                                                      print(additionalVariants);
                                                    });
                                                  },
                                                ),
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: UnderLinedInput(
                                                    initialCheck: true,
                                                  last: additionalVariants[i].unitCost.toString() ?? "",
                                                  onChanged: (va) {
                                                    double? unitcost;
                                                    if (va == "") {
                                                      print("entered");
                                                      unitcost = 0;
                                                      print("disc" + unitcost.toString());
                                                      additionalVariants[i] = additionalVariants[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
                                                    }
                                                    unitcost = double.tryParse(va);
                                                    print("unitcost" + unitcost.toString());

                                                    var qty = additionalVariants[i].receivedQty;
                                                    print("qty" + qty.toString());
                                                    var excess = additionalVariants[i].excessTax;
                                                    print("excess" + excess.toString());
                                                    var disc = additionalVariants[i].discount;
                                                    var foc=additionalVariants[i].foc;

                                                    var vat = additionalVariants[i].vat;
                                                    print("vat" + vat.toString());
                                                    print("qty" + qty.toString());
                                                    if (qty == 0 || qty == null) {
                                                      print("checking case");

                                                      additionalVariants[i] = additionalVariants[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
                                                      setState(() {});
                                                    } else {
                                                      if(foc==0 || foc=="") {
                                                        var Vamount = (((unitcost! *
                                                            qty!) +
                                                            excess!) -
                                                            disc!)
                                                            .toDouble();
                                                        print(
                                                            "Vamount" +
                                                                Vamount
                                                                    .toString());

                                                        var vactualCost = (Vamount! +
                                                            ((Vamount! *
                                                                vat!) /
                                                                100));
                                                        print(
                                                            "vactualCost" +
                                                                vactualCost
                                                                    .toString());
                                                        additionalVariants[i] =
                                                            additionalVariants[i]
                                                                .copyWith(vatableAmount: Vamount, actualCost: vactualCost, grandTotal: vactualCost, unitCost: unitcost);
                                                        setState(() {});
                                                      }else{
                                                        var   Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-disc!);
                                                        var vactualCost = (Vamount! +
                                                            ((Vamount! *
                                                                vat!) /
                                                                100));
                                                        additionalVariants[i] =
                                                            additionalVariants[i]
                                                                .copyWith(
                                                                vatableAmount: Vamount,
                                                                actualCost: vactualCost,
                                                                grandTotal: vactualCost,
                                                                unitCost: unitcost);
                                                        setState(() {});


                                                      }
                                                    }
                                                  },
                                                ),
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: UnderLinedInput(
                                                    initialCheck: true,
                                                  last: additionalVariants[i].excessTax.toString() ?? "",
                                                  onChanged: (va) {
                                                    double? excess;
                                                    if (va == "") {
                                                      excess = 0;
                                                      setState(() {});
                                                    } else {
                                                      excess = double.tryParse(va);
                                                      setState(() {});
                                                    }

                                                    var qty = additionalVariants[i].receivedQty;
                                                    var vat = additionalVariants[i].vat;
                                                    var foc = additionalVariants[i].foc;

                                                    print("excess" + excess.toString());
                                                    var unitcost = additionalVariants[i].unitCost;
                                                    print("unitcost" + unitcost.toString());
                                                    var Vdiscount = additionalVariants[i].discount;
                                                    if(qty==0 || unitcost==0){
                                                      additionalVariants[i] = additionalVariants[i].copyWith(actualCost: 0, grandTotal: 0, vatableAmount: 0, excessTax: excess);
                                                      setState(() {

                                                      });

                                                    }else {
                                                      var Vamount;

                                                      if(foc==0 ||foc=="") {
                                                        Vamount =
                                                            (((unitcost! *
                                                                qty!) +
                                                                excess!) -
                                                                Vdiscount!)
                                                                .toDouble();
                                                      }else{
                                                        Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-Vdiscount!);

                                                      }
                                                      var vactualCost = (Vamount! +
                                                          ((Vamount! *
                                                              vat!) /
                                                              100));
                                                      var Vgrnadtotal = (Vamount! +
                                                          ((Vamount! *
                                                              vat!) /
                                                              100));
                                                      additionalVariants[i] =
                                                          additionalVariants[i]
                                                              .copyWith(
                                                              actualCost: vactualCost,
                                                              grandTotal: Vgrnadtotal,
                                                              vatableAmount: Vamount,
                                                              excessTax: excess);
                                                      setState(() {});
                                                    } },
                                                ),
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: UnderLinedInput(
                                                  initialCheck: true,
                                                  last: additionalVariants[i].discount.toString() ?? "",
                                                  onChanged: (va) {
                                                    double? disc;
                                                    if (va ==
                                                        "") {
                                                      print(
                                                          "entered");
                                                      disc =
                                                      0;
                                                      print(
                                                          "disc" +
                                                              disc
                                                                  .toString());
                                                    } else {
                                                      disc =
                                                          double
                                                              .tryParse(
                                                              va);
                                                      print(
                                                          "disc1" +
                                                              disc
                                                                  .toString());
                                                    }

                                                    var qty = additionalVariants[i]
                                                        .receivedQty;
                                                    print(
                                                        "qty" +
                                                            qty
                                                                .toString());
                                                    var excess = additionalVariants[i]
                                                        .excessTax;
                                                    print(
                                                        "excess" +
                                                            excess
                                                                .toString());
                                                    var unitcost = additionalVariants[i]
                                                        .unitCost;
                                                    print(
                                                        "unitcost" +
                                                            unitcost
                                                                .toString());
                                                    var vat = additionalVariants[i].vat;
                                                    var foc = additionalVariants[i]
                                                        .foc;

                                                    print(
                                                        "vat" +
                                                            vat
                                                                .toString());
                                                    if (unitcost ==
                                                        0 ||
                                                        qty ==
                                                            0) {
                                                      additionalVariants[i] =
                                                          additionalVariants[i]
                                                              .copyWith(
                                                              vatableAmount: 0,
                                                              actualCost: 0,
                                                              grandTotal: 0,
                                                              discount: disc);
                                                    }

                                                    else {
                                                      if(foc==0 ||foc=="") {
                                                        var Vamount = (((unitcost! *
                                                            qty!) +
                                                            excess!) -
                                                            disc!)
                                                            .toDouble();
                                                        print(
                                                            "Vamount" +
                                                                Vamount
                                                                    .toString());

                                                        var vactualCost = (Vamount! +
                                                            ((Vamount! *
                                                                vat!) /
                                                                100));
                                                        print(
                                                            "vactualCost" +
                                                                vactualCost
                                                                    .toString());
                                                        additionalVariants[i] =
                                                            additionalVariants[i]
                                                                .copyWith(
                                                                vatableAmount: Vamount,
                                                                actualCost: vactualCost,
                                                                grandTotal: vactualCost,
                                                                discount: disc);
                                                        setState(() {});
                                                      }
                                                      else{
                                                        var   Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-disc!);
                                                        var vactualCost = (Vamount! +
                                                            ((Vamount! *
                                                                vat!) /
                                                                100));
                                                        additionalVariants[i] =
                                                            additionalVariants[i]
                                                                .copyWith(
                                                                vatableAmount: Vamount,
                                                                actualCost: vactualCost,
                                                                grandTotal: vactualCost,
                                                                discount: disc);
                                                        setState(() {});

                                                      }
                                                    }

                                                  }
                                                  ,

                                                ),
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: UnderLinedInput(
                                                    initialCheck: true,
                                                  last: additionalVariants[i].foc.toString() ?? "",
                                                  onChanged: (va) {
                                                    double? foc;
                                                    if (va == "") {
                                                      foc=0;
                                                      additionalVariants[i] = additionalVariants[i].copyWith(foc: 0);
                                                    } else {
                                                      foc  = double.tryParse(va);
                                                      additionalVariants[i] = additionalVariants[i].copyWith(foc: foc);
                                                    }
                                                    var qty = additionalVariants[i].receivedQty;
                                                    var vat = additionalVariants[i].vat;
                                                    print("qty" + qty.toString());
                                                    var excess = additionalVariants[i].excessTax;
                                                    print("excess" + excess.toString());
                                                    var disc = additionalVariants[i].discount;
                                                    var unitcost=additionalVariants[i].unitCost;
                                                    if (qty == 0 || unitcost == 0) {
                                                      print("checking case");

                                                      additionalVariants[i] = additionalVariants[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0, foc: foc);
                                                      setState(() {});
                                                    }
                                                    else{
                                                      var Vamount;
                                                      if(foc==0 ||foc==""){
                                                        Vamount = (((unitcost! *
                                                            qty!) +
                                                            excess!) -
                                                            disc!)
                                                            .toDouble();
                                                        setState(() {

                                                        });

                                                      }else{
                                                        Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-disc!);
                                                        setState(() {

                                                        });

                                                      }
                                                      var vactualCost = (Vamount! +
                                                          ((Vamount! *
                                                              vat!) /
                                                              100));
                                                      additionalVariants[i] =
                                                          additionalVariants[i]
                                                              .copyWith(
                                                            vatableAmount: Vamount,
                                                            actualCost: vactualCost,
                                                            grandTotal: vactualCost,
                                                          );
                                                      setState(() {});


                                                    }

                                                    print(additionalVariants);
                                                  },
                                                ),
                                              ),


                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(additionalVariants[i].vatableAmount.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(additionalVariants[i].vat.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                              ),
                                              // TableCell(
                                              //   verticalAlignment: TableCellVerticalAlignment.middle,
                                              //   child: UnderLinedInput(
                                              //       initialCheck: true,
                                              //     last: additionalVariants[i].vat.toString() ?? "",
                                              //     onChanged: (va) {
                                              //       if (va == "") {
                                              //         print("sss");
                                              //         var vatableAmount = additionalVariants[i].vatableAmount;
                                              //         additionalVariants[i] = additionalVariants[i].copyWith(actualCost: vatableAmount, grandTotal: vatableAmount, vat: 0);
                                              //         setState(() {});
                                              //       } else {
                                              //         var vat = double.tryParse(va);
                                              //         var Vamount = additionalVariants[i].vatableAmount;
                                              //         print("qty" + Vamount.toString());
                                              //         var excess = additionalVariants[i].excessTax;
                                              //         print("excess" + excess.toString());
                                              //         var unitcost = additionalVariants[i].unitCost;
                                              //         var qty = additionalVariants[i].receivedQty;
                                              //         var foc = additionalVariants[i].foc;
                                              //         var dis = additionalVariants[i].discount;
                                              //         print("unitcost" + unitcost.toString());
                                              //         if(unitcost==0 || qty==0){
                                              //           additionalVariants[i] = additionalVariants[i].copyWith(actualCost: 0, grandTotal: 0, vat: vat);
                                              //
                                              //         }else{
                                              //           if(foc==0 || foc=="") {
                                              //             var Vamount = (((unitcost! *
                                              //                 qty!) +
                                              //                 excess!) -
                                              //                 dis!)
                                              //                 .toDouble();
                                              //             var vactualCost = (Vamount! +
                                              //                 ((Vamount! *
                                              //                     vat!) /
                                              //                     100));
                                              //             var Vgrnadtotal = (Vamount! +
                                              //                 ((Vamount! *
                                              //                     vat!) /
                                              //                     100));
                                              //             additionalVariants[i] =
                                              //                 additionalVariants[i]
                                              //                     .copyWith(
                                              //                     vatableAmount: Vamount,
                                              //                     actualCost: vactualCost,
                                              //                     grandTotal: Vgrnadtotal,
                                              //                     vat: vat);
                                              //             setState(() {});
                                              //           }
                                              //           else{
                                              //             var   Vamount=((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-dis!);
                                              //
                                              //             var vactualCost = (Vamount! +
                                              //                 ((Vamount! *
                                              //                     vat!) /
                                              //                     100));
                                              //             var Vgrnadtotal = (Vamount! +
                                              //                 ((Vamount! *
                                              //                     vat!) /
                                              //                     100));
                                              //             additionalVariants[i] =
                                              //                 additionalVariants[i]
                                              //                     .copyWith(
                                              //                     vatableAmount: Vamount,
                                              //                     actualCost: vactualCost,
                                              //                     grandTotal: Vgrnadtotal,
                                              //                     vat: vat);
                                              //             setState(() {
                                              //
                                              //             });
                                              //           }
                                              //         }}
                                              //     },
                                              //   ),
                                              // ),


                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(additionalVariants[i].actualCost.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(additionalVariants[i].grandTotal.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                              ),
                                              Checkbox(
                                                value: additionalVariants[i].isInvoiced == null ? false : additionalVariants[i].isInvoiced,
                                                onChanged: (bool? value) {
                                                  setState(() {});
                                                },
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.fill,
                                                child: Tabledate(

                                                    format:DateFormat('yyyy-MM-dd'),
                                                   controller: expirydateControllerList[i],
                                                    label: "Promised reciept date",
                                                    onSaved: (newValue) {
                                                      additionalVariants[i] =
                                                          additionalVariants[i]
                                                              .copyWith(
                                                              expiryDate:newValue
                                                                  ?.toIso8601String()
                                                                  .split("T")[0] ??
                                                                  "" );
                                                      setState(() {
                                                      });
                                                    },
                                                    enable: true),
                                              ),


                                              TableCell(
                                                child: Checkbox(
                                                  value: additionalVariants[i].isFree == null ? false : additionalVariants[i].isFree,
                                                  onChanged: (bool? value) {
                                                    setState(() {});
                                                  },
                                                ),
                                              ),

                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: Checkbox(
                                                  value: additionalVariants[i].isActive == null ? false : additionalVariants[i].isActive,
                                                  onChanged: (bool? value) {
                                                    setState(() {});
                                                  },
                                                ),
                                              ),
                                              TableTextButton(label: "Update",
                                              onPress: (){

                                              },)















                                            ]
                                        ),
                        ],
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
                                                child: textPadding((1).toString(),
                                                    fontSize: 12,
                                                    padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                    fontWeight: FontWeight.w500),
                                              ),
                                              PopUpCall(
                                                inventory: Variable.inventory_ID,
                                                // label: "purchase UOM",
                                                type:
                                                "cost-method-list",
                                                value: variantId,
                                                onSelection:
                                                    (VariantId? va) {
                                                  print(va!.id
                                                      .toString());
                                                  print("code" +
                                                      va!.code
                                                          .toString());

                                                  setState(() {
                                                    stockCheck=true;
                                                    variantId =
                                                        va?.code;
                                                    int? id = va!.id;
                                                    print("is is"+id.toString());
                                                    Variable.tableedit=false;

                                                    recievlinequantityCheck=false;
                                                    stockCheck=true;
                                                    variantIdcheck=false;
                                                    // onChange = true;
                                                    context
                                                        .read<
                                                        TableDetailsCubitDartCubit>()
                                                        .getTableDetails(
                                                        id);
                                                    setState(() {
                                                    });
                                                    context
                                                        .read<PurchaseStockCubit>()
                                                        .getCurrentStock(Variable.inventory_ID, variantId);

                                                    // orderType = va!;
                                                  });
                                                },
                                                // restricted: true,
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(varinatname??"", fontSize: 12, padding: EdgeInsets.only(
                                                    left: 11.5,
                                                    top: 11.5), fontWeight: FontWeight.w500),
                                              ),

                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(barcode??"",
                                                    fontSize: 12,
                                                    padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                    fontWeight: FontWeight.w500),
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(stock.toString()??"",
                                                    fontSize: 12,
                                                    padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                    fontWeight: FontWeight.w500),
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(purchaseUomName??"",
                                                    fontSize: 12,
                                                    padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                    fontWeight: FontWeight.w500),
                                              ),
                                              PopUpCall(

                                                type:"VendorCodeGeneral",
                                                value: vendorCode,
                                                onSelection: (Result? va) {

                                                  print(
                                                      "+++++++++++++++++++++++"+va.toString());
                                                  //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                                                  // setState(() {
                                                  vendorCode=va?.partnerCode??"";
                                                  var id=va?.partnerCode;
                                                  print(vendorCode);
                                                  Variable.tableedit=false;
                                                  setState(() {
                                                    context
                                                        .read<
                                                        VendordetailsCubit>()
                                                        .getVendorDetails(
                                                        id);

                                                  });
                                                  showDailogPopUp(
                                                      context,
                                                      VendorPopup(
                                                        assign:  assigniningDetails,

                                                      ));






                                                },

                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: UnderLinedInput(

                                                  last:"",
                                                  onChanged: (p0) {
                                                    if (p0 == '') {
                                                      setState(() {
                                                        recievedQty=0;
                                                        vatableAmount1=0;
                                                        grandTotal1 = 0;
                                                        actualCost1 = 0;
                                                      });
                                                    } else {
                                                      setState(() {
                                                        recievedQty = int
                                                            .tryParse(
                                                            p0);
                                                      });

                                                      setState(() {
                                                        if(unitcost==0){
                                                          vatableAmount1=0;
                                                          grandTotal1 = 0;
                                                          actualCost1 = 0;


                                                        }
                                                        else{
                                                          if(foc1==0 ||foc1==""){
                                                            vatableAmount1 = (((unitcost! *
                                                                recievedQty!) +
                                                                excess1!) -
                                                                discount!)
                                                                .toDouble();
                                                            actualCost1 = (vatableAmount1! +
                                                                ((vatableAmount1! *
                                                                    vat1!) /
                                                                    100));
                                                            grandTotal1 = (vatableAmount1! +
                                                                ((vatableAmount1! *
                                                                    vat1!) /
                                                                    100));



                                                          }
                                                          else{
                                                            vatableAmount1=((((recievedQty!*unitcost!)-(foc1!*unitcost!))+excess1!)-discount!);
                                                            actualCost1 = (vatableAmount1! +
                                                                ((vatableAmount1! *
                                                                    vat1!) /
                                                                    100));
                                                            grandTotal1 = (vatableAmount1! +
                                                                ((vatableAmount1! *
                                                                    vat1!) /
                                                                    100));

                                                          }

                                                        }

                                                      }
                                                      );
                                                    }
                                                    // print(Qty);
                                                  },
                                                  enable: true,
                                                  onComplete: () {
                                                    setState(() {});

                                                    setState(() {});
                                                  },
                                                ),
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: Checkbox(
                                                  value: isReceived1,
                                                  onChanged: (bool? value) {

                                                    setState(() {
                                                      isReceived1 = !isReceived1!;

                                                    });
                                                  },
                                                ),
                                              ),

                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: UnderLinedInput(
                                           controller:unitCostCheck,// ,
                                                  onChanged: (p0) {
                                                    if (p0 == '')
                                                      setState(() {
                                                        unitcost = 0;
                                                      });
                                                    else {
                                                      setState(() {
                                                        unitcost = double
                                                            .tryParse(
                                                            p0);
                                                      });
                                                    }

                                                    if(unitcost==0 ||recievedQty==0){
                                                      actualCost1=0;
                                                      vatableAmount1=0;
                                                      grandTotal1=0;
                                                    }
                                                    else{
                                                      if(foc1==0 ||foc1==""){
                                                        vatableAmount1 = (((unitcost! *
                                                            recievedQty!) +
                                                            excess1!) -
                                                            discount!)
                                                            .toDouble();
                                                        actualCost1 = (vatableAmount1! +
                                                            ((vatableAmount1! *
                                                                vat1!) /
                                                                100));
                                                        grandTotal1 = (vatableAmount1! +
                                                            ((vatableAmount1! *
                                                                vat1!) /
                                                                100));



                                                      }
                                                      else{
                                                        vatableAmount1=((((recievedQty!*unitcost!)-(foc1!*unitcost!))+excess1!)-discount!);
                                                        actualCost1 = (vatableAmount1! +
                                                            ((vatableAmount1! *
                                                                vat1!) /
                                                                100));
                                                        grandTotal1 = (vatableAmount1! +
                                                            ((vatableAmount1! *
                                                                vat1!) /
                                                                100));

                                                      }

                                                    }


                                                    setState(() {});
                                                    // print(Qty);
                                                  },
                                                  enable: true,
                                                  onComplete: () {
                                                    setState(() {});

                                                    setState(() {});
                                                  },
                                                ),
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: UnderLinedInput(


                                                  onChanged: (p0) {
                                                    if (p0 == '')
                                                      setState(() {
                                                        excess1 = 0;
                                                      });
                                                    else {
                                                      setState(() {
                                                        excess1 = double
                                                            .tryParse(
                                                            p0);
                                                      });
                                                    }

                                                    if(unitcost==0 ||recievedQty==0){
                                                      actualCost1=0;
                                                      vatableAmount1=0;
                                                      grandTotal1=0;
                                                    }
                                                    else{
                                                      if(foc1==0 ||foc1==""){
                                                        vatableAmount1 = (((unitcost! *
                                                            recievedQty!) +
                                                            excess1!) -
                                                            discount!)
                                                            .toDouble();
                                                        actualCost1 = (vatableAmount1! +
                                                            ((vatableAmount1! *
                                                                vat1!) /
                                                                100));
                                                        grandTotal1 = (vatableAmount1! +
                                                            ((vatableAmount1! *
                                                                vat1!) /
                                                                100));



                                                      }
                                                      else{

                                                        vatableAmount1=((((recievedQty!*unitcost!)-(foc1!*unitcost!))+excess1!)-discount!);
                                                        actualCost1 = (vatableAmount1! +
                                                            ((vatableAmount1! *
                                                                vat1!) /
                                                                100));
                                                        grandTotal1 = (vatableAmount1! +
                                                            ((vatableAmount1! *
                                                                vat1!) /
                                                                100));

                                                      }

                                                    }


                                                    setState(() {});
                                                    // print(Qty);
                                                  },
                                                  enable: true,
                                                  onComplete: () {
                                                    setState(() {});

                                                    setState(() {});
                                                  },
                                                ),
                                              ),

                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: UnderLinedInput(


                                                  onChanged: (p0) {
                                                    if (p0 == '')
                                                      setState(() {
                                                        discount = 0;
                                                      });
                                                    else {
                                                      setState(() {
                                                        discount = double
                                                            .tryParse(
                                                            p0);
                                                      });
                                                    }

                                                    if(unitcost==0 ||recievedQty==0){
                                                      actualCost1=0;
                                                      vatableAmount1=0;
                                                      grandTotal1=0;
                                                    }
                                                    else{
                                                      if(foc1==0 ||foc1==""){
                                                        vatableAmount1 = (((unitcost! *
                                                            recievedQty!) +
                                                            excess1!) -
                                                            discount!)
                                                            .toDouble();
                                                        actualCost1 = (vatableAmount1! +
                                                            ((vatableAmount1! *
                                                                vat1!) /
                                                                100));
                                                        grandTotal1 = (vatableAmount1! +
                                                            ((vatableAmount1! *
                                                                vat1!) /
                                                                100));



                                                      }
                                                      else{
                                                        vatableAmount1=((((recievedQty!*unitcost!)-(foc1!*unitcost!))+excess1!)-discount!);
                                                        actualCost1 = (vatableAmount1! +
                                                            ((vatableAmount1! *
                                                                vat1!) /
                                                                100));
                                                        grandTotal1 = (vatableAmount1! +
                                                            ((vatableAmount1! *
                                                                vat1!) /
                                                                100));

                                                      }

                                                    }


                                                    setState(() {});
                                                    // print(Qty);
                                                  },
                                                  enable: true,
                                                  onComplete: () {
                                                    setState(() {});

                                                    setState(() {});
                                                  },
                                                ),
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: UnderLinedInput(


                                                  onChanged: (p0) {
                                                    if (p0 == '')
                                                      setState(() {
                                                        foc1 = 0;
                                                      });
                                                    else {
                                                      setState(() {
                                                        foc1 = double
                                                            .tryParse(
                                                            p0);
                                                      });
                                                    }

                                                    if(unitcost==0 ||recievedQty==0){
                                                      actualCost1=0;
                                                      vatableAmount1=0;
                                                      grandTotal1=0;
                                                    }
                                                    else{
                                                      if(foc1==0 ||foc1==""){
                                                        vatableAmount1 = (((unitcost! *
                                                            recievedQty!) +
                                                            excess1!) -
                                                            discount!)
                                                            .toDouble();
                                                        actualCost1 = (vatableAmount1! +
                                                            ((vatableAmount1! *
                                                                vat1!) /
                                                                100));
                                                        grandTotal1 = (vatableAmount1! +
                                                            ((vatableAmount1! *
                                                                vat1!) /
                                                                100));



                                                      }
                                                      else{
                                                        vatableAmount1=((((recievedQty!*unitcost!)-(foc1!*unitcost!))+excess1!)-discount!);
                                                        actualCost1 = (vatableAmount1! +
                                                            ((vatableAmount1! *
                                                                vat1!) /
                                                                100));
                                                        grandTotal1 = (vatableAmount1! +
                                                            ((vatableAmount1! *
                                                                vat1!) /
                                                                100));

                                                      }

                                                    }


                                                    setState(() {});
                                                    // print(Qty);
                                                  },

                                                ),
                                              ),

                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(vatableAmount1.toString()??"",
                                                    fontSize: 12,
                                                    padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                    fontWeight: FontWeight.w500),
                                              ),

                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(vat1.toString()??"",
                                                    fontSize: 12,
                                                    padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                    fontWeight: FontWeight.w500),
                                              ),
                                              // TableCell(
                                              //   verticalAlignment: TableCellVerticalAlignment.middle,
                                              //   child: UnderLinedInput(
                                              //
                                              //
                                              //     onChanged: (p0) {
                                              //       if (p0 == '')
                                              //         setState(() {
                                              //           vat1 = 0;
                                              //         });
                                              //       else {
                                              //         setState(() {
                                              //           vat1 = double
                                              //               .tryParse(
                                              //               p0);
                                              //         });
                                              //       }
                                              //
                                              //       if(unitcost==0 ||recievedQty==0){
                                              //         actualCost1=0;
                                              //         vatableAmount1=0;
                                              //         grandTotal1=0;
                                              //       }
                                              //       else{
                                              //         if(foc1==0 ||foc1==""){
                                              //           vatableAmount1 = (((unitcost! *
                                              //               recievedQty!) +
                                              //               excess1!) -
                                              //               discount!)
                                              //               .toDouble();
                                              //           actualCost1 = (vatableAmount1! +
                                              //               ((vatableAmount1! *
                                              //                   vat1!) /
                                              //                   100));
                                              //           grandTotal1 = (vatableAmount1! +
                                              //               ((vatableAmount1! *
                                              //                   vat1!) /
                                              //                   100));
                                              //
                                              //
                                              //
                                              //         }
                                              //         else{
                                              //
                                              //           vatableAmount1=((((recievedQty!*unitcost!)-(foc1!*unitcost!))+excess1!)-discount!);
                                              //           actualCost1 = (vatableAmount1! +
                                              //               ((vatableAmount1! *
                                              //                   vat1!) /
                                              //                   100));
                                              //           grandTotal1 = (vatableAmount1! +
                                              //               ((vatableAmount1! *
                                              //                   vat1!) /
                                              //                   100));
                                              //
                                              //         }
                                              //
                                              //       }
                                              //
                                              //
                                              //       setState(() {});
                                              //       // print(Qty);
                                              //     },
                                              //     enable: true,
                                              //     onComplete: () {
                                              //       setState(() {});
                                              //
                                              //       setState(() {});
                                              //     },
                                              //   ),
                                              // ),

                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(actualCost1.toString()??"",
                                                    fontSize: 12,
                                                    padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                    fontWeight: FontWeight.w500),
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPadding(grandTotal1.toString()??"",
                                                    fontSize: 12,
                                                    padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                    fontWeight: FontWeight.w500),
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: Checkbox(
                                                  value: isInvoiced1,
                                                  onChanged: (bool? value) {

                                                    setState(() {
                                                     // isInvoiced1 = !isInvoiced1!;

                                                    });
                                                  },
                                                ),
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.fill,
                                                child:          Tabledate(

                                                    format:DateFormat('yyyy-MM-dd'),
                                                    controller:expirydateController,
                                                    // initialValue:
                                                    //     DateTime.parse(fromDate!),
                                                    label: "Promised reciept date",
                                                    onSaved: (newValue) {
                                                      expirydateController.text = newValue
                                                          ?.toIso8601String()
                                                          .split("T")[0] ??
                                                          "";
                                                      print("promised_receipt_date.text"+expirydateController.text.toString());
                                                      setState(() {

                                                      });
                                                    },
                                                    enable: true),
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: Checkbox(

                                                  value: isFree1,
                                                  onChanged: (bool? value) {

                                                    setState(() {
                                                      isFree1 = !isFree1!;

                                                    });
                                                  },
                                                ),
                                              ),
                                              TableCell(
                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: CheckedBoxs(
                                                  // color:Color(0xff3E4F5B) ,

                                                  valueChanger:  isActive1,
                                                  onSelection: (bool? value ) {

                                                    setState(() {
                                                      isActive1 = !isActive1!;

                                                    });
                                                  },

                                                ),
                                              ),
                                              TableTextButton(label: "Set",
                                                onPress: (){
                                               foc1= foc1==null?0:foc1;
                                               recievedQty= recievedQty==null?0:recievedQty;
                                                  setState(() {
                                                    if(variantId=="null"||recievedQty==0||unitcost==0||expirydateController.text==""){
                                                      context.showSnackBarError("please fill all the fields");
                                                    }
                                                    else if( foc1!>recievedQty!){
                                                         context.showSnackBarError("foc always less than received qty");
                                                    }
                                                    else if(isReceived1==false||isActive1==false){
                                                      context.showSnackBarError(
                                                          "isreceived and isActive always true in this");
                                                    }
                                                    else{
                                                      var date = new TextEditingController(text:expirydateController?.text??"");
                                                      expirydateControllerList.add(date);
                                                      additionalVariants.add(RecievingLines(
                                                        variantId: variantId??"",
                                                        currentStock: stock,
                                                        supplierCode: supplierRefCode,
                                                        variantName: varinatname??"",
                                                        barcode: barcode??"",
                                                        purchaseUom: purchaseUomName??"",
                                                        receivedQty: recievedQty,
                                                        isReceived: isReceived1,
                                                        discount: discount,
                                                        foc: foc1,
                                                        unitCost: unitcost,
                                                        vatableAmount: vatableAmount1,vat: vat1,
                                                        excessTax: excess1,
                                                        actualCost: actualCost1,
                                                        grandTotal: grandTotal1,
                                                        isInvoiced: isInvoiced1,
                                                        vendorId: vendorCode,
                                                        vendorTrnNumber: vendorTrn??"",
                                                        vendorAddress:vendorAddress??"" ,
                                                        isFree: isFree1,
                                                        isActive:isActive1,
                                                        expiryDate: expirydateController.text,
                                                      ));
                                                      clear();


                                                    }
                                                  });



                                                },)
                                            ])



                                      ],
                                    widths: {
                                      0: FlexColumnWidth(2),
                                      1: FlexColumnWidth(4),
                                      2: FlexColumnWidth(6),
                                      3: FlexColumnWidth(3),
                                      4: FlexColumnWidth(3),
                                      5: FlexColumnWidth(3),
                                      6: FlexColumnWidth(3),
                                      7: FlexColumnWidth(3),
                                      8: FlexColumnWidth(3),
                                      9: FlexColumnWidth(3),
                                      10: FlexColumnWidth(3),
                                      11: FlexColumnWidth(3),
                                      12: FlexColumnWidth(3),
                                      13: FlexColumnWidth(3),
                                      14: FlexColumnWidth(3),
                                      15: FlexColumnWidth(3),
                                      16: FlexColumnWidth(3),
                                      17: FlexColumnWidth(3),
                                      18: FlexColumnWidth(4),
                                      19: FlexColumnWidth(2),
                                      20: FlexColumnWidth(2),
                                      21: FlexColumnWidth(2.4),

                                    },



                                  ),




                                ) ,
                              )

                            ],

                          )





                      ),



                    )



                ),

                SizedBox(height: 1,),

                Row(

                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [

                    TextButtonLarge(

                      onPress: (){
                        AdditionalGenerateModel model=AdditionalGenerateModel(
                          receivingId: receivingId,

                          createdBy: 12,




                          purchaseOrderId:Variable.verticalid,
                          orderLines: additionalVariants,


                        );
                        context.read<GeneraterequestformCubit>().additionlGenerateRequest(model!);


                      },



                      text: "GENERATE ORDER",),

                  ],

                ),

                SizedBox(height: 20,),

                Row(

                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [

                    Buttons(


                      onApply: (){
                        List<RecievingLines>recieve=[];
                        if(recievingLisnes.isNotEmpty){           for(var i=0;i<recievingLisnes.length;i++){
                          if(recievingLisnes[i].isReceived==true){
                            recieve.add(recievingLisnes[i]);
                            setState(() {

                            });
                          }
                        }}
                        if(updateCheck==true){
                          context.showSnackBarError(
                              "please press update");
                        }
                        else{

                          RequestReceivingPatch model = RequestReceivingPatch(
                              note: noteController.text??"",
                              id:veritiaclid,
                              receivedBy: "",
                              unitCost:double.tryParse( unitCostController.text),
                              foc:double.tryParse( focController.text),
                              discount:double.tryParse( discountController.text),
                              grandTotal:double.tryParse( grandtotalCostController.text) ,
                              vatableAmount: double.tryParse( vatController.text) ,
                              excessTax:double.tryParse( excessTaxController.text) ,
                              actualCost:double.tryParse( actualCostController.text) ,
                              vat:double.tryParse( vatController.text) ,

                              remarks: remarksController.text ?? "",
                              receivingLines: recieve??[]);
                          context
                              .read<PatchreceiveCubit>()
                              .requestFormReceivingPatch(
                              receivingId,
                              model);
                        }










                      },

                      icon: Icons.check,iconColor: Colors.white,

                      text: "SAVE",
                     height: 32,width: 90,labelcolor: Colors.white,),

                  ],

                )









              ],

            ),
          ),
        ],
      ),
),
          ),
);
    }
  ),
),
    );
  }
}
