import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/logi/model/inventorylistmodel.dart';
import 'package:inventory/Screens/purchaseorder/purchase_order_general/screens/purchase_order_general_stable.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/sharedpreference.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/cubit/cubit/cubit/purchaseorderdelete_cubit.dart';
import 'package:inventory/cubits/cubit/cubit/cubit/cubit/vendor_details_cubit/vendordetails_cubit.dart';
import 'package:inventory/cubits/cubit/cubit/cubit/purchase_order_patch_cubit.dart';
import 'package:inventory/cubits/cubit/cubit/general_purchase_read_cubit.dart';
import 'package:inventory/cubits/cubit/variant_id_cubit_dart_cubit.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Invetory/inventorysearch_cubit.dart';
import 'package:inventory/commonWidget/Navigationprovider.dart';
import 'package:inventory/cubits/cubit/cubit/purchase_stock_cubit.dart';
import 'package:inventory/cubits/cubit/table_details_cubit_dart_cubit.dart';
import 'package:inventory/model/purchase_current_stock_qty.dart';
import 'package:inventory/model/purchase_order_table_model.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/printScreen.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/purchaseorderpostcubit/cubit/purchaseorderpost_cubit.dart';
import 'package:inventory/widgets/NewinputScreen.dart';

import 'package:inventory/widgets/customtable.dart';

import 'package:provider/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
class PurchaseOrderGeneralScreen extends StatefulWidget {
  final bool isCollapsed;
  final double? unitcost;
  final PurchaseOrderTableModel? purchaseTable;

  PurchaseOrderGeneralScreen(this.isCollapsed, this.purchaseTable, {required this.unitcost});

  @override
  State<PurchaseOrderGeneralScreen> createState() => _PurchaseOrderGeneralScreenState();
}

class _PurchaseOrderGeneralScreenState extends State<PurchaseOrderGeneralScreen> {
  List<OrderLines> table = List.from([]);
  List<OrderLines>? order = [];
  List<PurchaseOrder> result = [];
  PurchaseOrderTableModel? purchaseTable;
  PurchaseCureentStockQty? purchaseCurrentStock;
  bool _value = false;
  bool select=false;
  TextEditingController itemsearch = TextEditingController();

  TextEditingController inventoryId = TextEditingController();
  TextEditingController vendortrnnumber = TextEditingController();
  TextEditingController ordercode = TextEditingController();
  ScrollController scrollController = ScrollController();
  TextEditingController vendoraddress = TextEditingController();
  TextEditingController planned_receipt_date=TextEditingController() ;
  TextEditingController planned_receipt_date2=TextEditingController() ;
  TextEditingController promised_receipt_date = TextEditingController();
  TextEditingController promised_receipt_date2 = TextEditingController();
  TextEditingController remarks = TextEditingController();
  TextEditingController foc = TextEditingController();
  TextEditingController Variableamount = TextEditingController();
  TextEditingController note = TextEditingController();
  TextEditingController orderDate = TextEditingController();
  TextEditingController orederDate2Controller = TextEditingController();

  TextEditingController vendorCode = TextEditingController();
  TextEditingController vendorCodeName = TextEditingController();
  TextEditingController Paymentcode = TextEditingController();
  TextEditingController Paymentstatus = TextEditingController();
  TextEditingController orderStatus = TextEditingController();
  TextEditingController recievingstatus = TextEditingController();
  TextEditingController invoicestatus = TextEditingController();
  TextEditingController unitcourse = TextEditingController(text: "");
  TextEditingController excesstax = TextEditingController();
  TextEditingController vat = TextEditingController();
  TextEditingController actualcost = TextEditingController();
  TextEditingController grandtotal = TextEditingController();
  TextEditingController discount = TextEditingController();
  TextEditingController requestedtTestContoller = TextEditingController();
  TextEditingController minOrderTestContoller = TextEditingController();
  TextEditingController maxOrderTestContoller = TextEditingController();
  TextEditingController discountTestContoller = TextEditingController();
  TextEditingController focTestContoller = TextEditingController();
  TextEditingController unitCostTestContoller = TextEditingController();
  TextEditingController excesstaxTestContoller = TextEditingController();
  TextEditingController vatTestContoller = TextEditingController();
  NavigationProvider vm = NavigationProvider();
  TextEditingController unitcostTestController=TextEditingController();
  TextEditingController unitCostCheck = TextEditingController();
  TextEditingController vendor_email=TextEditingController();
  TextEditingController orderType =TextEditingController();
  var requestedListControllers = <TextEditingController>[];
  var minListControllers = <TextEditingController>[];

  var maxListControllers = <TextEditingController>[];
  var unitcostListControllers = <TextEditingController>[];
  var excesstListControllers = <TextEditingController>[];
  var discounttListControllers = <TextEditingController>[];
  var focListControllers = <TextEditingController>[];
  var vatListControllers = <TextEditingController>[];
  List<TextEditingController> vatController =[];
  // List<Employee> employees = <Employee>[];
  // late EmployeeDataSource employeeDataSource;
  bool? isRecieved = false;
  bool isVendorCheck = false;
  bool? newAddRow=false;
  bool ? tableClear=false;
  List<int?> currentStock = [];
  VariantDetailsModel? vendorDetails;
  List<PartnerOrganizationData>?partnerOrganizationData;
  bool? tableEdit=true;
  bool stockCheck=false;
  int selectedVertical=0;
  bool? isInvoiced = false;
  double? check = 0;
  String? check1 = "";
  String? email = "";
  int? stockQty = 0;
  int? veritiaclid=0;
  String? address1='';
  String ? address2="";
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
  bool updateCheck=false;
  var paginatedList;
  List<OrderLines> orderLisnes = [];

  bool onChange = false;


  late AutoScrollController controller;

  @override
  void initState() {
    context
        .read<InventorysearchCubit>()
        .getInventorySearch("code");
    // context
    //     .read<GeneralPurchaseReadCubit>()
    //     .getGeneralPurchaseRead(Variable.verticalid!);


    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();

  }
  vendorCheckFunc(){


    for(var em in table){
      if(em.isActive==true){
        isVendorCheck=true;
        break;
      }
      setState(() {

      });
    }




  }
  tableDatasClear(){
    vid = 0;
    eTax = 0;
    variantId = "";
    varinatname = "";
    vrefcod = "";
    Vbarcode = "";
    vendorRefCode="";
    vvat=0;
    focValue=0;
    excessTAxValue=0;
    check1 = "";
    check = 0;
    Qty = 0;
    orderType.text="";
    Vdiscount = 0;
    unitCostCheck.text="";
    Vamount = 0;
    vmaxnqty=0;
    vminqty=0;
    Vgrnadtotal = 0;
    vactualCost = 0;
    unitcost = 0;
    grands = 0;
    actualValue = 0;
    VatableValue = 0;
    discountValue = 0;
    vatValue = 0;
    stockQty = 0;
    vfoc=0;
    _value = false;
    requestedtTestContoller.clear();
    minOrderTestContoller.clear();
    maxOrderTestContoller.clear();
    discountTestContoller.clear();
    focTestContoller.clear();
    excesstaxTestContoller.clear();
    vatTestContoller.clear();
    isRecieved = false;

  }
  clear(){
    requestedListControllers.clear();
    minListControllers.clear() ;
    Paymentcode.clear();

    maxListControllers .clear();
    unitcostListControllers.clear();
    excesstListControllers.clear();
    isVendorCheck=false;
    discounttListControllers.clear();
    print("discount"+discounttListControllers.length.toString());
    focListControllers.clear();
    print("foccc"+focListControllers.length.toString());
    vatListControllers.clear();
    print("vattt"+vatListControllers.length.toString());
    print("appuzz"+table.length.toString());
    // currentStock.clear();
    vendortrnnumber.text="";
    unitCostCheck.text="";
    ordercode.text="";
    inventoryId.text="";
    vendoraddress.text="";
    invoicestatus.clear();
    planned_receipt_date.text="";
    promised_receipt_date.text="";
    remarks.text="";
    orderStatus.text="";
    Paymentstatus.clear();
    orderDate.text="";
    orederDate2Controller.clear();
    ordercode.text="";
    note.text="";
    discount.text="";
    foc.text="";
    unitcourse.text="";
    vat.text="";
    Variableamount.text="";
    excesstax.text="";
    grandtotal.text="";
    actualcost.text="";
    vendorCode.text="";
    vendorCodeName.text="";
    vendor_email.text="";
    recievingstatus.text="";
    variantId = "";
    varinatname =
    "";
    address2="";
    address1="";
    purchaseUom="";

    vid = 0;
    eTax = 0;
    variantId = "";
    varinatname =
    "";
    vrefcod = "";
    Vbarcode = "";
    vendorRefCode="";
    vvat=0;
    vfoc=0;
    focValue=0;
    excessTAxValue=0;

    check1 = "";
    check = 0;
    Qty = 0;
    Vdiscount = 0;
    Vamount = 0;
    vmaxnqty=0;
    vminqty=0;
    Vgrnadtotal = 0;
    vactualCost = 0;
    unitcost = 0;
    grands = 0;
    actualValue = 0;
    VatableValue = 0;
    discountValue = 0;
    vatValue = 0;
    stockQty = 0;
    _value = false;
    isRecieved = false;
    requestedtTestContoller.clear();
    minOrderTestContoller.clear();
    maxOrderTestContoller.clear();
    discountTestContoller.clear();
    focTestContoller.clear();
    planned_receipt_date2.clear();
    promised_receipt_date2.clear();
    excesstaxTestContoller.clear();
    vatTestContoller.clear();
    // _value=false;
  }
  valueAddingTextEdingController(){
    if(table.isNotEmpty){

      for(var i=0;i<table.length;i++){
        var requsted = new TextEditingController(text: table[i].requestedQty.toString()??"");
        requestedListControllers.add(requsted);
        print(requestedListControllers.length);
        var min = new TextEditingController(text: table[i].minimumQty.toString()??"");
        minListControllers.add(min);

        print("probability"+minListControllers[i].text);
        print("mazzzzz"+table[i].maximumQty.toString());
        var max = new TextEditingController(text: table[i].maximumQty.toString()??"");
        print("max"+max.toString());
        maxListControllers.add(max);
        print("maxlength"+maxListControllers.toString());
        var unitcost = new TextEditingController(text: table[i].unitCost.toString()??"");
        unitcostListControllers.add(unitcost);
        var excess = new TextEditingController(text: table[i].excessTax.toString()??"");
        excesstListControllers.add(excess);
        var disc = new TextEditingController(text:  table[i].discount.toString());
        discounttListControllers.add(disc);
        var foc = new TextEditingController(text: table[i].foc.toString()??"");
        focListControllers.add(foc);
        var vat = new TextEditingController(text: table[i].vat.toString()??"");
        vatListControllers.add(vat);
        setState(() {

        });

      }
    }
  }
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

  assigniningDetails(String address,String trn){
    vendoraddress.text=address;
    vendortrnnumber.text=trn;
    setState(() {});
  }

