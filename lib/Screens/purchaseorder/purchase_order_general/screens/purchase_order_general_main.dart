import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/logi/model/inventorylistmodel.dart';
import 'package:inventory/Screens/purchaseorder/purchase_order_general/blocs/bottom_button_loading_bloc.dart';
import 'package:inventory/Screens/purchaseorder/purchase_order_general/screens/purchase_order_general_stable.dart';
import 'package:inventory/Screens/purchaseorder/purchase_order_general/screens/purchase_order_growable.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/sharedpreference.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/keyEvent.dart';
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
  final GlobalKey<PurchaseOrderGenearlFormGrowableTableState> _myWidgetState = GlobalKey<PurchaseOrderGenearlFormGrowableTableState>();
  final GlobalKey<VerticalListState> _verticalWidgetState = GlobalKey<VerticalListState>();
  final GlobalKey<PurchaseOrderGeneralStableTableState> _stableWidgetState = GlobalKey<PurchaseOrderGeneralStableTableState>();
  List<OrderLines>? order = [];
  List<PurchaseOrder> result = [];
  PurchaseOrderTableModel? purchaseTable;
  PurchaseCureentStockQty? purchaseCurrentStock;
  FocusNode inventoryFocusNode=FocusNode();
  FocusNode saveUpadtebuttonFocusnOde=FocusNode();
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

  NavigationProvider vm = NavigationProvider();
  TextEditingController unitcostTestController=TextEditingController();
  TextEditingController unitCostCheck = TextEditingController();
  TextEditingController vendor_email=TextEditingController();
  TextEditingController orderType =TextEditingController();

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
    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();

  }
  vendorCheckFunc(){
    if(table.isNotEmpty==true){
      for(var em in table){
        if(em.isActive==true){
          isVendorCheck=true;
          break;
        }
        setState(() {

        });
      }
    }

  }


  updateCheckFucction(bool value) {
    updateCheck = value;
    setState(() {});
  }  Map keyEventFuctionCount={
    "save":2,
    "cancel":3,
    "table":1

  };

  tableAssign(List<OrderLines> table1) {
    table = List.from(table1);

    setState(() {
      vendorCheckFunc();
      addition();
    });
  }
  tableDatasClear(){
_myWidgetState.currentState?.clearTableAddingVariables();
  }
  clear(){
 discount.clear();
    ordercode.clear();
orederDate2Controller.clear();
   isVendorCheck=false;
 vendorCode.clear();
    vendorCodeName.clear();
     vendortrnnumber.clear();
     vendor_email.clear();
     promised_receipt_date.clear();
     promised_receipt_date2.clear();
     planned_receipt_date.clear();
     planned_receipt_date2.clear();
    Paymentcode.clear();
    Paymentstatus.clear();
    orderStatus.clear();
    recievingstatus.clear();
     invoicestatus.clear();
    note.clear();
     remarks.clear();
    foc.clear();
  unitcourse.clear();
  Variableamount.clear();
    excesstax.clear();
    vat.clear();
     actualcost.clear();
    grandtotal.clear();
     orderType.clear();
     _myWidgetState.currentState?.clearTableAddingVariables();
    // _value=false;
  }




  assigniningDetails(String address,String trn){
    vendoraddress.text=address;
    vendortrnnumber.text=trn;
    setState(() {});
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
  int tabCount=1;
  bool isCountOrdecre=false;
  rowKeyEventResetFunc(){
    tabCount=1;
    isCountOrdecre=false;
    enableKeyEvent=true;
    setState(() {

    });
  }

  rowKeyPressEvent(RawKeyEvent event){
    // FocusNode? currentfocusedNode = FocusManager.instance.primaryFocus;
    int limit=3;
    int startLimit=1;

    if (event is RawKeyDownEvent) {

      if(event.logicalKey==LogicalKeyboardKey.escape){
        print("tabPressd");

        FocusScope.of(context).requestFocus(inventoryFocusNode);
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
if(tabCount!=1){
  FocusScope.of(context).requestFocus(saveUpadtebuttonFocusnOde);
}else{
  FocusScope.of(context).requestFocus(_myWidgetState.currentState?.focusNodeList[0]);
}


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
            //     FocusScope.of(context).requestFocus(inventoryFocusNode);
            // selectedVertical=    _verticalWidgetState.currentState?.   changeSelectedRow(1)??0;
            // setState(() {
            //
            // });
                FocusScope.of(context).requestFocus(inventoryFocusNode);
                _myWidgetState.currentState?.   changeSelectedRow(1);
                setState(() {

                });
                break;
              // case 2:
              //
              //   break;

            };




            // Handle arrow down key press
            // _changeSelectedRow(1);
          } else if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
            switch (tabCount) {
              case 1:
                // FocusScope.of(context).requestFocus(inventoryFocusNode);
                // selectedVertical=       _verticalWidgetState.currentState?.   changeSelectedRow(-1)??0;
                // setState(() {
                //
                // });
                FocusScope.of(context).requestFocus(inventoryFocusNode);
                _myWidgetState.currentState?.   changeSelectedRow(-1);
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
                saveUpadateFunction();
                break;
                case 3:
                deleteOrClearFunction();
                break;

            }



          }






      }
      //invoice page keyPress Event


      //





    }

  }


