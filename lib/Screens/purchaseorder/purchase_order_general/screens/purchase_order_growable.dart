
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/cubit/purchase_stock_cubit.dart';
import 'package:inventory/cubits/cubit/table_details_cubit_dart_cubit.dart';
import 'package:inventory/model/purchase_current_stock_qty.dart';
import 'package:inventory/model/purchase_order_table_model.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/requestformcubit/cubit/requestformread_cubit.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class PurchaseOrderGenearlFormGrowableTable extends StatefulWidget {
  bool select;
  final Function updation;
  final Function updateCheck;
  final TextEditingController vendorCode;
  PurchaseOrderGenearlFormGrowableTable(
      { required Key key,
        required this.updation,
        required this.select,
        required this.updateCheck, required this.vendorCode,
      }): super(key: key);

  @override
  PurchaseOrderGenearlFormGrowableTableState createState() =>
      PurchaseOrderGenearlFormGrowableTableState();
}

class PurchaseOrderGenearlFormGrowableTableState extends State<PurchaseOrderGenearlFormGrowableTable> {
  late AutoScrollController scontroller;
  bool assignCheck = false;
  PurchaseOrderTableModel? purchaseTable;
  List<OrderLines> table =List.from( []);

  int? stock = 0;
  int? stockId ;
  bool stockCheck=false;

  TextEditingController unitcostTestController=TextEditingController();
  var requestedListControllers = <TextEditingController>[];
  var minListControllers = <TextEditingController>[];

  var maxListControllers = <TextEditingController>[];
  var unitcostListControllers = <TextEditingController>[];
  var excesstListControllers = <TextEditingController>[];
  var discounttListControllers = <TextEditingController>[];
  var focListControllers = <TextEditingController>[];
  var vatListControllers = <TextEditingController>[];
  PurchaseCureentStockQty? purchaseCurrentStock;
  List<int?> currentStock = [];
  String? varinatname = "";
  String? vendorRefCode = "";
  double? Vamount = 0;
  String? Vbarcode = "";
  double? vvat = 0;
  int? vmaxnqty = 0;
  int? vminqty = 0;
  double? Vgrnadtotal = 0;
  double? vactualCost = 0;
  int? Qty = 0;
  double? eTax = 0;
  double? vfoc = 0;
  double? Vdiscount = 0;
  int? vid = 0;
  String? vrefcod = "";
  String? salesUOM;
  String? purchaseUom;
  double unitcost = 0;
  int discountValue = 0;
  double grands = 0;
  double focValue = 0;
  double VatableValue = 0;
  double excessTax = 0;
  double vatValue = 0;
  double actualValue = 0;
  double excessTAxValue = 0;
  double vatableValue = 0;
  String? variantId;
  bool? isInvoiced = false;
  bool? isRecieved = false;
  bool isActive = false;
  double? check = 0;
  String? check1 = "";
  String? email = "";
  int? stockQty = 0;

  int? maxQty=0;
  TextEditingController requestedtTestContoller = TextEditingController();
  TextEditingController receivedTestContoller = TextEditingController();
  TextEditingController minOrderTestContoller = TextEditingController();
  TextEditingController maxOrderTestContoller = TextEditingController();
  TextEditingController discountTestContoller = TextEditingController();
  TextEditingController focTestContoller = TextEditingController();
  TextEditingController unitCostTestContoller = TextEditingController();
  TextEditingController excesstaxTestContoller = TextEditingController();
  TextEditingController vatTestContoller = TextEditingController();
  TextEditingController unitCostCheck = TextEditingController();


  vatableAmountCalculation(double? unitCost,int? qty,double? excessTax,double? discount){
    print(unitCost);
    print(qty);
    print(excessTax);
    print(discount);
    Vamount =double.parse( (((unitCost! *
        qty!) +
        excessTax!) -
        discount!).toStringAsFixed(2));
    setState(() {

    });
  }
  actualAndgrandTotal(double? vatableAmount,double? vat){
    print("the searching vat"+vat.toString());
    if(vat==0 ||vat==null){
      vactualCost=Vgrnadtotal=vatableAmount;
    }
    else {
      vactualCost = double.parse((vatableAmount! +
          ((vatableAmount *
              vat!) /
              100)).toStringAsFixed(2));
      Vgrnadtotal = vactualCost;
    }


  }



  double vatableAmountUpdation(double? unitCost,int? qty,double? excessTax,double? discount){
    double vatableAmountupdation=0;
    vatableAmountupdation =double.parse( (((unitCost! *
        qty!) +
        excessTax!) -
        discount!).toStringAsFixed(2));
    return vatableAmountupdation;


  }
  double actualAndgrandTotalUpdation(double? vatableAmount,double? vat){
    double actualCost=0;
    actualCost = double.parse((vatableAmount! +
        ((vatableAmount *
            vat!) /
            100)).toStringAsFixed(2));
    return actualCost;

  }

