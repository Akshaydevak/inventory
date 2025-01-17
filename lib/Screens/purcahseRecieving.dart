import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:inventory/Screens/variant/variantdetails/model/vendormodel.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/sharedpreference.dart';
import 'package:inventory/core/uttils/keyEvent.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:inventory/Invetory/inventorysearch_cubit.dart';
import 'package:inventory/commonWidget/Navigationprovider.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/pellete.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/cubit/cubit/cubit/vendor_details_cubit/vendordetails_cubit.dart';
import 'package:inventory/cubits/cubit/cubit/general_purchase_read_cubit.dart';
import 'package:inventory/cubits/cubit/cubit/purchase_stock_cubit.dart';
import 'package:inventory/cubits/cubit/table_details_cubit_dart_cubit.dart';
import 'package:inventory/model/purchase_current_stock_qty.dart';
import 'package:inventory/model/purchase_order_table_model.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/purchaseRecieving_cubits/cubit/additionalgenerate_cubit.dart';
import 'package:inventory/purchaseRecieving_cubits/cubit/purchasegenerating_cubit.dart';
import 'package:inventory/purchaseRecieving_cubits/cubit/purchaserecievig_read_cubit.dart';
import 'package:inventory/purchaseRecieving_cubits/cubit/purchaserecievingpatch_cubit.dart';
import 'package:inventory/purchaserecievingmodel/generatemissing.dart';
import 'package:inventory/purchaserecievingmodel/purchaserecieving_read.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';
import 'package:inventory/widgets/custom_inputdecoration.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/dropdownbutton.dart';
import 'package:inventory/widgets/inputfield.dart';
import 'package:inventory/widgets/itemmenu.dart';
import 'package:inventory/widgets/popupcallwidgets/popupcallwidget.dart';
import 'package:inventory/widgets/searchTextfield.dart';
import 'package:printing/printing.dart';
import 'package:provider/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:inventory/model/purchaseorder.dart';

import '../commonWidget/tableConfiguration.dart';
import '../printScreen.dart';
import 'Dashboard.dart';
import 'heirarchy/general/generalscreen.dart';
import 'logi/model/inventorylistmodel.dart';

class PurchaseRecievinScreen extends StatefulWidget {
  @override
  _PurchaseRecievinScreenState createState() => _PurchaseRecievinScreenState();
}

class _PurchaseRecievinScreenState extends State<PurchaseRecievinScreen> {
  TextEditingController controller = TextEditingController();
  TextEditingController orderCodeController = TextEditingController();
  TextEditingController recievingCodeController = TextEditingController();
  TextEditingController orederDateController = TextEditingController();
  TextEditingController orederDate2Controller = TextEditingController();
  TextEditingController orderStatusController = TextEditingController();
  TextEditingController paymentStatusController = TextEditingController();
  TextEditingController invoiceStausController = TextEditingController();
  TextEditingController focController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController unitCostController = TextEditingController();
  TextEditingController vatableAmountController = TextEditingController();
  TextEditingController excessTaxController = TextEditingController();
  TextEditingController vatController = TextEditingController();
  TextEditingController actualCostController = TextEditingController();
  TextEditingController grandTotalController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  TextEditingController remarksController = TextEditingController();
  TextEditingController discController = TextEditingController();
  TextEditingController promisedRecieptDate = TextEditingController();
  TextEditingController plannedRecieptDate = TextEditingController();
  TextEditingController receivedController = TextEditingController();
  TextEditingController reason = TextEditingController();
  TextEditingController unitCostCheck = TextEditingController();//
  TextEditingController unitcost1 = TextEditingController(text: "0");
  TextEditingController expiryDate = TextEditingController(text: "0");
  TextEditingController expiryDate2 = TextEditingController(text: "");
  TextEditingController vendorCodeController = TextEditingController();
  TextEditingController recievedClearController = TextEditingController();
  TextEditingController unitCostClearController = TextEditingController();
  TextEditingController excessClearController = TextEditingController();
  TextEditingController discountClearController = TextEditingController();
  TextEditingController focClearController = TextEditingController();
  FocusNode purchaseReceiveFocusNode=FocusNode();
  FocusNode saveUpadtebuttonFocusnOde=FocusNode();
  List<FocusNode>focusNodeList=List.generate(10, (index) => FocusNode());
  List<List<FocusNode>> listOfxfocusNodes = [];
  List<List<FocusNode>> receivefocusNodes = [];
bool isSave=false;
bool isGenarate=false;
  var expiryDate1Controllers = <TextEditingController>[];
  var expiryDate2tControllers = <TextEditingController>[];
  var expirydateControllerList = <TextEditingController>[];
  var expirydateControllerList2 = <TextEditingController>[];

  int? recievedQty=0;
  bool select=false;

  ScrollController? _scrollController = ScrollController();
  TextEditingController itemsearch = TextEditingController();
  late AutoScrollController scontroller;
  late AutoScrollController verticalController;
  var unitcostAdditionalListControllers = <TextEditingController>[];
  var unitcostReceivingListControllers = <TextEditingController>[];
  int selectedVertical = 0;
  String? inventoryId = "";
  int? receivingId ;
  String? variantId;
  String? supplierRefCode="";
  int selctedraw=-1;
  int receiveSelctedraw=-1;
  String? barcode;
  String? vendorCode;
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
  bool recievlinequantityCheck=false;
  bool isInvoiced1=false;
  double?foc1=0;
  double?vat1=0;
  double?excess1=0;
  double?discount=0;
  int?stock=0;
  bool  onChange=false;
  bool hasData=false;
  bool variantIdcheck=false;
  int tabCount=1;
  bool isCountOrdecre=false;




  PurchaseOrderTableModel? purchaseTable;
   var paginatedList;
  int? veritiaclid = 0;
  List<int?> currentStock = [];
  PurchaseCureentStockQty? purchaseCurrentStock;
  List<PurchaseOrder> result = [];

  List<RecievingLines> recievingLisnes = [];
  List<RecievingLines> additionalVariants = [];
  NavigationProvider vm = NavigationProvider();
  bool stockCheck=false;
  double grands = 0;
  double focValue = 0;
  double VatableValue = 0;
  double excessTax = 0;
  double vatValue = 0;
  double actualValue = 0;
  double excessTAxValue = 0;
  double vatableValue = 0;
  double unitcost2 = 0;
  String? purchaseUom;
  double discountValue = 0;
  bool updateCheck=false;
  bool updateCheck1=false;
  void changeSelectedRow(int direction) {
    setState(() {
receiveSelctedraw=-1;

      // Adjust the selected row based on the arrow key direction
      selctedraw = (selctedraw + direction).clamp(0, additionalVariants.length - 1);
      if(selctedraw!=-1)
        FocusScope.of(context).requestFocus(listOfxfocusNodes[selctedraw][0]);


      // invoiceCheckBoxselectionFunc(invoiceselectedRow);
    });
  }
  void changeSelectedRecieveRow(int direction) {
    setState(() {
selctedraw=-1;

      // Adjust the selected row based on the arrow key direction
      receiveSelctedraw = (receiveSelctedraw + direction).clamp(0, recievingLisnes.length - 1);
      if(selctedraw!=-1)
        FocusScope.of(context).requestFocus(receivefocusNodes[receiveSelctedraw][0]);


      // invoiceCheckBoxselectionFunc(invoiceselectedRow);
    });
  }

  addition() {
    double  unitcost=0;
    double grands=0;
    double actualValue=0;
    double vatValue=0;
    double discountValue=0;
    double focValue=0;
    double VatableValue=0;
    double excessTAxValue=0;
    print("enterd");
    print("+==" + recievingLisnes.toString());
    for (var i = 0; i < recievingLisnes.length; i++) {
      if (recievingLisnes.isNotEmpty == true ) {
        if (recievingLisnes[i].isActive == true && recievingLisnes[i].updateCheck == false) {
          var unicost1= recievingLisnes[i].unitCost??0;
          var vatValue1= recievingLisnes[i].vat??0;
          var grands1= recievingLisnes[i].grandTotal??0;
          var actualValue1= recievingLisnes[i].actualCost??0;
          var discountValue1= recievingLisnes[i].discount??0;
          var focValue1= recievingLisnes[i].foc??0;
          var VatableValue1= recievingLisnes[i].vatableAmount??0;
          var excessTAxValue1= recievingLisnes[i].excessTax??0;
          unitcost = double.parse(
              (unitcost! + unicost1).toStringAsFixed(2));

          grands = double.parse(
              (grands + grands1).toStringAsFixed(2));
          actualValue = double.parse(
              (actualValue + actualValue1).toStringAsFixed(
                  2));
          vatValue = double.parse(
              (vatValue + vatValue1).toStringAsFixed(2));
          discountValue = double.parse(
              (discountValue + discountValue1).toStringAsFixed(
                  2));
          focValue = double.parse(
              (focValue + focValue1).toStringAsFixed(2));

          VatableValue = double.parse(
              (VatableValue + VatableValue1)
                  .toStringAsFixed(2));
          print("excessTaxvalue" + recievingLisnes.toString());
          excessTAxValue = double.parse(
              (excessTAxValue +excessTAxValue1).toStringAsFixed(
                  2));
        }
      }
    }
    unitCostController.text = unitcost == 0 ? "" : unitcost.toString();
    grandTotalController.text = grands.toString();
    vatController.text = vatValue.toString();

    actualCostController.text = actualValue.toString();

    focController.text = focValue.toString();
    discountController.text = discountValue.toString();
    excessTaxController.text = excessTAxValue.toString();
    vatableAmountController.text = VatableValue.toString();
    setState(() {

    });

  }



  rowKeyEventResetFunc(){
    tabCount=1;
    isCountOrdecre=false;
    enableKeyEvent=true;
    setState(() {

    });
  }