verticalOntapFunc(index){
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
                    context.read<BottomButtonLoadingBloc>().add(SaveupdateButtonEvent(val: false));
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
                    context.read<BottomButtonLoadingBloc>().add(SaveupdateButtonEvent(val: false));
                    ;
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
                          print("orderLinessssssss${data.data?.orderLines}");
                          data.data?.orderLines != null ? table =List.from( data.data?.orderLines ?? []) : table = [];
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
                              unitcourse.text = data.data?.unitcost?.toString()??"";

                          }
                          if(data.data?.excessTax==null||data.data?.excessTax=="null"){
                            excesstax.text =='';
                          }
                          else{
                            excesstax.text = data.data?.excessTax?.toString()??"";
                          }
                          if(data.data?.actualCost==null||data.data?.actualCost=="null"){
                            actualcost.text =='';
                          }
                          else{

                              actualcost.text = data.data?.actualCost?.toString()??"";

                          }
                          if(data.data?.vat==null||data.data?.vat=="null"){
                            vat.text =='';
                          }
                          else{
                              vat.text = data.data?.vat?.toString()??"";

                          }
                          if(data.data?.grandTotal==null||data.data?.grandTotal=="null"){
                            grandtotal.text =='';
                          }
                          else{
                              grandtotal.text = data.data?.grandTotal?.toString()??"";

                          }
                          if(data.data?.variableAmount==null||data.data?.variableAmount=="null"){
                            Variableamount.text =='';
                          }
                          else{

                              Variableamount.text = data.data?.variableAmount?.toString()??"";

                          }
                          if(data.data?.foc ==null||data.data?.foc =="null"){
                            foc.text =='';
                          }
                          else{
                              foc.text = data.data?.foc?.toString()??"";

                          }
                          if(data.data?.discount ==null||data.data?.discount =="null"){
                            discount.text =='';
                          }
                          else{
                              discount.text = data.data?.discount?.toString()??"";

                          }
                          ordercode.text=data.data?.orderCode.toString()??"";
                          print("data.data?.vendorId${data.data?.vendorId}");
                          vendorCode.text=data.data?.vendorId.toString()??"";
                          print("data.data?.vendorMailId${data.data?.vendorMailId}");
                          vendor_email.text=data.data?.vendorMailId.toString()??"";
                          recievingstatus.text=data.data?.recievingStatus??"";
                          Paymentstatus.text=data.data?.paymentStatus??"";
                          Paymentcode.text=data.data?.paymentcode??"";
                          // promised_receipt_date=TextEditingController(text:data.data?.promisedReceiptdate??"");
                          promised_receipt_date=TextEditingController(text:data.data?.promisedReceiptdate==null?"":  DateFormat('dd-MM-yyyy').format(DateTime.parse(data.data?.promisedReceiptdate??"")));
                          planned_receipt_date=TextEditingController(text:data.data?.plannedRecieptDate==null?"":  DateFormat('dd-MM-yyyy').format(DateTime.parse(data.data?.plannedRecieptDate??"")));
                          // planned_receipt_date=TextEditingController(text:data.data?.plannedRecieptDate??"");
                          address1=data.data?.address1??"";
                          address2=data.data?.address2??"";

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
                    context.read<BottomButtonLoadingBloc>().add(SaveupdateButtonEvent(val: false));
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
                    ;context.read<BottomButtonLoadingBloc>().add(SaveupdateButtonEvent(val: false));
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
                          clear();
                        }
                        setState(() {});
                      });
                    });
              },
              builder: (context, state) {
                return RawKeyboardListener(
                  autofocus: false,
                  focusNode:inventoryFocusNode,
                  onKey: (RawKeyEvent event) {

                    // if(enableKeyEvent==true){
                    //   rowKeyPressEvent(event);}else{
                    //
                    //   rowKeyEventResetFunc();
                    // }





                  },
                  child: IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        VerticalList(selectedVertical: selectedVertical,
                          select: select,
                          key: _verticalWidgetState,
                          itemsearch: itemsearch,ontap: (int index){
                            verticalOntapFunc(index);
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



                                      ],
                                    ),
                                  ),

                                  PurchaseOrderGeneralStableTable(
                                    discount: discount,
                                    orderCode: ordercode,
                                    isSelect: select,
                                    key: _stableWidgetState,
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
                                  SizedBox(height: height*.10,),


                                  PurchaseOrderGenearlFormGrowableTable(
                                    updateCheck: updateCheckFucction,
                                    select:select,
                                    updation: tableAssign,
                                    key:_myWidgetState,
                                    vendorCode: vendorCode,
                                  ),




                                  SizedBox(
                                    height: height * .08,
                                  ),
                                  BlocBuilder<BottomButtonLoadingBloc, BottomButtonLoadingState>(
  builder: (context, state) {
    return SaveUpdateResponsiveButton(
      focusNode: saveUpadtebuttonFocusnOde,
         isKeyFuctionRight: keyEventFuctionCount['save']==tabCount,
      isKeyFuctionLeft: keyEventFuctionCount['cancel']==tabCount,
      label: select?"SAVE":"UPDATE",isSaveUpdateLoading: state.updateSave,isClearDeketeLoading:state.deleteClear,discardFunction: (){
      deleteOrClearFunction();


                                  },saveFunction: (){
      saveUpadateFunction();

                                  },

                                  );
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
                  ),
                );
              },
            ),
          );
        }),
      ),
    );
  }
  deleteOrClearFunction(){
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
  }
  saveUpadateFunction(){
    if(updateCheck==true){
      context.showSnackBarError(
          "please press update");
    }
    else if(table.isEmpty || table.where((element) => element.isActive==true).isEmpty){
      print(promised_receipt_date.text);
      context.showSnackBarError(
          "Required at least one variant ");
    }

    else{
      context.read<BottomButtonLoadingBloc>().add(SaveupdateButtonEvent(val: true));
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
        promisedReceiptdate:DateFormat("yyyy-MM-dd").format(DateFormat("dd-MM-yyyy").parse(promised_receipt_date.text)),
        plannedRecieptDate:DateFormat("yyyy-MM-dd").format(DateFormat("dd-MM-yyyy").parse(planned_receipt_date.text)),
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
  }
}