  clearTableAddingVariables(){
    setState(() {

    });

  }
  Future _getCurrentUser() async {
    if (table.isNotEmpty) {
      for (var i = 0; i < table.length; i++) {
        var b = await context.read<PurchaseStockCubit>().getCurrentStock(Variable.inventory_ID, table[i].variantId);
        print("b" + b.toString());
      }
      setState(() {});
    }
  }
  void initState() {
    scontroller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }
  valueAddingTextEdingController(){
    if(table.isNotEmpty){
      print("checking case");
      for(var i=0;i<table.length;i++){

        var unitcost = new TextEditingController(text: table[i].unitCost.toString()??"");
        unitcostListControllers.add(unitcost);

        setState(() {

        });

      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // if(widget.select){
    //   table1=[];
    //   clears();
    //
    // }
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TableDetailsCubitDartCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<RequestformreadCubit, RequestformreadState>(
              listener: (context, state) {

                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {

                      setState(() {
                        stockCheck=false;
                        data.data?.orderLines != null
                            ? table = List.from(data.data?.orderLines ?? [])
                            : table = [];


                        _getCurrentUser();
                        valueAddingTextEdingController();


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
                      setState(() {
                        print("Variable.tableedit"+Variable.tableedit.toString());
                        print("Variable.tableedit"+Variable.tableindex.toString());
                        if(Variable.tableedit==true){
                          var vendorDetailList=purchaseTable?.vendorDetails;
                          var unitCost = purchaseTable?.unitCost;

                          String? code;
                          if(purchaseTable?.vendorDetails?.isNotEmpty==true){
                            for(var i=0;i<vendorDetailList!.length;i++){
                              if(vendorDetailList[i].vendorCode==widget.vendorCode.text){
                                code=vendorDetailList[i].vendorRefCode;

                              }

                            }
                          }
                          table[Variable.tableindex] =
                              table[Variable.tableindex]
                                  .copyWith(
                                  vat:  purchaseTable?.vat,
                                  variantName:  purchaseTable?.name,
                                  excessTax: purchaseTable?.excessTax,
                                  unitCost: unitCost,

                                  barcode: purchaseTable?.barCode?.barcodeNumber,
                                  supplierCode: code);
                          unitcostListControllers[Variable.tableindex]=TextEditingController(text: unitCost.toString());
                          var qty = table[Variable.tableindex].requestedQty;
                          var vat = table[Variable.tableindex].vat;
                          // var foc = table[i].foc;


                          var unitcost = table[Variable.tableindex].unitCost;
                          print("unitcost" + unitcost.toString());
                          var Vdiscount = table[Variable.tableindex].discount;
                          var excess = table[Variable.tableindex].excessTax;
                          if(qty==0 || unitcost==0){
                            print("the casssssssssssssssss");
                            print(qty);
                            print(unitcost);
                            table[Variable.tableindex] = table[Variable.tableindex].copyWith(actualCost: 0, grandTotal: 0, vatableAmount: 0, excessTax: excess);
                            setState(() {

                            });

                          }else {
                            var Vamount;


                            Vamount = (((unitcost! * qty!) + excess!) - Vdiscount!).toDouble();

                            var vactualCost = (Vamount! +
                                ((Vamount! *
                                    vat!) /
                                    100));
                            var Vgrnadtotal = (Vamount! +
                                ((Vamount! *
                                    vat!) /
                                    100));
                            table[Variable.tableindex] =
                                table[Variable.tableindex]
                                    .copyWith(
                                    actualCost: vactualCost,
                                    grandTotal: Vgrnadtotal,
                                    vatableAmount: Vamount,
                                    excessTax: excess);
                            setState(() {});
                          }
                        }
                        else{
                          setState(() {
                            print("searching data"+purchaseTable.toString());
                            varinatname = purchaseTable?.name;
                            var vendorDetailList=purchaseTable?.vendorDetails;
                            print(vendorDetailList);
                            if(purchaseTable?.vendorDetails?.isNotEmpty==true){
                              print("eeensnsnnsns");

                              for(var i=0;i<vendorDetailList!.length;i++){
                                if(vendorDetailList[i].vendorCode==widget.vendorCode.text){
                                  vendorRefCode=vendorDetailList[i].vendorRefCode;
                                }

                              }
                            }
                            print("vendor refcode"+vendorRefCode.toString());

                            // vendorRefCode=purchaseTable?.vendorDetails?.vendorRefCode??"";
                            check = purchaseTable?.unitCost;
                            vvat = data?.vat;
                            print("vvatssssssssss"+vvat.toString());

                            purchaseTable?.unitCost!=null?               unitCostCheck.text = purchaseTable?.unitCost.toString()??"":unitCostCheck.text ="";
                            print("check"+check.toString());
                            unitcostTestController?.text=purchaseTable?.unitCost.toString()??"";

                            check1 = purchaseTable?.purchaseUomName;
                            vrefcod = purchaseTable?.code;
                            vid = purchaseTable?.id;
                            purchaseTable?.excessTax != null ? eTax = purchaseTable?.excessTax : eTax = 0;
                            excesstaxTestContoller?.text = purchaseTable?.excessTax.toString()??"" ;
                            Vbarcode = purchaseTable?.barCode?.barcodeNumber.toString();
                            if(check==0||Qty==0){
                              Vamount=0;
                              vactualCost = 0;
                              Vgrnadtotal = 0;
                              setState(() {});
                            }
                            else{
                              vatableAmountCalculation(check,Qty,eTax,Vdiscount);
                              actualAndgrandTotal(Vamount,vvat);
                            }


                            setState(() {

                            });

                          });


                        }
                      });
                    });
              },
            ),
            BlocListener<PurchaseStockCubit, PurchaseStockState>(
              listener: (context, state) {
                print("state++++++++++++++++++++++++++++++++");
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      if(stockCheck==false){
                        print("anamikas case");
                        currentStock.add(0);
                        setState(() {
                        });

                      }
                      else if(Variable.tableedit==false) {

                        stockQty = 0;
                        setState(() {});
                      }
                      else{

                        // table.replaceRange(Variable.tableindex, (Variable.tableindex+1), [OrderLines(isRecieved: table[Variable.tableindex].isRecieved,isActive:table[Variable.tableindex].isActive ,maximumQty:table[Variable.tableindex].maximumQty,minimumQty:table[Variable.tableindex].minimumQty,requestedQty: table[Variable.tableindex].requestedQty,
                        //     variableAmount:table[Variable.tableindex].variableAmount,vat: table[Variable.tableindex].vat,currentQty: purchaseCurrentStock?.StockQty,variantName:  table[Variable.tableindex].variantName,barcode: table[Variable.tableindex].barcode,excessTax: table[Variable.tableindex].excessTax,supplierCode: table[Variable.tableindex].supplierCode
                        //     ,unitCost:table[Variable.tableindex].unitCost,foc: table[Variable.tableindex].foc,grandTotal: table[Variable.tableindex].grandTotal,actualCost: table[Variable.tableindex].actualCost,variantId: table[Variable.tableindex].variantId,purchaseuom:table[Variable.tableindex].purchaseuom,discount: table[Variable.tableindex].discount
                        // )]);

                        currentStock[Variable.tableindex]=0;

                        setState(() {});
                      }
                      print("error");
                    },
                    success: (data) {
                      purchaseCurrentStock = data;
                      print("Sachin"+stockCheck.toString());
                      if(stockCheck==false){
                        print("anamikas case");
                        currentStock.add(data.StockQty??0);
                        setState(() {
                        });
                        print("anamikas case"+currentStock.length.toString());
                      }
                      else if(Variable.tableedit==false) {

                        stockQty = purchaseCurrentStock?.StockQty;
                        setState(() {});
                      }
                      else{
                        print("aaaaapuuuuuuuuuuuu");
                        // table.replaceRange(Variable.tableindex, (Variable.tableindex+1), [OrderLines(isRecieved: table[Variable.tableindex].isRecieved,isActive:table[Variable.tableindex].isActive ,maximumQty:table[Variable.tableindex].maximumQty,minimumQty:table[Variable.tableindex].minimumQty,requestedQty: table[Variable.tableindex].requestedQty,
                        //     variableAmount:table[Variable.tableindex].variableAmount,vat: table[Variable.tableindex].vat,currentQty: purchaseCurrentStock?.StockQty,variantName:  table[Variable.tableindex].variantName,barcode: table[Variable.tableindex].barcode,excessTax: table[Variable.tableindex].excessTax,supplierCode: table[Variable.tableindex].supplierCode
                        //     ,unitCost:table[Variable.tableindex].unitCost,foc: table[Variable.tableindex].foc,grandTotal: table[Variable.tableindex].grandTotal,actualCost: table[Variable.tableindex].actualCost,variantId: table[Variable.tableindex].variantId,purchaseuom:table[Variable.tableindex].purchaseuom,discount: table[Variable.tableindex].discount
                        // )]);
                        print("Variable.tableindex"+Variable.tableindex.toString());
                        currentStock[Variable.tableindex]=purchaseCurrentStock?.StockQty??0;
                        // currentStock.cop(Variable.tableindex,  purchaseCurrentStock?.StockQty??0);
                        print(currentStock.length);
                        setState(() {});
                      }
                    });
              },
            ),


          ],
          child:
          CustomScrollBar(
            controller: scontroller,

            childs: Container(
              // margin:EdgeInsets.only(right: 14),

              color: Colors.white,
              alignment: Alignment.topRight,

              // height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                controller: scontroller,
                physics: ScrollPhysics(),
                scrollDirection: Axis.horizontal,

                child:   SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SingleChildScrollView(

                        child:
                        Container(
                          // height: 500,
                          width: 2200,
                          // padding: EdgeInsets.all(10),
                          child: customTable(

                            tableWidth: .5,
                            childrens: [TableRow(

                                children: [
                                  tableHeadtext(
                                    'Sl.No',
                                    size: 13,
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),
                                    // color: Palette.containerDarknew,
                                    // textColor: Palette.white,
                                  ),
                                  tableHeadtext(
                                    'Variant Id',
                                    size: 12,
                                    // color: Palette.containerDarknew,
                                    // textColor: Palette.white
                                  ),
                                  tableHeadtext(
                                    'Variant Name',
                                    size: 13,
                                    // color: Palette.containerDarknew,
                                    // textColor: Palette.white
                                  ),
                                  tableHeadtext(
                                    'Vendor Ref Code',
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
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),
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
                                    'Requested qty',
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),


                                    size: 13,
                                    // color: Palette.containerDarknew,
                                    // textColor: Palette.white
                                  ),
                                  tableHeadtext(
                                    'Min Order Qty',
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),

                                    size: 13,
                                    // color: Palette.containerDarknew,
                                    // textColor: Palette.white
                                  ),
                                  tableHeadtext(
                                    'Max Order Qty',
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),


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
                                    'Unit Cost', size: 13,
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),
                                    // color: Palette.containerDarknew,
                                    // textColor: Palette.white
                                  ),
                                  tableHeadtext(
                                    'Excise Tax', size: 13,
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),
                                  ),
                                  tableHeadtext(
                                    'Discount',
                                    size: 13,
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),
                                    // color: Palette.containerDarknew,
                                    // textColor: Palette.white
                                  ),
                                  tableHeadtext(
                                    'FOC',
                                    size: 13,
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),
                                    // color: Palette.containerDarknew,
                                    // textColor: Palette.white
                                  ),
                                  tableHeadtext(
                                    'Vatable Amount',
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),