  rowKeyPressEvent(RawKeyEvent event){
    // FocusNode? currentfocusedNode = FocusManager.instance.primaryFocus;
    int limit=6   ;
    int startLimit=1;

    if (event is RawKeyDownEvent) {

      if(event.logicalKey==LogicalKeyboardKey.escape){
        print("tabPressd$tabCount");

        FocusScope.of(context).requestFocus(purchaseReceiveFocusNode);
        if(isCountOrdecre==false){

          if(tabCount!=limit){
            tabCount=++tabCount;

            if(tabCount==limit){
              isCountOrdecre=true;
            }

          }
        }
        else{
          if(tabCount!=startLimit){
            tabCount=--tabCount;
            if(tabCount==startLimit){
              isCountOrdecre=false;}
          }



        }
        print("tabPressd$tabCount");
        // if(tabCount!=1){
        //   FocusScope.of(context).requestFocus(saveUpadtebuttonFocusnOde);
        // }


        // tabCount= tabCount== limit?--tabCount:++tabCount;
        setState(() {

        });

      }
      // else  if(event.logicalKey==LogicalKeyboardKey.keyR){
      //    remarksPopupCallFunc();
      //
      //  }
      // else if(event.logicalKey==LogicalKeyboardKey.arrowLeft){
      //   FocusNode? focusedNode = FocusScope.of(context).focusedChild;
      //   if (focusedNode != null) {
      //     print('Currently focused node: ${focusedNode}');
      //   }
      //
      // }
      else{

        if (event.logicalKey == LogicalKeyboardKey.arrowDown ) {
          switch (tabCount) {
            case 1:
            // FocusScope.of(context).requestFocus(inventoryFocusNode);
            // selectedVertical=       _verticalWidgetState.currentState?.   changeSelectedRow(-1)??0;
            // setState(() {
            //
            // });

              changeSelectedRecieveRow(1);

              break;
            case 3:
            // FocusScope.of(context).requestFocus(inventoryFocusNode);
            // selectedVertical=       _verticalWidgetState.currentState?.   changeSelectedRow(-1)??0;
            // setState(() {
            //
            // });

              changeSelectedRow(1);
              break;




          // Handle arrow down key press
          // _changeSelectedRow(1);
        } }else if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
          switch (tabCount) {
            case 1:
            // FocusScope.of(context).requestFocus(inventoryFocusNode);
            // selectedVertical=       _verticalWidgetState.currentState?.   changeSelectedRow(-1)??0;
            // setState(() {
            //
            // });

                changeSelectedRecieveRow(-1);

              break;
            case 3:
            // FocusScope.of(context).requestFocus(inventoryFocusNode);
            // selectedVertical=       _verticalWidgetState.currentState?.   changeSelectedRow(-1)??0;
            // setState(() {
            //
            // });

                changeSelectedRow(-1);

              break;

          // case 2:
          // // FocusScope.of(context).requestFocus(inventoryFocusNode);
          // //    _stableWidgetState.currentState?.   changeSelectedRow(-1);
          // // setState(() {
          // //
          // // });
          // break;

          }


          // Handle arrow up key press
          // _changeSelectedRow(-1);
        }
        else if(event.logicalKey==LogicalKeyboardKey.enter || event.logicalKey==LogicalKeyboardKey.numpadEnter){
          switch (tabCount) {
            case 1:
            // verticalOntapFunc(selectedVertical);
              break;
            case 2:
              // saveUpadateFunction();
              break;
            case 3:
              receiveLinesGenerateFunction();
              break;
              case 5:
                additionalGenerateFunction();
              break;
              case 6:
                saveUpdateFunction();
              break;

          }



        }






      }
      //invoice page keyPress Event


      //





    }

  }
  valueAddingTextEdingController(){
    unitcostAdditionalListControllers.clear();
    listOfxfocusNodes.clear();
    if(additionalVariants.isNotEmpty){
      for(var i=0;i<additionalVariants.length;i++){
        var unitcost = new TextEditingController(text:additionalVariants [i].unitCost.toString()??"");
        listOfxfocusNodes.add(List.generate(10, (index) => FocusNode()));
        unitcostAdditionalListControllers.add(unitcost);
        setState(() {
        });
      }
    }
  }  valueAddingRecievingTextEdingController(){
    if(recievingLisnes.isNotEmpty){
      for(var i=0;i<recievingLisnes.length;i++){
        var unitcost = new TextEditingController(text:recievingLisnes [i].unitCost.toString()??"");
        receivefocusNodes.add(List.generate(9, (index) => FocusNode()));
        unitcostReceivingListControllers.add(unitcost);
        setState(() {
        });
      }
    }
  }
  vatableAmountCalculation(double? unitCost,int? qty,double? excessTax,double? discount){
    vatableAmount1 =double.parse( (((unitCost! *
        qty!) +
        excessTax!) -
        discount!).toStringAsFixed(2));
  }
  vatableFocAmountCalculation(double? unitCost,int? qty,double? excessTax,double? discount,double? foc ){
    vatableAmount1=double.parse(((((qty!*unitCost!)-(foc!*unitCost!))+excessTax!)-discount!).toStringAsFixed(2));
  }
  actualAndgrandTotal(double? vatableAmount,double? vat){

    actualCost1 = double.parse((vatableAmount! +
        ((vatableAmount *
            vat!) /
            100)).toStringAsFixed(2));
    grandTotal1=actualCost1;

  }

  bool receiveLineUpdateCheckFunc(){
    var isUpdate=recievingLisnes.where((element) => element.updateCheck==true);
    if(isUpdate.isNotEmpty){
      return true;
    }
    else
      return false;
  }
  bool additiionUpdateCheckFunc(){
    var isUpdate=additionalVariants.where((element) => element.updateCheck==true);
    if(isUpdate.isNotEmpty){
      return true;
    }
    else
      return false;
  }
  allClear(){
     recievingLisnes = [];
     additionalVariants=[];
    unitcostReceivingListControllers.clear();
   expirydateControllerList2.clear();
    // print("reading case"+expirydateControllerList2.length.toString());
    orderCodeController.text ="";
    focController.text = "";
    recievingCodeController.text ="";
    vendorCode =  "";
    receivingId=null;
    orederDateController.text = "";
    orederDate2Controller.clear();
    orderStatusController.text =  "";
    invoiceStausController.text = "";
    paymentStatusController.text =  "";
    receivedController.text = "";
    vendorCodeController.text =  "";
    grandTotalController.text ='';
    vatController.text ='';
    vatableAmountController.text ='';
    excessTaxController.text ='';
    unitCostController.text ='';
    actualCostController.text ='';
    discountController.text =  "";
    inventoryId =  "";
    remarksController.text="";
    noteController.text= "";
     clear();
  }
  clear(){


      variantId="";
      varinatname="";
      unitCostCheck.text="";
      barcode="";
      recievedClearController.clear();
      unitCostClearController.clear();
      excessClearController.clear();
      discountClearController.clear();
      focClearController.clear();
      expiryDate.clear();
      expiryDate2.clear();
      purchaseUomName="";
      supplierRefCode="";
      recievedQty=0;
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
setState(() {

});



  }
  String supplierRefCodeFinding(List<VendorDetails>? vendorDetailList,String vendoor){
    String  vendorRefCode="";

    if(vendorDetailList?.isNotEmpty==true){



      for(var i=0;i<vendorDetailList!.length;i++){
        if(vendorDetailList[i].vendorCode==vendoor){
          vendorRefCode=vendorDetailList[i].vendorRefCode??"";
        }

      }
    }
    return vendorRefCode;

  }

  Future _getCurrentUser() async {
    if(recievingLisnes.isNotEmpty) {
      for (var i = 0; i < recievingLisnes.length; i++) {
        print("variantaaaaaa" + recievingLisnes[i].variantId.toString());
        var b = await context
            .read<PurchaseStockCubit>()
            .getCurrentStock(
            Variable.inventory_ID, recievingLisnes[i].variantId);
        print("baseLineSEdit" + b.toString());
      }
      setState(() {
        hasData = true;
      });
    }
  }


  @override
  void initState() {
    context.read<InventorysearchCubit>().getInventorySearch("code");

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
  assignCall(){
    context.read<InventorysearchCubit>().getInventorySearch("code");
    // context.read<PurchasegeneratingCubit>().generatePost(model!);

  }

  @override
  Widget build(BuildContext context) {
    vm = Provider.of<NavigationProvider>(context);
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return RawKeyboardListener(
      autofocus: false,
      focusNode:purchaseReceiveFocusNode,
      onKey: (RawKeyEvent event) {

        // if(enableKeyEvent==true){
        //   rowKeyPressEvent(event);}else{
        //
        //   rowKeyEventResetFunc();
        // }





      },
      child: Scaffold(
        backgroundColor: Pellet.bagroundColor,
        body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => PurchaserecievigReadCubit()
                // ..getGeneralPurchaseRecievingRead(Variable.verticalid),
            ),




          ],
          child: Builder(builder: (context) {
            return Builder(builder: (context) {

              return MultiBlocListener(
                listeners: [
                  BlocListener<PurchaserecievigReadCubit,
                      PurchaserecievigReadState>(
                    listener: (context, state) {
                      state.maybeWhen(
                          orElse: () {},
                          error: () {
                            print("error");
                          },
                          success: (data) {
                            stockCheck=false;
                            // setState(() {
                            data.receivingLines != null
                                ? recievingLisnes =List.from( data.receivingLines ?? [])
                                : recievingLisnes = [];
                            valueAddingRecievingTextEdingController();
                            if(recievingLisnes.isNotEmpty)
                            for(var i=0;i<recievingLisnes.length;i++){
                              var date = new TextEditingController(text:recievingLisnes[i]?.expiryDate==null?"":  DateFormat('dd-MM-yyyy').format(DateTime.parse(recievingLisnes[i]?.expiryDate??"")));
                              expirydateControllerList2.add(date);
                            }
                            // print("reading case"+expirydateControllerList2.length.toString());
                            orderCodeController.text = data.orderCode ?? "";
                            focController.text = data.foc.toString() ?? "";
                            recievingCodeController.text = data.receivingCode ?? "";
                            vendorCode = data.vendorId ?? "";
                            receivingId=data.id;
                            orederDateController.text = data.orderCreatedDate ?? "";
                            orederDate2Controller=TextEditingController(text: data.orderCreatedDate==null?"": DateFormat('dd-MM-yyyy').format(DateTime.parse(data.orderCreatedDate ??"")));
                            orderStatusController.text = data.orderStatus ?? "";

                            invoiceStausController.text = data.invoiceStatus ?? "";
                            paymentStatusController.text = data.paymentStatus ?? "";
                            receivedController.text = data.receivingStatus ?? "";
                            vendorCodeController.text = data.vendorId ?? "";
                            if(data?.grandTotal==null||data?.grandTotal=="null"){
                              grandTotalController.text =='';
                            }
                            else{
                              setState(() {
                                grandTotalController.text = data?.grandTotal.toString()??"";
                              });
                            }
                            if(data?.vat==null||data?.vat=="null"){
                              vatController.text =='';
                            }
                            else{
                              setState(() {
                                vatController.text = data?.vat.toString()??"";
                              });
                            }

                            if( data?.vatableAmount==null|| data?.vatableAmount=="null"){
                              vatableAmountController.text =='';
                            }
                            else{
                              setState(() {
                                vatableAmountController.text =  data?.vatableAmount.toString()??"";
                              });
                            }
                            if( data?.excessTax==null|| data?.excessTax=="null"){
                              excessTaxController.text =='';
                            }
                            else{

                                excessTaxController.text =  data?.excessTax.toString()??"";

                            }
                            if( data?.unitCost==null|| data?.unitCost=="null"){
                              unitCostController.text =='';
                            }
                            else{
                              setState(() {
                                unitCostController.text =  data?.unitCost.toString()??"";
                              });
                            }
                            if( data?.actualCost==null|| data?.actualCost=="null"){
                              actualCostController.text =='';
                            }
                            else{
                              setState(() {
                                actualCostController.text =  data?.actualCost.toString()??"";
                              });
                            }
                            if(data?.discount==null|| data?.discount=="null"){
                              discountController.text=='';
                            }
                            else{
                              setState(() {
                                discountController.text =  data?.discount.toString()??"";
                              });
                            }
                            inventoryId = data.inventoryId ?? "";
                            remarksController.text=data.remarks ?? "";
                            noteController.text=data.note ?? "";
                            _getCurrentUser();
                            setState(() {});
                          });
                    },
                  ),
                  // BlocListener<PurchasegeneratingCubit, PurchasegeneratingState>(
                  //   listener: (context, state) {
                  //     print("postssssssss" + state.toString());
                  //     state.maybeWhen(orElse: () {
                  //       // context.
                  //       context.showSnackBarError("Loadingg");
                  //     }, error: () {
                  //       context.showSnackBarError(Variable.errorMessege);
                  //     }, success: (data) {
                  //       if (data.data1) {
                  //         print("Rijinaaaaaa");
                  //         context.showSnackBarSuccess(data.data2);
                  //         context.read<InventorysearchCubit>().getInventorySearch("code");
                  //         context.read<PurchaserecievigReadCubit>().getGeneralPurchaseRecievingRead(veritiaclid);
                  //         setState(() {
                  //
                  //         });
                  //
                  //
                  //
                  //       }
                  //       else {
                  //         context.showSnackBarError(data.data2);
                  //         print(data.data1);
                  //       }
                  //       ;
                  //     });
                  //   },
                  // ),
                  BlocListener<PurchaserecievingpatchCubit,
                      PurchaserecievingpatchState>(
                    listener: (context, state) {
                      state.maybeWhen(orElse: () {
                        // context.
                        context.showSnackBarError("Loading");
                      }, error: () {
                        setState(() {
                          isSave=false;
                        });
                        context.showSnackBarError(Variable.errorMessege);
                      }, success: (data) {
                        if (data.data1) {
                          context.showSnackBarSuccess(data.data2);
                          clear();

                          context.read<InventorysearchCubit>().getInventorySearch(
                              "code");

                        }
                        else {
                          context.showSnackBarError(data.data2);
                          print(data.data1);
                        }
                        setState(() {
                          isSave=false;
                        });
                        ;
                      });
                    },
                  ),
                  BlocListener<AdditionalgenerateCubit, AdditionalgenerateState>(
                    listener: (context, state) {
                      print("postssssssss" + state.toString());
                      state.maybeWhen(orElse: () {
                        // context.
                        context.showSnackBarError("Loading");
                      }, error: () {
                        isGenarate=false;setState(() {

                        });
                        context.showSnackBarError(Variable.errorMessege);
                      }, success: (data) {
                        if (data.data1) {
                          clear();

                          context.showSnackBarSuccess(data.data2);
                          context.read<InventorysearchCubit>().getInventorySearch(
                              "code");
                        }
                        else {
                          context.showSnackBarError(data.data2);
                          print(data.data1);
                        }
                        ;  isGenarate=false;setState(() {

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
                            setState(() {
                              if(stockCheck==false){
                                currentStock.add(0);
                              }
                              else if(recievlinequantityCheck){
                                currentStock[Variable.tableindex]=0;

                              }

                              else{
                                if(Variable.tableedit==false){
                                  print("findinf");
                                  stock=0;
                                  setState(() {

                                  });
                                }
                                else if(Variable.tableedit==true){
                                  additionalVariants[Variable.tableindex] = additionalVariants[Variable.tableindex].copyWith(currentStock:0   );
                                  // currentStock[Variable.tableindex]=purchaseCurrentStock?.StockQty;

                                }

                              }

                            });

                          },
                          success: (data) {
                            print("Akshayaaaaa" + data.toString());
                            purchaseCurrentStock = data;
                            var stockQty = purchaseCurrentStock?.StockQty??0;

                            if(stockCheck==false){
                              currentStock.add(stockQty??0);
                            }
                            else if(recievlinequantityCheck){
                              currentStock[Variable.tableindex]=stockQty;

                            }

                            else{
                              if(Variable.tableedit==false){
                                print("findinf");
                                stock=stockQty;
                                setState(() {

                                });
                              }
                              else if(Variable.tableedit==true){
                                additionalVariants[Variable.tableindex] = additionalVariants[Variable.tableindex].copyWith(currentStock:purchaseCurrentStock?.StockQty   );
                                // currentStock[Variable.tableindex]=purchaseCurrentStock?.StockQty;

                              }

                            }
                            print("currentStocksss$currentStock");
                            print("lllll" + currentStock.length.toString());

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
                              if(Variable.tableedit==true) {
                                var vendorDetailList=purchaseTable?.vendorDetails;
                                print(vendorDetailList);
                           String supplierRefCode=supplierRefCodeFinding(purchaseTable?.vendorDetails,vendorCode??"");
                                additionalVariants[Variable.tableindex] =
                                    additionalVariants[Variable.tableindex].copyWith(variantName:purchaseTable?.name??"",unitCost:purchaseTable?.unitCost,vat:purchaseTable?.vat,purchaseUom: purchaseTable?.purchaseUomName??"",barcode:  purchaseTable?.barCode?.barcodeNumber.toString()??"", supplierCode:supplierRefCode  );
                                unitcostAdditionalListControllers[Variable.tableindex]=TextEditingController(text:purchaseTable?.unitCost.toString() );
                                var qty = additionalVariants[Variable.tableindex].requestedQty;
                                var vat = additionalVariants[Variable.tableindex].vat;
                                var foc = additionalVariants[Variable.tableindex].foc;
                                var excess = additionalVariants[Variable.tableindex].excessTax;
                                var unitcost = additionalVariants[Variable.tableindex].unitCost;
                                var Vdiscount = additionalVariants[Variable.tableindex].discount;
                                if(qty==0 || unitcost==0){
                                  print("ssssssssss");
                                  print(qty);
                                  print(unitcost);
                                  additionalVariants[Variable.tableindex] = additionalVariants[Variable.tableindex].copyWith(actualCost: 0, grandTotal: 0, vatableAmount: 0,);
                                  setState(() {

                                  });

                                }else {
                                  double Vamount;

                                  if(foc==0 ||foc=="") {
                                    Vamount =
                                        double.parse( (((unitcost! *
                                            qty!) +
                                            excess!) -
                                            Vdiscount!)
                                            .toStringAsFixed(2));
                                  }else{
                                    Vamount=double.parse(((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-Vdiscount!).toStringAsFixed(2));

                                  }
                                  double vactualCost =double.parse( (Vamount! +
                                      ((Vamount! *
                                          vat!) /
                                          100)).toStringAsFixed(2));
                                  double Vgrnadtotal = double.parse((Vamount! +
                                      ((Vamount! *
                                          vat!) /
                                          100)).toStringAsFixed(2));
                                  additionalVariants[Variable.tableindex] =
                                      additionalVariants[Variable.tableindex]
                                          .copyWith(
                                          actualCost: vactualCost,
                                          grandTotal: Vgrnadtotal,
                                          vatableAmount: Vamount,
                                          excessTax: excess);
                                  setState(() {});
                                }
                                setState(() {

                                });



                              }
                              else if( variantIdcheck==true){
                                var vendorDetailList=purchaseTable?.vendorDetails;
                                print(vendorDetailList);
                                String supplierRefCode=supplierRefCodeFinding(purchaseTable?.vendorDetails,vendorCode??"");
                                recievingLisnes[Variable.tableindex] = recievingLisnes[Variable.tableindex].copyWith(variantName:purchaseTable?.name??"",vat:purchaseTable?.vat,unitCost:purchaseTable?.unitCost,purchaseUom: purchaseTable?.purchaseUomName??"",barcode:  purchaseTable?.barCode?.barcodeNumber.toString()??"", supplierCode: supplierRefCode  );
                                unitcostReceivingListControllers[Variable.tableindex]=TextEditingController(text:purchaseTable?.unitCost.toString() );

                                var qty = recievingLisnes[Variable.tableindex].requestedQty;
                                var vat = recievingLisnes[Variable.tableindex].vat;
                                var foc = recievingLisnes[Variable.tableindex].foc;
                                var excess = recievingLisnes[Variable.tableindex].excessTax;


                                var unitcost = recievingLisnes[Variable.tableindex].unitCost;
                                print("unitcost" + unitcost.toString());
                                var Vdiscount = recievingLisnes[Variable.tableindex].discount;
                                if(qty==0 || unitcost==0){
                                  recievingLisnes[Variable.tableindex] = recievingLisnes[Variable.tableindex].copyWith(actualCost: 0, grandTotal: 0, vatableAmount: 0, excessTax: excess);
                                  setState(() {

                                  });

                                }else {
                                  double Vamount;

                                  if(foc==0 ||foc=="") {
                                    Vamount =
                                        double.parse( (((unitcost! *
                                            qty!) +
                                            excess!) -
                                            Vdiscount!)
                                            .toStringAsFixed(2));
                                  }else{
                                    Vamount=double.parse(((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-Vdiscount!).toStringAsFixed(2));

                                  }
                                  double vactualCost =double.parse( (Vamount! +
                                      ((Vamount! *
                                          vat!) /
                                          100)).toStringAsFixed(2));
                                  double Vgrnadtotal = double.parse((Vamount! +
                                      ((Vamount! *
                                          vat!) /
                                          100)).toStringAsFixed(2));
                                  recievingLisnes[Variable.tableindex] =
                                      recievingLisnes[Variable.tableindex]
                                          .copyWith(
                                          actualCost: vactualCost,
                                          grandTotal: Vgrnadtotal,
                                          vatableAmount: Vamount,
                                          excessTax: excess);
                                  setState(() {});
                                }
                                setState(() {

                                });
                              }
                              else{
                                varinatname = purchaseTable?.name??"";
                                unitcost = purchaseTable?.unitCost;
                                vat1 = purchaseTable?.vat;
                                unitCostCheck.text = purchaseTable?.unitCost.toString()??"";
                                String supplierRefrenceCode=supplierRefCodeFinding(purchaseTable?.vendorDetails,vendorCode??"");

                                supplierRefCode=supplierRefrenceCode;

                                print("unitttt"+unitcost.toString());
                                unitcost1.text=purchaseTable?.unitCost.toString()??"";
                                // // vm.totalUnitcost = (vm.totalUnitcost!) + (check!);
                                // print(
                                //     "vm.totalUnitcost" + vm.totalUnitcost.toString());
                                //
                                purchaseUomName = purchaseTable?.purchaseUomName??"";
                                vrefcod = purchaseTable?.code??"";
                                // vid = purchaseTable?.id;
                                // purchaseTable?.excessTax != null
                                //     ? eTax = purchaseTable?.excessTax
                                //     : eTax = 0;
                                //
                                barcode =
                                    purchaseTable?.barCode?.barcodeNumber.toString()??"";
                                if(unitcost==0 ||recievedQty==0){
                                  actualCost1=0;
                                  vatableAmount1=0;
                                  grandTotal1=0;
                                }
                                else{
                                  if(foc1==0 ||foc1==""){
                                    vatableAmountCalculation(unitcost,recievedQty,excess1,discount);

                                    actualAndgrandTotal(vatableAmount1,vat1);



                                  }
                                  else{

                                    vatableFocAmountCalculation(unitcost,recievedQty,excess1,discount,foc1);

                                    actualAndgrandTotal(vatableAmount1,vat1);

                                  }

                                }
                              }

                              //

                            }
                            );
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

                          paginatedList=list;
                          result = list.data;
                          setState(() {
                            if(result.isNotEmpty){ veritiaclid=result[0].id;
                              selectedVertical=0;
                            context.read<PurchaserecievigReadCubit>().getGeneralPurchaseRecievingRead(veritiaclid);
                            Variable.verticalid=result[0].id;
                            print("Variable.ak"+Variable.verticalid.toString());
                            }
                            else{
                              allClear();
                            }

                          });
                        });
                  },
                  builder: (context, state) {

                    return Scaffold(
                      body: IntrinsicHeight(

                          // width: 788,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [

                              VerticalList(selectedVertical: selectedVertical,
                                itemsearch: itemsearch,ontap: (int index){
                                  setState(() {
                                    print("taped");

                                    select=false;
                                    variantIdcheck=false;
                                    expirydateControllerList2.clear();
                                    selectedVertical=index;
                                    clear();

                                    supplierRefCode="";
                                    currentStock.clear();
                                    recievingLisnes.clear();
                                    unitcostReceivingListControllers.clear();
                                    listOfxfocusNodes.clear();
                                    recievingLisnes.clear();
                                    additionalVariants.clear();

                                    // print("expirydateControllerList2"+expirydateControllerList2.toString());
                                    expiryDate2tControllers.clear();
                                    veritiaclid = result[index].id;
                                    // Variable.verticalid=result[index].id;
                                    context.read<PurchaserecievigReadCubit>().getGeneralPurchaseRecievingRead(veritiaclid);
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
                                child: Container(
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Expanded(
                                          child: Container(
                                            child: SingleChildScrollView(

                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                        children: [
                                                          Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment.end,
                                                            children: [
                                                              TextButtonLarge(
                                                                text: "PREVIEW",
                                                                onPress: () async {
                                                                  print("Akshay");
                                                                  InventoryListModel model=InventoryListModel();
                                                                  UserPreferences userPref = UserPreferences();
                                                                  await userPref.getInventoryList().then((user) {
                                                                    print("entereeeeeeeeeeeeeeeeeeed");
                                                                    print(user.name);
                                                                    if (user.isInventoryExist == true) {
                                                                      model=user;
                                                                      print("existing");
                                                                      print(model.email);
                                                                      // prefs.setString('token', user?.token ?? "");
                                                                    } else {
                                                                    }
                                                                  });
                                                                  Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(builder: (context) =>
                                                                        PrintScreen(table:recievingLisnes,
                                                                          note: noteController.text,
                                                                          orderCode:orderCodeController.text ,
                                                                          vendorCode:  vendorCodeController.text,
                                                                          orderDate:orederDate2Controller .text,
                                                                          vat: double.tryParse( vatController.text),
                                                                          actualCost:double.tryParse( actualCostController.text),
                                                                          variableAmount:double.tryParse( vatableAmountController.text) ,
                                                                          discount:double.tryParse( discountController.text) ,
                                                                          unitCost:double.tryParse( unitCostController.text) ,
                                                                          excisetax:double.tryParse( excessTaxController.text) ,
                                                                          remarks: remarksController.text ,
                                                                          model: model,
                                                                          pageName: "PURCHASE RECEIVING",
                                                                        )),
                                                                  );
                                                                },
                                                              ),
                                                            ]



                                                          ),

                                                          Row(
                                                            children: [
                                                              Expanded(
                                                                child: Container(
                                                                  child: Row(
                                                                    // mainAxisAlignment: MainAxisAlignment.start,
                                                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Expanded(
                                                                          child: Column(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                            children: [


                                                                              NewInputCard(
                                                                                  readOnly:
                                                                                  true,
                                                                                  controller:
                                                                                  orderCodeController,
                                                                                  title:
                                                                                  "Order Code"),
                                                                              SizedBox(
                                                                                height: height *
                                                                                    .030,
                                                                              ),
                                                                              NewInputCard(
                                                                                  readOnly:
                                                                                  true,
                                                                                  controller:
                                                                                  recievingCodeController,
                                                                                  title:
                                                                                  "Receiving Code"),
                                                                              SizedBox(
                                                                                height: height *
                                                                                    .030,
                                                                              ),
                                                                              NewInputCard(
                                                                                readOnly: true,
                                                                                controller:
                                                                                orederDate2Controller,
                                                                                title:
                                                                                "Order Date",
                                                                                colors: Color(
                                                                                    0xff3E4F5B),
                                                                              ),
                                                                              SizedBox(
                                                                                height: height *
                                                                                    .030,
                                                                              ),
                                                                              NewInputCard(
                                                                                  readOnly:
                                                                                  true,
                                                                                  controller:
                                                                                  orderStatusController,
                                                                                  title:
                                                                                  "Order Status"),
                                                                              SizedBox(
                                                                                height: height *
                                                                                    .030,
                                                                              ),
                                                                              NewInputCard(
                                                                                  readOnly:
                                                                                  true,
                                                                                  controller:
                                                                                  paymentStatusController,
                                                                                  title:
                                                                                  "Payment Status"),
                                                                              SizedBox(
                                                                                height: height *
                                                                                    .030,
                                                                              ),
                                                                              NewInputCard(
                                                                                  readOnly:
                                                                                  true,
                                                                                  controller:
                                                                                  invoiceStausController,
                                                                                  title:
                                                                                  "Invoice Status"),

                                                                            ],
                                                                          )),
                                                                      Expanded(
                                                                          child: Column(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                            children: [
                                                                              //  SizedBox(height: height*.030,),
                                                                              NewInputCard(
                                                                                      readOnly: true,
                                                                                  controller:
                                                                                  receivedController,
                                                                                  title: "Receiving Status"),
                                                                              SizedBox(
                                                                                height: height * .030,
                                                                              ),
                                                                              NewInputCard(
                                                                                  readOnly: true,
                                                                                  controller:
                                                                                  focController,
                                                                                  title: "FOC"),
                                                                              SizedBox(
                                                                                height: height * .030,
                                                                              ),
                                                                              NewInputCard(
                                                                                  readOnly: true,
                                                                                  controller:
                                                                                  discountController,
                                                                                  title:
                                                                                  "Discount"),
                                                                              SizedBox(
                                                                                height: height * .030,
                                                                              ),
                                                                              NewInputCard(
                                                                                      readOnly: true,
                                                                                  controller: unitCostController,
                                                                                  title:
                                                                                  "Unit Cost"),
                                                                              SizedBox(
                                                                                height: height *
                                                                                    .030,
                                                                              ),
                                                                              NewInputCard(
                                                                                      readOnly: true,
                                                                                  controller:
                                                                                  vatableAmountController,
                                                                                  title:
                                                                                  "Vatable Amount"),
                                                                              SizedBox(
                                                                                height: height *
                                                                                    .030,
                                                                              ),
                                                                              NewInputCard(
                                                                                      readOnly: true,
                                                                                  controller:
                                                                                  excessTaxController,
                                                                                  title:
                                                                                  "Excess Tax"),


                                                                            ],
                                                                          )),
                                                                      Expanded(
                                                                          child: Column(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                            children: [


                                                                              NewInputCard(
                                                                                      readOnly: true,
                                                                                  controller:
                                                                                  vatController,
                                                                                  title: "VAT"),
                                                                              SizedBox(
                                                                                height: height *
                                                                                    .030,
                                                                              ),
                                                                              NewInputCard(
                                                                                  readOnly:
                                                                                  true,
                                                                                  controller:
                                                                                  actualCostController,
                                                                                  title:
                                                                                  "Actual Cost"),
                                                                              SizedBox(
                                                                                height: height *
                                                                                    .030,
                                                                              ),
                                                                              NewInputCard(
                                                                                  readOnly:
                                                                                  true,
                                                                                  controller:
                                                                                  grandTotalController,
                                                                                  title:
                                                                                  "Grand Total"),
                                                                              SizedBox(
                                                                                height: height *
                                                                                    .030,
                                                                              ),
                                                                              NewInputCard(

                                                                                controller:
                                                                                noteController,
                                                                                title: "Note",
                                                                                height: 90,
                                                                                maxLines: 3,
                                                                              ),
                                                                              SizedBox(
                                                                                height: height *
                                                                                    .030,
                                                                              ),
                                                                              NewInputCard(

                                                                                controller:
                                                                                remarksController,
                                                                                title:
                                                                                "Remarks",
                                                                                height: 90,
                                                                                maxLines: 3,
                                                                              ),

                                                                              SizedBox(height: height*.030,),
                                                                            ],
                                                                          )),
                                                                    ],
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: height * .10,
                                                          ),

                                                          TextWidget(
                                                              text: "Receiving Lines"),

                                                          SizedBox(
                                                            height: height * .010,
                                                          ),
                                                          // ScrollableTable(),

                                                          Container(
                                                            margin:  EdgeInsets.symmetric(horizontal:width *.0155 ),
                                                            child: Scrollbar(
                                                                controller: scontroller,
                                                                // isAlwaysShown: true,
                                                                child: Container(

                                                                  alignment:
                                                                  Alignment.topRight,

                                                                  child:
                                                                  SingleChildScrollView(
                                                                    padding: EdgeInsets.only(
                                                                        top: 0),

                                                                    controller: scontroller,
                                                                    physics: ScrollPhysics(),
                                                                    scrollDirection:
                                                                    Axis.horizontal,

                                                                   child:   Container(
                                                                        child: Column(
                                                                          crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                          children: [
                                                                            SingleChildScrollView(
                                                                              child:
                                                                              Container(
                                                                                width: 2200,
                                                                                // padding:
                                                                                // EdgeInsets
                                                                                //     .all(
                                                                                //     10),
                                                                                child:
                                                                                customTable(

                                                                                  tableWidth:
                                                                                  .5,
                                                                                  childrens: [
                                                                                    TableRow(
                                                                                        children: [
                                                                                          tableHeadtext(
                                                                                            'Sl.No',
                                                                                            size: 13,
                                                                                          ),
                                                                                          tableHeadtext(
                                                                                            'Orderline Id',
                                                                                            size: 12,
                                                                                          ),
                                                                                          tableHeadtext(
                                                                                            'Variant Id',
                                                                                            size: 13,
                                                                                          ),
                                                                                          tableHeadtext(
                                                                                            'Variant Name',
                                                                                            size: 13,
                                                                                          ),
                                                                                          tableHeadtext(
                                                                                            'Supplier Ref Code',
                                                                                            size: 13,
                                                                                          ),
                                                                                          tableHeadtext(
                                                                                            'Barcode',
                                                                                            size: 13,
                                                                                          ),
                                                                                          tableHeadtext(
                                                                                            'Current Qty',
                                                                                            size: 13,
                                                                                            center: true,
                                                                                            padding: EdgeInsets.only(bottom:height*.0198),

                                                                                          ),
                                                                                          tableHeadtext(
                                                                                            'Purchase UOM',
                                                                                            size: 13,
                                                                                          ),
                                                                                          tableHeadtext(
                                                                                            'Received Qty',
                                                                                            size: 13,
                                                                                            center: true,
                                                                                            padding: EdgeInsets.only(bottom:height*.0198),
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
                                                                                            center: true,
                                                                                            padding: EdgeInsets.only(bottom:height*.0198),
                                                                                          ),
                                                                                          tableHeadtext(
                                                                                            'Excise Tax',
                                                                                            size: 13,
                                                                                            center: true,
                                                                                            padding: EdgeInsets.only(bottom:height*.0198),
                                                                                          ),
                                                                                          tableHeadtext(
                                                                                            'Discount',
                                                                                            size: 13,
                                                                                            center: true,
                                                                                            padding: EdgeInsets.only(bottom:height*.0198),
                                                                                          ),

                                                                                          tableHeadtext(
                                                                                            'FOC',
                                                                                            size: 13,
                                                                                            center: true,
                                                                                            padding: EdgeInsets.only(bottom:height*.0198),

                                                                                          ),

                                                                                          tableHeadtext(
                                                                                            'Vatable Amount',
                                                                                            size: 13,
                                                                                            center: true,
                                                                                            padding: EdgeInsets.only(bottom:height*.0198),
                                                                                            // color: Palette.containerDarknew,
                                                                                            // textColor: Palette.white
                                                                                          ),
                                                                                          tableHeadtext(
                                                                                            'VAT',
                                                                                            size: 13,
                                                                                            center: true,
                                                                                            padding: EdgeInsets.only(bottom:height*.0198),
                                                                                          ),
                                                                                          tableHeadtext(
                                                                                            'Actual Cost',
                                                                                            center: true,
                                                                                            padding: EdgeInsets.only(bottom:height*.0198),

                                                                                            size: 13,
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
                                                                Container(height: 42,),
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
                                                                      ],
                                                                  )


                                                                                    ],
                                                                                    if (recievingLisnes != null) ...[

                                                                                      for (var i = 0; i < recievingLisnes.length;
                                                                                      i++)
                                                                                        TableRow(
                                                                                            decoration: BoxDecoration(
                                                                                                color:receiveSelctedraw==i?Pellet.selectedTableColor: Pellet.tableRowColor,
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
                                                                                                // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                                fontWeight: FontWeight.w500),
                                                                                              ),
                                                                                              TableCell(
                                                                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                                child: textPadding(recievingLisnes[i].orderLineCode.toString(),
                                                                                                    // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                                    fontWeight: FontWeight.w500),
                                                                                              ),
                                                                                              TableCell(
                                                                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                                child:
                                                                                                VariantIdTAble(
                                                                                                  text:recievingLisnes[i].variantId.toString(),
                                                                                                  onTap: (){
                                                                                                    showDailogPopUp(
                                                                                                      context,
                                                                                                      TableConfigurePopup(
                                                                                                        vendorId:  vendorCodeController.text,
                                                                                                        type: "variantTabalePopup",
                                                                                                        valueSelect: (VariantId? va) {
                                                                                                          updateCheck=true;
                                                                                                          recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                                                                                          setState(() {

                                                                                                          });
                                                                                                          recievingLisnes[i] = recievingLisnes[i].copyWith(variantId:va?.code );
                                                                                                          setState(() {
                                                                                                            var  variant= va?.code;
                                                                                                            int? id = va!.id;
                                                                                                            Variable.tableindex =i;
                                                                                                            Variable.tableedit=false;
                                                                                                            recievlinequantityCheck=true;
                                                                                                            stockCheck=true;

                                                                                                            variantIdcheck=true;

                                                                                                              FocusScope.of(context).requestFocus(receivefocusNodes[i][0]);


                                                                                                            context.read<TableDetailsCubitDartCubit>().getTableDetails(id);
                                                                                                            context.read<PurchaseStockCubit>().getCurrentStock(Variable.inventory_ID, variant);

                                                                                                            // orderType = va!;
                                                                                                          });
                                                                                                        },
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                )


                                                                                                //     PopUpCall(
                                                                                                //   vendorId: vendorCodeController.text,
                                                                                                //
                                                                                                //   type:"cost-method-list",
                                                                                                //   value: recievingLisnes[i].variantId,
                                                                                                //   onSelection: (VariantId? va) {
                                                                                                //     updateCheck=true;
                                                                                                //     recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                                                                                //     setState(() {
                                                                                                //
                                                                                                //     });
                                                                                                //     recievingLisnes[i] = recievingLisnes[i].copyWith(variantId:va?.code );
                                                                                                //     setState(() {
                                                                                                //       var  variant= va?.code;
                                                                                                //       int? id = va!.id;
                                                                                                //       Variable.tableindex =i;
                                                                                                //       Variable.tableedit=false;
                                                                                                //       recievlinequantityCheck=true;
                                                                                                //       stockCheck=true;
                                                                                                //
                                                                                                //       variantIdcheck=true;
                                                                                                //       context.read<TableDetailsCubitDartCubit>().getTableDetails(id);
                                                                                                //       context.read<PurchaseStockCubit>().getCurrentStock(Variable.inventory_ID, variant);
                                                                                                //
                                                                                                //       // orderType = va!;
                                                                                                //     });
                                                                                                //   }, // restricted: true,
                                                                                                // ),
                                                                                              ),
                                                                                              // TableCell(
                                                                                              //   verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                              //   child: textPadding(recievingLisnes[i].variantId ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                                              // ),
                                                                                              TableCell(
                                                                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                                child: textPadding(recievingLisnes[i].variantName ?? "",
                                                                                                    // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                                    fontWeight: FontWeight.w500),
                                                                                              ),
                                                                                              TableCell(
                                                                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                                child: textPadding(recievingLisnes[i].supplierCode ?? "",
                                                                                                    // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                                    fontWeight: FontWeight.w500),
                                                                                              ),
                                                                                              TableCell(
                                                                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                                child: textPadding(recievingLisnes[i].barcode ?? "",
                                                                                                    // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                                    fontWeight: FontWeight.w500),
                                                                                              ),
                                                                                              TableCell(
                                                                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                                child: textPadding(currentStock.length!=recievingLisnes.length?"":currentStock[i].toString(),
                                                                                                    // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                    alighnment: Alignment.topRight),
                                                                                              ),
                                                                                              TableCell(
                                                                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                                child: textPadding(recievingLisnes[i].purchaseUom ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                                              ),

                                                                                              TableCell(
                                                                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                                child: UnderLinedInput(
                                                                                                  initialCheck:true,
                                                                                                  integerOnly: true,
                                                                                                  focusNode: receivefocusNodes[i][0],
                                                                                                  onComplete: (){
                                                                                                    FocusScope.of(context).requestFocus(receivefocusNodes[i][1]);
                                                                                                    setState(() {

                                                                                                    });
                                                                                                  },
                                                                                                  last: recievingLisnes[i].requestedQty.toString() ?? "",
                                                                                                  onChanged: (va) {
                                                                                                    updateCheck=true;
                                                                                                    recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                                                                                    setState(() {

                                                                                                    });
                                                                                                    print(va);
                                                                                                    if (va == "") {
                                                                                                      print("entered");
                                                                                                      recievingLisnes[i] = recievingLisnes[i].copyWith(requestedQty: 0, vatableAmount: 0, actualCost: 0, grandTotal: 0);
                                                                                                    } else {
                                                                                                      var qty = int.tryParse(va);
                                                                                                      var dis = recievingLisnes[i].discount??0;
                                                                                                      var excess = recievingLisnes[i].excessTax??0;
                                                                                                      var unitcost = recievingLisnes[i].unitCost??0;
                                                                                                      var vat = recievingLisnes[i].vat??0;
                                                                                                      var foc = recievingLisnes[i].foc??0;
                                                                                                      if (qty == 0 || unitcost == 0) {
                                                                                                        recievingLisnes[i] = recievingLisnes[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0);
                                                                                                      }

                                                                                                      else {double Vamount;
                                                                                                      double vactualCost;
                                                                                                      if(foc==0 || foc==""){
                                                                                                        Vamount  = double.parse((((unitcost! *
                                                                                                            qty!) +
                                                                                                            excess!) -
                                                                                                            dis!)
                                                                                                            .toStringAsFixed(2));
                                                                                                        if(vat==0 ||vat==""){
                                                                                                          vactualCost=Vamount;
                                                                                                        }
                                                                                                        else{

                                                                                                          vactualCost  = double.parse((Vamount! +
                                                                                                              ((Vamount! *
                                                                                                                  vat!) /
                                                                                                                  100)).toStringAsFixed(2));
                                                                                                        }


                                                                                                        recievingLisnes[i] = recievingLisnes[i].copyWith(
                                                                                                                vatableAmount: Vamount,
                                                                                                                actualCost: vactualCost,
                                                                                                                grandTotal: vactualCost,
                                                                                                                requestedQty: qty);
                                                                                                      }
                                                                                                      else{

                                                                                                        double   Vamount=double.parse(((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-dis!).toStringAsFixed(2));
                                                                                                        double vactualCost = double.parse((Vamount! +
                                                                                                            ((Vamount! *
                                                                                                                vat!) /
                                                                                                                100)).toStringAsFixed(2));

                                                                                                        recievingLisnes[i] =
                                                                                                            recievingLisnes[i]
                                                                                                                .copyWith(
                                                                                                                vatableAmount: Vamount,
                                                                                                                actualCost: vactualCost,
                                                                                                                grandTotal: vactualCost,
                                                                                                                requestedQty: qty);
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
                                                                                                    focusNode: receivefocusNodes[i][1],
                                                                                                    onCompleteFunc: (){
                                                                                                      updateCheck=true;

                                                                                                      recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                                                                                      setState(() {

                                                                                                      });
                                                                                                      bool? isRecieved = recievingLisnes[i].isReceived;
                                                                                                      setState(() {
                                                                                                        isRecieved = !isRecieved!;
                                                                                                        recievingLisnes[i] = recievingLisnes[i].copyWith(isReceived: isRecieved);
                                                                                                        print(recievingLisnes);
                                                                                                        FocusScope.of(context).requestFocus(receivefocusNodes[i][2]);
                                                                                                      });
                                                                                                    },
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
                                                                                                  focusNode: receivefocusNodes[i][2],
                                                                                                    onComplete: (){
                                                                                                    print("ghjkhgftghjhgfghjk");
                                                                                                      FocusScope.of(context).requestFocus(receivefocusNodes[i][3]);
                                                                                                      setState(() {

                                                                                                      });
                                                                                                    },
                                                                                                    controller:unitcostReceivingListControllers[i],





                                                                                                  // initialCheck:true,
                                                                                                  // last: recievingLisnes[i].unitCost.toString() ?? "",
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


                                                                                                    var qty = recievingLisnes[i].requestedQty;

                                                                                                    var excess = recievingLisnes[i].excessTax;

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
                                                                                                        double Vamount =double.parse( (((unitcost! *
                                                                                                            qty!) +
                                                                                                            excess!) -
                                                                                                            disc!).toStringAsFixed(2));


                                                                                                        double vactualCost = double.parse((Vamount! +
                                                                                                            ((Vamount! *
                                                                                                                vat!) /
                                                                                                                100)).toStringAsFixed(2));

                                                                                                        recievingLisnes[i] =
                                                                                                            recievingLisnes[i]
                                                                                                                .copyWith(
                                                                                                                vatableAmount: Vamount,
                                                                                                                actualCost: vactualCost,
                                                                                                                grandTotal: vactualCost,
                                                                                                                unitCost: unitcost);
                                                                                                        setState(() {});
                                                                                                      }else{
                                                                                                        double   Vamount=double.parse(((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-disc!).toStringAsFixed(2));
                                                                                                        double vactualCost =double.parse( (Vamount! +
                                                                                                            ((Vamount! *
                                                                                                                vat!) /
                                                                                                                100)).toStringAsFixed(2));
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
                                                                                                  initialCheck:true,
                                                                                                  focusNode: receivefocusNodes[i][3],
                                                                                                  onComplete: (){
                                                                                                    FocusScope.of(context).requestFocus(receivefocusNodes[i][4]);
                                                                                                  },
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

                                                                                                    var qty = recievingLisnes[i].requestedQty;
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
                                                                                                      double Vamount;

                                                                                                      if(foc==0 ||foc=="") {
                                                                                                        Vamount =
                                                                                                           double.parse( (((unitcost! *
                                                                                                                qty!) +
                                                                                                                excess!) -
                                                                                                                Vdiscount!)
                                                                                                                .toStringAsFixed(2));
                                                                                                      }else{
                                                                                                        Vamount=double.parse(((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-Vdiscount!).toStringAsFixed(2));

                                                                                                      }
                                                                                                      double vactualCost =double.parse( (Vamount! +
                                                                                                          ((Vamount! *
                                                                                                              vat!) /
                                                                                                              100)).toStringAsFixed(2));
                                                                                                      double Vgrnadtotal = double.parse((Vamount! +
                                                                                                          ((Vamount! *
                                                                                                              vat!) /
                                                                                                              100)).toStringAsFixed(2));
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
                                                                                                  initialCheck:true,
                                                                                                  focusNode: receivefocusNodes[i][4],
                                                                                                  onComplete: (){
                                                                                                    FocusScope.of(context).requestFocus(receivefocusNodes[i][5]);
                                                                                                  },
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
                                                                                                        .requestedQty;

                                                                                                    var excess = recievingLisnes[i]
                                                                                                        .excessTax;

                                                                                                    var unitcost = recievingLisnes[i]
                                                                                                        .unitCost;

                                                                                                    var vat = recievingLisnes[i].vat;
                                                                                                    var foc = recievingLisnes[i]
                                                                                                        .foc;

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
                                                                                                        double Vamount =double.parse( (((unitcost! *
                                                                                                            qty!) +
                                                                                                            excess!) -
                                                                                                            disc!)
                                                                                                            .toStringAsFixed(2));


                                                                                                        double vactualCost =double.parse( (Vamount! +
                                                                                                            ((Vamount! *
                                                                                                                vat!) /
                                                                                                                100)).toStringAsFixed(2));

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
                                                                                                        double   Vamount=double.parse(((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-disc!).toStringAsFixed(2));
                                                                                                        double vactualCost = double.parse((Vamount! +
                                                                                                            ((Vamount! *
                                                                                                                vat!) /
                                                                                                                100)).toStringAsFixed(2));
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


                                                                                              TableCell(
                                                                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                                child: UnderLinedInput(
                                                                                                  initialCheck:true,
                                                                                                  focusNode: receivefocusNodes[i][5],
                                                                                                  onComplete: (){
                                                                                                    FocusScope.of(context).requestFocus(receivefocusNodes[i][6]);
                                                                                                  },
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
                                                                                                    var qty = recievingLisnes[i].requestedQty;
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
                                                                                                      double Vamount;
                                                                                                      if(foc==0 ||foc==""){
                                                                                                        Vamount = double.parse((((unitcost! *
                                                                                                            qty!) +
                                                                                                            excess!) -
                                                                                                            disc!)
                                                                                                            .toStringAsFixed(2));
                                                                                                        setState(() {

                                                                                                        });

                                                                                                      }else{
                                                                                                        Vamount=double.parse(((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-disc!).toStringAsFixed(3));
                                                                                                        setState(() {

                                                                                                        });

                                                                                                      }
                                                                                                      double vactualCost =double.parse( (Vamount! +
                                                                                                          ((Vamount! *
                                                                                                              vat!) /
                                                                                                              100)).toStringAsFixed(2));
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
                                                                                                child: textPadding(recievingLisnes[i]?.vatableAmount.toString() ?? "",
                                                                                                    // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                    alighnment: Alignment.topRight),
                                                                                              ),
                                                                                              TableCell(
                                                                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                                child: textPadding(recievingLisnes[i]?.vat.toString() ?? "",
                                                                                                    // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                                     fontWeight: FontWeight.w500,
                                                                                                    alighnment: Alignment.topRight),
                                                                                              ),
                                                                                              // TableCell(
                                                                                              //   verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                              //   child: UnderLinedInput(
                                                                                              //     initialCheck:true,
                                                                                              //     last: recievingLisnes[i].vat.toString() ?? "",
                                                                                              //     onChanged: (va) {
                                                                                              //       updateCheck=true;
                                                                                              //       recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                                                                              //       setState(() {
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
                                                                                              //             double Vamount = double.parse((((unitcost! *
                                                                                              //                 qty!) +
                                                                                              //                 excess!) -
                                                                                              //                 dis!)
                                                                                              //                 .toStringAsFixed(2));
                                                                                              //             double vactualCost = double.parse((Vamount! +
                                                                                              //                 ((Vamount! *
                                                                                              //                     vat!) /
                                                                                              //                     100)).toStringAsFixed(2));
                                                                                              //             double Vgrnadtotal =double.parse( (Vamount! +
                                                                                              //                 ((Vamount! *
                                                                                              //                     vat!) /
                                                                                              //                     100)).toStringAsFixed(2));
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
                                                                                              //             double   Vamount=double.parse(((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-dis!).toStringAsFixed(2));
                                                                                              //
                                                                                              //             double vactualCost =double.parse( (Vamount! +
                                                                                              //                 ((Vamount! *
                                                                                              //                     vat!) /
                                                                                              //                     100)).toStringAsFixed(2));
                                                                                              //             double Vgrnadtotal = double.parse((Vamount! +
                                                                                              //                 ((Vamount! *
                                                                                              //                     vat!) /
                                                                                              //                     100)).toStringAsFixed(2));
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
                                                                                                child: textPadding(recievingLisnes[i].actualCost.toString() ?? "", fontSize: 12,
                                                                                                    // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                    alighnment: Alignment.topRight),
                                                                                              ),
                                                                                              TableCell(
                                                                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                                child: textPadding(recievingLisnes[i].grandTotal.toString() ?? "",
                                                                                                // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                    alighnment: Alignment.topRight),
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
                                                                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                                child: Tabledate(
                                                                                                        focusNode: receivefocusNodes[i][6],
                                                                                                    onEnterClick: (){
                                                                                                      FocusScope.of(context).requestFocus(receivefocusNodes[i][7]);
                                                                                                    },

                                                                                                    format:DateFormat('dd-MM-yyyy'),
                                                                                                    controller:recievingLisnes.length!=expirydateControllerList2.length?TextEditingController(text:""): expirydateControllerList2[i],
                                                                                                    label: "Promised Receipt date",
                                                                                                    onSuffixIconPressed: (){
                                                                                                      setState(() {



                                                                                                        recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck:recievingLisnes[i].expiryDate!=null||recievingLisnes[i].updateCheck==true? true:false,expiryDate: null);
                                                                                                        expirydateControllerList2[i]=TextEditingController(text: "");
                                                                                                      });


                                                                                                    },
                                                                                                    onSaved: (newValue) {
                                                                                                      updateCheck=true;
                                                                                                      recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                                                                                      setState(() {

                                                                                                      });
                                                                                                      expirydateControllerList2[i]=TextEditingController(text:DateFormat('dd-MM-yyyy').format(newValue!));
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



                                                                                              // TableCell(
                                                                                              //   verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                              //   child: textPadding(recievingLisnes[i].expiryDate.toString() ?? "", fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5), fontWeight: FontWeight.w500),
                                                                                              // ),

                                                                                              TableCell(
                                                                                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                                child:CheckedBoxs(
                                                                                                        focusNode: receivefocusNodes[i][7],
                                                                                                    onCompleteFunc: (){
                                                                                                      updateCheck=true;
                                                                                                      recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                                                                                      setState(() {

                                                                                                      });
                                                                                                      bool? isFree = recievingLisnes[i].isFree;
                                                                                                      setState(() {
                                                                                                        isFree = !isFree!;
                                                                                                        recievingLisnes[i] = recievingLisnes[i].copyWith(isFree: isFree);
                                                                                                        print(isFree);

                                                                                                      });

                                                                                                      FocusScope.of(context).requestFocus(receivefocusNodes[i][8]);
                                                                                                    },
                                                                                                    valueChanger:recievingLisnes[i].isFree == null ? false : recievingLisnes[i].isFree,
                                                                                                    onSelection:(bool ? value){
                                                                                                      updateCheck=true;
                                                                                                      recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: true);
                                                                                                      setState(() {

                                                                                                      });
                                                                                                      bool? isFree = recievingLisnes[i].isFree;
                                                                                                      setState(() {
                                                                                                        isFree = !isFree!;
                                                                                                        recievingLisnes[i] = recievingLisnes[i].copyWith(isFree: isFree);
                                                                                                        print(isFree);

                                                                                                      });

                                                                                                    }),

                                                                                              ),

                                                                                              TableCell(
                                                                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                                child:
                                                                                                CheckedBoxs(
                                                                                                  focusNode: receivefocusNodes[i][8],
                                                                                                  onCompleteFunc: (){
                                                                                                    updateCheck=true;

                                                                                                    bool? isActive = recievingLisnes[i].isActive;
                                                                                                    setState(() {
                                                                                                      isActive = !isActive!;
                                                                                                      recievingLisnes[i] = recievingLisnes[i].copyWith(isActive: isActive,updateCheck: true);

                                                                                                      receiveLinesUpdateFunction(i);
                                                                                                      if(i!=recievingLisnes.length-1){
                                                                                                        FocusScope.of(context).requestFocus(receivefocusNodes[i+1][0]);
                                                                                                      }
                                                                                                      else{
                                                                                                        FocusScope.of(context).requestFocus(receivefocusNodes[i][0]);
                                                                                                      }
                                                                                                    });
                                                                                                  },
                                                                                                  valueChanger: recievingLisnes[i].isActive == null ? false : recievingLisnes[i].isActive,
                                                                                                  onSelection
                                                                                                      : (bool? value) {
                                                                                                    updateCheck=true;

                                                                                                    bool? isActive = recievingLisnes[i].isActive;
                                                                                                    setState(() {
                                                                                                      isActive = !isActive!;
                                                                                                      recievingLisnes[i] = recievingLisnes[i].copyWith(isActive: isActive,updateCheck: true);


                                                                                                    });
                                                                                                  },
                                                                                                ),
                                                                                              ),
                                                                                              TableCell(
                                                                                                verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                                child: TableTextButton(
                                                                                                    textColor:  recievingLisnes?[i].updateCheck==true?Pellet.bagroundColor:Colors.black,
                                                                                                  bagroundColor: recievingLisnes?[i].updateCheck==true?Pellet.tableBlueHeaderPrint:Colors.transparent,

                                                                                                    onPress: () {


                                                                                                      receiveLinesUpdateFunction(i);





                                                                                                    },
                                                                                                    label: recievingLisnes[i].updateCheck==true?"Update":"",

                                                                                                ),
                                                                                              ),


                                                                                            ])
                                                                                    ]
                                                                                  ],
                                                                                  widths: {
                                                                                    0: FlexColumnWidth(2),
                                                                                    1: FlexColumnWidth(3),
                                                                                    2: FlexColumnWidth(3),
                                                                                    3: FlexColumnWidth(4),
                                                                                    4: FlexColumnWidth(3),
                                                                                    5: FlexColumnWidth(3),
                                                                                    6: FlexColumnWidth(3),
                                                                                    7: FlexColumnWidth(3),
                                                                                    8: FlexColumnWidth(3),
                                                                                    9: FlexColumnWidth(2.5),
                                                                                    10: FlexColumnWidth(3),
                                                                                    11: FlexColumnWidth(3),
                                                                                    12: FlexColumnWidth(3),
                                                                                    13: FlexColumnWidth(3),
                                                                                    14: FlexColumnWidth(3),
                                                                                    15: FlexColumnWidth(3),
                                                                                    16: FlexColumnWidth(3),
                                                                                    17: FlexColumnWidth(3),
                                                                                    18: FlexColumnWidth(2.5),
                                                                                    19: FlexColumnWidth(4),
                                                                                    20: FlexColumnWidth(2.5),
                                                                                    21: FlexColumnWidth(2.5),
                                                                                    22: FlexColumnWidth(3),

                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ),


                                                                          ],
                                                                        ),
                                                                      )
                                                                   ,
                                                                  ),
                                                                )),
                                                          ),

                                                          Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment.end,
                                                            children: [
                                                              TextButtonLarge(
                                                                clr: tabCount==3?Pellet.buttonActiveClr:Pellet.tableBlueHeaderPrint,

                                                                onPress: () {
                                                                  receiveLinesGenerateFunction();

                                                                },
                                                                icon: Icons.check,
                                                                // iconColor: Colors.white,
                                                                text: "GENERATE ORDER",


                                                              ),
                                                            ],
                                                          ),


                                                          SizedBox(
                                                            height: height * .10,
                                                          ),
                                                          TextWidget(
                                                              text: "Additional Variants"),
                                                          SizedBox(height: height*.01,),

                                                          CustomScrollBar    (
                                                              controller: verticalController,

                                                              childs: Container(
                                                                alignment:
                                                                Alignment.topRight,

                                                                child:
                                                                SingleChildScrollView(
                                                                  controller: verticalController,
                                                                  physics: ScrollPhysics(),
                                                                  scrollDirection:
                                                                  Axis.horizontal,

                                                               child:     Column(
                                                                      crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                      children: [

                                                                        Container(
                                                                          width:2200,

                                                                          child: customTable(

                                                                              tableWidth: .5,
                                                                              childrens: [
                                                                                TableRow(

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
                                                                                        'Supplier Ref Code',

                                                                                        size: 13,
                                                                                        // color: Palette.containerDarknew,
                                                                                        // textColor: Palette.white
                                                                                      ),
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
                                                                                        'Received Qty',
                                                                                        size: 13,
                                                                                        center: true,
                                                                                        padding: EdgeInsets.only(bottom:height*.0198),
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
                                                                                        center: true,
                                                                                        padding: EdgeInsets.only(bottom:height*.0198),
                                                                                        // color: Palette.containerDarknew,
                                                                                        // textColor: Palette.white
                                                                                      ),
                                                                                      tableHeadtext(
                                                                                        'Excess Tax',
                                                                                        size: 13,
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
                                                                                        size: 13,
                                                                                        center: true,
                                                                                        padding: EdgeInsets.only(bottom:height*.0198),
                                                                                      ),
                                                                                      tableHeadtext(
                                                                                        'VAT',
                                                                                        size: 13,
                                                                                        center: true,
                                                                                        padding: EdgeInsets.only(bottom:height*.0198),

                                                                                      ),
                                                                                      tableHeadtext(
                                                                                        'Actual Cost',
                                                                                        size: 13,
                                                                                        center: true,
                                                                                        padding: EdgeInsets.only(bottom:height*.0198),
                                                                                        // color: Palette.containerDarknew,
                                                                                        // textColor: Palette.white
                                                                                      ),
                                                                                      tableHeadtext(
                                                                                        'Grand Total',
                                                                                        size: 13,
                                                                                          center: true,
                                                                                          padding: EdgeInsets.only(bottom:height*.0198),
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
                                                                                        // color: Palette.containerDarknew,
                                                                                        // textColor: Palette.white
                                                                                      ),
                                                                                      // if (widget.onAddNew) textPadding(''),
                                                                                    ]),
                                                                                if (additionalVariants != null)...[
                                                                                  for(var i=0;i<additionalVariants.length;i++)
                                                                                    TableRow(
                                                                                        decoration: BoxDecoration(
                                                                                            color:selctedraw==i?Pellet.selectedTableColor: Pellet.tableRowColor,
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
                                                                                            child:  VariantIdTAble(
                                                                                              text:additionalVariants[i].variantId.toString(),
                                                                                              onTap: (){
                                                                                                showDailogPopUp(
                                                                                                  context,
                                                                                                  TableConfigurePopup(
                                                                                                      vendorId: vendorCodeController.text,
                                                                                                    type: "variantTabalePopup",
                                                                                                    valueSelect: (VariantId? va) {
                                                                                                      updateCheck1=true;

                                                                                                      additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: true);
                                                                                                      setState(() {

                                                                                                      });
                                                                                                      additionalVariants[i] = additionalVariants[i].copyWith(variantId:va?.code );
                                                                                                      setState(() {
                                                                                                        var  variant=
                                                                                                            va?.code;
                                                                                                        int? id = va!.id;
                                                                                                        Variable.tableindex =i;
                                                                                                        Variable.tableedit=true;
                                                                                                        variantIdcheck=false;
                                                                                                        recievlinequantityCheck=false;
                                                                                                        stockCheck=true;


                                                                                                        onChange = true;
                                                                                                        FocusScope.of(context).requestFocus(listOfxfocusNodes[i][0]);
                                                                                                        context
                                                                                                            .read<
                                                                                                            TableDetailsCubitDartCubit>()
                                                                                                            .getTableDetails(
                                                                                                            id);
                                                                                                        context
                                                                                                            .read<PurchaseStockCubit>()
                                                                                                            .getCurrentStock("", variant);

                                                                                                        // orderType = va!;
                                                                                                      });
                                                                                                    },
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            )
                                                                                            //
                                                                                            // PopUpCall(
                                                                                            //     vendorId: vendorCodeController.text,
                                                                                            //
                                                                                            //   type: "cost-method-list",
                                                                                            //   value: additionalVariants[i].variantId,
                                                                                            //   onSelection:
                                                                                            //       (VariantId? va) {
                                                                                            //         updateCheck1=true;
                                                                                            //
                                                                                            //         additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: false);
                                                                                            //         setState(() {
                                                                                            //
                                                                                            //         });
                                                                                            //     additionalVariants[i] = additionalVariants[i].copyWith(variantId:va?.code );
                                                                                            //     setState(() {
                                                                                            //       var  variant=
                                                                                            //           va?.code;
                                                                                            //       int? id = va!.id;
                                                                                            //       Variable.tableindex =i;
                                                                                            //       Variable.tableedit=true;
                                                                                            //       variantIdcheck=false;
                                                                                            //       recievlinequantityCheck=false;
                                                                                            //       stockCheck=true;
                                                                                            //
                                                                                            //
                                                                                            //       onChange = true;
                                                                                            //       context
                                                                                            //           .read<
                                                                                            //           TableDetailsCubitDartCubit>()
                                                                                            //           .getTableDetails(
                                                                                            //           id);
                                                                                            //       context
                                                                                            //           .read<PurchaseStockCubit>()
                                                                                            //           .getCurrentStock("", variant);
                                                                                            //
                                                                                            //       // orderType = va!;
                                                                                            //     });
                                                                                            //   },
                                                                                            //
                                                                                            //   // restricted: true,
                                                                                            // ),
                                                                                          ),
                                                                                          TableCell(
                                                                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                            child: textPadding(additionalVariants[i].variantName ?? "",
                                                                                                // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                                fontWeight: FontWeight.w500),
                                                                                          ),
                                                                                          TableCell(
                                                                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                            child: textPadding(additionalVariants[i].supplierCode ?? "",
                                                                                                // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                                fontWeight: FontWeight.w500),
                                                                                          ),
                                                                                          TableCell(
                                                                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                            child: textPadding(additionalVariants[i].barcode ?? "",
                                                                                                // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                                fontWeight: FontWeight.w500),
                                                                                          ),
                                                                                          TableCell(
                                                                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                            child: textPadding(additionalVariants[i].currentStock.toString() ?? "",

                                                                                                // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                             fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                                                                          ),
                                                                                          TableCell(
                                                                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                            child: textPadding(
                                                                                                additionalVariants[i].purchaseUom.toString() ?? "",
                                                                                                // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                                fontWeight: FontWeight.w500),
                                                                                          ),
                                                                                          TableCell(
                                                                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                            child: UnderLinedInput(
                                                                                              initialCheck:true,
                                                                                              onComplete: (){
                                                                                                FocusScope.of(context).requestFocus(listOfxfocusNodes[i][1]);
                                                                                              },
                                                                                              focusNode: listOfxfocusNodes[i][0],
                                                                                              last: additionalVariants[i].requestedQty.toString() ?? "",
                                                                                              integerOnly: true,
                                                                                              onChanged: (va) {
                                                                                                updateCheck1=true;
                                                                                                additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: true);
                                                                                                setState(() {
                                                                                                });
                                                                                                print(va);
                                                                                                if (va == "") {
                                                                                                  print("entered");
                                                                                                  additionalVariants[i] = additionalVariants[i].copyWith(requestedQty: 0, vatableAmount: 0, actualCost: 0, grandTotal: 0);
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
                                                                                                      Vamount  =double.parse( (((unitcost! *
                                                                                                          qty!) +
                                                                                                          excess!) -
                                                                                                          dis!)
                                                                                                          .toStringAsFixed(2));
                                                                                                      if(vat==0 ||vat==""){
                                                                                                        vactualCost=Vamount;
                                                                                                      }
                                                                                                      else{

                                                                                                        vactualCost  =double.parse( (Vamount! +
                                                                                                            ((Vamount! *
                                                                                                                vat!) /
                                                                                                                100)).toString(2));
                                                                                                      }


                                                                                                      additionalVariants[i] =
                                                                                                          additionalVariants[i]
                                                                                                              .copyWith(
                                                                                                              vatableAmount: Vamount,
                                                                                                              actualCost: vactualCost,
                                                                                                              grandTotal: vactualCost,
                                                                                                              requestedQty: qty);
                                                                                                    }
                                                                                                    else{

                                                                                                      double   Vamount=double.parse(((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-dis!).toStringAsFixed(2));
                                                                                                      double vactualCost =double.parse( (Vamount! +
                                                                                                          ((Vamount! *
                                                                                                              vat!) /
                                                                                                              100)).toStringAsFixed(2));

                                                                                                      additionalVariants[i] =
                                                                                                          additionalVariants[i]
                                                                                                              .copyWith(
                                                                                                              vatableAmount: Vamount,
                                                                                                              actualCost: vactualCost,
                                                                                                              grandTotal: vactualCost,
                                                                                                              requestedQty: qty);
                                                                                                    }


                                                                                                  }}

                                                                                                setState(() {});
                                                                                              },
                                                                                            ),
                                                                                          ),
                                                                                          TableCell(
                                                                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                            child: CheckedBoxs(
                                                                                                onCompleteFunc: (){
                                                                                                  bool? isRecieved = additionalVariants[i].isReceived;
                                                                                                  setState(() {
                                                                                                    updateCheck1=true;
                                                                                                    additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: true);
                                                                                                    setState(() {

                                                                                                    });
                                                                                                    isRecieved = !isRecieved!;
                                                                                                    additionalVariants[i] = additionalVariants[i].copyWith(isReceived: isRecieved);
                                                                                                    print(additionalVariants);
                                                                                                  });
                                                                                                FocusScope.of(context).requestFocus(listOfxfocusNodes[i][2]);
                                                                                              },
                                                                                              focusNode: listOfxfocusNodes[i][1],
                                                                                              valueChanger: additionalVariants[i].isReceived == null ? false : additionalVariants[i].isReceived,
                                                                                              onSelection
                                                                                                  : (bool? value) {
                                                                                                bool? isRecieved = additionalVariants[i].isReceived;
                                                                                                setState(() {
                                                                                                  updateCheck1=true;
                                                                                                  additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: true);
                                                                                                  setState(() {

                                                                                                  });
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
                                                                                              focusNode: listOfxfocusNodes[i][2],
                                                                                              onComplete: (){
                                                                                                FocusScope.of(context).requestFocus(listOfxfocusNodes[i][3]);
                                                                                              },

                                                                                              controller: unitcostAdditionalListControllers[i],
                                                                                              // initialCheck:true,
                                                                                              // last: additionalVariants[i].unitCost.toString() ?? "",
                                                                                              onChanged: (va) {
                                                                                                updateCheck1=true;
                                                                                                additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: true);
                                                                                                setState(() {

                                                                                                });
                                                                                                double? unitcost;
                                                                                                if (va == "") {
                                                                                                  print("entered");
                                                                                                  unitcost = 0;
                                                                                                  print("disc" + unitcost.toString());
                                                                                                  additionalVariants[i] = additionalVariants[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
                                                                                                }
                                                                                                unitcost = double.tryParse(va);


                                                                                                var qty = additionalVariants[i].requestedQty;

                                                                                                var excess = additionalVariants[i].excessTax;

                                                                                                var disc = additionalVariants[i].discount;
                                                                                                var foc=additionalVariants[i].foc;

                                                                                                var vat = additionalVariants[i].vat;

                                                                                                if (qty == 0 || qty == null) {


                                                                                                  additionalVariants[i] = additionalVariants[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0, unitCost: 0);
                                                                                                  setState(() {});
                                                                                                } else {
                                                                                                  if(foc==0 || foc=="") {
                                                                                                    double Vamount = double.parse((((unitcost! *
                                                                                                        qty!) +
                                                                                                        excess!) -
                                                                                                        disc!)
                                                                                                        .toStringAsFixed(2));


                                                                                                    double vactualCost =double.parse( (Vamount! +
                                                                                                        ((Vamount! *
                                                                                                            vat!) /
                                                                                                            100)).toStringAsFixed(2));
                                                                                                    additionalVariants[i] =
                                                                                                        additionalVariants[i]
                                                                                                            .copyWith(
                                                                                                            vatableAmount: Vamount,
                                                                                                            actualCost: vactualCost,
                                                                                                            grandTotal: vactualCost,
                                                                                                            unitCost: unitcost);
                                                                                                    setState(() {});
                                                                                                  }else{
                                                                                                    double   Vamount=double.parse(((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-disc!).toStringAsFixed(2));
                                                                                                    double vactualCost =double.parse( (Vamount! +
                                                                                                        ((Vamount! *
                                                                                                            vat!) /
                                                                                                            100)).toStringAsFixed(2));
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
                                                                                              initialCheck:true,
                                                                                              focusNode: listOfxfocusNodes[i][3],
                                                                                              onComplete: (){
                                                                                                FocusScope.of(context).requestFocus(listOfxfocusNodes[i][4]);
                                                                                              },
                                                                                              last: additionalVariants[i].excessTax.toString() ?? "",
                                                                                              onChanged: (va) {
                                                                                                updateCheck1=true;
                                                                                                additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: true);
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

                                                                                                var qty = additionalVariants[i].requestedQty;
                                                                                                var vat = additionalVariants[i].vat;
                                                                                                var foc = additionalVariants[i].foc;

                                                                                                print("excess" + excess.toString());
                                                                                                var unitcost = additionalVariants[i].unitCost;

                                                                                                var Vdiscount = additionalVariants[i].discount;
                                                                                                if(qty==0 || unitcost==0){
                                                                                                  additionalVariants[i] = additionalVariants[i].copyWith(actualCost: 0, grandTotal: 0, vatableAmount: 0, excessTax: excess);
                                                                                                  setState(() {

                                                                                                  });

                                                                                                }else {
                                                                                                  double Vamount;

                                                                                                  if(foc==0 ||foc=="") {
                                                                                                    Vamount =
                                                                                                       double.parse( (((unitcost! *
                                                                                                            qty!) +
                                                                                                            excess!) -
                                                                                                            Vdiscount!)
                                                                                                            .toStringAsFixed(2));
                                                                                                  }else{
                                                                                                    Vamount=double.parse(((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-Vdiscount!).toStringAsFixed(2));

                                                                                                  }
                                                                                                  double vactualCost = double.parse((Vamount! +
                                                                                                      ((Vamount! *
                                                                                                          vat!) /
                                                                                                          100)).toStringAsFixed(2));
                                                                                                  double Vgrnadtotal =double.parse( (Vamount! +
                                                                                                      ((Vamount! *
                                                                                                          vat!) /
                                                                                                          100)).toStringAsFixed(2));
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
                                                                                              initialCheck:true,
                                                                                              focusNode: listOfxfocusNodes[i][4],
                                                                                              onComplete: (){
                                                                                                FocusScope.of(context).requestFocus(listOfxfocusNodes[i][5]);
                                                                                              },
                                                                                              last: additionalVariants[i].discount.toString() ?? "",
                                                                                              onChanged: (va) {
                                                                                                updateCheck1=true;
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
                                                                                                    .requestedQty;
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
                                                                                                    double Vamount =double.parse( (((unitcost! *
                                                                                                        qty!) +
                                                                                                        excess!) -
                                                                                                        disc!)
                                                                                                        .toStringAsFixed(2));


                                                                                                    double vactualCost =double.parse(( (Vamount! +
                                                                                                        ((Vamount! *
                                                                                                            vat!) /
                                                                                                            100)).toStringAsFixed(2)));
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
                                                                                                    double   Vamount=double.parse(((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-disc!).toStringAsFixed(2));
                                                                                                    double vactualCost = double .parse((Vamount! +
                                                                                                        ((Vamount! *
                                                                                                            vat!) /
                                                                                                            100)).toStringAsFixed(2));
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
                                                                                              initialCheck:true,
                                                                                              focusNode: listOfxfocusNodes[i][5],
                                                                                              onComplete: (){
                                                                                                FocusScope.of(context).requestFocus(listOfxfocusNodes[i][6]);
                                                                                              },
                                                                                              last: additionalVariants[i].foc.toString() ?? "",
                                                                                              onChanged: (va) {
                                                                                                updateCheck1=true;
                                                                                                additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: true);
                                                                                                setState(() {

                                                                                                });
                                                                                                double? foc;
                                                                                                if (va == "") {
                                                                                                  foc=0;
                                                                                                  additionalVariants[i] = additionalVariants[i].copyWith(foc: 0);
                                                                                                } else {
                                                                                                  foc  = double.tryParse(va);
                                                                                                  additionalVariants[i] = additionalVariants[i].copyWith(foc: foc);
                                                                                                }
                                                                                                var qty = additionalVariants[i].requestedQty;
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
                                                                                                  double Vamount;
                                                                                                  if(foc==0 ||foc==""){
                                                                                                    Vamount = double.parse((((unitcost! *
                                                                                                        qty!) +
                                                                                                        excess!) -
                                                                                                        disc!)
                                                                                                        .toStringAsFixed(2));
                                                                                                    setState(() {

                                                                                                    });

                                                                                                  }else{
                                                                                                    Vamount=double.parse(((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-disc!).toStringAsFixed(2));
                                                                                                    setState(() {

                                                                                                    });

                                                                                                  }
                                                                                                  double vactualCost = double.parse((Vamount! +
                                                                                                      ((Vamount! *
                                                                                                          vat!) /
                                                                                                          100)).toStringAsFixed(2));
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
                                                                                            child: textPadding(additionalVariants[i].vatableAmount.toString() ?? "",
                                                                                                // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                                fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                                                                          ),
                                                                                          TableCell(
                                                                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                            child: textPadding(additionalVariants[i].vat.toString() ?? "", fontSize: 12, fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                                                                          ),
                                                                                          // TableCell(
                                                                                          //   verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                          //   child: UnderLinedInput(
                                                                                          //     initialCheck:true,
                                                                                          //     last: additionalVariants[i].vat.toString() ?? "",
                                                                                          //     onChanged: (va) {
                                                                                          //       updateCheck1=true;
                                                                                          //       additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: false);
                                                                                          //       setState(() {
                                                                                          //
                                                                                          //       });
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
                                                                                          //             double Vamount = double.parse((((unitcost! *
                                                                                          //                 qty!) +
                                                                                          //                 excess!) -
                                                                                          //                 dis!)
                                                                                          //                 .toStringAsFixed(2));
                                                                                          //             double vactualCost =double.parse( (Vamount! +
                                                                                          //                 ((Vamount! *
                                                                                          //                     vat!) /
                                                                                          //                     100)).toStringAsFixed(2));
                                                                                          //             double Vgrnadtotal =double.parse( (Vamount! +
                                                                                          //                 ((Vamount! *
                                                                                          //                     vat!) /
                                                                                          //                     100)).toStringAsFixed(2));
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
                                                                                          //             double   Vamount=double.parse(((((qty!*unitcost!)-(foc!*unitcost!))+excess!)-dis!).toStringAsFixed(2));
                                                                                          //
                                                                                          //             double vactualCost =double.parse ((Vamount! +
                                                                                          //                 ((Vamount! *
                                                                                          //                     vat!) /
                                                                                          //                     100)).toStringAsFixed(2));
                                                                                          //             double Vgrnadtotal =double.parse( (Vamount! +
                                                                                          //                 ((Vamount! *
                                                                                          //                     vat!) /
                                                                                          //                     100)).toStringAsFixed(2));
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
                                                                                            child: textPadding(additionalVariants[i].actualCost.toString() ?? "",
                                                                                                // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                                fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                                                                          ),
                                                                                          TableCell(
                                                                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                            child: textPadding(additionalVariants[i].grandTotal.toString() ?? "",
                                                                                                // fontSize: 12, padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                                fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                                                                          ),
                                                                                          TableCell(
                                                                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                            child: CheckedBoxs(
                                                                                              valueChanger: additionalVariants[i].isInvoiced == null ? false : additionalVariants[i].isInvoiced,
                                                                                              onSelection: (bool? value) {
                                                                                                setState(() {});
                                                                                              },
                                                                                            ),
                                                                                          ),
                                                                                          TableCell(
                                                                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                            child: Tabledate(
                                                                                                    focusNode: listOfxfocusNodes[i][6],
                                                                                                onEnterClick: (){
                                                                                                  FocusScope.of(context).requestFocus(listOfxfocusNodes[i][7]);
                                                                                                },

                                                                                                format:DateFormat('dd-MM-yyyy'),
                                                                                                controller: expiryDate2tControllers[i],
                                                                                                label: "Promised receipt date",
                                                                                                onSuffixIconPressed: (){
                                                                                                  setState(() {


                                                                                                    additionalVariants[i] = additionalVariants[i].copyWith(updateCheck:additionalVariants[i].expiryDate!=null ||additionalVariants[i].updateCheck==true? true:false,expiryDate: null);
                                                                                                    expiryDate2tControllers[i]=TextEditingController(text: "");
                                                                                                  });


                                                                                                },

                                                                                                onSaved: (newValue) {
                                                                                                  updateCheck1=true;
                                                                                                  additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: true);

                                                                                                  expiryDate2tControllers[i]=TextEditingController(text:DateFormat('dd-MM-yyyy').format(newValue!));

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
                                                                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                            child: CheckedBoxs(
                                                                                                focusNode: listOfxfocusNodes[i][7],
                                                                                              onCompleteFunc: (){
                                                                                                updateCheck1=true;
                                                                                                additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: true);
                                                                                                setState(() {

                                                                                                });
                                                                                                bool? isFree = additionalVariants[i].isFree;
                                                                                                setState(() {
                                                                                                  isFree = !isFree!;
                                                                                                  additionalVariants[i] = additionalVariants[i].copyWith(isFree: isFree);
                                                                                                  print(additionalVariants);
                                                                                                });
                                                                                                FocusScope.of(context).requestFocus(listOfxfocusNodes[i][8 ]);
                                                                                              },
                                                                                              valueChanger: additionalVariants[i].isFree == null ? false : additionalVariants[i].isFree,
                                                                                              onSelection: (bool? value) {
                                                                                                updateCheck1=true;
                                                                                                additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: true);
                                                                                                setState(() {

                                                                                                });
                                                                                                bool? isFree = additionalVariants[i].isFree;
                                                                                                setState(() {
                                                                                                  isFree = !isFree!;
                                                                                                  additionalVariants[i] = additionalVariants[i].copyWith(isFree: isFree);
                                                                                                  print(additionalVariants);
                                                                                                });
                                                                                              },
                                                                                            ),
                                                                                          ),

                                                                                          TableCell(
                                                                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                            child: CheckedBoxs(
                                                                                              focusNode: listOfxfocusNodes[i][8],
                                                                                              onCompleteFunc: (){
                                                                                                updateCheck1=true;
                                                                                                additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: true);
                                                                                                setState(() {

                                                                                                });
                                                                                                bool? isActive = additionalVariants[i].isActive;
                                                                                                setState(() {
                                                                                                  isActive = !isActive!;
                                                                                                  additionalVariants[i] = additionalVariants[i].copyWith(isActive: isActive);
                                                                                                  print(additionalVariants);
                                                                                                  if(additionalVariants[i].isActive==false||additionalVariants[i].isReceived==false) {
                                                                                                    context
                                                                                                        .showSnackBarError(
                                                                                                        "please check isActive and is Received fields");
                                                                                                  }

                                                                                                  else{
                                                                                                    additionalVariants[i]=additionalVariants[i].copyWith(updateCheck: false);
                                                                                                    setState(() {

                                                                                                    });

                                                                                                  }
                                                                                                  if(i!=additionalVariants.length-1){
                                                                                                    FocusScope.of(context).requestFocus(listOfxfocusNodes[i+1][0]);
                                                                                                  }
                                                                                                  else{
                                                                                                    FocusScope.of(context).requestFocus(focusNodeList[0]);
                                                                                                  }
                                                                                                });

                                                                                              },
                                                                                              valueChanger: additionalVariants[i].isActive == null ? false : additionalVariants[i].isActive,
                                                                                              onSelection: (bool? value) {
                                                                                                updateCheck1=true;
                                                                                                additionalVariants[i] = additionalVariants[i].copyWith(updateCheck: true);

                                                                                                setState(() {

                                                                                                });
                                                                                                bool? isActive = additionalVariants[i].isActive;
                                                                                                setState(() {
                                                                                                  isActive = !isActive!;
                                                                                                  additionalVariants[i] = additionalVariants[i].copyWith(isActive: isActive);
                                                                                                  print(additionalVariants);

                                                                                                });
                                                                                              },
                                                                                            ),
                                                                                          ),
                                                                                          TableCell(
                                                                                            verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                            child:          TableTextButton(
                                                                                              textColor:  additionalVariants?[i].updateCheck==true?Pellet.bagroundColor:Colors.black,
                                                                                              bagroundColor: additionalVariants?[i].updateCheck==true?Pellet.tableBlueHeaderPrint:Colors.transparent,

                                                                                             onPress: () {
                                                                                                print("akshay");
                                                                                                  if(additionalVariants[i].isActive==false||additionalVariants[i].isReceived==false) {
                                                                                                    context
                                                                                                      .showSnackBarError(
                                                                                                      "please check isActive and is Received fields");
                                                                                                }

                                                                                                  else{
                                                                                                  additionalVariants[i]=additionalVariants[i].copyWith(updateCheck: false);
                                                                                                  setState(() {

                                                                                                  });

                                                                                                }



                                                                                            },
                                                                                              label: additionalVariants[i].updateCheck==true?"update":"",
                                                                                          ))



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
                                                                                            // fontSize: 12,
                                                                                            // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                            fontWeight: FontWeight.w500),
                                                                                      ),
                                                                                      VariantIdTAble(
                                                                                        text:variantId.toString(),
                                                                                        onTap: (){
                                                                                          variantSelectionOnCreate();
                                                                                        },
                                                                                      ),
                                                                                      // PopUpCall(
                                                                                      //     vendorId: vendorCodeController.text,
                                                                                      //   // label: "purchase UOM",
                                                                                      //   type:
                                                                                      //   "cost-method-list",
                                                                                      //   value: variantId,
                                                                                      //   onSelection:
                                                                                      //       (VariantId? va) {
                                                                                      //     print(va!.id
                                                                                      //         .toString());
                                                                                      //     print("code" +
                                                                                      //         va!.code
                                                                                      //             .toString());
                                                                                      //
                                                                                      //     setState(() {
                                                                                      //       stockCheck=true;
                                                                                      //       variantId =
                                                                                      //           va?.code;
                                                                                      //       int? id = va!.id;
                                                                                      //       print("is is"+id.toString());
                                                                                      //       Variable.tableedit=false;
                                                                                      //       variantIdcheck=false;
                                                                                      //       recievlinequantityCheck=false;
                                                                                      //       stockCheck=true;
                                                                                      //
                                                                                      //       // onChange = true;
                                                                                      //       context
                                                                                      //           .read<
                                                                                      //           TableDetailsCubitDartCubit>()
                                                                                      //           .getTableDetails(
                                                                                      //           id);
                                                                                      //       setState(() {
                                                                                      //
                                                                                      //       });
                                                                                      //       context
                                                                                      //           .read<PurchaseStockCubit>()
                                                                                      //           .getCurrentStock(Variable.inventory_ID, variantId);
                                                                                      //
                                                                                      //       // orderType = va!;
                                                                                      //     });
                                                                                      //   },
                                                                                      //
                                                                                      //   // restricted: true,
                                                                                      // ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: textPadding(varinatname??"",
                                                                                            fontWeight: FontWeight.w500),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: textPadding(supplierRefCode.toString()??"",
                                                                                            fontWeight: FontWeight.w500),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: textPadding(barcode??"",
                                                                                            fontWeight: FontWeight.w500),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: textPadding(stock.toString()??"",
                                                                                            fontWeight: FontWeight.w500),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: textPadding(purchaseUomName??"",
                                                                                            fontWeight: FontWeight.w500),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: UnderLinedInput(
                                                                                          controller:recievedClearController,
                                                                                          focusNode: focusNodeList[0],
                                                                                          integerOnly: true,

                                                                                          // last:"",
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
                                                                                                    vatableAmountCalculation(unitcost,recievedQty,excess1,discount);
                                                                                                    // vatableAmount1 = (((unitcost! *
                                                                                                    //     recievedQty!) +
                                                                                                    //     excess1!) -
                                                                                                    //     discount!)
                                                                                                    //     .toDouble();
                                                                                                    actualAndgrandTotal(vatableAmount1,vat1);
                                                                                                    // actualCost1 = double.parse((vatableAmount1! +
                                                                                                    //     ((vatableAmount1! *
                                                                                                    //         vat1!) /
                                                                                                    //         100)).toStringAsFixed(2));
                                                                                                    // grandTotal1 =double.parse( (vatableAmount1! +
                                                                                                    //     ((vatableAmount1! *
                                                                                                    //         vat1!) /
                                                                                                    //         100)).toStringAsFixed(2));



                                                                                                  }
                                                                                                  else{
                                                                                                    vatableFocAmountCalculation(unitcost,recievedQty,excess1,discount,foc1);
                                                                                                    actualAndgrandTotal(vatableAmount1,vat1);
                                                                                                  }

                                                                                                }

                                                                                              }
                                                                                              );
                                                                                            }
                                                                                            // print(Qty);
                                                                                          },
                                                                                          enable: true,
                                                                                          onComplete: () {
                                                                                            FocusScope.of(context).requestFocus(focusNodeList[1]);
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: CheckedBoxs(
                                                                                          focusNode: focusNodeList[1],
                                                                                          onCompleteFunc: (){
                                                                                            setState(() {
                                                                                              isReceived1 = !isReceived1!;
                                                                                            });
                                                                                            FocusScope.of(context).requestFocus(focusNodeList[2]);
                                                                                          },

                                                                                          valueChanger: isReceived1,
                                                                                          onSelection: (bool? value) {
                                                                                            setState(() {
                                                                                              isReceived1 = !isReceived1!;
                                                                                            });
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: UnderLinedInput(
                                                                                          controller:unitCostCheck,
                                                                                          focusNode: focusNodeList[2],
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
                                                                                                vatableAmountCalculation(unitcost,recievedQty,excess1,discount);
                                                                                                actualAndgrandTotal(vatableAmount1,vat1);
                                                                                              }
                                                                                              else{
                                                                                                vatableFocAmountCalculation(unitcost,recievedQty,excess1,discount,foc1);
                                                                                                actualAndgrandTotal(vatableAmount1,vat1);
                                                                                              }
                                                                                            }
                                                                                          },
                                                                                          enable: true,
                                                                                          onComplete: () {
                                                                                            FocusScope.of(context).requestFocus(focusNodeList[3]);
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: UnderLinedInput(
                                                                                          focusNode: focusNodeList[3],
                                                                                            controller:excessClearController,


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
                                                                                                vatableAmountCalculation(unitcost,recievedQty,excess1,discount);
                                                                                                actualAndgrandTotal(vatableAmount1,vat1);

                                                                                              }
                                                                                              else{
                                                                                                vatableFocAmountCalculation(unitcost,recievedQty,excess1,discount,foc1);
                                                                                                actualAndgrandTotal(vatableAmount1,vat1);

                                                                                              }

                                                                                            }


                                                                                            setState(() {});
                                                                                            // print(Qty);
                                                                                          },
                                                                                          enable: true,
                                                                                          onComplete: () {
                                                                                            FocusScope.of(context).requestFocus(focusNodeList[4]);
                                                                                          },
                                                                                        ),
                                                                                      ),

                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: UnderLinedInput(
                                                                                            controller:discountClearController,
                                                                                          focusNode: focusNodeList[4],


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
                                                                                                vatableAmountCalculation(unitcost,recievedQty,excess1,discount);

                                                                                              actualAndgrandTotal(vatableAmount1,vat1);



                                                                                              }
                                                                                              else{
                                                                                                vatableFocAmountCalculation(unitcost,recievedQty,excess1,discount,foc1);

                                                                                                actualAndgrandTotal(vatableAmount1,vat1);

                                                                                              }

                                                                                            }


                                                                                            setState(() {});
                                                                                            // print(Qty);
                                                                                          },
                                                                                          enable: true,
                                                                                          onComplete: () {
                                                                                            FocusScope.of(context).requestFocus(focusNodeList[5]);
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: UnderLinedInput(
                                                                                          focusNode:  focusNodeList[5],
                                                                                            controller:focClearController,
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
                                                                                                vatableAmountCalculation(unitcost,recievedQty,excess1,discount);
                                                                                                actualAndgrandTotal(vatableAmount1,vat1);
                                                                                              }
                                                                                              else{
                                                                                                vatableFocAmountCalculation(unitcost,recievedQty,excess1,discount,foc1);
                                                                                                actualAndgrandTotal(vatableAmount1,vat1);
                                                                                              }
                                                                                            }
                                                                                            // print(Qty);
                                                                                          },
                                                                                          enable: true,
                                                                                          onComplete: () {
                                                                                            FocusScope.of(context).requestFocus(focusNodeList[6]);
                                                                                          },
                                                                                        ),
                                                                                      ),

                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: textPadding(vatableAmount1?.toString()??"",
                                                                                            fontWeight: FontWeight.w500),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: textPadding(vat1?.toString()??"",
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
                                                                                      //           vatableAmount1 = double.parse((((unitcost! *
                                                                                      //               recievedQty!) +
                                                                                      //               excess1!) -
                                                                                      //               discount!)
                                                                                      //               .toStringAsFixed(2));
                                                                                      //           actualCost1 = double.parse((vatableAmount1! +
                                                                                      //               ((vatableAmount1! *
                                                                                      //                   vat1!) /
                                                                                      //                   100)).toStringAsFixed(2));
                                                                                      //           grandTotal1 =double.parse( (vatableAmount1! +
                                                                                      //               ((vatableAmount1! *
                                                                                      //                   vat1!) /
                                                                                      //                   100)).toStringAsFixed(2));
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
                                                                                            // fontSize: 12,
                                                                                            // padding: EdgeInsets.only(left: 11.5, top: 1.5),
                                                                                            fontWeight: FontWeight.w500,
                                                                                            alighnment: Alignment.topRight),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: textPadding(grandTotal1?.toString()??"",
                                                                                            fontWeight: FontWeight.w500,alighnment: Alignment.topRight),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: CheckedBoxs(
                                                                                         valueChanger : isInvoiced1,

                                                                                          onCompleteFunc: (){

                                                                                          },
                                                                                          onSelection: (bool? value) {
                                                                                            setState(() {
                                                                                             // isInvoiced1 = !isInvoiced1!;
                                                                                            });
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child:Tabledate(
                                                                                            focusNode: focusNodeList[6],
                                                                                            onEnterClick: (){
                                                                                              FocusScope.of(context).requestFocus(focusNodeList[7]);

                                                                                            },

                                                                                            format:DateFormat('dd-MM-yyyy'),
                                                                                            controller:expiryDate2,
                                                                                            // initialValue:
                                                                                            //     DateTime.parse(fromDate!),
                                                                                            label: "Promised Receipt date",
                                                                                            onSuffixIconPressed: (){
                                                                                              setState(() {
                                                                                                expiryDate2.clear();
                                                                                              });


                                                                                            },

                                                                                            onSaved: (newValue) {
                                                                                              expiryDate2.text= newValue==null?"":  DateFormat('dd-MM-yyyy').format(newValue!);

                                                                                              expiryDate.text = newValue
                                                                                                  ?.toIso8601String()
                                                                                                  .split("T")[0] ??
                                                                                                  "";
                                                                                              print("promised_receipt_date.text"+expiryDate.text.toString());
                                                                                              setState(() {

                                                                                              });
                                                                                            },
                                                                                            enable: true),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: CheckedBoxs(
                                                                                          focusNode: focusNodeList[7],
                                                                                          onCompleteFunc: (){
                                                                                            setState(() {
                                                                                              isFree1 = !isFree1!;

                                                                                            });

                                                                                            FocusScope.of(context).requestFocus(focusNodeList[8]);

                                                                                          },
                                                                                          valueChanger: isFree1,

                                                                                          onSelection: (bool? value) {

                                                                                            setState(() {
                                                                                              isFree1 = !isFree1!;

                                                                                            });
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child: CheckedBoxs(
                                                                                            focusNode: focusNodeList[8],
                                                                                          onCompleteFunc: (){
                                                                                            setState(() {
                                                                                              isActive1 = !isActive1!;


                                                                                            });
                                                                                            onTableSaveFunction();
                                                                                          },
                                                                                          // color:Color(0xff3E4F5B) ,

                                                                                          valueChanger:  isActive1,
                                                                                          onSelection: (bool? value ) {

                                                                                            setState(() {
                                                                                              isActive1 = !isActive1!;


                                                                                            });
                                                                                          },

                                                                                        ),
                                                                                      ),
                                                                                      TableCell(
                                                                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                                                                        child:
                                                                                        TableTextButton(

                                                                                          onPress: () {

                                                                                            onTableSaveFunction();
                                                                                            // variantSelectionOnCreate();






                                                                                          },


                                                                                          label:"Save",

                                                                                        ),
                                                                                      ),


                                                                                    ],

                                                                                    ),

                                                                              ]
                                                                            , widths: {
                                                                            0: FlexColumnWidth(1.5),
                                                                            1: FlexColumnWidth(3),
                                                                            2: FlexColumnWidth(3),
                                                                            3: FlexColumnWidth(4),
                                                                            4: FlexColumnWidth(3),
                                                                            5: FlexColumnWidth(3),
                                                                            6: FlexColumnWidth(3),
                                                                            7: FlexColumnWidth(3),
                                                                            8: FlexColumnWidth(3),
                                                                            9: FlexColumnWidth(3),
                                                                            10: FlexColumnWidth(3),
                                                                            11: FlexColumnWidth(3),
                                                                            12: FlexColumnWidth(3),
                                                                            13: FlexColumnWidth(4),
                                                                            14: FlexColumnWidth(3),
                                                                            15: FlexColumnWidth(3),
                                                                            16: FlexColumnWidth(3),
                                                                            17: FlexColumnWidth(2.5),
                                                                            18: FlexColumnWidth(4),
                                                                            19: FlexColumnWidth(2.5),
                                                                            20: FlexColumnWidth(2.5),
                                                                            21: FlexColumnWidth(3),



                                                                          },),
                                                                        ),

                                                                      ],
                                                                    )

                                                                ),
                                                              )),

                                                          Container(
                                                            child: Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment.end,
                                                              children: [
                                                                TextButtonLarge(
                                                                  isSingle: true,
                                                                    clr: tabCount==5?Pellet.buttonActiveClr:Pellet.tableBlueHeaderPrint,

                                                                  isLoading:isGenarate ,
                                                                  onPress: () {
                                                                    additionalGenerateFunction();



                                                                  },
                                                                  icon: Icons.check,
                                                                  // iconColor: Colors.white,
                                                                  text: "GENERATE ORDER",

                                                                  // height: 30,
                                                                  // width: 152,
                                                                  // labelcolor: Colors.white,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(height: height/30,),
                                                          SaveUpdateResponsiveButton(isSaveUpdateLoading:isSave ,
                                                            label: "SAVE",
                                                            isKeyFuctionRight: tabCount==6,
                                                            focusNode: saveUpadtebuttonFocusnOde,

                                                            isDelete: true,

                                                            saveFunction: (){
                                                              saveUpdateFunction();


                                                            },
                                                            discardFunction: (){

                                                            },

                                                          ),
                                                          // CustomDivider(),
                                                          // Row(
                                                          //   mainAxisAlignment:
                                                          //   MainAxisAlignment.end,
                                                          //   children: [
                                                          //     Buttons(
                                                          //       onApply: () {
                                                          //         print("akkkakkaa");
                                                          //         if(recievingLisnes.isNotEmpty==true){
                                                          //           for(var i=0;i<recievingLisnes.length-1;i++){
                                                          //             print("ssssssssss"+ currentStock[i].toString());
                                                          //             recievingLisnes[i]= recievingLisnes[i].copyWith(currentStock: currentStock[i]);
                                                          //             setState(() {
                                                          //
                                                          //             });
                                                          //           }
                                                          //         }
                                                          //
                                                          //
                                                          //         PurchaseRecievingRead model = PurchaseRecievingRead(
                                                          //             orderCode: orderCodeController.text ?? "",
                                                          //             receivingCode: recievingCodeController.text ?? "",
                                                          //             orderCreatedDate: orederDateController.text ?? "",
                                                          //             orderStatus:
                                                          //             orderStatusController
                                                          //                 .text ??
                                                          //                 "",
                                                          //             invoiceStatus:
                                                          //             invoiceStausController
                                                          //                 .text ??
                                                          //                 "",
                                                          //             foc: double.tryParse(
                                                          //                 focController.text ?? ""),
                                                          //
                                                          //             discount: double.tryParse(discountController.text ?? ""),
                                                          //             unitCost: int.tryParse(unitCostController.text ?? ""),
                                                          //             vatableAmount: double.tryParse(vatableAmountController.text ?? ""),
                                                          //             excessTax: double.tryParse(excessTaxController.text ?? ""),
                                                          //             vat: double.tryParse(vatController.text ?? ""),
                                                          //             actualCost: double.tryParse(actualCostController.text ?? ""),
                                                          //             grandTotal: double.tryParse(grandTotalController.text ?? ""),
                                                          //             inventoryId: inventoryId ?? "",
                                                          //             note: noteController.text ?? "",
                                                          //             receivedBy: Variable.username,
                                                          //             remarks: remarksController.text ?? "",
                                                          //             receivingLines: recievingLisnes);
                                                          //         context
                                                          //             .read<
                                                          //             PurchaserecievingpatchCubit>()
                                                          //             .getPurchaseRecievePatch(
                                                          //             receivingId,
                                                          //             model);
                                                          //       },
                                                          //       icon: Icons.check,
                                                          //       iconColor: Colors.white,
                                                          //       text: "SAVE",
                                                          //       // clr: Color(0xff53A9F9),
                                                          //       height: 32,
                                                          //       width: 90,
                                                          //       labelcolor: Colors.white,
                                                          //     ),
                                                          //   ],
                                                          // ),
                                                        ],
                                                      ))
                                                ],
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                    );
                  },
                ),
              );
            });
          }),
        ),
      ),
    );
  }
  saveUpdateFunction(){
    var isUpdate=receiveLineUpdateCheckFunc();
    print("isUpdate=============$isUpdate");


    if(isUpdate==true){
      context.showSnackBarError("Please press the update button");
    }
    else{
      isSave=true;
      setState(() {

      });
      if(recievingLisnes.isNotEmpty==true  && currentStock.isNotEmpty==true){
        for(var i=0;i<recievingLisnes.length;i++){

          recievingLisnes[i]= recievingLisnes[i].copyWith(currentStock: currentStock[i]);
          setState(() {

          });
        }
      }
      PurchaseRecievingRead model = PurchaseRecievingRead(
          orderCode: orderCodeController.text ?? "",
          receivingCode: recievingCodeController.text ?? "",
          orderCreatedDate: orederDateController.text ?? "",
          orderStatus:
          orderStatusController
              .text ??"",
          invoiceStatus:
          invoiceStausController
              .text ??
              "",
          foc: double.tryParse(
              focController.text ?? ""),

          discount: double.tryParse(discountController.text ?? ""),
          unitCost: int.tryParse(unitCostController.text ?? ""),
          vatableAmount: double.tryParse(vatableAmountController.text ?? ""),
          excessTax: double.tryParse(excessTaxController.text ?? ""),
          vat: double.tryParse(vatController.text ?? ""),
          actualCost: double.tryParse(actualCostController.text ?? ""),
          grandTotal: double.tryParse(grandTotalController.text ?? ""),
          inventoryId: inventoryId ?? "",
          note: noteController.text ?? "",
          receivedBy: Variable.username,
          remarks: remarksController.text ?? "",
          receivingLines: recievingLisnes);
      context
          .read<
          PurchaserecievingpatchCubit>()
          .getPurchaseRecievePatch(
          receivingId,
          model);
    }
  }
  additionalGenerateFunction(){
    var isUpdate=additiionUpdateCheckFunc();
    if(isUpdate==true){
      context.showSnackBarError("Please press update button");
    }
    else{

      setState(() {
        isGenarate=true;
      });
      List<RecievingLines>additionalVariants1=[];
      for(var i=0;i<additionalVariants.length;i++){
        if(additionalVariants[i].isReceived==true &&additionalVariants[i].isActive==true){
          additionalVariants1.add(additionalVariants[i]);
        }
      }

      AdditionalGenerateModel model=AdditionalGenerateModel(
        receivingId: receivingId,
        createdBy: Variable.created_by,
        purchaseOrderId:veritiaclid,
        orderLines: additionalVariants1,
      );
      print("avan"+model.toString());
      context.read<AdditionalgenerateCubit>().additionlGeneratePost(model!);

    }
  }
  receiveLinesGenerateFunction(){
    print("recievdelines"+recievingLisnes.toString());
    List<RecievingLines>recieve=[];
    List<OrderLiness> orderLinses = [];
    bool popupCheck=false;
    for(var i=0;i<recievingLisnes.length;i++){
      if(recievingLisnes[i].isReceived==false){
        popupCheck=true;
        orderLinses.add(OrderLiness(orderLineId:recievingLisnes[i]?.purchaseOrderLineId,receivinglineId:recievingLisnes[i].id));
        setState(() {

        });
      }
    }
    print("visss"+orderLinses.toString());
    GenerateMissing model=GenerateMissing(
        receivinglineId: receivingId,
        note: noteController.text??"",
        inventoryId:inventoryId ??"",
        vendorMailId: Variable.email,
        vendorAddress: Variable.vendorAddress,
        createdBy: Variable.created_by,
        orderLinses: orderLinses







    );
    setState(() {

    });
    if(popupCheck==true)
      showDailogPopUp(
          context,
          WarrantyDetailsPopUp(
              remarks: remarksController,
              promised:promisedRecieptDate,
              plannded:plannedRecieptDate,
              model:model,
              assign:assignCall
            // warranty: widget.warranty,
            // changeActive: onChangeActive,
            // changeAdditionalWarranty: onChangeAdditionalWarranty,
            // changeExtendedWarranty: onChangeExtendedWarranty,
          ));
    else{
      context.showSnackBarError("Is Received is true in all");

    }

    // model = model.copyWith(actualCost: 100);
    // print("vishnu"+model.toString());


  }
  receiveLinesUpdateFunction(int i){
    var variant = recievingLisnes[i].variantId??0;
    var expirydates = recievingLisnes[i].expiryDate??"";


    var excess = recievingLisnes[i].excessTax??0;
    print("excess" + excess.toString());
    var unitcosts = recievingLisnes[i].unitCost??0;
    var qty = recievingLisnes[i].requestedQty??0;
    var foc = recievingLisnes[i].foc??0;
    var dis = recievingLisnes[i].discount??0;
    if(variant=="null"||unitcosts==0){
      context.showSnackBarError("please fill all the fields");
    }
    else if(qty==0||qty==""){
      context.showSnackBarError(
          "the received quantity not be 0 or empty");

    }
    // else if(expirydates=="")
    //   context.showSnackBarError("please select the expiry date");
    else if(qty!<foc!){
      context.showSnackBarError("the received qty all ways greater than  foc");

    }
    else{

      updateCheck=false;
      recievingLisnes[i] = recievingLisnes[i].copyWith(updateCheck: false);
      addition();
      setState(() {

      });
      grands = 0;
      focValue = 0;
      VatableValue = 0;
      excessTax = 0;
      vatValue = 0;
      actualValue = 0;
      excessTAxValue = 0;
      vatableValue = 0;
      unitcost2 = 0;
      unitcost=0;

      discountValue = 0;
      setState(() {

      });
    }
  }
  variantSelectionOnCreate(){
    showDailogPopUp(
      context,
      TableConfigurePopup(
        vendorId: vendorCodeController.text,
        type: "variantTabalePopup",
        valueSelect: (VariantId? va) {


          setState(() {
            stockCheck=true;
            variantId =
                va?.code;
            int? id = va!.id;
            print("is is"+id.toString());
            Variable.tableedit=false;
            variantIdcheck=false;
            recievlinequantityCheck=false;
            stockCheck=true;
            FocusScope.of(context).requestFocus(focusNodeList[0]);
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
      ),
    );
  }
  onTableSaveFunction(){
    setState(() {
      if(isReceived1==false||isActive1==false){
        context.showSnackBarError(
            "isreceived and isActive always true in this");
      }
      else if(vat1==0||recievedQty==0||unitcost==0||variantId=="" ){
        context.showSnackBarError(
            "please fill all the details");
      }
      else if(expiryDate.text==""||expiryDate.text==null){
        context.showSnackBarError(
            "please select expiry text");
      }
      else if( foc1!>recievedQty!){
        context.showSnackBarError("foc always less than received qty");
      }

      else{
        additionalVariants.add(RecievingLines(
            variantId: variantId??"",
            currentStock: stock,
            supplierCode: supplierRefCode,
            variantName: varinatname??"",
            barcode: barcode??"",
            purchaseUom: purchaseUomName??"",
            requestedQty: recievedQty,
            isReceived: isReceived1,
            discount: discount,
            foc: foc1,
            unitCost: unitcost,
            vatableAmount: vatableAmount1,vat: vat1,
            excessTax: excess1,
            actualCost: actualCost1,
            grandTotal: grandTotal1,
            isInvoiced: isInvoiced1,
            isFree: isFree1,
            isActive:isActive1,
            expiryDate: expiryDate.text



        ));
        print("expiryDate.text"+expiryDate.text.toString());
        var expirydate1 = new TextEditingController(text: expiryDate2.text??"");
        expiryDate2tControllers.add(expirydate1);
        print("additionalVariants"+additionalVariants.toString());

        valueAddingTextEdingController();



        clear();

      }


    });
  }
}
class WarrantyDetailsPopUp extends StatefulWidget {
  // final int? stckQty;
  final TextEditingController? remarks;
  final TextEditingController? promised;
  final TextEditingController? plannded;
  final GenerateMissing? model;
  final Function assign;
  // final List<ReadWarranty>? warranty;
  // final Function(bool) changeActive;
  // final Function(bool) changeAdditionalWarranty;
  // final Function(bool) changeExtendedWarranty;
  const WarrantyDetailsPopUp({
    Key? key,
    // this.stckQty = 0,
    required this.remarks,
    required this.assign,
    required this.promised,
    required this.plannded,
    required this.model
    // this.warranty,
    // this.indexValue
  }) : super(key: key);

  @override
  _WarrantyDetailsPopUpState createState() => _WarrantyDetailsPopUpState();
}

class _WarrantyDetailsPopUpState extends State<WarrantyDetailsPopUp> {

  bool active = false;
  bool additionalWarranty = false;
  bool extendedWarranty = false;
  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  TextEditingController stckQty = TextEditingController();
  TextEditingController qtyChange = TextEditingController();
  TextEditingController remarks = TextEditingController();
  TextEditingController reason = TextEditingController();
  TextEditingController vendorCode = TextEditingController();
  TextEditingController vendorCodeName = TextEditingController();
  TextEditingController promised = TextEditingController();
  TextEditingController promised2 = TextEditingController();
  TextEditingController planned = TextEditingController();
  TextEditingController planned2 = TextEditingController();
  TextEditingController note = TextEditingController();
  TextEditingController vendoraddress = TextEditingController();
  TextEditingController vendortrnnumber = TextEditingController();
  int? newQty = 0;
  assigniningDetails(String address,String trn){
    print("akshay");
    vendoraddress.text=address;
    print(vendoraddress.text);
    vendortrnnumber.text=trn;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    print("widget.model"+widget.model.toString());
    // stckQty.text = widget.stckQty.toString();
    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());

    return BlocProvider(
  create: (context) => PurchasegeneratingCubit(),
  child: MultiBlocListener(
  listeners: [
    BlocListener<PurchasegeneratingCubit, PurchasegeneratingState>(
      listener: (context, state) {
        print("postssssssss" + state.toString());
        state.maybeWhen(orElse: () {
          // showDailogPopUp(
          //     context,
          //     SuccessPopup(
          //       content: "Loading",
          //       // table:table,
          //     ));
          // context.
          // context.showSnackBarError("Loading");
        }, error: () {
          context.showSnackBarError(Variable.errorMessege);
        }, success: (data) {
          if (data.data1) {
            setState(() {
              widget.assign();

              context.read<InventorysearchCubit>().getInventorySearch("code");
              Navigator.pop(context);

              context.showSnackBarSuccess(data.data2);






            // context.read<PurchaserecievigReadCubit>().getGeneralPurchaseRecievingRead(veritiaclid);

            });



          }
          else {
            // context.showSnackBarError(data.data2);
            showDailogPopUp(
                context,
                FailiurePopup(
                  content: data.data2,
                  // table:table,
                ));
          }
          ;
        });
      },
    ),

  ],
  child: Builder(
        builder: (context) {
          return AlertDialog(
            content: PopUpHeader(


              label: "Create system generated LPO",
              onApply: () {
                print( "aaa"+widget.model.toString());
                GenerateMissing? model=widget.model;

                model = model?.copyWith(remarks: remarks?.text,plannedRecieptDate: planned.text,promisedRecieptDate:promised.text,note: note.text,vendorId: vendorCode.text,vendorAddress: vendoraddress.text,vendorTrnNumber: vendortrnnumber.text);
                print( "asap"+model.toString());

                // widget.assign(model);
                context.read<PurchasegeneratingCubit>().generatePost(model!);
                // Navigator.pop(context);

              },
              isDirectCreate: true,


              onEdit: () {




              },
              dataField: SizedBox(
                height: MediaQuery.of(context).size.height * .6,

                child: SingleChildScrollView(
                  child:
                  Container(
                    height: 400,

                    // width: MediaQuery.of(context).size.width-20,
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        SizedBox(height: 15,),
                        Container(

                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    NewInputCard(
                                      controller: vendorCodeName,
                                      icondrop: true,
                                      title: "Vendor Code",
                                      readOnly: true,
                                      ontap: () {
                                        showDailogPopUp(
                                          context,
                                          TableConfigurePopup(type: "VendorDetails_Popup",
                                            valueSelect: (VendorDetailsModel va) {
                                              setState(() {


                                                vendorCode.text=va.manuFactureuserCode ?? "";
                                                vendorCodeName.text=va.manuFactureName ?? "";
                                                // vendoraddress.text=va.address.;
                                                vendortrnnumber.text=va.trnNumber.toString();

                                                //                           setState(() {});ge = true;
                                                // orderType.text = va!;
                                              });
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                    SizedBox(
                                      height: MediaQuery.of(context).size.height * .035,
                                    ),
                                    // PopUpInputField(
                                    //     controller: reason, label: "vendor id"),
                                    // PopUpInputField(
                                    //   // direction:true ,
                                    //   controller: vendorCodeName,
                                    //   icondrop: true,
                                    //   label: "Vendor Code",
                                    //   readOnly: true,
                                    //   ontap: () {
                                    //     showDailogPopUp(
                                    //       context,
                                    //       TableConfigurePopup(type: "VendorDetails_Popup",
                                    //         valueSelect: (VendorDetailsModel va) {
                                    //           setState(() {
                                    //
                                    //
                                    //             vendorCode.text=va.manuFactureuserCode ?? "";
                                    //             vendorCodeName.text=va.manuFactureName ?? "";
                                    //             // vendoraddress.text=va.address.;
                                    //             vendortrnnumber.text=va.trnNumber.toString();
                                    //
                                    //             //                           setState(() {});ge = true;
                                    //             // orderType.text = va!;
                                    //           });
                                    //         },
                                    //       ),
                                    //     );
                                    //   },
                                    // ),
                                    // SelectableDropDownpopUp(
                                    //   row: true,
                                    //   label: "Vendor Code",
                                    //   type:"VendorCodeGeneral",
                                    //   value: vendorCode.text,
                                    //   onSelection: (Result? va) {
                                    //
                                    //     print(
                                    //         "+++++++++++++++++++++++"+va.toString());
                                    //     //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                                    //     // setState(() {
                                    //     vendorCode.text=va?.partnerCode??"";
                                    //     var id=va?.partnerCode;
                                    //     print(vendorCode.text);
                                    //     setState(() {
                                    //       context
                                    //           .read<
                                    //           VendordetailsCubit>()
                                    //           .getVendorDetails(
                                    //           id);
                                    //
                                    //     });
                                    //     showDailogPopUp(
                                    //         context,
                                    //         VendorPopup(
                                    //         assign: assigniningDetails,
                                    //
                                    //         ));
                                    //
                                    //
                                    //
                                    //
                                    //
                                    //
                                    //   },
                                    //   onAddNew: () {},
                                    //   restricted: true,
                                    // ),


                                    PopUpDateFormField(

                                        format:DateFormat('dd-MM-yyyy'),
                                        controller: promised2,
                                        // initialValue:
                                        //     DateTime.parse(fromDate!),
                                        label: "Promised Receipt Date",
                                        onSaved: (newValue) {
                                          promised2.text=   DateFormat('dd-MM-yyyy').format(newValue!);
                                          promised.text = newValue
                                              ?.toIso8601String()
                                              .split("T")[0] ??
                                              "";
                                        },
                                        enable: true),




                                    // PopUpDateFormField(
                                    //     row: true,
                                    //
                                    //     format:DateFormat('yyyy-MM-dd'),
                                    //     controller:  widget.promised,
                                    //     // initialValue:
                                    //     //     DateTime.parse(fromDate!),
                                    //     label: "Promised Recipt Date",
                                    //     onSaved: (newValue) {
                                    //       print("newValue"+newValue.toString());
                                    //       widget.promised?.text = newValue
                                    //           ?.toIso8601String()
                                    //           .split("T")[0] ??
                                    //           "";
                                    //       print("promised_receipt_date.text"+ widget.promised!.text.toString());
                                    //     },
                                    //     enable: true),

                                    // PopUpInputField(
                                    //     controller: widget.promised, label: "promisdedRecieptdate"),

                                  ],
                                ),
                              )),
                              SizedBox(width: 10,),
                              Expanded(child: Container(
                                child: Column(
                                  children: [
                                    PopUpDateFormField(
                                        // row: true,
                                        format:DateFormat('dd-MM-yyyy'),
                                        controller:planned2,
                                        // initialValue:
                                        //     DateTime.parse(fromDate!),
                                        label: "Planned Receipt Date",
                                        onSaved: (newValue) {
                                          planned2.text=   DateFormat('dd-MM-yyyy').format(newValue!);
                                          planned.text = newValue
                                              ?.toIso8601String()
                                              .split("T")[0] ??
                                              "";
                                        },
                                        enable: true),
                                    // PopUpInputField(
                                    //     controller: widget.plannded, label: "planned reciept date"),


                                  ],
                                ),
                              ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .035,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: NewInputCard(

                                  height: 60,
                                  maxLines: 3,
                                  controller: remarks, title: "Remarks"),
                            ),
                            Expanded(
                              child: NewInputCard(
                                  height: 60,
                                  maxLines: 3,
                                  controller: note, title: "Note"),
                            ),
                          ],
                        )

                      ],
                    ) ,

                  ),
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


class PopUpHeader extends StatefulWidget {
  final String label;
  final Widget? dataField;
  final double widthPopup;
  final VoidCallback onApply;
  final VoidCallback? onEdit;
  final VoidCallback? onCancel;
  final Function(bool)? onAddNew;
  final bool isDirectCreate;
  const PopUpHeader({
    Key? key,
    required this.label,this.onEdit,
    this.widthPopup=50,
    this.onCancel,
    this.dataField,this.onAddNew,
    required this.onApply,  this.isDirectCreate=false,
  }) : super(key: key);

  @override
  _PopUpHeaderState createState() => _PopUpHeaderState();
}

class _PopUpHeaderState extends State<PopUpHeader> {

  @override
  Widget build(BuildContext context) {
    changer(){
      widget.isDirectCreate!=false;
    }
    return Container(
      // height:100,


      padding: EdgeInsets.all(10),
      width: 600,
      child: GeneralSavePage(onEdit: widget.onEdit,
        onPopUp: true,
        onApply: widget.onApply,
        onCreate:widget.isDirectCreate?true: _selections[0],
        onCancel: widget.onCancel,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                boldText(widget.label, fontSize: 18),
                // Transform.scale(
                //   scale: 0.8,
                //   child: _toggleButtonList(widget.onAddNew??(v){}),
                // ),
                Transform.scale(
                  scale: 0.7,
                  alignment: Alignment.topRight,
                  child: CloseButton(onPressed: () {
                    Navigator.pop(context);
                  }),
                ),
              ],
            ),
            greyDivider(),
            if (widget.dataField != null) widget.dataField!,
          ],
        ),
      ),
    );
  }

  List<bool> _selections = List.generate(3, (index) => false);
  _toggleButtonList(Function(bool) onAdNew) => ToggleButtons(
    children: [
      Icon(Icons.add_rounded, color: Colors.grey),
      Icon(Icons.cleaning_services_rounded, color: Colors.grey),
      Icon(Icons.history_rounded, color: Colors.grey),
    ],
    renderBorder: false,
    borderWidth: 0.1,
    // splashColor: Palette.SUCCESS,
    isSelected: _selections,
    onPressed: (int i) {

      setState(() {
        _selections[i] = !_selections[i];
        onAdNew(_selections[0]);
      });
    },
  );
}
class GeneralSavePage extends StatelessWidget {
  final bool onCreate;
  final bool onPopUp;
  final Widget child;
  final bool? buttonNameOption;
  final bool buttonVisible;
  final VoidCallback? onApply;
  final VoidCallback? onEdit;
  final String? buttonName;
  final Widget? paginated;

  final VoidCallback? onCancel;
  const GeneralSavePage(
      {Key? key,
        this.buttonVisible=true,
        this.paginated,
        this.buttonNameOption=false,
        this.buttonName="SAVE",
        required this.child,
         this.onApply,
        this.onCancel,
        this.onCreate = false,
        this.onPopUp = false,
        this.onEdit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Container(

      height: MediaQuery.of(context).size.height * 60,
      width: 100,
      child: Stack(
        children: [
          Container(
            // color: Colors.red,
              height: MediaQuery.of(context).size.height * 58,
              margin: EdgeInsets.only(
                  bottom: onCreate
                      ?40
                      : onEdit != null
                      ? 40
                      : 20),
              child: child),
         Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if(paginated!=null)
                    paginated??Container(),
                  if(buttonVisible)   Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(),
                        if (onCreate) save(context,buttonName: buttonName),
                        if (onEdit != null && !onCreate) edit()
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  Widget edit() {
    return Row(
      children: [
        SizedBox(
          height: 30,
          child: CommonButtonLightCustom(
              onPressed: onCancel,
              textColor: Colors.grey,
              color: Colors.orange,
              child: Row(
                children: [
                  // Icon(Icons.delete, color: Colors.grey),
                  SizedBox( width: 10,),
                  Text(
                    "Discard",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )),
        ),
        gapWidthColumn(width: 10),
        SizedBox(
          height: 30,
          child: CommonButtonCustom(
              onPressed: onEdit,
              child: Row(
                children: [
                  // Icon(Icons.edit),
                  SizedBox(width: 3),
                  Text(
                    "Save Changes",
                  )
                ],
              )),
        ),
      ],
    );
  }

  Widget save(BuildContext context,{String? buttonName="SAVE"} ) {
    return Container(
      alignment: Alignment.centerRight,
      child: Row(
        children: [

          SizedBox( height: 10,),
          TextButtonLarge(

              text:buttonName.toString(),
              marginAvoid: true,



              labelcolor: Colors.white,

              onPress: () {
                onApply!();
              }),
          // SizedBox(
          //
          //   height: 30,
          //   child: CommonButtonCustom(
          //       onPressed: onApply,
          //       child: Row(
          //         children: [
          //           // Icon(
          //           //   Icons.check,
          //           // ),
          //           SizedBox(width: 3),
          //           Text(
          //             buttonName.toString(),
          //           )
          //         ],
          //       )),
          // )
        ],
      ),
    );
  }
}

class Generalpagination extends StatelessWidget {
  final Widget child;
  final int currentTab;
  final int lastTab;
  final Function(int)? onClick;
  final bool create;
  final VoidCallback? onApply;

  const Generalpagination({Key? key,
    required this.child,
    required this.currentTab,
    required this.lastTab,
    this.onClick,
    this.create = false,
    this.onApply})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 60,
              margin: EdgeInsets.only(bottom: 20),
              child: child),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  currentTab == 0 ? Container() : previous(),
                  currentTab == lastTab
                      ? create
                      ?
                  //save
                  Container()
                      : Container()
                      : next()
                ],
              ))
        ],
      ),
    );
  }

  Widget previous() {
    return Container(

      alignment: Alignment.centerLeft,
      // color: Colors.amberAccent,
      child: Transform.scale(
        scale: 1,
        child: ToggleButtons(
            constraints: BoxConstraints(maxHeight: 40),
            borderColor: Colors.white,
            borderWidth: 0,
            onPressed: (int val) {
              if (onClick != null && val == 0) onClick!(0);
              if (onClick != null && val == 1) onClick!(currentTab - 1);
              if (onClick != null && val == 2) onClick!(currentTab - 1);
            },
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.expand,
                  size: 12,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.ac_unit, size: 12),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "previous",

                ),
              ),
            ],
            isSelected: [
              false,
              false,
              false,
            ]),
      ),
    );
  }

  Widget next() {
    return Container(
      height: 100,
      width: 100,
      alignment: Alignment.centerRight,
      // color: Colors.amberAccent,
      child: Transform.scale(
        scale: 1,
        child: ToggleButtons(
            constraints: BoxConstraints(maxHeight: 40),
            borderColor: Colors.white,
            borderWidth: 0,
            onPressed: (int val) {
              if (onClick != null && val == 0) onClick!(currentTab + 1);
              if (onClick != null && val == 1) onClick!(currentTab + 1);
              if (onClick != null && val == 2) onClick!(lastTab);
            },
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Next",),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_back, size: 12),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.add, size: 12),
              )
            ],
            isSelected: [
              false,
              false,
              false
            ]),
      ),
    );
  }

}
class CommonButtonLightCustom extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Color? color, textColor;
  final TextStyle? textStyle;

  const CommonButtonLightCustom({
    required this.child,
    Key? key,
    this.onPressed,
    this.color = Colors.white,
    this.textColor = Colors.white,
    this.textStyle,
  }) : super(key: key);

  ButtonStyle get _buttonStyle => ElevatedButton.styleFrom(
    onPrimary: textColor,
    textStyle: textStyle,
    primary: Colors.white,
    elevation: 0,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: BorderSide(color: color!),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: _buttonStyle,
      onPressed: onPressed,
      child: FittedBox(child: child),
    );
  }
}
class CommonButtonCustom extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Color? color, textColor;
  final TextStyle? textStyle;

  const CommonButtonCustom({
    required this.child,
    Key? key,
    this.onPressed,
    this.color = Pellet.tableBlueHeaderPrint,
    this.textColor = Colors.white,
    this.textStyle,
  }) : super(key: key);

  ButtonStyle get _buttonStyle => ElevatedButton.styleFrom(
    onPrimary: textColor,
    textStyle: textStyle,
    primary: color,
    elevation: 0,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    // shape: const RoundedRectangleBorder(
    //   borderRadius: BorderRadius.all(Radius.circular(8)),
    // ),
  );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: _buttonStyle,
      onPressed: onPressed,
      child: FittedBox(child: child),
    );
  }
}