  Future _getCurrentUser() async {

    if(table.isNotEmpty) {

      for (var i = 0; i < table.length; i++) {
        print("variantaaaaaa" + table[i].variantId.toString());
        print("variantaaaaaa" + inventoryId.text.toString());
        var b = await context.read<PurchaseStockCubit>().getCurrentStock(inventoryId.text, table[i].variantId);
        print("b" + b.toString());
      }
      setState(() {});
    }
  }
  addition() {
    print("enterd");
    print("+==" + table.toString());
    double  unitcost=0;
    double grands=0;
    double actualValue=0;
    double vatValue=0;
    double discountValue=0;
    double focValue=0;
    double VatableValue=0;
    double excessTAxValue=0;
    if(table.isNotEmpty)
      for (var i = 0; i < table.length; i++) {
        if (table[i].isActive == true) {
          if (table[i].updateCheck == false) {
            var unicost1 = table[i].unitCost ?? 0;
            var vatValue1 = table[i].vat ?? 0;
            var grands1 = table[i].grandTotal ?? 0;
            var actualValue1 = table[i].actualCost ?? 0;
            var discountValue1 = table[i].discount ?? 0;
            var focValue1 = table[i].foc ?? 0;
            var VatableValue1 = table[i].vatableAmount ?? 0;
            var excessTAxValue1 = table[i].excessTax ?? 0;

            unitcost = double.parse((unitcost + unicost1).toStringAsFixed(2));

            grands = double.parse((grands + grands1).toStringAsFixed(2));
            actualValue =
                double.parse((actualValue + actualValue1).toStringAsFixed(2));
            vatValue = double.parse((vatValue + vatValue1).toStringAsFixed(2));
            discountValue = double.parse(
                (discountValue + discountValue1).toStringAsFixed(2));
            focValue = double.parse((focValue + focValue1).toStringAsFixed(2));

            VatableValue =
                double.parse((VatableValue + VatableValue1).toStringAsFixed(2));
            print("excessTaxvalue" + excessTAxValue.toString());
            excessTAxValue = double.parse(
                (excessTAxValue + excessTAxValue1).toStringAsFixed(2));
          }
        }
      }
    unitcourse.text = unitcost == 0 ? "" : unitcost.toString();
    grandtotal.text = grands.toString();
    vat.text = vatValue.toString();

    actualcost.text = actualValue.toString();
    print("foc value"+focValue.toString());

    foc.text = focValue.toString();
    discount.text = discountValue.toString();
    excesstax.text = excessTAxValue.toString();
    Variableamount.text = VatableValue.toString();
    // _value=false;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    vm = Provider.of<NavigationProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // inventoryId.text=Variable.inventory_ID ;
    return Scaffold(
      backgroundColor: Pellet.bagroundColor,
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => PurchaseorderpostCubit(),
          ),
          BlocProvider(
            create: (context) => PurchaseOrderPatchCubit(),
          ),
          BlocProvider(
            create: (context) => GeneralPurchaseReadCubit(),
          ),
          BlocProvider(
            create: (context) => PurchaseorderdeleteCubit(),
          ),
          BlocProvider(
              create: (context) => VariantIdCubitDartCubit()),
        ],
        child: Builder(builder: (context) {
          return MultiBlocListener(
            listeners: [
              BlocListener<PurchaseorderpostCubit, PurchaseorderpostState>(
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
                      Timer(Duration(seconds: 5), () {
                        setState(() {
                          context
                              .read<InventorysearchCubit>()
                              .getInventorySearch("code");


                        });
                      });

                    }
                    else {
                      context.showSnackBarError(data.data2);
                      print(data.data1);
                    }
                    ;
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
                                if(vendorDetailList[i].vendorCode==vendorCode.text){
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
                                  if(vendorDetailList[i].vendorCode==vendorCode.text){
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
                              vm.totalUnitcost = (vm.totalUnitcost!) + (check!);
                              print("vm.totalUnitcost" + vm.totalUnitcost.toString());
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
              BlocListener<GeneralPurchaseReadCubit, GeneralPurchaseReadState>(
                listener: (context, state) {
                  print("state++++++++++++++++++++++++++++++++");
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (data) {
                        setState(() {
                          stockCheck=false;

                          print("datasssssssssssssss"+data.toString());
                          data.data?.orderLines != null ? table =List.from( data.data?.orderLines ?? []) : table = [];
                          print("tablsssssssssssssssssse"+table.toString());
                          Variable.inventory_ID =data.data?.iventoryId??"";
                          vendortrnnumber.text=data.data?.vendorTrnNumber??"";
                          vendoraddress.text=data.data?.vendorAddress??"";
                          note.text=data.data?.note??"";
                          purchaseUom=data.data?.purchaseOrderType??"";
                          orderType.text=data.data?.purchaseOrderType??"";
                          inventoryId.text=data.data?.iventoryId??"";
                          orderDate.text=data.data?.orderDate??"";
                          orederDate2Controller=TextEditingController(text:  DateFormat('dd-MM-yyyy').format(DateTime.parse(data.data?.orderDate ??"")));
                          remarks.text=data.data?.remarks??"";
                          invoicestatus.text=data.data?.invoiceStatus??"";
                          orderStatus.text=data.data?.orderStatus??"";
                          Paymentstatus.text=data.data?.paymentStatus??"";
                          vendorCheckFunc();

                          if(data.data?.unitcost==null||data.data?.unitcost=="null"){
                            unitcourse.text =='';
                          }
                          else{
                            setState(() {
                              unitcourse.text = data.data?.unitcost?.toString()??"";
                            });
                          }
                          if(data.data?.excessTax==null||data.data?.excessTax=="null"){
                            excesstax.text =='';
                          }
                          else{
                            setState(() {
                              excesstax.text = data.data?.excessTax?.toString()??"";
                            });
                          }
                          if(data.data?.actualCost==null||data.data?.actualCost=="null"){
                            actualcost.text =='';
                          }
                          else{
                            setState(() {
                              actualcost.text = data.data?.actualCost?.toString()??"";
                            });
                          }
                          if(data.data?.vat==null||data.data?.vat=="null"){
                            vat.text =='';
                          }
                          else{
                            setState(() {
                              vat.text = data.data?.vat?.toString()??"";
                            });
                          }
                          if(data.data?.grandTotal==null||data.data?.grandTotal=="null"){
                            grandtotal.text =='';
                          }
                          else{
                            setState(() {
                              grandtotal.text = data.data?.grandTotal?.toString()??"";
                            });
                          }
                          if(data.data?.variableAmount==null||data.data?.variableAmount=="null"){
                            Variableamount.text =='';
                          }
                          else{
                            setState(() {
                              Variableamount.text = data.data?.variableAmount?.toString()??"";
                            });
                          }
                          if(data.data?.foc ==null||data.data?.foc =="null"){
                            foc.text =='';
                          }
                          else{
                            setState(() {
                              foc.text = data.data?.foc?.toString()??"";
                            });
                          }
                          if(data.data?.discount! ==null||data.data?.discount! =="null"){
                            discount.text =='';
                          }
                          else{
                            setState(() {
                              discount.text = data.data?.discount?.toString()??"";
                            });
                          }
                          ordercode.text=data.data?.orderCode.toString()??"";
                          vendorCode.text=data.data?.vendorId.toString()??"";
                          vendor_email.text=data.data?.vendorMailId.toString()??"";
                          recievingstatus.text=data.data?.recievingStatus??"";
                          Paymentstatus.text=data.data?.paymentStatus??"";
                          Paymentcode.text=data.data?.paymentcode??"";
                          promised_receipt_date=TextEditingController(text:data.data?.promisedReceiptdate??"");
                          promised_receipt_date2=TextEditingController(text:data.data?.promisedReceiptdate==null?"":  DateFormat('dd-MM-yyyy').format(DateTime.parse(data.data?.promisedReceiptdate??"")));
                          planned_receipt_date2=TextEditingController(text:data.data?.plannedRecieptDate==null?"":  DateFormat('dd-MM-yyyy').format(DateTime.parse(data.data?.plannedRecieptDate??"")));
                          planned_receipt_date=TextEditingController(text:data.data?.plannedRecieptDate??"");
                          address1=data.data?.address1??"";
                          address2=data.data?.address2??"";
                          valueAddingTextEdingController();
                          _getCurrentUser();
                        });
                      });
                },
              ),
              BlocListener<PurchaseOrderPatchCubit, PurchaseOrderPatchState>(
                listener: (context, state) {

                  state.maybeWhen(orElse: () {
                    // context.
                    context.showSnackBarError("Loading");
                  }, error: () {
                    context.showSnackBarError(Variable.errorMessege);
                  }, success: (data) {
                    if (data.data1) {
                      context.showSnackBarSuccess(data.data2);
                      context.read<GeneralPurchaseReadCubit>().getGeneralPurchaseRead(veritiaclid!);
                      select=false;
                    }
                    else {
                      context.showSnackBarError(data.data2);
                      print(data.data1);
                    }
                    ;
                  });
                },
              ),
              BlocListener<PurchaseorderdeleteCubit, PurchaseorderdeleteState>(
                listener: (context, state) {
                  state.maybeWhen(orElse: () {
                    // context.
                    context.showSnackBarError("Loading");
                  }, error: () {
                    context.showSnackBarError(Variable.errorMessege);
                  }, success: (data) {
                    if (data.data1) {
                      context.showSnackBarSuccess(data.data2);
                      clear();
                      table.clear();

                      context
                          .read<InventorysearchCubit>()
                          .getInventorySearch("code");
                      select=false;

                    }
                    else {
                      context.showSnackBarError(data.data2);
                      print(data.data1);
                    }
                    ;
                  });
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
            ],
            child: BlocConsumer<InventorysearchCubit, InventorysearchState>(
              listener: (context, state) {
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (list) {
                      print("aaaaayyyiram"+list.data.toString());
                      paginatedList=list;

                      result = list.data;
                      setState(() {
                        if(result.isNotEmpty){
                          if(select==true){
                            veritiaclid=result[result.length-1].id;
                            context.read<GeneralPurchaseReadCubit>().getGeneralPurchaseRead(veritiaclid!);
                            selectedVertical=result.length-1;
                          }
                          else{
                            veritiaclid=result[0].id;
                            selectedVertical=0;
                            context.read<GeneralPurchaseReadCubit>().getGeneralPurchaseRead(veritiaclid!);
                          }
                          select=false;
                        }
                        else{
                          select=true;
                        }
                        setState(() {});
                      });
                    });
              },
              builder: (context, state) {
                return IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      VerticalList(selectedVertical: selectedVertical,
                        select: select,
                        itemsearch: itemsearch,ontap: (int index){
                          setState(() {
                            print("taped");
                            select=false;
                            selectedVertical=index;
                            currentStock=[];
                            updateCheck=false;
                            clear();
                            table=[];
                            setState(() {});
                            veritiaclid = result[index].id;
                            context.read<GeneralPurchaseReadCubit>().getGeneralPurchaseRead(veritiaclid!);

                          });
                        },result: result,
                        child:                    tablePagination(
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
                        child: SingleChildScrollView(
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 3,),
                                      Row(
                                        mainAxisAlignment:MainAxisAlignment.end,
                                        children: [

                                          TextButtonLarge(
                                            marginCheck: true,


                                            onPress: () {
                                              select=true;
                                              isVendorCheck=

                                                  updateCheck=false;//for table edit check when edtied the editing fields
                                              currentStock.clear();
                                              clear();
                                              table.clear();
                                              setState(() {
                                              });
                                              print("Variable.inventory_ID"+Variable.inventory_ID.toString());
                                            },
                                            text: "CREATE",
                                          ),
                                          TextButtonLarge(
                                            text: "PREVIEW",
                                            onPress: () async {
                                              print("Akshay");
                                              InventoryListModel model=InventoryListModel();
                                              UserPreferences userPref = UserPreferences();
                                              await userPref.getInventoryList().then((user) {
                                                print(user.name);
                                                if (user.isInventoryExist == true) {
                                                  model=user;
                                                  // prefs.setString('token', user?.token ?? "");
                                                } else {
                                                }
                                              });
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) =>
                                                    PrintScreen(
                                                      note: note.text,
                                                      select: select,
                                                      model:model,
                                                      vendorCode:vendorCode.text,
                                                      orderCode:ordercode.text ,
                                                      orderDate: orederDate2Controller.text,
                                                      table:table.isEmpty?[]:table,
                                                      vat: double.tryParse( vat.text),
                                                      actualCost:double.tryParse( actualcost.text),
                                                      variableAmount:double.tryParse( Variableamount.text) ,
                                                      discount:double.tryParse( discount.text) ,
                                                      unitCost:double.tryParse( unitcourse.text) ,
                                                      excisetax:double.tryParse( excesstax.text) ,
                                                      remarks: remarks.text ,
                                                      pageName: "GENERAL",
                                                    )),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                      PurchaseOrderGeneralStableTable(
                                         discount: discount,
                                        orderCode: ordercode,
                                        oderDate: orederDate2Controller,
                                        isVendorCheck: isVendorCheck,
                                        vendorCode: vendorCode,
                                        vendorName: vendorCodeName,
                                        vendorTrnNumber: vendortrnnumber,
                                        vendorEmail: vendor_email,
                                        promisedReceiptDate: promised_receipt_date,
                                        promisedReceiptDate2: promised_receipt_date2,
                                        plannedReceiptDate: planned_receipt_date,
                                        plannedReceiptDate2: planned_receipt_date2,
                                        paymentCode:Paymentcode,
                                        paymentStatus: Paymentstatus,
                                        orderStatus: orderStatus,
                                        receivingStatus: recievingstatus,
                                        invoiceStatus: invoicestatus,
                                        note: note,
                                        remarks: remarks,
                                        foc: foc,
                                        unitCost: unitcourse,
                                        vatableAmount: Variableamount,
                                        excessTax: excesstax,
                                        vat: vat,
                                        actualCost: actualcost,
                                        grandTotal: grandtotal,
                                        orderType: orderType,
                                        tableDatasClear:tableDatasClear,
                                      ),
                                      // Row(
                                      //   mainAxisAlignment: MainAxisAlignment.start,
                                      //   children: [
                                      //     Expanded(
                                      //       child: Container(
                                      //           child: Row(
                                      //             children: [
                                      //               Expanded(
                                      //                   child: Column(
                                      //                     mainAxisAlignment:
                                      //                     MainAxisAlignment.start,
                                      //                     children: [
                                      //
                                      //                       SelectableDropDownpopUp(
                                      //                         label: "Order Type",
                                      //
                                      //                         type:"sellingngPrice-basedOn",
                                      //                         value: purchaseUom,
                                      //                         onSelection: (String? va) {
                                      //                           print(
                                      //                               "+++++++++++++++++++++++");
                                      //                           //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                                      //                           setState(() {
                                      //                             purchaseUom = va;
                                      //
                                      //                             onChange = true;
                                      //                             orderType = va!;
                                      //                           });
                                      //                         },
                                      //
                                      //                         restricted: true,
                                      //                       ),
                                      //                       // NewInputCard(
                                      //                       //     controller: controller, title: "Order type"),
                                      //                       SizedBox(
                                      //                         height: height * .035,
                                      //                       ),
                                      //                       NewInputCard(
                                      //                         // colors: Colors.red,
                                      //                         controller: ordercode,
                                      //                         title: "Order Code",
                                      //                         readOnly: true,
                                      //                       ),
                                      //                       SizedBox(
                                      //                         height: height * .035,
                                      //                       ),
                                      //                       NewInputCard(
                                      //                         controller: orederDate2Controller,
                                      //                         title: "Order Date",
                                      //                         //label: "Place in setting",
                                      //                         readOnly: true,
                                      //                       ),
                                      //
                                      //                       SizedBox(
                                      //                         height: height * .035,
                                      //                       ),
                                      //
                                      //
                                      //                       isVendorCheck?       NewInputCard(
                                      //                         controller: vendorCode,
                                      //                         title: "Vendor Code",
                                      //                         //label: "Place in setting",
                                      //                         readOnly: true,
                                      //                       ):
                                      //                       NewInputCard(
                                      //                         controller: vendorCode,
                                      //                         icondrop: true,
                                      //                         title: "Vendor Code",
                                      //                         readOnly: true,
                                      //                         ontap: () {
                                      //                           if( vendorCode.text.isNotEmpty){
                                      //                             setState(() {
                                      //                               vendorCode.text = "";
                                      //                               vendorCodeName.text = "";
                                      //                               vendortrnnumber.text = "";
                                      //                               vendor_email = "";
                                      //                               tableDatasClear();
                                      //
                                      //                             });
                                      //                           }
                                      //                           else{
                                      //                             showDailogPopUp(
                                      //                               context,
                                      //                               TableConfigurePopup(type: "VendorDetails_Popup",
                                      //                                 valueSelect: (VendorDetailsModel va) {
                                      //                                   setState(() {
                                      //                                     vendorCode.text=va.manuFactureuserCode ?? "";
                                      //                                     vendorCodeName.text=va.manuFactureName ?? "";
                                      //                                     vendor_email=va?.email==""||va.email==null?va.alternativeEmail:va.email;
                                      //
                                      //                                     // vendoraddress.text=va.address.;
                                      //                                     vendortrnnumber.text=va.trnNumber.toString();
                                      //
                                      //                                     //                           setState(() {});ge = true;
                                      //                                     // orderType.text = va!;
                                      //                                   });
                                      //                                 },
                                      //                               ),
                                      //                             );
                                      //                           }
                                      //
                                      //                         },
                                      //                       ),
                                      //
                                      //
                                      //                       SizedBox(
                                      //                         height: height * .035,
                                      //                       ),
                                      //                       NewInputCard(
                                      //                           readOnly: true,
                                      //                           controller: vendortrnnumber,
                                      //                           title: "Vendor TRN Number"),
                                      //                       SizedBox(
                                      //                         height: height * .035,
                                      //                       ),
                                      //                       PopUpDateFormField(
                                      //                           format:DateFormat('dd-MM-yyyy'),
                                      //                           controller: promised_receipt_date2,
                                      //                           // initialValue:
                                      //                           //     DateTime.parse(fromDate!),
                                      //
                                      //                           label: "Promised Receipt Date",
                                      //                           onSaved: (newValue) {
                                      //                             promised_receipt_date2.text=   DateFormat('dd-MM-yyyy').format(newValue!);
                                      //
                                      //
                                      //
                                      //                             promised_receipt_date.text = newValue
                                      //                                 ?.toIso8601String()
                                      //                                 .split("T")[0] ??
                                      //                                 "";
                                      //                             print("promised_receipt_date.text"+promised_receipt_date.text.toString());
                                      //                           },
                                      //                           enable: true),
                                      //
                                      //                       SizedBox(
                                      //                         height: height * .035,
                                      //                       ),
                                      //
                                      //
                                      //
                                      //                       PopUpDateFormField(
                                      //                           format:DateFormat('dd-MM-yyyy'),
                                      //                           controller: planned_receipt_date2,
                                      //                           // initialValue:
                                      //                           //     DateTime.parse(fromDate!),
                                      //
                                      //                           label: "Planned Receipt Date",
                                      //                           onSaved: (newValue) {
                                      //                             planned_receipt_date2.text=   DateFormat('dd-MM-yyyy').format(newValue!);
                                      //                             planned_receipt_date.text = newValue
                                      //                                 ?.toIso8601String()
                                      //                                 .split("T")[0] ??
                                      //                                 "";
                                      //                             print("promised_receipt_date.text"+promised_receipt_date.text.toString());
                                      //                           },
                                      //                           enable: true),
                                      //
                                      //
                                      //
                                      //
                                      //                       SizedBox(
                                      //                         height: height * .093,
                                      //                       ),
                                      //                     ],
                                      //                   )),
                                      //               Expanded(
                                      //                   child: Column(
                                      //                     mainAxisAlignment: MainAxisAlignment.start,
                                      //                     children: [
                                      //                       // SizedBox(height: height*.032,),
                                      //
                                      //                       NewInputCard(
                                      //                           controller: Paymentcode,
                                      //                           title: "Payment Code",
                                      //                           readOnly: true),
                                      //                       SizedBox(
                                      //                         height: height * .035,
                                      //                       ),
                                      //                       NewInputCard(
                                      //                         controller: Paymentstatus,
                                      //                         title: "Payment Status",
                                      //                         readOnly: true,
                                      //                       ),
                                      //                       SizedBox(
                                      //                         height: height * .035,
                                      //                       ),
                                      //                       NewInputCard(
                                      //                         controller: orderStatus,
                                      //                         title: "Order Status",
                                      //                         readOnly: true,
                                      //                       ),
                                      //                       SizedBox(
                                      //                         height: height * .035,
                                      //                       ),
                                      //                       NewInputCard(
                                      //                         controller: Recievingstatus,
                                      //                         title: "Receiving Status",
                                      //                         readOnly: true,
                                      //                       ),
                                      //                       SizedBox(
                                      //                         height: height * .035,
                                      //                       ),
                                      //                       NewInputCard(
                                      //                         controller: invoicestatus,
                                      //                         title: "Invoice Status",
                                      //                         readOnly: true,
                                      //                       ),
                                      //                       SizedBox(
                                      //                         height: height * .035,
                                      //                       ),
                                      //                       NewInputCard(
                                      //                         controller: note,
                                      //                         title: "Note",
                                      //                         //label: "R/O",
                                      //                         height: 90,
                                      //                         maxLines: 3,
                                      //                       ),
                                      //                       SizedBox(
                                      //                         height: height * .035,
                                      //                       ),
                                      //                       NewInputCard(
                                      //                         controller: remarks,
                                      //                         title: "Remarks",
                                      //                         height: 90,
                                      //                         maxLines: 3,
                                      //                       ),
                                      //                       SizedBox(
                                      //                         height: height * .028,
                                      //                       ),
                                      //
                                      //
                                      //
                                      //
                                      //                     ],
                                      //                   )),
                                      //               Expanded(
                                      //                   child: Column(
                                      //                     mainAxisAlignment:
                                      //                     MainAxisAlignment.start,
                                      //                     children: [
                                      //
                                      //                       NewInputCard(
                                      //                         controller: discount,
                                      //                         title: "Discount",
                                      //                         readOnly: true,
                                      //                       ),
                                      //                       SizedBox(
                                      //                         height: height * .035,
                                      //                       ),
                                      //                       NewInputCard(
                                      //                         controller: foc,
                                      //                         title: "FOC",
                                      //                         readOnly: true,
                                      //                       ),
                                      //                       SizedBox(
                                      //                         height: height * .035,
                                      //                       ),
                                      //                       NewInputCard(
                                      //                         controller: unitcourse,
                                      //                         title: "Unit Cost",
                                      //                         readOnly: true,
                                      //                       ),
                                      //                       SizedBox(
                                      //                         height: height * .035,
                                      //                       ),
                                      //                       NewInputCard(
                                      //                           controller: Variableamount,
                                      //                           readOnly: true,
                                      //                           title: "Vatable Amount"),
                                      //                       SizedBox(
                                      //                         height: height * .035,
                                      //                       ),
                                      //                       NewInputCard(
                                      //                           controller: excesstax,
                                      //                           readOnly: true,
                                      //                           title: "Excess Tax"),
                                      //                       SizedBox(
                                      //                         height: height * .035,
                                      //                       ),
                                      //                       NewInputCard(
                                      //                         controller: vat,
                                      //                         title: "Vat",
                                      //                         readOnly: true,
                                      //                       ),
                                      //                       SizedBox(
                                      //                         height: height * .035,
                                      //                       ),
                                      //                       NewInputCard(
                                      //                         controller: actualcost,
                                      //                         title: "Actual Cost",
                                      //                         readOnly: true,
                                      //                       ),
                                      //                       SizedBox(
                                      //                         height: height * .035,
                                      //                       ),
                                      //                       NewInputCard(
                                      //                         controller: grandtotal,
                                      //                         title: "Grand Total",
                                      //                         readOnly: true,
                                      //                       ),
                                      //
                                      //                     ],
                                      //                   )),
                                      //             ],
                                      //           )),
                                      //     ),
                                      //   ],
                                      // ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height*.10,),
//                                 BlocBuilder<TableDetailsCubitDartCubit, TableDetailsCubitDartState>(
//
//                                   builder: (context, state) {
//
//                                     return Container(
//                                       // margin:  EdgeInsets.symmetric(horizontal:width *.0155 ),
//                                       child:
//                                       CustomScrollBar(
//                                         controller: controller,
//
//                                         childs: Container(
//                                           // margin:EdgeInsets.only(right: 14),
//
//                                           color: Colors.white,
//                                           alignment: Alignment.topRight,
//
//                                           // height: MediaQuery.of(context).size.height,
//                                           child: SingleChildScrollView(
//                                             controller: controller,
//                                             physics: ScrollPhysics(),
//                                             scrollDirection: Axis.horizontal,
//
//                                             child:   SingleChildScrollView(
//                                               child: Column(
//                                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                                 children: [
//
//                                                   SingleChildScrollView(
//
//                                                     child:
//                                                     Container(
//                                                       // height: 500,
//                                                       width: 2200,
//                                                       // padding: EdgeInsets.all(10),
//                                                       child: customTable(
//
//                                                         tableWidth: .5,
//                                                         childrens: [TableRow(
//
//                                                             children: [
//                                                               tableHeadtext(
//                                                                 'Sl.No',
//                                                                 size: 13,
//                                                                 center: true,
//                                                                 padding: EdgeInsets.only(bottom:height*.0198),
//                                                                 // color: Palette.containerDarknew,
//                                                                 // textColor: Palette.white,
//                                                               ),
//                                                               tableHeadtext(
//                                                                 'Variant Id',
//                                                                 size: 12,
//                                                                 // color: Palette.containerDarknew,
//                                                                 // textColor: Palette.white
//                                                               ),
//                                                               tableHeadtext(
//                                                                 'Variant Name',
//                                                                 size: 13,
//                                                                 // color: Palette.containerDarknew,
//                                                                 // textColor: Palette.white
//                                                               ),
//                                                               tableHeadtext(
//                                                                 'Vendor Ref Code',
//                                                                 size: 13,
//                                                                 // color: Palette.containerDarknew,
//                                                                 // textColor: Palette.white
//                                                               ),
//                                                               // tableHeadtext('description', size: 10, color: null),
//                                                               tableHeadtext(
//                                                                 'Barcode',
//                                                                 size: 13,
//                                                                 // color: Palette.containerDarknew,
//                                                                 // textColor: Palette.white
//                                                               ),
//                                                               tableHeadtext(
//                                                                 'Current Qty',
//                                                                 size: 13,
//                                                                 center: true,
//                                                                 padding: EdgeInsets.only(bottom:height*.0198),
//                                                                 // color: Palette.containerDarknew,
//                                                                 // textColor: Palette.white
//                                                               ),
//                                                               tableHeadtext(
//                                                                 'Purchase UOM',
//                                                                 size: 13,
//                                                                 // color: Palette.containerDarknew,
//                                                                 // textColor: Palette.white
//                                                               ),
//                                                               tableHeadtext(
//                                                                 'Requested qty',
//                                                                 center: true,
//                                                                 padding: EdgeInsets.only(bottom:height*.0198),
//
//
//                                                                 size: 13,
//                                                                 // color: Palette.containerDarknew,
//                                                                 // textColor: Palette.white
//                                                               ),
//                                                               tableHeadtext(
//                                                                 'Min Order Qty',
//                                                                 center: true,
//                                                                 padding: EdgeInsets.only(bottom:height*.0198),
//
//                                                                 size: 13,
//                                                                 // color: Palette.containerDarknew,
//                                                                 // textColor: Palette.white
//                                                               ),
//                                                               tableHeadtext(
//                                                                 'Max Order Qty',
//                                                                 center: true,
//                                                                 padding: EdgeInsets.only(bottom:height*.0198),
//
//
//                                                                 size: 13,
//                                                                 // color: Palette.containerDarknew,
//                                                                 // textColor: Palette.white
//                                                               ),
//                                                               tableHeadtext(
//                                                                 'Is Received',
//
//                                                                 size: 13,
//                                                                 // color: Palette.containerDarknew,
//                                                                 // textColor: Palette.white
//                                                               ),
//                                                               tableHeadtext(
//                                                                 'Unit Cost', size: 13,
//                                                                 center: true,
//                                                                 padding: EdgeInsets.only(bottom:height*.0198),
//                                                                 // color: Palette.containerDarknew,
//                                                                 // textColor: Palette.white
//                                                               ),
//                                                               tableHeadtext(
//                                                                 'Excise Tax', size: 13,
//                                                                 center: true,
//                                                                 padding: EdgeInsets.only(bottom:height*.0198),
//                                                                 // color: Palette.containerDarknew,
//                                                                 // textColor: Palette.white
//                                                               ),
//                                                               tableHeadtext(
//                                                                 'Discount',
//                                                                 size: 13,
//                                                                 center: true,
//                                                                 padding: EdgeInsets.only(bottom:height*.0198),
//                                                                 // color: Palette.containerDarknew,
//                                                                 // textColor: Palette.white
//                                                               ),
//                                                               tableHeadtext(
//                                                                 'FOC',
//                                                                 size: 13,
//                                                                 center: true,
//                                                                 padding: EdgeInsets.only(bottom:height*.0198),
//                                                                 // color: Palette.containerDarknew,
//                                                                 // textColor: Palette.white
//                                                               ),
//                                                               tableHeadtext(
//                                                                 'Vatable Amount',
//                                                                 center: true,
//                                                                 padding: EdgeInsets.only(bottom:height*.0198),
//
//                                                                 size: 13,
//                                                                 // color: Palette.containerDarknew,
//                                                                 // textColor: Palette.white
//                                                               ),
//
//                                                               tableHeadtext(
//                                                                 'VAT',
//                                                                 center: true,
//                                                                 padding: EdgeInsets.only(bottom:height*.0198),
//
//
//                                                                 size: 13,
//                                                                 // color: Palette.containerDarknew,
//                                                                 // textColor: Palette.white
//                                                               ),
//                                                               tableHeadtext(
//                                                                 'Actual Cost',
//                                                                 center: true,
//                                                                 padding: EdgeInsets.only(bottom:height*.0198),
//
//
//                                                                 size: 13,
//                                                                 // color: Palette.containerDarknew,
//                                                                 // textColor: Palette.white
//                                                               ),
//                                                               tableHeadtext(
//                                                                 'Grand Total',
//                                                                 center: true,
//                                                                 padding: EdgeInsets.only(bottom:height*.0198),
//
//
//                                                                 size: 13,
//                                                                 // color: Palette.containerDarknew,
//                                                                 // textColor: Palette.white
//                                                               ),
//                                                               tableHeadtext(
//                                                                 'Is Invoiced',
//
//
//                                                                 size: 13,
//                                                                 // color: Palette.containerDarknew,
//                                                                 // textColor: Palette.white
//                                                               ),
//                                                               tableHeadtext(
//                                                                 'Is Active',
//
//
//                                                                 size: 13,
//                                                                 // color: Palette.containerDarknew,
//                                                                 // textColor: Palette.white
//                                                               ),
//                                                               tableHeadtext(
//                                                                 '',
//
//                                                                 size: 13,
//                                                               ),
//
//                                                             ]),
//
//                                                           if (table != null)...[
//                                                             for (var i = 0; i < table.length; i++)
//                                                               TableRow(
//                                                                   decoration: BoxDecoration(
//                                                                       color: Pellet.tableRowColor,
//                                                                       shape: BoxShape.rectangle,
//                                                                       border:  Border(
//                                                                           left: BorderSide(
//
//                                                                               color: Color(0xff3E4F5B).withOpacity(.1),
//                                                                               width: .4,
//                                                                               style: BorderStyle.solid),
//                                                                           bottom: BorderSide(
//
//                                                                               color:   Color(0xff3E4F5B).withOpacity(.1),
//                                                                               style: BorderStyle.solid),
//                                                                           right: BorderSide(
//                                                                               color:   Color(0xff3E4F5B).withOpacity(.1),
//                                                                               width: .4,
//
//                                                                               style: BorderStyle.solid))),
//                                                                   children: [
//                                                                     TableCell(
//                                                                       verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                       child: textPadding((i + 1).toString(),
//                                                                           padding: EdgeInsets.only(left: 11.5,
//                                                                           ), fontWeight: FontWeight.w500),
//                                                                     ),
//                                                                     // TableCell(
//                                                                     //   verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                     //   child: PopUpCall(
//                                                                     //     vendorId: vendorCode.text,
//                                                                     //     type: "cost-method-list",
//                                                                     //     value: table[i].variantId,
//                                                                     //     onSelection: (VariantId? va) {
//                                                                     //       updateCheck=true;
//                                                                     //
//                                                                     //       table[i] = table[i].copyWith(updateCheck: true);
//                                                                     //
//                                                                     //       table[i] =
//                                                                     //           table[i]
//                                                                     //               .copyWith(
//                                                                     //
//                                                                     //               variantId: va?.code,
//                                                                     //              );
//                                                                     //
//                                                                     //       // table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,minimumQty:table[i].minimumQty,maximumQty:table[i].minimumQty,requestedQty: 0,
//                                                                     //       //     variableAmount: table[i].variableAmount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
//                                                                     //       //     ,unitCost: table[i].unitCost,foc: table[i].foc,grandTotal: table[i].grandTotal,actualCost: table[i].actualCost,variantId: va?.code,purchaseuom: table[i].purchaseuom,discount: table[i].discount
//                                                                     //       // )]);
//                                                                     //       setState(() {
//                                                                     //         var    variantId1 = va?.code;
//                                                                     //         int? id = va!.id;
//                                                                     //         Variable.tableindex =i;
//                                                                     //         stockCheck=true;
//                                                                     //         Variable.tableedit=true;
//                                                                     //         onChange = true;
//                                                                     //         context.read<TableDetailsCubitDartCubit>().getTableDetails(id);
//                                                                     //         context.read<PurchaseStockCubit>().getCurrentStock(inventoryId.text,variantId1);
//                                                                     //
//                                                                     //       });
//                                                                     //     },
//                                                                     //   ),
//                                                                     // ),
//                                                                     TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                         child:
//                                                                         VariantIdTAble(
//                                                                           text:table[i].variantId.toString() ,
//                                                                           onTap: (){
//                                                                             showDailogPopUp(
//                                                                               context,
//                                                                               TableConfigurePopup(
//                                                                                 vendorId: vendorCode.text,
//                                                                                 type: "variantTabalePopup",
//                                                                                 valueSelect: (VariantId? va) {
//                                                                                   updateCheck=true;
//
//                                                                                   table[i] = table[i].copyWith(updateCheck: true);
//
//                                                                                   table[i] =
//                                                                                       table[i]
//                                                                                           .copyWith(
//
//                                                                                         variantId: va?.code,
//                                                                                       );
//
//                                                                                   // table.replaceRange(i, (i+1), [OrderLines(isRecieved: table[i].isRecieved,isActive:table[i].isActive ,minimumQty:table[i].minimumQty,maximumQty:table[i].minimumQty,requestedQty: 0,
//                                                                                   //     variableAmount: table[i].variableAmount,vat: table[i].vat,currentQty: table[i].currentQty,variantName: table[i].variantName,barcode: table[i].barcode,excessTax: table[i].excessTax,supplierCode: table[i].supplierCode
//                                                                                   //     ,unitCost: table[i].unitCost,foc: table[i].foc,grandTotal: table[i].grandTotal,actualCost: table[i].actualCost,variantId: va?.code,purchaseuom: table[i].purchaseuom,discount: table[i].discount
//                                                                                   // )]);
//                                                                                   setState(() {
//                                                                                     var    variantId1 = va?.code;
//                                                                                     int? id = va!.id;
//                                                                                     Variable.tableindex =i;
//                                                                                     stockCheck=true;
//                                                                                     Variable.tableedit=true;
//                                                                                     onChange = true;
//                                                                                     context.read<TableDetailsCubitDartCubit>().getTableDetails(id);
//                                                                                     context.read<PurchaseStockCubit>().getCurrentStock(inventoryId.text,variantId1);
//
//                                                                                   });
//                                                                                 },
//                                                                               ),
//                                                                             );
//                                                                           },
//                                                                         )
//
//
//                                                                       // textPadding(
//                                                                       //     table[i].variantName??"",
//                                                                       //      padding: EdgeInsets.only(left: 11.5,), fontWeight: FontWeight.w500),
//                                                                     ),
//                                                                     TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                       child: textPadding(
//                                                                           table[i].variantName??"",
//                                                                           // padding: EdgeInsets.only(left: 11.5,),
//                                                                           fontWeight: FontWeight.w500
//                                                                       ),
//                                                                     ),
//                                                                     TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                       child: textPadding(table[i].supplierCode.toString(),
//                                                                           // padding: EdgeInsets.only(left: 11.5, ),
//                                                                           fontWeight: FontWeight.w500),
//                                                                     ),
//                                                                     TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                       child: textPadding(table[i].barcode??"",
//                                                                           // padding: EdgeInsets.only(left: 11.5, ),
//                                                                           fontWeight: FontWeight.w500),
//                                                                     ),
//
//                                                                     TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                       child: textPadding(currentStock.length!=table.length?"": currentStock[i].toString(),
//                                                                           alighnment: Alignment.topRight,
//                                                                           // padding: EdgeInsets.only(left: 11.5, ),
//                                                                           fontWeight: FontWeight.w500),
//                                                                     ),
//                                                                     TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                       child: textPadding(table[i].purchaseUom??"",
//                                                                           // padding: EdgeInsets.only(left: 11.5, ),
//                                                                           fontWeight: FontWeight.w500),
//                                                                     ),
//                                                                     //88888888888888888888                                   //**********************************************
//                                                                     TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                       child: UnderLinedInput(controller:requestedListControllers[i],
//                                                                           integerOnly: true,
//
//
//                                                                           onChanged: (va) {print(va);
//                                                                           updateCheck=true;
//                                                                           table[i] = table[i].copyWith(updateCheck: true);
//                                                                           setState(() {
//
//                                                                           });
//                                                                           if (va == "") {
//                                                                             print("entered");
//                                                                             table[i] = table[i].copyWith(requestedQty: 0, vatableAmount: 0, actualCost: 0, grandTotal: 0);
//                                                                           } else {
//                                                                             var qty = int.tryParse(va);
//                                                                             var dis = table[i].discount;
//                                                                             var excess = table[i].excessTax;
//                                                                             var unitcost = table[i].unitCost;
//                                                                             var vat = table[i].vat;
//                                                                             var foc = table[i].foc;
//                                                                             if (qty == 0 || unitcost == 0 ||unitcost=="") {
//                                                                               table[i] = table[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0);
//                                                                             }else {
//                                                                               var Vamount;
//                                                                               var vactualCost;
//                                                                               Vamount=vatableAmountUpdation(unitcost,qty,excess,dis);
//
//                                                                               // Vamount  = (((unitcost! *
//                                                                               // qty!) +
//                                                                               // excess!) -
//                                                                               // dis!)
//                                                                               //     .toDouble();
//                                                                               if(vat==0 ||vat==""){
//                                                                                 vactualCost=Vamount;
//                                                                               }
//                                                                               else{
//                                                                                 vactualCost=actualAndgrandTotalUpdation(Vamount,vat);
//                                                                                 // vactualCost  = (Vamount! +
//                                                                                 // ((Vamount! *
//                                                                                 // vat!) /
//                                                                                 // 100));
//                                                                               }
//                                                                               table[i] =
//                                                                                   table[i].copyWith(
//                                                                                     vatableAmount: Vamount,
//                                                                                     actualCost: vactualCost,
//                                                                                     grandTotal: vactualCost, requestedQty:qty ,
//
//                                                                                   );
//
//
//
//                                                                             }
//
//
//
//                                                                           }
//
//
//                                                                           setState(() {});}
//                                                                       ),
//                                                                     ),
//                                                                     TableCell(
//                                                                       verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                       child: UnderLinedInput(
//                                                                         //last:table[i].minimumQty.toString(),
//                                                                         controller:minListControllers[i],
//                                                                         onChanged: (p0) {
//                                                                           updateCheck=true;
//                                                                           table[i] = table[i].copyWith(updateCheck: true);
//                                                                           setState(() {
//                                                                           });
//                                                                           print(p0);
//                                                                           if(p0==""||p0=="0"){
//                                                                             setState(() {
//                                                                               table[i] = table[i].copyWith(minimumQty: 0);
//
//                                                                             });
//                                                                           }
//                                                                           else{
//                                                                             setState(() {
//                                                                               table[i] = table[i].copyWith(minimumQty:int.tryParse(p0));
//                                                                             });
//                                                                           }
//                                                                         },
//                                                                         enable: true,
//                                                                         onComplete: () {
//                                                                           setState(() {  print("maxxxx"+table.toString());});
//                                                                         },
//                                                                       ),
//                                                                     ),
//                                                                     TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                       child: UnderLinedInput(controller:maxListControllers[i],
//                                                                         onChanged: (p0) {
//                                                                           updateCheck=true;
//                                                                           table[i] = table[i].copyWith(updateCheck: true);
//                                                                           setState(() {
//                                                                           });
//                                                                           if(p0==""){
//                                                                             table[i] = table[i].copyWith(maximumQty: 0);
//                                                                             setState(() {
//
//                                                                             });
//
//                                                                           }
//                                                                           else{
//                                                                             setState(() {
//                                                                               table[i] = table[i].copyWith(maximumQty:int.tryParse(p0));
//
//                                                                             });
//                                                                           }
//
//                                                                         },
//                                                                         enable: true,
//                                                                         onComplete: () {
//
//                                                                           setState(() {  print("maxxxx"+table.toString());});
//                                                                         },
//                                                                       ),
//                                                                     ),
//                                                                     TableCell(
//                                                                       verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                       child: CheckedBoxs(
//
//                                                                         valueChanger:table[i].isRecieved==null?false: table[i].isRecieved,
//
//
//                                                                         onSelection: (bool? value) {  },
//
//                                                                       ),
//                                                                     ),
//
//                                                                     TableCell(
//                                                                       verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                       child: UnderLinedInput(
//                                                                         controller:unitcostListControllers[i],
//                                                                         // last: table[i].unitCost.toString() ?? "",
//                                                                         onChanged: (va) {
//                                                                           updateCheck=true;
//                                                                           table[i] = table[i].copyWith(updateCheck: true);
//                                                                           setState(() {
//
//                                                                           });
//                                                                           double? unitcost;
//                                                                           if (va == "") {
//                                                                             print("entered");
//                                                                             unitcost = 0;
//                                                                             print("disc" + unitcost.toString());
//                                                                             table[i] = table[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
//                                                                             setState(() {});
//                                                                           }
//                                                                           unitcost = double.tryParse(va);
//
//
//                                                                           var qty = table[i].requestedQty;
//                                                                           print("qty" + qty.toString());
//                                                                           var excess = table[i].excessTax;
//                                                                           print("excess" + excess.toString());
//                                                                           var disc = table[i].discount;
//                                                                           var foc=table[i].foc;
//
//                                                                           var vat = table[i].vat;
//                                                                           print("vat" + vat.toString());
//                                                                           print("qty" + qty.toString());
//                                                                           if (qty == 0 || qty == null) {
//                                                                             print("checking case");
//
//                                                                             table[i] = table[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
//                                                                             setState(() {});
//                                                                           } else {
//                                                                             double Vamount;
//                                                                             Vamount  =vatableAmountUpdation(unitcost,qty,excess,disc);
//                                                                             // double.parse((((unitcost! * qty!) + excess!) - disc!).toDouble().toStringAsFixed(2));
//
//
//
//                                                                             var vactualCost =actualAndgrandTotalUpdation(Vamount,vat);
//                                                                             // (Vamount! +
//                                                                             //     ((Vamount! *
//                                                                             //         vat!) /
//                                                                             //         100));
//
//                                                                             table[i] =
//                                                                                 table[i].copyWith(
//                                                                                     vatableAmount: Vamount,
//                                                                                     actualCost: vactualCost,
//                                                                                     grandTotal: vactualCost,
//                                                                                     unitCost: unitcost);
//                                                                             setState(() {});
//
//                                                                           }
//                                                                         },
//                                                                       ),
//                                                                     ),
//
//
//
//                                                                     //Excess tax***********************************Excesstax***********************************************************************
//                                                                     excesstListControllers.isNotEmpty?
//                                                                     TableCell(
//                                                                       verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                       child: UnderLinedInput(
//
//                                                                         controller:excesstListControllers[i],
//                                                                         // last: table[i].excessTax.toString() ?? "",
//                                                                         onChanged: (va) {
//                                                                           updateCheck=true;
//                                                                           table[i] = table[i].copyWith(updateCheck: true);
//                                                                           setState(() {
//
//                                                                           });
//                                                                           double? excess;
//                                                                           if (va == "") {
//                                                                             excess = 0;
//                                                                             setState(() {});
//                                                                           } else {
//                                                                             excess = double.tryParse(va);
//                                                                             setState(() {});
//                                                                           }
//
//                                                                           var qty = table[i].requestedQty;
//                                                                           var vat = table[i].vat;
//                                                                           var foc = table[i].foc;
//
//                                                                           print("excess" + excess.toString());
//                                                                           var unitcost = table[i].unitCost;
//                                                                           print("unitcost" + unitcost.toString());
//                                                                           var Vdiscount = table[i].discount;
//                                                                           if(qty==0 || unitcost==0){
//                                                                             table[i] = table[i].copyWith(actualCost: 0, grandTotal: 0, vatableAmount: 0, excessTax: excess);
//                                                                             setState(() {
//
//                                                                             });
//
//                                                                           }else {
//                                                                             var Vamount;
//
//
//                                                                             Vamount =vatableAmountUpdation(unitcost,qty,excess,Vdiscount);
//                                                                             // (((unitcost! *
//                                                                             //     qty!) +
//                                                                             //     excess!) -
//                                                                             //     Vdiscount!)
//                                                                             //     .toDouble();
//
//                                                                             var vactualCost =actualAndgrandTotalUpdation(Vamount,vat);
//                                                                             // (Vamount! +
//                                                                             //     ((Vamount! *
//                                                                             //         vat!) /
//                                                                             //         100));
//                                                                             var Vgrnadtotal =actualAndgrandTotalUpdation(Vamount,vat);
//                                                                             // (Vamount! +
//                                                                             //     ((Vamount! *
//                                                                             //         vat!) /
//                                                                             //         100));
//                                                                             table[i] =
//                                                                                 table[i]
//                                                                                     .copyWith(
//                                                                                     actualCost: vactualCost,
//                                                                                     grandTotal: Vgrnadtotal,
//                                                                                     vatableAmount: Vamount,
//                                                                                     excessTax: excess);
//                                                                             setState(() {});
//                                                                           } },
//                                                                       ),
//                                                                     ):
//                                                                     TableCell(
//
//                                                                       verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                       child: UnderLinedInput(
//
//                                                                         // controller:excesstListControllers[i],
//                                                                         // last: table[i].excessTax.toString() ?? "",
//                                                                         onChanged: (va) {
//                                                                           updateCheck=true;
//                                                                           table[i] = table[i].copyWith(updateCheck: true);
//                                                                           setState(() {
//
//                                                                           });
//                                                                           double? excess;
//                                                                           if (va == "") {
//                                                                             excess = 0;
//                                                                             setState(() {});
//                                                                           } else {
//                                                                             excess = double.tryParse(va);
//                                                                             setState(() {});
//                                                                           }
//
//                                                                           var qty = table[i].requestedQty;
//                                                                           var vat = table[i].vat;
//                                                                           var foc = table[i].foc;
//
//                                                                           print("excess" + excess.toString());
//                                                                           var unitcost = table[i].unitCost;
//                                                                           print("unitcost" + unitcost.toString());
//                                                                           var Vdiscount = table[i].discount;
//                                                                           if(qty==0 || unitcost==0){
//                                                                             table[i] = table[i].copyWith(actualCost: 0, grandTotal: 0, vatableAmount: 0, excessTax: excess);
//                                                                             setState(() {
//
//                                                                             });
//
//                                                                           }else {
//                                                                             var Vamount;
//
//
//                                                                             Vamount =
//                                                                                 (((unitcost! *
//                                                                                     qty!) +
//                                                                                     excess!) -
//                                                                                     Vdiscount!)
//                                                                                     .toDouble();
//
//                                                                             var vactualCost = (Vamount! +
//                                                                                 ((Vamount! *
//                                                                                     vat!) /
//                                                                                     100));
//                                                                             var Vgrnadtotal = (Vamount! +
//                                                                                 ((Vamount! *
//                                                                                     vat!) /
//                                                                                     100));
//                                                                             table[i] =
//                                                                                 table[i]
//                                                                                     .copyWith(
//                                                                                     actualCost: vactualCost,
//                                                                                     grandTotal: Vgrnadtotal,
//                                                                                     vatableAmount: Vamount,
//                                                                                     excessTax: excess);
//                                                                             setState(() {});
//                                                                           } },
//                                                                       ),
//                                                                     ),
//                                                                     //****************************************DISCOUNT***************************DISCOUNT*********************************
//                                                                     // tableEdit==true?
//                                                                     TableCell(
//                                                                       verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                       child: UnderLinedInput(
//                                                                         controller:discounttListControllers[i],
//                                                                         // last: table[i].discount.toString() ?? "",
//                                                                         onChanged: (va) {
//                                                                           updateCheck=true;
//                                                                           table[i] = table[i].copyWith(updateCheck: true);
//                                                                           setState(() {
//
//                                                                           });
//                                                                           double? disc;
//                                                                           if (va ==
//                                                                               "") {
//
//                                                                             disc =
//                                                                             0;
//
//                                                                           } else {
//                                                                             disc =
//                                                                                 double
//                                                                                     .tryParse(
//                                                                                     va);
//
//                                                                           }
//                                                                           var qty = table[i].requestedQty;
//                                                                           var excess = table[i].excessTax;
//                                                                           var unitcost = table[i]
//                                                                               .unitCost;
//                                                                           var vat = table[i].vat;
//                                                                           var foc = table[i].foc;
//
//                                                                           if (unitcost ==
//                                                                               0 ||
//                                                                               qty ==
//                                                                                   0) {
//                                                                             table[i] =
//                                                                                 table[i]
//                                                                                     .copyWith(
//                                                                                     vatableAmount: 0,
//                                                                                     actualCost: 0,
//                                                                                     grandTotal: 0,
//                                                                                     discount: disc);
//                                                                           }
//
//                                                                           else {
//
//                                                                             var Vamount =vatableAmountUpdation(unitcost,qty,excess,disc);
//                                                                             // (((unitcost! *
//                                                                             //     qty!) +
//                                                                             //     excess!) -
//                                                                             //     disc!)
//                                                                             //     .toDouble();
//                                                                             print(
//                                                                                 "Vamount" +
//                                                                                     Vamount
//                                                                                         .toString());
//
//                                                                             var vactualCost =actualAndgrandTotalUpdation(Vamount,vat);
//                                                                             // (Vamount! +
//                                                                             //     ((Vamount! *
//                                                                             //         vat!) /
//                                                                             //         100));
//                                                                             print(
//                                                                                 "vactualCost" +
//                                                                                     vactualCost
//                                                                                         .toString());
//                                                                             table[i] =
//                                                                                 table[i]
//                                                                                     .copyWith(
//                                                                                     vatableAmount: Vamount,
//                                                                                     actualCost: vactualCost,
//                                                                                     grandTotal: vactualCost,
//                                                                                     discount: disc);
//                                                                             setState(() {});
//
//                                                                           }
//
//                                                                         }
//                                                                         ,
//
//                                                                       ),
//                                                                     ),
//
//
//
//                                                                     TableCell(
//                                                                       verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                       child: UnderLinedInput(
//                                                                         controller:focListControllers[i],
//                                                                         // last: table[i].foc.toString(),
//
//                                                                         onChanged: (p0) {
//                                                                           updateCheck=true;
//                                                                           table[i] = table[i].copyWith(updateCheck: true);
//                                                                           setState(() {
//
//                                                                           });
//
//                                                                           print(p0);
//                                                                           if(p0==""){
//                                                                             table[i] = table[i].copyWith(foc:0);
//                                                                             setState(() {
//
//                                                                             });
//
//                                                                           }
//                                                                           else{
//                                                                             table[i] = table[i].copyWith(foc:double.tryParse(p0));
//                                                                             setState(() {
//
//                                                                             });
//                                                                           }
//
//
//
//
//                                                                         },
//                                                                         enable: true,
//                                                                         onComplete: () {
//
//                                                                           setState(() {  print("maxxxx"+table.toString());});
//                                                                         },
//                                                                       ),
//                                                                     ),
//
//                                                                     TableCell(
//                                                                       verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                       child: textPadding(
//                                                                           table[i].vatableAmount.toString(),
//                                                                           alighnment: Alignment.topRight,
//                                                                           fontWeight: FontWeight
//                                                                               .w500),
//                                                                     ),
//                                                                     TableCell(
//                                                                       verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                       child: textPadding(
//                                                                           table[i].vat.toString(),
//                                                                           alighnment: Alignment.topRight,
//                                                                           fontWeight:
//                                                                           FontWeight.w500),
//                                                                     ),
//
//                                                                     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$  vat   **************************
//
//                                                                     // TableCell(
//                                                                     //   verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                     //   child: UnderLinedInput(
//                                                                     //     controller: vatListControllers[i],
//                                                                     //     // last: table[i].vat.toString() ?? "",
//                                                                     //     onChanged: (va) {
//                                                                     //       updateCheck=true;
//                                                                     //       table[i] = table[i].copyWith(updateCheck: true);
//                                                                     //       setState(() {
//                                                                     //
//                                                                     //       });
//                                                                     //       if (va == "") {
//                                                                     //         print("sss");
//                                                                     //         var vatableAmount = table[i].variableAmount;
//                                                                     //         table[i] = table[i].copyWith(actualCost: vatableAmount, grandTotal: vatableAmount, vat: 0);
//                                                                     //         setState(() {});
//                                                                     //       } else {
//                                                                     //         var vat = double.tryParse(va);
//                                                                     //         var Vamount = table[i].variableAmount;
//                                                                     //         print("qty" + Vamount.toString());
//                                                                     //         var excess = table[i].excessTax;
//                                                                     //         print("excess" + excess.toString());
//                                                                     //         var unitcost = table[i].unitCost;
//                                                                     //         var qty = table[i].requestedQty;
//                                                                     //         var foc = table[i].foc;
//                                                                     //         var dis = table[i].discount;
//                                                                     //         print("unitcost" + unitcost.toString());
//                                                                     //         if(unitcost==0 || qty==0){
//                                                                     //           table[i] = table[i].copyWith(actualCost: 0, grandTotal: 0, vat: vat);
//                                                                     //
//                                                                     //         }else{
//                                                                     //
//                                                                     //           var Vamount = (((unitcost! *
//                                                                     //               qty!) +
//                                                                     //               excess!) -
//                                                                     //               dis!)
//                                                                     //               .toDouble();
//                                                                     //           var vactualCost = (Vamount! +
//                                                                     //               ((Vamount! *
//                                                                     //                   vat!) /
//                                                                     //                   100));
//                                                                     //           var Vgrnadtotal = (Vamount! +
//                                                                     //               ((Vamount! *
//                                                                     //                   vat!) /
//                                                                     //                   100));
//                                                                     //           table[i] =
//                                                                     //               table[i]
//                                                                     //                   .copyWith(
//                                                                     //                   variableAmount: Vamount,
//                                                                     //                   actualCost: vactualCost,
//                                                                     //                   grandTotal: Vgrnadtotal,
//                                                                     //                   vat: vat);
//                                                                     //           setState(() {});
//                                                                     //
//                                                                     //         }}
//                                                                     //     },
//                                                                     //   ),
//                                                                     // ),
//
//                                                                     TableCell(
//                                                                       verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                       child: textPadding(
//                                                                           table[i]
//                                                                               .actualCost
//                                                                               .toString(),
//                                                                           padding: EdgeInsets
//                                                                               .only(
//                                                                             left:
//                                                                             11.5,
//                                                                           ),
//                                                                           alighnment: Alignment.topRight,
//                                                                           fontWeight:
//                                                                           FontWeight
//                                                                               .w500),
//                                                                     ),
//                                                                     TableCell(
//                                                                       verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                       child: textPadding(
//                                                                           table[i]
//                                                                               .grandTotal
//                                                                               .toString(),
//                                                                           padding: EdgeInsets
//                                                                               .only(
//                                                                             left:
//                                                                             11.5,
//                                                                           ),
//                                                                           alighnment: Alignment.topRight,
//                                                                           fontWeight:
//                                                                           FontWeight
//                                                                               .w500),
//                                                                     ),
//                                                                     TableCell(
//                                                                       verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                       child: CheckedBoxs(
//                                                                           valueChanger:table[i]
//                                                                               .isRecieved==null?false:table[i].isRecieved,
//
//                                                                           onSelection:(bool ? value){
//
//                                                                           }),
//                                                                     ),
//                                                                     // Checkbox(
//                                                                     //   value: table[i]
//                                                                     //       .isRecieved==null?false:table[i]
//                                                                     //       .isRecieved,
//                                                                     //   onChanged: (bool?
//                                                                     //       value) {
//                                                                     //     setState(() {
//                                                                     //       // this.isRecieved =
//                                                                     //       //     value;
//                                                                     //     });
//                                                                     //   },
//                                                                     // ),
//                                                                     TableCell(
//                                                                       verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                       child: CheckedBoxs(
//                                                                           valueChanger:table[i]
//                                                                               .isActive==null?false:table[i].isActive,
//
//                                                                           onSelection:(bool ? value){
//                                                                             bool? isActive = table[i].isActive;
//                                                                             setState(() {
//                                                                               updateCheck=true;
//                                                                               table[i] = table[i].copyWith(updateCheck: true);
//                                                                               setState(() {
//
//                                                                               });
//                                                                               isActive = !isActive!;
//                                                                               table[i] = table[i].copyWith(isActive: isActive);
//                                                                               print(isInvoiced);
//                                                                               setState(() {});
//                                                                             });
//                                                                           }),
//                                                                     ),
//                                                                     TableCell(
//                                                                       verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                       child: TableTextButton(
//                                                                         textColor:  table?[i].updateCheck==true?Pellet.bagroundColor:Colors.black,
//                                                                         bagroundColor: table?[i].updateCheck==true?Pellet.tableBlueHeaderPrint:Colors.transparent,
//
//                                                                         onPress: () {
//                                                                           var Vamount = table[i].vatableAmount??0;
//                                                                           var variant = table[i].variantId??0;
//                                                                           var mins = table[i].minimumQty??0;
//                                                                           var maxs = table[i].maximumQty??0;
//
//                                                                           var excess = table[i].excessTax??0;
//                                                                           print("excess" + excess.toString());
//                                                                           var unitcosts = table[i].unitCost??0;
//                                                                           var qty = table[i].requestedQty??0;
//                                                                           var foc = table[i].foc??0;
//                                                                           var dis = table[i].discount??0;
//                                                                           if(variant=="null"||unitcosts==0){
//                                                                             context.showSnackBarError("please fill all the fields");
//                                                                           }
//                                                                           else if(qty==0||qty==""){
//                                                                             context.showSnackBarError(
//                                                                                 "the requested quantity not be 0 or empty");
//                                                                           }
//                                                                           else if(qty!<foc!){
//                                                                             context.showSnackBarError("the received qty allways greater than  foc");
//
//                                                                           }
//                                                                           else if(mins>maxs){
//                                                                             context.showSnackBarError("the minimum qty  allways less than than  maximum qty");
//                                                                           }
//                                                                           else{
//
//                                                                             table[i] = table[i].copyWith(updateCheck: false);
//                                                                             vendorCheckFunc();
//                                                                             addition();
//                                                                             setState(() {
//
//                                                                             });
//                                                                             updateCheck=false;
//                                                                             // focValue=0;
//                                                                             // excessTAxValue=0;
//                                                                             // Vdiscount = 0;
//                                                                             // Vamount = 0;
//                                                                             // Vgrnadtotal = 0;
//                                                                             // vactualCost = 0;
//                                                                             // unitcost = 0;
//                                                                             // grands = 0;
//                                                                             // actualValue = 0;
//                                                                             // VatableValue = 0;
//                                                                             // discountValue = 0;
//                                                                             // vatValue = 0;
//                                                                             setState(() {});
//                                                                           }
//                                                                         },
//                                                                         label:table?[i].updateCheck==true?"update":"",
//                                                                       ),
//                                                                     ),
//                                                                   ]),],
// //********************************************************************************************************************
//                                                           TableRow(
//                                                               decoration: BoxDecoration(
//                                                                   color: Pellet.tableRowColor,
//                                                                   shape: BoxShape.rectangle,
//                                                                   border:  Border(
//                                                                       left: BorderSide(
//
//                                                                           color: Color(0xff3E4F5B).withOpacity(.1),
//                                                                           width: .4,
//                                                                           style: BorderStyle.solid),
//                                                                       bottom: BorderSide(
//
//                                                                           color:   Color(0xff3E4F5B).withOpacity(.1),
//                                                                           style: BorderStyle.solid),
//                                                                       right: BorderSide(
//                                                                           color:   Color(0xff3E4F5B).withOpacity(.1),
//                                                                           width: .4,
//
//                                                                           style: BorderStyle.solid))),
//                                                               children: [
//                                                                 TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                   child: textPadding((table.length + 1).toString(), fontSize: 12,
//                                                                       padding: EdgeInsets.only(left: 11.5, top: 11.5), fontWeight: FontWeight.w500),
//                                                                 ),
//                                                                 TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                     child:
//                                                                     VariantIdTAble(
//                                                                       text:variantId.toString(),
//                                                                       onTap: (){
//                                                                         showDailogPopUp(
//                                                                           context,
//                                                                           TableConfigurePopup(
//                                                                             vendorId: vendorCode.text,
//                                                                             type: "variantTabalePopup",
//                                                                             valueSelect: (VariantId? va) {
//                                                                               setState(() {
//                                                                                 stockCheck=true;
//                                                                                 variantId = va?.code;
//                                                                                 print("idssss"+variantId.toString());
//                                                                                 int? id = va!.id;
//                                                                                 print("idssss"+id.toString());
//                                                                                 Variable.tableedit=false;
//                                                                                 onChange = true;
//                                                                                 context.read<TableDetailsCubitDartCubit>().getTableDetails(id);
//                                                                                 context.read<PurchaseStockCubit>().getCurrentStock(inventoryId.text,variantId);
//                                                                                 print("the testing thing$check");
//
//
//
//                                                                               });
//                                                                             },
//                                                                           ),
//                                                                         );
//                                                                       },
//                                                                     )
//                                                                   // PopUpCall(
//                                                                   //   vendorId: vendorCode.text,
//                                                                   //   type: "cost-method-list",
//                                                                   //   value: variantId,
//                                                                   //   onSelection: (VariantId? va) {
//                                                                   //     setState(() {
//                                                                   //       stockCheck=true;
//                                                                   //       variantId = va?.code;
//                                                                   //       print("idssss"+variantId.toString());
//                                                                   //       int? id = va!.id;
//                                                                   //       print("idssss"+id.toString());
//                                                                   //       Variable.tableedit=false;
//                                                                   //       onChange = true;
//                                                                   //       context.read<TableDetailsCubitDartCubit>().getTableDetails(id);
//                                                                   //       context.read<PurchaseStockCubit>().getCurrentStock(inventoryId.text,variantId);
//                                                                   //       print("the testing thing$check");
//                                                                   //
//                                                                   //
//                                                                   //
//                                                                   //     });
//                                                                   //   },
//                                                                   // ),
//                                                                 ),
//                                                                 TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                   child: textPadding(varinatname??"",
//                                                                       // padding: EdgeInsets.only(left: 11.5, ),
//                                                                       fontWeight: FontWeight.w500),
//                                                                 ),
//                                                                 TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                   child: textPadding(vendorRefCode??"",
//                                                                       // padding: EdgeInsets.only(left: 11.5,),
//                                                                       fontWeight: FontWeight.w500),
//                                                                 ),
//                                                                 TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                   child: textPadding(Vbarcode.toString(),
//                                                                       // padding: EdgeInsets.only(left: 11.5, ),
//                                                                       fontWeight: FontWeight.w500),
//                                                                 ),
//                                                                 TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                   child: textPadding(stockQty.toString(),
//                                                                       padding: EdgeInsets.only(left: 11.5, ),
//                                                                       alighnment: Alignment.topRight,
//                                                                       fontWeight: FontWeight.w500),
//                                                                 ),
//                                                                 TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                   child: textPadding(check1??"",
//                                                                       // padding: EdgeInsets.only(left: 11.5, ),
//                                                                       fontWeight: FontWeight.w500),
//                                                                 ),
//                                                                 TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                   child: UnderLinedInput(controller:requestedtTestContoller ,
//                                                                     integerOnly: true,
//                                                                     onChanged: (p0) {
//                                                                       if (p0 == '') {
//                                                                         setState(() {
//                                                                           Qty = 0;
//                                                                           Vamount = 0;
//                                                                           Vgrnadtotal = 0;
//                                                                           vactualCost = 0;
//                                                                         });
//                                                                       } else {
//                                                                         setState(() {
//                                                                           Qty = int.tryParse(p0);
//                                                                         });
//                                                                       }
//                                                                       if(check==0||Qty==0){
//                                                                         Vamount=0;
//                                                                         vactualCost = 0;
//                                                                         Vgrnadtotal = 0;
//                                                                         setState(() {});
//                                                                       }
//                                                                       else {
//                                                                         vatableAmountCalculation(check,Qty,eTax,Vdiscount);
//                                                                         actualAndgrandTotal(Vamount,vvat);
//                                                                         // Vamount =double.parse( (((check! * Qty!) + eTax!) - Vdiscount!).toDouble().toStringAsFixed(3));
//                                                                         // vactualCost = double.parse((Vamount! + ((Vamount! * vvat!) / 100)).toDouble().toStringAsFixed(3));
//                                                                         // Vgrnadtotal = double.parse((Vamount! + ((Vamount! * vvat!) / 100)).toDouble().toStringAsFixed(3));
//                                                                         if (Vamount != 0) {
//                                                                           Vamount = (((check! * Qty!) + eTax!) -
//                                                                               Vdiscount!)
//                                                                               .toDouble();
//                                                                         }
//                                                                       }
//
//                                                                       print(Qty);
//                                                                     },
//                                                                     enable: true,
//                                                                     onComplete: () {
//                                                                       setState(() {});
//
//                                                                       setState(() {});
//                                                                     },
//                                                                   ),
//                                                                 ),
//                                                                 TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                   child: UnderLinedInput(controller:minOrderTestContoller,
//                                                                     onChanged: (p0) {vminqty = int.tryParse(p0);
//                                                                     },
//                                                                     enable: true,
//                                                                     onComplete: () {
//                                                                       setState(() {});
//                                                                     },
//                                                                   ),
//                                                                 ),
//                                                                 TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                   child: UnderLinedInput(controller:maxOrderTestContoller,
//                                                                     onChanged: (p0) {vmaxnqty = int.tryParse(p0);},
//                                                                     enable: true,
//                                                                     onComplete: () {
//                                                                       setState(() {});
//                                                                     },
//                                                                   ),
//                                                                 ),
//                                                                 TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: CheckedBoxs(valueChanger:
//                                                                 this.isRecieved,
//                                                                   onSelection: (bool? value) {
//                                                                     setState(() {
//                                                                     });
//                                                                   },
//                                                                 ),
//                                                                 ),
//
//                                                                 TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                   child: UnderLinedInput(
//                                                                     controller: unitCostCheck,
//                                                                     onChanged:
//                                                                         (p0) {
//                                                                       if (p0 == "") {
//                                                                         setState(
//                                                                                 () {check = 0;
//                                                                             });
//                                                                       }
//                                                                       else{
//                                                                         setState(() {
//                                                                           check =double.tryParse(p0);
//                                                                         });
//                                                                       }
//                                                                       if(check==0 ||Qty==0){
//                                                                         Vamount=0;
//                                                                         vactualCost=0;
//                                                                         Vgrnadtotal=0;
//                                                                       }
//                                                                       else {
//                                                                         check = double.tryParse(p0);
//                                                                         vatableAmountCalculation(check,Qty,eTax,Vdiscount);
//                                                                         actualAndgrandTotal(Vamount,vvat);
//                                                                         // Vamount = double.parse((((check! * Qty!) + eTax!) - Vdiscount!).toDouble().toStringAsFixed(3));
//                                                                         // vactualCost = double.parse((Vamount! + ((Vamount! * vvat!) / 100)).toDouble().toStringAsFixed(3));
//                                                                         // Vgrnadtotal = double.parse((Vamount! + ((Vamount! * vvat!) / 100)).toDouble().toStringAsFixed(3));
//                                                                       }
//                                                                     },
//                                                                     enable: true,
//                                                                     onComplete:
//                                                                         () {},
//                                                                   ),
//                                                                 ),
//                                                                 TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                   child: UnderLinedInput(
//                                                                     controller: excesstaxTestContoller,
//                                                                     onChanged:
//                                                                         (p0) {
//                                                                       if (p0 == "") {
//                                                                         setState(
//                                                                                 () {
//                                                                               eTax = 0;
//                                                                             });
//                                                                       } else {
//                                                                         setState(
//                                                                                 () {eTax = double.tryParse(p0);
//                                                                             });
//                                                                       }
//                                                                       if(check==0 ||Qty==0){
//                                                                         vactualCost=0;
//                                                                         Vamount=0;
//                                                                         Vgrnadtotal=0;
//                                                                         setState(() {});
//                                                                       }
//                                                                       else {
//                                                                         if (Vamount != 0) {
//                                                                           vatableAmountCalculation(check,Qty,eTax,Vdiscount);
//                                                                           actualAndgrandTotal(Vamount,vvat);
//                                                                           // Vamount = double.parse((((check! * Qty!) + eTax!) - Vdiscount!).toDouble().toStringAsFixed(3));
//                                                                           // vactualCost = double.parse((Vamount! + ((Vamount! * vvat!) / 100)).toStringAsFixed(3));
//                                                                           // Vgrnadtotal = double.parse((Vamount! + ((Vamount! * vvat!) / 100)).toStringAsFixed(3));
//                                                                         }
//                                                                       }
//                                                                     },
//                                                                     enable: true,
//                                                                     onComplete:
//                                                                         () {},
//                                                                   ),
//                                                                 ),
//                                                                 TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                   child: UnderLinedInput(
//                                                                     controller: discountTestContoller,
//                                                                     onChanged: (p0) {
//                                                                       if (p0 == '')
//                                                                         setState(() {
//                                                                           Vdiscount = 0;
//                                                                         });
//                                                                       else {
//                                                                         setState(() {
//                                                                           Vdiscount = double.tryParse(p0);
//                                                                         });
//                                                                       }
//                                                                       if(check==0 ||Qty==0){
//                                                                         vactualCost=0;
//                                                                         Vamount=0;
//                                                                         Vgrnadtotal=0;
//                                                                       }
//                                                                       else {
//                                                                         vatableAmountCalculation(check,Qty,eTax,Vdiscount);
//                                                                         actualAndgrandTotal(Vamount,vvat);
//                                                                         // Vamount = double.parse((((check! * Qty!) + eTax!) - Vdiscount!).toDouble().toStringAsFixed(3));
//                                                                         // vactualCost =double.parse( (Vamount! + ((Vamount! * vvat!) / 100)).toStringAsFixed(3));
//                                                                         // Vgrnadtotal = double.parse((Vamount! + ((Vamount! * vvat!) / 100)).toStringAsFixed(3));
//                                                                         setState(() {});
//                                                                       }
//                                                                     },
//                                                                   ),
//                                                                 ),
//                                                                 TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                   child: UnderLinedInput(controller: focTestContoller,
//                                                                     onChanged: (p0) {
//                                                                       setState(() {
//                                                                         if (p0 == '')
//                                                                           setState(() {
//                                                                             vfoc = 0;
//                                                                           });
//                                                                         else {
//                                                                           setState(() {
//                                                                             vfoc = double.tryParse(p0);
//                                                                           });
//                                                                         }
//                                                                       });
//                                                                     },
//                                                                     enable: true,
//                                                                     onComplete: () {},
//                                                                   ),
//                                                                 ),
//                                                                 TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                   child: textPadding(Vamount.toString(),
//                                                                       alighnment: Alignment.topRight,
//                                                                       padding: EdgeInsets.only(left: 11.5, ), fontWeight: FontWeight.w500),
//                                                                 ),
//                                                                 TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                   child: textPadding(vvat!=0?vvat.toString():"",
//                                                                       alighnment: Alignment.topRight,
//                                                                       padding: EdgeInsets.only(left: 11.5, ), fontWeight: FontWeight.w500),
//                                                                 ),
//
//                                                                 TableCell(
//                                                                   verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                   child: textPadding(vactualCost.toString(),
//                                                                       alighnment: Alignment.topRight,
//                                                                       padding: EdgeInsets.only(left: 11.5, ),
//
//                                                                       fontWeight: FontWeight.w500),
//                                                                 ),
//                                                                 TableCell(
//                                                                   verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                   child: textPadding(Vgrnadtotal?.toString()??"",
//
//
//                                                                       padding: EdgeInsets.only(left: 11.5, ),
//                                                                       alighnment: Alignment.topRight,
//                                                                       fontWeight: FontWeight.w500),
//                                                                 ),
//                                                                 TableCell(
//                                                                   verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                   child: CheckedBoxs(
//                                                                     valueChanger: isInvoiced,
//                                                                     onSelection: (bool? value) {
//                                                                       setState(() {
//                                                                       });
//                                                                     },
//                                                                   ),
//                                                                 ),
//                                                                 TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                   child: CheckedBoxs(
//                                                                     valueChanger: _value ,
//
//                                                                     onSelection: (val) {
//                                                                       setState(() {
//                                                                         _value =
//                                                                         !_value;
//                                                                         setState(() {
//
//                                                                         });
//
//                                                                       });
//                                                                     },
//                                                                   ),
//                                                                 ),
//                                                                 TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
//                                                                   child: Row(
//                                                                     children: [
//                                                                       TableTextButton(
//
//                                                                         onPress: () {
//                                                                           if (vminqty! >
//                                                                               vmaxnqty!) {
//                                                                             print("enterd");
//                                                                             if(vminqty!=0 &&vmaxnqty!=0){
//                                                                               context.showSnackBarError(
//                                                                                   "the minimum order is always less than maximum order");}
//                                                                           }
//                                                                           else  if(  variantId=="null"||check==0||vvat==0)
//                                                                             context.showSnackBarError(
//                                                                                 "please fill all the fields");
//                                                                           else if(Qty==0||Qty==""){
//                                                                             context.showSnackBarError(
//                                                                                 "the requested quantity not be 0 or empty");
//                                                                           }
//                                                                           else if(updateCheck==true){
//                                                                             context.showSnackBarError(
//                                                                                 "please click the update button");
//                                                                           }
//                                                                           else if(vfoc!>Qty!){
//                                                                             context.showSnackBarError(
//                                                                                 "foc is allways less than requested qty");
//                                                                           }
//                                                                           else{
//
//                                                                             table..add(
//                                                                                 OrderLines(
//                                                                                     vendorRefCode: vendorRefCode??"",
//                                                                                     isRecieved: isRecieved ?? false,
//                                                                                     isActive: _value ?? false,
//                                                                                     supplierCode: vendorRefCode?? "",
//                                                                                     variantId: variantId ?? "",
//                                                                                     variantName: varinatname ?? "",
//                                                                                     barcode: Vbarcode ?? "",
//                                                                                     cvd: "sss",
//                                                                                     foc: vfoc ?? 0,
//                                                                                     maximumQty: vmaxnqty ?? 0,
//                                                                                     minimumQty: vminqty ?? 0,
//                                                                                     excessTax: eTax ?? 0,
//                                                                                     vat: vvat ?? 0,
//                                                                                     actualCost: vactualCost ?? 0,
//                                                                                     purchaseUom: check1 ?? "",
//                                                                                     discount: Vdiscount ?? 0,
//                                                                                     requestedQty: Qty ?? 0,
//                                                                                     unitCost: check! ?? 0,
//                                                                                     grandTotal: Vgrnadtotal ?? 0,
//                                                                                     vatableAmount: Vamount ?? 0,
//                                                                                     currentQty: stockQty ?? 0,
//                                                                                     updateCheck: false
//                                                                                 ));
//                                                                             vendorCheckFunc();
//                                                                             currentStock.add(stockQty??0);
//                                                                             print("a"+currentStock.toString());
//                                                                             requestedListControllers.clear();
//                                                                             minListControllers.clear() ;
//                                                                             maxListControllers .clear();
//                                                                             unitcostListControllers.clear();
//                                                                             excesstListControllers.clear();
//                                                                             discounttListControllers.clear();
//                                                                             focListControllers.clear();
//                                                                             vatListControllers.clear();
//                                                                             setState(() {
//                                                                               tableClear=false;
//                                                                               valueAddingTextEdingController();
//                                                                             });
//                                                                             print("gtable" +
//                                                                                 table
//                                                                                     .toString());
//                                                                             addition();
//                                                                             tableDatasClear();
//
//                                                                             setState(() {});
//
//                                                                           }
//                                                                         },
//                                                                         label:"SAVE",
//                                                                       ),
//                                                                       TableIconTextButton(label: "label", onPress: (){
//                                                                         setState(() {
//                                                                           tableDatasClear();
//                                                                         });
//
//                                                                       },
//                                                                         icon: Icons.clear,)
//                                                                     ],
//                                                                   ),
//                                                                 ),
//                                                               ]),
//
//                                                         ],
//                                                         widths: {
//                                                           0: FlexColumnWidth(2),
//                                                           1: FlexColumnWidth(4),
//                                                           2: FlexColumnWidth(6),
//                                                           3: FlexColumnWidth(3),
//                                                           4: FlexColumnWidth(3),
//                                                           5: FlexColumnWidth(3),
//                                                           6: FlexColumnWidth(3),
//                                                           7: FlexColumnWidth(3),
//                                                           8: FlexColumnWidth(3),
//                                                           9: FlexColumnWidth(3),
//                                                           10: FlexColumnWidth(2),
//                                                           11: FlexColumnWidth(3),
//                                                           12: FlexColumnWidth(3),
//                                                           13: FlexColumnWidth(3),
//                                                           14: FlexColumnWidth(3),
//                                                           15: FlexColumnWidth(3),
//                                                           16: FlexColumnWidth(3),
//                                                           17: FlexColumnWidth(3),
//                                                           18: FlexColumnWidth(3),
//                                                           19: FlexColumnWidth(2),
//                                                           20: FlexColumnWidth(2),
//                                                           21: FlexColumnWidth(4),
//                                                         },
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   SizedBox(height: 20,),
//
//
//                                                 ],
//                                               ),
//                                             ),
//
//                                           ),
//                                         ),
//                                       ),
//                                     );
//                                   },
//                                 ),
                                SizedBox(
                                  height: height * .08,
                                ),
                                SaveUpdateResponsiveButton(label: select?"SAVE":"UPDATE",discardFunction: (){
                                  print("aaaaaa");
                                  setState(() {
                                    if(select){
                                      clear();
                                      table.clear();
                                      setState(() {});
                                    }
                                    else {
                                      showDailogPopUp(
                                          context,
                                          LogoutPopup(
                                            message: "Do you want to delete the order?",

                                            onPressed:(){
                                              print("akshay");
                                              Navigator.pop(context);
                                              context.read<PurchaseorderdeleteCubit>().generalPurchaseDelet(veritiaclid);

                                            },


                                          ));
                                      // context.read<PurchaseorderdeleteCubit>().generalPurchaseDelet(veritiaclid);
                                    }
                                  });

                                },saveFunction: (){
                                  if(updateCheck==true){
                                    context.showSnackBarError(
                                        "please press update");
                                  }
                                  else{
                                    var table1=[
                                      for(var em in table)
                                        if(em.isActive==true)
                                          em
                                    ];
                                    print("filter table"+table1.toString());

                                    PurchaseOrderPost model = PurchaseOrderPost(
                                      purchaseOrderType: orderType.text == "" ? "" : orderType.text,
                                      iventoryId: Variable.inventory_ID,
                                      vendorId: vendorCode.text == "" ? "" : vendorCode.text,
                                      vendorTrnNumber: vendortrnnumber.text == "" ? null : vendortrnnumber.text,
                                      vendorMailId: vendor_email.text??null,
                                      vendorAddress:null,
                                      address1:"akkk",
                                      address2:"ass",
                                      promisedReceiptdate: promised_receipt_date.text,
                                      plannedRecieptDate:planned_receipt_date.text,
                                      note: note.text == "" ? "" : note.text,
                                      remarks: remarks.text == "" ? "" : remarks.text,
                                      discount: discount.text == "" ? 0 : double.parse(discount.text),
                                      foc: foc.text == "" ? 0 : double.parse(foc.text),
                                      unitcost: unitcourse.text == "" ? 0 : double.parse(unitcourse.text),
                                      excessTax: excesstax.text == "" ? 0 : double.parse(excesstax.text),
                                      actualCost: actualcost.text == "" ? 0 : double.parse(actualcost.text),
                                      vat: vat.text == "" ? 0 : double.parse(vat.text),
                                      grandTotal: grandtotal.text == "" ? 0 : double.parse(grandtotal.text),
                                      variableAmount: Variableamount.text == "" ? 0 : double.parse(Variableamount.text),
                                      createdBy: Variable.username,
                                      orderLines:select? table1:table,


                                    );
                                    print("selecting "+model.toString());
                                    select? context.read<PurchaseorderpostCubit>().postPurchase(model):
                                    context.read<PurchaseOrderPatchCubit>().getGeneralPurchasePatch(veritiaclid, model)
                                    ;
                                  }

                                },

                                ),
//                                 Container(
//                                     margin: EdgeInsets.only(right:width*.011,),
//                                   child: Row(
//                                     children: [
//                                       Spacer(),
//                                       Button(Icons.delete, Colors.red,
//                                           ctx: context,
//                                           text: "Discard",
//                                           onApply: () {
//                                         print("aaaaaa");
//                                         setState(() {
//                                           if(select){
//                                           clear();
//                                             table.clear();
//                                             setState(() {});
//                                           }
//                                           else {
//                                             showDailogPopUp(
//                                                 context,
//                                                 ConfirmationPopup(
//                                                   // table:table,
//                                                   // clear:clear(),
//                                                   verticalId:veritiaclid ,
//                                                   onPressed:(){
//                                                     print("akshay");
//                                                     Navigator.pop(context);
//                                                  context.read<PurchaseorderdeleteCubit>().generalPurchaseDelet(veritiaclid);
//
//                                                   },
//
//
//                                                 ));
//                                             // context.read<PurchaseorderdeleteCubit>().generalPurchaseDelet(veritiaclid);
//                                           }
//                                         });
//                                           },
//                                           height: 29,
//                                           width: 90,
//                                           labelcolor: Colors.red,
//                                           iconColor: Colors.red,
//                                           bdr: true),
//                                       SizedBox(
//                                         width: width * .008,
//                                       ),
//                                       InkWell(
//                                         onTap: () {
//                                           if(updateCheck==true){
//                                             context.showSnackBarError(
//                                                 "please press update");
//                                           }
//                                           else{
//                                             PurchaseOrderPost model = PurchaseOrderPost(
//                                               purchaseOrderType: orderType == "" ? "" : orderType,
//                                               iventoryId: Variable.inventory_ID,
//                                               vendorId: vendorCode.text == "" ? "" : vendorCode.text,
//                                               vendorTrnNumber: vendortrnnumber.text == "" ? "" : vendortrnnumber.text,
//                                               vendorMailId: Variable.email,
//                                               vendorAddress:null,
//                                               address1:"akkk",
//                                               address2:"ass",
//                                               promisedReceiptdate: promised_receipt_date.text,
//                                               plannedRecieptDate:planned_receipt_date.text,
//                                               note: note.text == "" ? "" : note.text,
//                                               remarks: remarks.text == "" ? "" : remarks.text,
//                                               discount: discount.text == "" ? 0 : double.parse(discount.text),
//                                               foc: foc.text == "" ? 0 : double.parse(foc.text),
//                                               unitcost: unitcourse.text == "" ? 0 : double.parse(unitcourse.text),
//                                               excessTax: excesstax.text == "" ? 0 : double.parse(excesstax.text),
//                                               actualCost: actualcost.text == "" ? 0 : double.parse(actualcost.text),
//                                               vat: vat.text == "" ? 0 : double.parse(vat.text),
//                                               grandTotal: grandtotal.text == "" ? 0 : double.parse(grandtotal.text),
//                                               variableAmount: Variableamount.text == "" ? 0 : double.parse(Variableamount.text),
//                                               createdBy: Variable.username,
//                                               orderLines: table,
//                                             );
//                                             print("selecting "+model.toString());
//                                             select? context.read<PurchaseorderpostCubit>().postPurchase(model):
//                                             context.read<PurchaseOrderPatchCubit>().getGeneralPurchasePatch(veritiaclid, model)
//                                             ;
//                                           }
//
//                                         },
//                                         child: Container(
//                                           color: Color(0xff3E4F5B),
//                                           alignment: Alignment.center,
//                                           height: 29,
//                                           width: 90,
//
//                                           child: Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             children: [
//                                               // Icon(
//                                               //   select?   Icons.check:Icons.update,
//                                               //   color: Colors.white,
//                                               // ),
//                                               // SizedBox(width:3,),
//                                               Text(
//                                                select?"SAVE":"UPDATE",
//                                                 style: TextStyle(
//                                                     color: Colors.white,
//                                                     fontWeight: FontWeight.bold),
//                                               )
//                                             ],
//                                           ), //BoxDecoration
//                                         ),
//                                       ),
// //
//                                       SizedBox(
//                                         width: width * .008,
//                                       ),
//                                     ],
//                                   ),
//                                 )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        }),
      ),
    );
  }
}