                                    size: 13,
                                    // color: Palette.containerDarknew,
                                    // textColor: Palette.white
                                  ),

                                  tableHeadtext(
                                    'VAT',
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),


                                    size: 13,
                                    // color: Palette.containerDarknew,
                                    // textColor: Palette.white
                                  ),
                                  tableHeadtext(
                                    'Actual Cost',
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),


                                    size: 13,
                                    // color: Palette.containerDarknew,
                                    // textColor: Palette.white
                                  ),
                                  tableHeadtext(
                                    'Grand Total',
                                    center: true,
                                    padding: EdgeInsets.only(bottom:height*.0198),


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
                                    'Is Active',


                                    size: 13,
                                    // color: Palette.containerDarknew,
                                    // textColor: Palette.white
                                  ),
                                  tableHeadtext(
                                    '',

                                    size: 13,
                                  ),

                                ]),

                              if (table != null)...[
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
                                          child: textPadding((i + 1).toString(),
                                              padding: EdgeInsets.only(left: 11.5,
                                              ), fontWeight: FontWeight.w500),
                                        ),
                                        // TableCell(
                                        //   verticalAlignment: TableCellVerticalAlignment.middle,
                                        //   child: PopUpCall(
                                        //     vendorId: vendorCode.text,
                                        //     type: "cost-method-list",
                                        //     value: table[i].variantId,
                                        //     onSelection: (VariantId? va) {
                                        //       updateCheck=true;
                                        //
                                        //       table[i] = table[i].copyWith(updateCheck: true);
                                        //
                                        //       table[i] =
                                        //           table[i]
                                        //               .copyWith(
                                        //
                                        //               variantId: va?.code,
                                        //              );
                                        //
                                        //       // table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,minimumQty:table[i].minimumQty,maximumQty:table[i].minimumQty,requestedQty: 0,
                                        //       //     variableAmount: table[i].variableAmount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
                                        //       //     ,unitCost: table[i].unitCost,foc: table[i].foc,grandTotal: table[i].grandTotal,actualCost: table[i].actualCost,variantId: va?.code,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                                        //       // )]);
                                        //       setState(() {
                                        //         var    variantId1 = va?.code;
                                        //         int? id = va!.id;
                                        //         Variable.tableindex =i;
                                        //         stockCheck=true;
                                        //         Variable.tableedit=true;
                                        //         onChange = true;
                                        //         context.read<TableDetailsCubitDartCubit>().getTableDetails(id);
                                        //         context.read<PurchaseStockCubit>().getCurrentStock(inventoryId.text,variantId1);
                                        //
                                        //       });
                                        //     },
                                        //   ),
                                        // ),
                                        TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                            child:
                                            VariantIdTAble(
                                              text:table[i].variantId.toString() ,
                                              onTap: (){
                                                showDailogPopUp(
                                                  context,
                                                  TableConfigurePopup(
                                                    vendorId: widget.vendorCode.text,
                                                    type: "variantTabalePopup",
                                                    valueSelect: (VariantId? va) {
                                                    widget.  updateCheck(true);

                                                      table[i] = table[i].copyWith(updateCheck: true);

                                                      table[i] =
                                                          table[i]
                                                              .copyWith(

                                                            variantId: va?.code,
                                                          );

                                                      // table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,minimumQty:table[i].minimumQty,maximumQty:table[i].minimumQty,requestedQty: 0,
                                                      //     variableAmount: table[i].variableAmount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
                                                      //     ,unitCost: table[i].unitCost,foc: table[i].foc,grandTotal: table[i].grandTotal,actualCost: table[i].actualCost,variantId: va?.code,purchaseuom: table[i].purchaseuom,discount: table[i].discount
                                                      // )]);
                                                      setState(() {
                                                        var    variantId1 = va?.code;
                                                        int? id = va!.id;
                                                        Variable.tableindex =i;
                                                        stockCheck=true;
                                                        Variable.tableedit=true;

                                                        context.read<TableDetailsCubitDartCubit>().getTableDetails(id);
                                                        context.read<PurchaseStockCubit>().getCurrentStock(Variable.inventory_ID,variantId1);

                                                      });
                                                    },
                                                  ),
                                                );
                                              },
                                            )


                                          // textPadding(
                                          //     table[i].variantName??"",
                                          //      padding: EdgeInsets.only(left: 11.5,), fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(
                                              table[i].variantName??"",
                                              // padding: EdgeInsets.only(left: 11.5,),
                                              fontWeight: FontWeight.w500
                                          ),
                                        ),
                                        TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(table[i].supplierCode.toString(),
                                              // padding: EdgeInsets.only(left: 11.5, ),
                                              fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(table[i].barcode??"",
                                              // padding: EdgeInsets.only(left: 11.5, ),
                                              fontWeight: FontWeight.w500),
                                        ),

                                        TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(currentStock.length!=table.length?"": currentStock[i].toString(),
                                              alighnment: Alignment.topRight,
                                              // padding: EdgeInsets.only(left: 11.5, ),
                                              fontWeight: FontWeight.w500),
                                        ),
                                        TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(table[i].purchaseUom??"",
                                              // padding: EdgeInsets.only(left: 11.5, ),
                                              fontWeight: FontWeight.w500),
                                        ),
                                        //88888888888888888888                                   //**********************************************
                                        TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: UnderLinedInput(controller:requestedListControllers[i],
                                              integerOnly: true,


                                              onChanged: (va) {print(va);
                                              widget.  updateCheck(true);
                                              table[i] = table[i].copyWith(updateCheck: true);
                                              setState(() {

                                              });
                                              if (va == "") {
                                                print("entered");
                                                table[i] = table[i].copyWith(requestedQty: 0, vatableAmount: 0, actualCost: 0, grandTotal: 0);
                                              } else {
                                                var qty = int.tryParse(va);
                                                var dis = table[i].discount;
                                                var excess = table[i].excessTax;
                                                var unitcost = table[i].unitCost;
                                                var vat = table[i].vat;
                                                var foc = table[i].foc;
                                                if (qty == 0 || unitcost == 0 ||unitcost=="") {
                                                  table[i] = table[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0);
                                                }else {
                                                  var Vamount;
                                                  var vactualCost;
                                                  Vamount=vatableAmountUpdation(unitcost,qty,excess,dis);

                                                  // Vamount  = (((unitcost! *
                                                  // qty!) +
                                                  // excess!) -
                                                  // dis!)
                                                  //     .toDouble();
                                                  if(vat==0 ||vat==""){
                                                    vactualCost=Vamount;
                                                  }
                                                  else{
                                                    vactualCost=actualAndgrandTotalUpdation(Vamount,vat);
                                                    // vactualCost  = (Vamount! +
                                                    // ((Vamount! *
                                                    // vat!) /
                                                    // 100));
                                                  }
                                                  table[i] =
                                                      table[i].copyWith(
                                                        vatableAmount: Vamount,
                                                        actualCost: vactualCost,
                                                        grandTotal: vactualCost, requestedQty:qty ,

                                                      );



                                                }



                                              }


                                              setState(() {});}
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: UnderLinedInput(
                                            //last:table[i].minimumQty.toString(),
                                            controller:minListControllers[i],
                                            onChanged: (p0) {
                                              widget.  updateCheck(true);
                                              table[i] = table[i].copyWith(updateCheck: true);
                                              setState(() {
                                              });
                                              print(p0);
                                              if(p0==""||p0=="0"){
                                                setState(() {
                                                  table[i] = table[i].copyWith(minimumQty: 0);

                                                });
                                              }
                                              else{
                                                setState(() {
                                                  table[i] = table[i].copyWith(minimumQty:int.tryParse(p0));
                                                });
                                              }
                                            },
                                            enable: true,
                                            onComplete: () {
                                              setState(() {  print("maxxxx"+table.toString());});
                                            },
                                          ),
                                        ),
                                        TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: UnderLinedInput(controller:maxListControllers[i],
                                            onChanged: (p0) {
                                              widget.  updateCheck(true);;
                                              table[i] = table[i].copyWith(updateCheck: true);
                                              setState(() {
                                              });
                                              if(p0==""){
                                                table[i] = table[i].copyWith(maximumQty: 0);
                                                setState(() {

                                                });

                                              }
                                              else{
                                                setState(() {
                                                  table[i] = table[i].copyWith(maximumQty:int.tryParse(p0));

                                                });
                                              }

                                            },
                                            enable: true,
                                            onComplete: () {

                                              setState(() {  print("maxxxx"+table.toString());});
                                            },
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: CheckedBoxs(

                                            valueChanger:table[i].isRecieved==null?false: table[i].isRecieved,


                                            onSelection: (bool? value) {  },

                                          ),
                                        ),

                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: UnderLinedInput(
                                            controller:unitcostListControllers[i],
                                            // last: table[i].unitCost.toString() ?? "",
                                            onChanged: (va) {
                                              widget.  updateCheck(true);
                                              table[i] = table[i].copyWith(updateCheck: true);
                                              setState(() {

                                              });
                                              double? unitcost;
                                              if (va == "") {
                                                print("entered");
                                                unitcost = 0;
                                                print("disc" + unitcost.toString());
                                                table[i] = table[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
                                                setState(() {});
                                              }
                                              unitcost = double.tryParse(va);


                                              var qty = table[i].requestedQty;
                                              print("qty" + qty.toString());
                                              var excess = table[i].excessTax;
                                              print("excess" + excess.toString());
                                              var disc = table[i].discount;
                                              var foc=table[i].foc;

                                              var vat = table[i].vat;
                                              print("vat" + vat.toString());
                                              print("qty" + qty.toString());
                                              if (qty == 0 || qty == null) {
                                                print("checking case");

                                                table[i] = table[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
                                                setState(() {});
                                              } else {
                                                double Vamount;
                                                Vamount  =vatableAmountUpdation(unitcost,qty,excess,disc);
                                                // double.parse((((unitcost! * qty!) + excess!) - disc!).toDouble().toStringAsFixed(2));



                                                var vactualCost =actualAndgrandTotalUpdation(Vamount,vat);
                                                // (Vamount! +
                                                //     ((Vamount! *
                                                //         vat!) /
                                                //         100));

                                                table[i] =
                                                    table[i].copyWith(
                                                        vatableAmount: Vamount,
                                                        actualCost: vactualCost,
                                                        grandTotal: vactualCost,
                                                        unitCost: unitcost);
                                                setState(() {});

                                              }
                                            },
                                          ),
                                        ),



                                        //Excess tax***********************************Excesstax***********************************************************************
                                        excesstListControllers.isNotEmpty?
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: UnderLinedInput(

                                            controller:excesstListControllers[i],
                                            // last: table[i].excessTax.toString() ?? "",
                                            onChanged: (va) {
                                              widget.  updateCheck(true);
                                              table[i] = table[i].copyWith(updateCheck: true);
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

                                              var qty = table[i].requestedQty;
                                              var vat = table[i].vat;
                                              var foc = table[i].foc;

                                              print("excess" + excess.toString());
                                              var unitcost = table[i].unitCost;
                                              print("unitcost" + unitcost.toString());
                                              var Vdiscount = table[i].discount;
                                              if(qty==0 || unitcost==0){
                                                table[i] = table[i].copyWith(actualCost: 0, grandTotal: 0, vatableAmount: 0, excessTax: excess);
                                                setState(() {

                                                });

                                              }else {
                                                var Vamount;


                                                Vamount =vatableAmountUpdation(unitcost,qty,excess,Vdiscount);
                                                // (((unitcost! *
                                                //     qty!) +
                                                //     excess!) -
                                                //     Vdiscount!)
                                                //     .toDouble();

                                                var vactualCost =actualAndgrandTotalUpdation(Vamount,vat);
                                                // (Vamount! +
                                                //     ((Vamount! *
                                                //         vat!) /
                                                //         100));
                                                var Vgrnadtotal =actualAndgrandTotalUpdation(Vamount,vat);
                                                // (Vamount! +
                                                //     ((Vamount! *
                                                //         vat!) /
                                                //         100));
                                                table[i] =
                                                    table[i]
                                                        .copyWith(
                                                        actualCost: vactualCost,
                                                        grandTotal: Vgrnadtotal,
                                                        vatableAmount: Vamount,
                                                        excessTax: excess);
                                                setState(() {});
                                              } },
                                          ),
                                        ):
                                        TableCell(

                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: UnderLinedInput(

                                            // controller:excesstListControllers[i],
                                            // last: table[i].excessTax.toString() ?? "",
                                            onChanged: (va) {
                                              widget.  updateCheck(true);
                                              table[i] = table[i].copyWith(updateCheck: true);
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

                                              var qty = table[i].requestedQty;
                                              var vat = table[i].vat;
                                              var foc = table[i].foc;

                                              print("excess" + excess.toString());
                                              var unitcost = table[i].unitCost;
                                              print("unitcost" + unitcost.toString());
                                              var Vdiscount = table[i].discount;
                                              if(qty==0 || unitcost==0){
                                                table[i] = table[i].copyWith(actualCost: 0, grandTotal: 0, vatableAmount: 0, excessTax: excess);
                                                setState(() {

                                                });

                                              }else {
                                                var Vamount;


                                                Vamount =
                                                    (((unitcost! *
                                                        qty!) +
                                                        excess!) -
                                                        Vdiscount!)
                                                        .toDouble();

                                                var vactualCost = (Vamount! +
                                                    ((Vamount! *
                                                        vat!) /
                                                        100));
                                                var Vgrnadtotal = (Vamount! +
                                                    ((Vamount! *
                                                        vat!) /
                                                        100));
                                                table[i] =
                                                    table[i]
                                                        .copyWith(
                                                        actualCost: vactualCost,
                                                        grandTotal: Vgrnadtotal,
                                                        vatableAmount: Vamount,
                                                        excessTax: excess);
                                                setState(() {});
                                              } },
                                          ),
                                        ),
                                        //****************************************DISCOUNT***************************DISCOUNT*********************************
                                        // tableEdit==true?
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: UnderLinedInput(
                                            controller:discounttListControllers[i],
                                            // last: table[i].discount.toString() ?? "",
                                            onChanged: (va) {
                                              widget.  updateCheck(true);
                                              table[i] = table[i].copyWith(updateCheck: true);
                                              setState(() {

                                              });
                                              double? disc;
                                              if (va ==
                                                  "") {

                                                disc =
                                                0;

                                              } else {
                                                disc =
                                                    double
                                                        .tryParse(
                                                        va);

                                              }
                                              var qty = table[i].requestedQty;
                                              var excess = table[i].excessTax;
                                              var unitcost = table[i]
                                                  .unitCost;
                                              var vat = table[i].vat;
                                              var foc = table[i].foc;

                                              if (unitcost ==
                                                  0 ||
                                                  qty ==
                                                      0) {
                                                table[i] =
                                                    table[i]
                                                        .copyWith(
                                                        vatableAmount: 0,
                                                        actualCost: 0,
                                                        grandTotal: 0,
                                                        discount: disc);
                                              }

                                              else {

                                                var Vamount =vatableAmountUpdation(unitcost,qty,excess,disc);
                                                // (((unitcost! *
                                                //     qty!) +
                                                //     excess!) -
                                                //     disc!)
                                                //     .toDouble();
                                                print(
                                                    "Vamount" +
                                                        Vamount
                                                            .toString());

                                                var vactualCost =actualAndgrandTotalUpdation(Vamount,vat);
                                                // (Vamount! +
                                                //     ((Vamount! *
                                                //         vat!) /
                                                //         100));
                                                print(
                                                    "vactualCost" +
                                                        vactualCost
                                                            .toString());
                                                table[i] =
                                                    table[i]
                                                        .copyWith(
                                                        vatableAmount: Vamount,
                                                        actualCost: vactualCost,
                                                        grandTotal: vactualCost,
                                                        discount: disc);
                                                setState(() {});

                                              }

                                            }
                                            ,

                                          ),
                                        ),



                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: UnderLinedInput(
                                            controller:focListControllers[i],
                                            // last: table[i].foc.toString(),

                                            onChanged: (p0) {
                                              widget.  updateCheck(true);
                                              table[i] = table[i].copyWith(updateCheck: true);
                                              setState(() {

                                              });

                                              print(p0);
                                              if(p0==""){
                                                table[i] = table[i].copyWith(foc:0);
                                                setState(() {

                                                });

                                              }
                                              else{
                                                table[i] = table[i].copyWith(foc:double.tryParse(p0));
                                                setState(() {

                                                });
                                              }




                                            },
                                            enable: true,
                                            onComplete: () {

                                              setState(() {  print("maxxxx"+table.toString());});
                                            },
                                          ),
                                        ),

                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(
                                              table[i].vatableAmount.toString(),
                                              alighnment: Alignment.topRight,
                                              fontWeight: FontWeight
                                                  .w500),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(
                                              table[i].vat.toString(),
                                              alighnment: Alignment.topRight,
                                              fontWeight:
                                              FontWeight.w500),
                                        ),

                                        //$$$$$$$$$$$$$$$$$$$$$$$$$$$$  vat   **************************

                                        // TableCell(
                                        //   verticalAlignment: TableCellVerticalAlignment.middle,
                                        //   child: UnderLinedInput(
                                        //     controller: vatListControllers[i],
                                        //     // last: table[i].vat.toString() ?? "",
                                        //     onChanged: (va) {
                                        //       updateCheck=true;
                                        //       table[i] = table[i].copyWith(updateCheck: true);
                                        //       setState(() {
                                        //
                                        //       });
                                        //       if (va == "") {
                                        //         print("sss");
                                        //         var vatableAmount = table[i].variableAmount;
                                        //         table[i] = table[i].copyWith(actualCost: vatableAmount, grandTotal: vatableAmount, vat: 0);
                                        //         setState(() {});
                                        //       } else {
                                        //         var vat = double.tryParse(va);
                                        //         var Vamount = table[i].variableAmount;
                                        //         print("qty" + Vamount.toString());
                                        //         var excess = table[i].excessTax;
                                        //         print("excess" + excess.toString());
                                        //         var unitcost = table[i].unitCost;
                                        //         var qty = table[i].requestedQty;
                                        //         var foc = table[i].foc;
                                        //         var dis = table[i].discount;
                                        //         print("unitcost" + unitcost.toString());
                                        //         if(unitcost==0 || qty==0){
                                        //           table[i] = table[i].copyWith(actualCost: 0, grandTotal: 0, vat: vat);
                                        //
                                        //         }else{
                                        //
                                        //           var Vamount = (((unitcost! *
                                        //               qty!) +
                                        //               excess!) -
                                        //               dis!)
                                        //               .toDouble();
                                        //           var vactualCost = (Vamount! +
                                        //               ((Vamount! *
                                        //                   vat!) /
                                        //                   100));
                                        //           var Vgrnadtotal = (Vamount! +
                                        //               ((Vamount! *
                                        //                   vat!) /
                                        //                   100));
                                        //           table[i] =
                                        //               table[i]
                                        //                   .copyWith(
                                        //                   variableAmount: Vamount,
                                        //                   actualCost: vactualCost,
                                        //                   grandTotal: Vgrnadtotal,
                                        //                   vat: vat);
                                        //           setState(() {});
                                        //
                                        //         }}
                                        //     },
                                        //   ),
                                        // ),

                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(
                                              table[i]
                                                  .actualCost
                                                  .toString(),
                                              padding: EdgeInsets
                                                  .only(
                                                left:
                                                11.5,
                                              ),
                                              alighnment: Alignment.topRight,
                                              fontWeight:
                                              FontWeight
                                                  .w500),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: textPadding(
                                              table[i]
                                                  .grandTotal
                                                  .toString(),
                                              padding: EdgeInsets
                                                  .only(
                                                left:
                                                11.5,
                                              ),
                                              alighnment: Alignment.topRight,
                                              fontWeight:
                                              FontWeight
                                                  .w500),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: CheckedBoxs(
                                              valueChanger:table[i]
                                                  .isRecieved==null?false:table[i].isRecieved,

                                              onSelection:(bool ? value){

                                              }),
                                        ),
                                        // Checkbox(
                                        //   value: table[i]
                                        //       .isRecieved==null?false:table[i]
                                        //       .isRecieved,
                                        //   onChanged: (bool?
                                        //       value) {
                                        //     setState(() {
                                        //       // this.isRecieved =
                                        //       //     value;
                                        //     });
                                        //   },
                                        // ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: CheckedBoxs(
                                              valueChanger:table[i]
                                                  .isActive==null?false:table[i].isActive,

                                              onSelection:(bool ? value){
                                                bool? isActive = table[i].isActive;
                                                setState(() {
                                                  widget.  updateCheck(true);
                                                  table[i] = table[i].copyWith(updateCheck: true);
                                                  setState(() {

                                                  });
                                                  isActive = !isActive!;
                                                  table[i] = table[i].copyWith(isActive: isActive);

                                                  setState(() {});
                                                });
                                              }),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: TableTextButton(
                                            textColor:  table?[i].updateCheck==true?Pellet.bagroundColor:Colors.black,
                                            bagroundColor: table?[i].updateCheck==true?Pellet.tableBlueHeaderPrint:Colors.transparent,

                                            onPress: () {
                                              var Vamount = table[i].vatableAmount??0;
                                              var variant = table[i].variantId??0;
                                              var mins = table[i].minimumQty??0;
                                              var maxs = table[i].maximumQty??0;

                                              var excess = table[i].excessTax??0;
                                              print("excess" + excess.toString());
                                              var unitcosts = table[i].unitCost??0;
                                              var qty = table[i].requestedQty??0;
                                              var foc = table[i].foc??0;
                                              var dis = table[i].discount??0;
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
                                              else if(mins>maxs){
                                                context.showSnackBarError("the minimum qty  allways less than than  maximum qty");
                                              }
                                              else{

                                                table[i] = table[i].copyWith(updateCheck: false);
                                                // vendorCheckFunc();
                                               widget.updation(table);
                                                setState(() {

                                                });
                                                widget.  updateCheck(false);
                                                // focValue=0;
                                                // excessTAxValue=0;
                                                // Vdiscount = 0;
                                                // Vamount = 0;
                                                // Vgrnadtotal = 0;
                                                // vactualCost = 0;
                                                // unitcost = 0;
                                                // grands = 0;
                                                // actualValue = 0;
                                                // VatableValue = 0;
                                                // discountValue = 0;
                                                // vatValue = 0;
                                                setState(() {});
                                              }
                                            },
                                            label:table?[i].updateCheck==true?"update":"",
                                          ),
                                        ),
                                      ]),],
//********************************************************************************************************************
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
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                      child: textPadding((table.length + 1).toString(), fontSize: 12,
                                          padding: EdgeInsets.only(left: 11.5, top: 11.5), fontWeight: FontWeight.w500),
                                    ),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child:
                                        VariantIdTAble(
                                          text:variantId.toString(),
                                          onTap: (){
                                            showDailogPopUp(
                                              context,
                                              TableConfigurePopup(
                                                vendorId:widget. vendorCode.text,
                                                type: "variantTabalePopup",
                                                valueSelect: (VariantId? va) {
                                                  setState(() {
                                                    stockCheck=true;
                                                    variantId = va?.code;
                                                    print("idssss"+variantId.toString());
                                                    int? id = va!.id;
                                                    print("idssss"+id.toString());
                                                    Variable.tableedit=false;

                                                    context.read<TableDetailsCubitDartCubit>().getTableDetails(id);
                                                    context.read<PurchaseStockCubit>().getCurrentStock(Variable.inventory_ID,variantId);




                                                  });
                                                },
                                              ),
                                            );
                                          },
                                        )
                                      // PopUpCall(
                                      //   vendorId: vendorCode.text,
                                      //   type: "cost-method-list",
                                      //   value: variantId,
                                      //   onSelection: (VariantId? va) {
                                      //     setState(() {
                                      //       stockCheck=true;
                                      //       variantId = va?.code;
                                      //       print("idssss"+variantId.toString());
                                      //       int? id = va!.id;
                                      //       print("idssss"+id.toString());
                                      //       Variable.tableedit=false;
                                      //       onChange = true;
                                      //       context.read<TableDetailsCubitDartCubit>().getTableDetails(id);
                                      //       context.read<PurchaseStockCubit>().getCurrentStock(inventoryId.text,variantId);
                                      //       print("the testing thing$check");
                                      //
                                      //
                                      //
                                      //     });
                                      //   },
                                      // ),
                                    ),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                      child: textPadding(varinatname??"",
                                          // padding: EdgeInsets.only(left: 11.5, ),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                      child: textPadding(vendorRefCode??"",
                                          // padding: EdgeInsets.only(left: 11.5,),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                      child: textPadding(Vbarcode.toString(),
                                          // padding: EdgeInsets.only(left: 11.5, ),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                      child: textPadding(stockQty.toString(),
                                          padding: EdgeInsets.only(left: 11.5, ),
                                          alighnment: Alignment.topRight,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                      child: textPadding(check1??"",
                                          // padding: EdgeInsets.only(left: 11.5, ),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                      child: UnderLinedInput(controller:requestedtTestContoller ,
                                        integerOnly: true,
                                        onChanged: (p0) {
                                          if (p0 == '') {
                                            setState(() {
                                              Qty = 0;
                                              Vamount = 0;
                                              Vgrnadtotal = 0;
                                              vactualCost = 0;
                                            });
                                          } else {
                                            setState(() {
                                              Qty = int.tryParse(p0);
                                            });
                                          }
                                          if(check==0||Qty==0){
                                            Vamount=0;
                                            vactualCost = 0;
                                            Vgrnadtotal = 0;
                                            setState(() {});
                                          }
                                          else {
                                            vatableAmountCalculation(check,Qty,eTax,Vdiscount);
                                            actualAndgrandTotal(Vamount,vvat);
                                            // Vamount =double.parse( (((check! * Qty!) + eTax!) - Vdiscount!).toDouble().toStringAsFixed(3));
                                            // vactualCost = double.parse((Vamount! + ((Vamount! * vvat!) / 100)).toDouble().toStringAsFixed(3));
                                            // Vgrnadtotal = double.parse((Vamount! + ((Vamount! * vvat!) / 100)).toDouble().toStringAsFixed(3));
                                            if (Vamount != 0) {
                                              Vamount = (((check! * Qty!) + eTax!) -
                                                  Vdiscount!)
                                                  .toDouble();
                                            }
                                          }

                                          print(Qty);
                                        },
                                        enable: true,
                                        onComplete: () {
                                          setState(() {});

                                          setState(() {});
                                        },
                                      ),
                                    ),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                      child: UnderLinedInput(controller:minOrderTestContoller,
                                        onChanged: (p0) {vminqty = int.tryParse(p0);
                                        },
                                        enable: true,
                                        onComplete: () {
                                          setState(() {});
                                        },
                                      ),
                                    ),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                      child: UnderLinedInput(controller:maxOrderTestContoller,
                                        onChanged: (p0) {vmaxnqty = int.tryParse(p0);},
                                        enable: true,
                                        onComplete: () {
                                          setState(() {});
                                        },
                                      ),
                                    ),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: CheckedBoxs(valueChanger:
                                    this.isRecieved,
                                      onSelection: (bool? value) {
                                        setState(() {
                                        });
                                      },
                                    ),
                                    ),

                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                      child: UnderLinedInput(
                                        controller: unitCostCheck,
                                        onChanged:
                                            (p0) {
                                          if (p0 == "") {
                                            setState(
                                                    () {check = 0;
                                                });
                                          }
                                          else{
                                            setState(() {
                                              check =double.tryParse(p0);
                                            });
                                          }
                                          if(check==0 ||Qty==0){
                                            Vamount=0;
                                            vactualCost=0;
                                            Vgrnadtotal=0;
                                          }
                                          else {
                                            check = double.tryParse(p0);
                                            vatableAmountCalculation(check,Qty,eTax,Vdiscount);
                                            actualAndgrandTotal(Vamount,vvat);
                                            // Vamount = double.parse((((check! * Qty!) + eTax!) - Vdiscount!).toDouble().toStringAsFixed(3));
                                            // vactualCost = double.parse((Vamount! + ((Vamount! * vvat!) / 100)).toDouble().toStringAsFixed(3));
                                            // Vgrnadtotal = double.parse((Vamount! + ((Vamount! * vvat!) / 100)).toDouble().toStringAsFixed(3));
                                          }
                                        },
                                        enable: true,
                                        onComplete:
                                            () {},
                                      ),
                                    ),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                      child: UnderLinedInput(
                                        controller: excesstaxTestContoller,
                                        onChanged:
                                            (p0) {
                                          if (p0 == "") {
                                            setState(
                                                    () {
                                                  eTax = 0;
                                                });
                                          } else {
                                            setState(
                                                    () {eTax = double.tryParse(p0);
                                                });
                                          }
                                          if(check==0 ||Qty==0){
                                            vactualCost=0;
                                            Vamount=0;
                                            Vgrnadtotal=0;
                                            setState(() {});
                                          }
                                          else {
                                            if (Vamount != 0) {
                                              vatableAmountCalculation(check,Qty,eTax,Vdiscount);
                                              actualAndgrandTotal(Vamount,vvat);
                                              // Vamount = double.parse((((check! * Qty!) + eTax!) - Vdiscount!).toDouble().toStringAsFixed(3));
                                              // vactualCost = double.parse((Vamount! + ((Vamount! * vvat!) / 100)).toStringAsFixed(3));
                                              // Vgrnadtotal = double.parse((Vamount! + ((Vamount! * vvat!) / 100)).toStringAsFixed(3));
                                            }
                                          }
                                        },
                                        enable: true,
                                        onComplete:
                                            () {},
                                      ),
                                    ),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                      child: UnderLinedInput(
                                        controller: discountTestContoller,
                                        onChanged: (p0) {
                                          if (p0 == '')
                                            setState(() {
                                              Vdiscount = 0;
                                            });
                                          else {
                                            setState(() {
                                              Vdiscount = double.tryParse(p0);
                                            });
                                          }
                                          if(check==0 ||Qty==0){
                                            vactualCost=0;
                                            Vamount=0;
                                            Vgrnadtotal=0;
                                          }
                                          else {
                                            vatableAmountCalculation(check,Qty,eTax,Vdiscount);
                                            actualAndgrandTotal(Vamount,vvat);
                                            // Vamount = double.parse((((check! * Qty!) + eTax!) - Vdiscount!).toDouble().toStringAsFixed(3));
                                            // vactualCost =double.parse( (Vamount! + ((Vamount! * vvat!) / 100)).toStringAsFixed(3));
                                            // Vgrnadtotal = double.parse((Vamount! + ((Vamount! * vvat!) / 100)).toStringAsFixed(3));
                                            setState(() {});
                                          }
                                        },
                                      ),
                                    ),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                      child: UnderLinedInput(controller: focTestContoller,
                                        onChanged: (p0) {
                                          setState(() {
                                            if (p0 == '')
                                              setState(() {
                                                vfoc = 0;
                                              });
                                            else {
                                              setState(() {
                                                vfoc = double.tryParse(p0);
                                              });
                                            }
                                          });
                                        },
                                        enable: true,
                                        onComplete: () {},
                                      ),
                                    ),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                      child: textPadding(Vamount.toString(),
                                          alighnment: Alignment.topRight,
                                          padding: EdgeInsets.only(left: 11.5, ), fontWeight: FontWeight.w500),
                                    ),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                      child: textPadding(vvat!=0?vvat.toString():"",
                                          alighnment: Alignment.topRight,
                                          padding: EdgeInsets.only(left: 11.5, ), fontWeight: FontWeight.w500),
                                    ),

                                    TableCell(
                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                      child: textPadding(vactualCost.toString(),
                                          alighnment: Alignment.topRight,
                                          padding: EdgeInsets.only(left: 11.5, ),

                                          fontWeight: FontWeight.w500),
                                    ),
                                    TableCell(
                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                      child: textPadding(Vgrnadtotal?.toString()??"",


                                          padding: EdgeInsets.only(left: 11.5, ),
                                          alighnment: Alignment.topRight,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    TableCell(
                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                      child: CheckedBoxs(
                                        valueChanger: isInvoiced,
                                        onSelection: (bool? value) {
                                          setState(() {
                                          });
                                        },
                                      ),
                                    ),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                      child: CheckedBoxs(
                                        valueChanger: isActive ,

                                        onSelection: (val) {
                                          setState(() {
                                            isActive =
                                            !isActive;
                                            setState(() {

                                            });

                                          });
                                        },
                                      ),
                                    ),
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                      child: Row(
                                        children: [
                                          TableTextButton(

                                            onPress: () {
                                              if (vminqty! >
                                                  vmaxnqty!) {
                                                print("enterd");
                                                if(vminqty!=0 &&vmaxnqty!=0){
                                                  context.showSnackBarError(
                                                      "the minimum order is always less than maximum order");}
                                              }
                                              else  if(  variantId=="null"||check==0||vvat==0)
                                                context.showSnackBarError(
                                                    "please fill all the fields");
                                              else if(Qty==0||Qty==""){
                                                context.showSnackBarError(
                                                    "the requested quantity not be 0 or empty");
                                              }
                                              else if(vfoc!>Qty!){
                                                context.showSnackBarError(
                                                    "foc is allways less than requested qty");
                                              }
                                              else{

                                                table..add(
                                                    OrderLines(
                                                        vendorRefCode: vendorRefCode??"",
                                                        isRecieved: isRecieved ?? false,
                                                        isActive: isActive ?? false,
                                                        supplierCode: vendorRefCode?? "",
                                                        variantId: variantId ?? "",
                                                        variantName: varinatname ?? "",
                                                        barcode: Vbarcode ?? "",
                                                        cvd: "sss",
                                                        foc: vfoc ?? 0,
                                                        maximumQty: vmaxnqty ?? 0,
                                                        minimumQty: vminqty ?? 0,
                                                        excessTax: eTax ?? 0,
                                                        vat: vvat ?? 0,
                                                        actualCost: vactualCost ?? 0,
                                                        purchaseUom: check1 ?? "",
                                                        discount: Vdiscount ?? 0,
                                                        requestedQty: Qty ?? 0,
                                                        unitCost: check! ?? 0,
                                                        grandTotal: Vgrnadtotal ?? 0,
                                                        vatableAmount: Vamount ?? 0,
                                                        currentQty: stockQty ?? 0,
                                                        updateCheck: false
                                                    ));
                                                // vendorCheckFunc();
                                                currentStock.add(stockQty??0);
                                                print("a"+currentStock.toString());
                                                requestedListControllers.clear();
                                                minListControllers.clear() ;
                                                maxListControllers .clear();
                                                unitcostListControllers.clear();
                                                excesstListControllers.clear();
                                                discounttListControllers.clear();
                                                focListControllers.clear();
                                                vatListControllers.clear();
                                                setState(() {

                                                  valueAddingTextEdingController();
                                                });
                                                print("gtable" +
                                                    table
                                                        .toString());
                                                widget.updation(table);
                                                // tableDatasClear();

                                                setState(() {});

                                              }
                                            },
                                            label:"SAVE",
                                          ),
                                          TableIconTextButton(label: "label", onPress: (){
                                            setState(() {
                                              // tableDatasClear();
                                            });

                                          },
                                            icon: Icons.clear,)
                                        ],
                                      ),
                                    ),
                                  ]),

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
                              10: FlexColumnWidth(2),
                              11: FlexColumnWidth(3),
                              12: FlexColumnWidth(3),
                              13: FlexColumnWidth(3),
                              14: FlexColumnWidth(3),
                              15: FlexColumnWidth(3),
                              16: FlexColumnWidth(3),
                              17: FlexColumnWidth(3),
                              18: FlexColumnWidth(3),
                              19: FlexColumnWidth(2),
                              20: FlexColumnWidth(2),
                              21: FlexColumnWidth(4),
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),


                    ],
                  ),
                ),

              ),
            ),
          ),
        );
      }),
    );
  }
}