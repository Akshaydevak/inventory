import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/general/generalscreen.dart';
import 'package:inventory/Screens/logi/model/inventorylistmodel.dart';

import 'package:inventory/Screens/purchasreturn/cubits/cubit/generalpost_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/generalread_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/purchaseinvoice_read_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/purchasereturngeneralpatch_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/returdelete_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/vertical/vertiacal_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/verticallist_cubit.dart';
import 'package:inventory/Screens/purchasreturn/general/pages/purchase_return_general_stable.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/postmodel.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/purchaseinvoice.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/sharedpreference.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/cubit/general_purchase_read_cubit.dart';
import 'package:inventory/cubits/cubit/cubit/purchase_stock_cubit.dart';
import 'package:inventory/model/purchase_current_stock_qty.dart';
import 'package:inventory/model/purchase_order_table_model.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/printScreen.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/dropdownbutton.dart';
import 'package:inventory/widgets/inputfield.dart';
import 'package:provider/src/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:inventory/model/purchaseorder.dart';



class PurchaseReturnGeneral extends StatefulWidget {
  @override
  _PurchaseReturnGeneralState createState() => _PurchaseReturnGeneralState();
}

class _PurchaseReturnGeneralState extends State<PurchaseReturnGeneral> {
  TextEditingController orderTypeController=TextEditingController();
  TextEditingController orderCodeController=TextEditingController();
  TextEditingController orderDateController=TextEditingController();
  TextEditingController purchaseInvoiceIdController=TextEditingController();
  TextEditingController vendorCodeController=TextEditingController();
  TextEditingController vendorAddressController=TextEditingController();
  TextEditingController vendorTrnNumberController=TextEditingController();
  TextEditingController paymentCodeController=TextEditingController();
  TextEditingController paymentStatusController=TextEditingController();
  TextEditingController returnOrderStatusController=TextEditingController();
  TextEditingController returnOrderInvoiceStatusController=TextEditingController();
  TextEditingController noteController=TextEditingController();
  TextEditingController remarksController=TextEditingController();
  TextEditingController discountController=TextEditingController();
  TextEditingController focController=TextEditingController();
  TextEditingController unitCostController=TextEditingController();
  TextEditingController vatableAmountController=TextEditingController();
  TextEditingController excessTaxController=TextEditingController();
  TextEditingController vatController=TextEditingController();
  TextEditingController actualCostController=TextEditingController();
  TextEditingController grandTotalCostController=TextEditingController();
  TextEditingController inventory=TextEditingController();
  TextEditingController vendorMailId=TextEditingController();
  var paginatedList;
  bool select=false;
  bool updateCheck=false;
  late AutoScrollController recieveController;
  int selectedVertical=0;
  TextEditingController itemsearch = TextEditingController();
  int? veritiaclid=0;
  List<PurchaseOrder> result = [];
  PurchaseOrderTableModel? purchaseTable;
  PurchaseCureentStockQty? purchaseCurrentStock;
  List<int?> currentStock = [];


  List<Liness>lines=List.from([]);
  void initState() {
    context
        .read<VertiacalCubit>()
        .getGeneralVertical();
    recieveController = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }
  tableAssign(List<Liness>liness){
    lines=List.from(liness);
    setState(() {
      addition();
    });
  }
  clear(){
    orderTypeController.text="";
    inventory.text="";
    orderDateController.text="";
    purchaseInvoiceIdController.text="";
    vendorCodeController.text="";
    vendorAddressController.text="";
    vendorTrnNumberController.text="";
    vendorMailId.text="";
    paymentStatusController.text="";
    paymentCodeController.text="";
    returnOrderStatusController.text="";
    returnOrderInvoiceStatusController.text="";
    orderCodeController.text="";
    noteController.text="";
    grandTotalCostController.text="";
    remarksController.text="";
    unitCostController.text="";
    excessTaxController.text="";
    actualCostController.text="";
    vatController.text="";
    vatableAmountController.text="";
    focController.text="";
    discountController.text="";

  }
  addition() {
    print("enterd");
    print("+==" + lines.toString());
    double  unitcost=0;
    double grands=0;
    double actualValue=0;
    double vatValue=0;
    double discountValue=0;
    double focValue=0;
    double VatableValue=0;
    double excessTAxValue=0;
    if(lines.isNotEmpty)
      for (var i = 0; i < lines.length; i++) {
        if (lines?[i].isActive == true && lines?[i].upDateCheck == false) {
          var unicost1= lines?[i].unitCost??0;
          var vatValue1= lines?[i].vat??0;
          var grands1= lines?[i].grandTotal??0;
          var actualValue1= lines?[i].actualCost??0;
          var discountValue1= lines?[i].discount??0;
          var focValue1= lines?[i].foc??0;
          var VatableValue1= lines?[i].vatableAmount??0;
          var excessTAxValue1= lines?[i].excessTax??0;

          unitcost = unitcost +unicost1;

          grands = double.parse((grands + grands1).toStringAsFixed(2));
          actualValue =double.parse( (actualValue + actualValue1).toStringAsFixed(2));
          vatValue = double.parse((vatValue + vatValue1).toStringAsFixed(2));
          discountValue = double.parse((discountValue + discountValue1).toStringAsFixed(2));
          focValue = double.parse((focValue + focValue1).toStringAsFixed(2));

          VatableValue = double.parse((VatableValue + VatableValue1).toStringAsFixed(2));

          excessTAxValue =double.parse( (excessTAxValue + excessTAxValue1).toStringAsFixed(2));
        }
      }
    unitCostController.text = unitcost == 0 ? "" : unitcost.toString();
    grandTotalCostController.text = grands.toString();
    vatController.text = vatValue.toString();

    actualCostController.text = actualValue.toString();
    print("foc value"+focValue.toString());

    focController.text = focValue.toString();
    discountController.text = discountValue.toString();
    excessTaxController.text = excessTAxValue.toString();
    vatableAmountController.text = VatableValue.toString();
    // _value=false;
  }
  Future _getCurrentUser() async {

    if(lines.isNotEmpty) {

      for (var i = 0; i < lines.length; i++) {
        print("variantaaaaaa" + lines[i].variantId.toString());
        print("variantaaaaaa" + inventory.text.toString());
        var b = await context.read<PurchaseStockCubit>().getCurrentStock(inventory.text, lines[i].variantId);
        print("b" + b.toString());
      }
      setState(() {});
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



  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PurchaseinvoiceReadCubit(),
        ),
        BlocProvider(
          create: (context) => GeneralpostCubit(),
        ),
        BlocProvider(
          create: (context) => VerticallistCubit(),
        ),
        BlocProvider(
          create: (context) => GeneralreadCubit(),
        ),
        BlocProvider(
          create: (context) => PurchasereturngeneralpatchCubit(),
        ),
        BlocProvider(
          create: (context) => ReturdeleteCubit(),
        ),


      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [
                BlocListener<GeneralpostCubit, GeneralpostState>(
                  listener: (context, state) {
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
                                .read<VertiacalCubit>()
                                .getGeneralVertical();
                            currentStock.clear();
                            context.read<GeneralreadCubit>().getGeneralPurchaseReturnRead(veritiaclid!);
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
                BlocListener<GeneralreadCubit, GeneralreadState>(
                  listener: (context, state) {
                    print("state++++++++++++++++++++++++++++++++");
                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          print("error");
                        },
                        success: (data) {
                          setState(() {
                            print("taskssss");
                            data.lines != null ? lines =List.from( data?.lines ?? []) : lines = [];
                            print("lll"+lines.toString());

                            orderTypeController.text=data.orderType??"";
                            inventory.text=data.inventoryId??"";
                            orderDateController=TextEditingController(text:data.returnOrderDate==null?"":  DateFormat('dd-MM-yyyy').format(DateTime.parse(data.returnOrderDate??"")));
                            purchaseInvoiceIdController.text=data.purchaseInvoiceId??"";
                            vendorCodeController.text=data.vendorCode??"";
                            vendorAddressController.text=data.vendorAddress??"";
                            vendorTrnNumberController.text=data.vendorTrnNumber??"";
                            vendorMailId.text=data.vendorMailId??"";
                            paymentStatusController.text=data.paymentStatus??"";
                            paymentCodeController.text=data.paymentCode??"";
                            returnOrderStatusController.text=data.returnOrderStatus??"";
                            orderCodeController.text=data.returnOrderCode??"";
                            returnOrderInvoiceStatusController.text=data.returnInvoiceStatus??"";
                            noteController.text=data.note??"";
                            remarksController.text=data.remarks??"";
                            if(data.unitCost==null||data.unitCost=="null"){
                              unitCostController.text =='';
                            }
                            else{
                              unitCostController.text  = data.unitCost.toString()??"";
                            }
                            if(data.excessTax==null||data.excessTax=="null"){
                              excessTaxController.text =='';
                            }
                            else{
                              excessTaxController.text  = data.excessTax.toString()??"";
                            }
                            if(data.actualCost==null||data.actualCost=="null"){
                              actualCostController.text =='';
                            }
                            else{
                              actualCostController.text  = data.actualCost.toString()??"";
                            }
                            if(data.vat==null||data.vat=="null"){
                              vatController.text =='';
                            }
                            else{
                              vatController.text  = data.vat.toString()??"";

                            }
                            if(data.grandTotal==null||data.grandTotal=="null"){
                              grandTotalCostController.text =='';
                            }
                            else{
                              grandTotalCostController.text  = data.grandTotal.toString()??"";
                            }
                            if(data.vatableAmount==null||data.vatableAmount=="null"){
                              vatableAmountController.text =='';
                            }
                            else{
                              vatableAmountController.text  = data.vatableAmount.toString()??"";

                            }
                            if(data.foc==null||data.foc=="null"){
                              focController.text =='';
                            }
                            else{

                              focController.text  = data.foc.toString()??"";

                            }
                            if(data.discount==null||data.discount=="null"){
                              discountController.text =='';
                            }
                            else{
                              discountController.text  = data.discount.toString()??"";
                            }
                            _getCurrentUser();
                          });
                        });
                  },
                ),
                BlocListener<PurchasereturngeneralpatchCubit, PurchasereturngeneralpatchState>(
                  listener: (context, state) {
                    print("patch" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loading");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      if (data.data1){
                        context.showSnackBarSuccess(data.data2);
                        currentStock.clear();

                        context.read<GeneralreadCubit>().getGeneralPurchaseReturnRead(veritiaclid!);
                      }

                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),
                BlocListener<ReturdeleteCubit, ReturdeleteState>(
                  listener: (context, state) {

                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loading");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      if (data.data1) {
                        context.showSnackBarSuccess(data.data2);
                        context.read<VertiacalCubit>().getGeneralVertical();
                        clear();
                        lines?.clear();
                        select = true;
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
                          currentStock.add(0);
                          setState(() {});
                        },
                        success: (data) {
                          print("Akshayaaaaa" + data.toString());
                          purchaseCurrentStock = data;
                          var stockQty = purchaseCurrentStock?.StockQty;
                          print("stockqty" + stockQty.toString());
                          currentStock.add(stockQty);
                          setState(() {});



                          // }


                        });
                  },
                ),

              ],
              child: BlocConsumer<VertiacalCubit, VertiacalState>(
                listener: (context, state) {
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (list) {
                        paginatedList=list;
                        print("aaaaayyyiram"+list.data.toString());

                        result = list.data;
                        setState(() {
                          if(result.isNotEmpty){
                            veritiaclid=result[0].id;
                            Variable.verticalid=result[0].id;
                            context.read<GeneralreadCubit>().getGeneralPurchaseReturnRead(veritiaclid!);
                            select = false;
                          }
                          else{
                            select=true;
                            setState(() {
                            });
                          }

                        });
                      });
                },
                builder: (context, state) {
                  return Builder(
                      builder: (context) {
                        return Scaffold(
                          backgroundColor: Pellet.bagroundColor,
                          body: IntrinsicHeight(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                PurchaseVerticalList(
                                  selectedVertical: selectedVertical,
                                  select: select,
                                  itemsearch: itemsearch,ontap: (int index){
                                  setState(() {
                                    selectedVertical=index;
                                    select=false;
                                    clear();
                                    updateCheck=false;
                                    lines.clear();
                                    veritiaclid = result[index].id;
                                    currentStock.clear();
                                    context.read<GeneralreadCubit>().getGeneralPurchaseReturnRead(veritiaclid!);
                                    setState(() {

                                    });
                                  });
                                },result: result,
                                  child:     tablePagination(
                                        () => context
                                        .read<VertiacalCubit>()
                                        .refresh(),
                                    back: paginatedList?.previousUrl == null
                                        ? null
                                        : () {
                                      context
                                          .read<VertiacalCubit>()
                                          .previuosslotSectionPageList();
                                    },
                                    next:paginatedList?.nextPageUrl == null
                                        ? null
                                        : () {
                                      // print(data.nextPageUrl);
                                      context
                                          .read<VertiacalCubit>()
                                          .nextslotSectionPageList();
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: SingleChildScrollView(
                                    child: Container(
                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:MainAxisAlignment.end,
                                            children: [
                                              TextButtonLarge(
                                                marginCheck: true,
                                                onPress: () {
                                                  select=true;
                                                  updateCheck=false;
                                                  currentStock.clear();
                                                  clear();
                                                  lines?.clear();

                                                  setState(() {
                                                  });

                                                },
                                                text: "CREATE",                                  ),
                                              TextButtonLarge(
                                                text: "PREVIEW",
                                                onPress: () async {
                                                  InventoryListModel model=InventoryListModel();
                                                  UserPreferences userPref = UserPreferences();
                                                  await userPref.getInventoryList().then((user) {
                                                    if (user.isInventoryExist == true) {
                                                      model=user;
                                                    } else {
                                                    }
                                                  });
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) =>
                                                        PrintScreen(
                                                          select: select,
                                                          vendorCode:vendorCodeController.text,
                                                          orderCode:orderCodeController.text ,
                                                          orderDate: orderDateController.text,
                                                          table:lines,
                                                          vat: double.tryParse( vatController.text),
                                                          actualCost:double.tryParse( actualCostController.text),
                                                          variableAmount:double.tryParse( vatableAmountController.text) ,
                                                          discount:double.tryParse( discountController.text) ,
                                                          unitCost:double.tryParse( unitCostController.text) ,
                                                          excisetax:double.tryParse( excessTaxController.text) ,
                                                          pageName: "GENERAL",
                                                          model: model,
                                                          remarks: remarksController.text ,
                                                          note: noteController.text,
                                                        )
                                                    ),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 20,),
                                          TopStableTable(
                                            orderType: orderTypeController,vendorCode: vendorCodeController,inventory: inventory,select:select,
                                            orderCode: orderCodeController,vendorAddress: vendorAddressController,vendorMailId:vendorMailId,
                                            vendorTRNnumber: vendorTrnNumberController,paymentCode: paymentCodeController,
                                            orderDate: orderDateController,paymentStatus: paymentStatusController,
                                            returnOrderStatus: returnOrderStatusController,returnOrederInvoicetStatus: returnOrderInvoiceStatusController,
                                            purchaseInvoiceId: purchaseInvoiceIdController,note: noteController,remarks: remarksController,discount: discountController,
                                            foc: focController,unitCost:unitCostController,vatableAmount: vatableAmountController,excessTax: excessTaxController,actualCost: actualCostController,
                                            grandToatl: grandTotalCostController, vat: vatController,liness:lines,assign: tableAssign,currentUser:_getCurrentUser,
                                          ),
                                          Container(
                                            color: Colors.white,
                                            height: 35,
                                          ),
                                          Row(children: [
                                            TextWidget(text: "Order Lines"),
                                          ],),
                                          SizedBox(height: height*.01,),
                                          CustomScrollBar(
                                            controller: recieveController,
                                            childs: Container(
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
                                                      child: Container(
                                                        width: 2200,
                                                        // padding: EdgeInsets.all(10),
                                                        child: customTable(
                                                            tableWidth: .5,

                                                            childrens:[
                                                              TableRow(
                                                                  children: [

                                                                    tableHeadtext(

                                                                      'Sl.No',
                                                                      size: 13,

                                                                    ),



                                                                    tableHeadtext(

                                                                      'Variant Id',

                                                                      size: 13,

                                                                    ),

                                                                    tableHeadtext(

                                                                      'Variant Name',
                                                                      size: 13,

                                                                    ),

                                                                    // tableHeadtext('description', size: 10, color: null),





                                                                    tableHeadtext(
                                                                      'Barcode',

                                                                      size: 13,
                                                                    ),

                                                                    tableHeadtext(

                                                                      'Current Qty',


                                                                      size: 13,


                                                                    ),

                                                                    tableHeadtext(

                                                                      'Purchase UOM',


                                                                      size: 13,

                                                                    ),

                                                                    tableHeadtext(

                                                                      'Qty',

                                                                      size: 13,

                                                                    ),

                                                                    tableHeadtext(

                                                                      'Unit cost',


                                                                      size: 13,

                                                                    ),

                                                                    tableHeadtext(

                                                                      'Discount',

                                                                      size: 13,



                                                                    ),

                                                                    tableHeadtext(

                                                                      'FOC',

                                                                      size: 13,


                                                                    ),

                                                                    tableHeadtext(

                                                                      'Vatable Amount',


                                                                      size: 13,

                                                                    ),
                                                                    tableHeadtext(
                                                                      'Excess Tax',

                                                                      size: 13,
                                                                    ),
                                                                    tableHeadtext(

                                                                      'VAT',


                                                                      size: 13,


                                                                    ),



                                                                    tableHeadtext(

                                                                      'Actual Cost',


                                                                      size: 13,


                                                                    ),

                                                                    tableHeadtext(

                                                                      'Grand Total',


                                                                      size: 13,


                                                                    ),

                                                                    tableHeadtext(

                                                                      'Is Invoiced',


                                                                      size: 13,


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
                                                                    tableHeadtext(
                                                                      '',
                                                                      size: 13,

                                                                    ),
                                                                  ]),
                                                              if(lines.isEmpty)...[
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
                                                                      textPadding("",height: 49),

                                                                    ]
                                                                )


                                                              ],
                                                              if (lines != null)...[
                                                                for (var i = 0; i < lines.length; i++)
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
                                                                              fontWeight: FontWeight.w500),
                                                                        ),    TableCell(
                                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                                          child: textPadding(lines?[i].variantId??"",
                                                                              fontWeight: FontWeight.w500),
                                                                        ),    TableCell(
                                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                                          child: textPadding(lines?[i].variantName??"",
                                                                              fontSize: 12,
                                                                              padding: EdgeInsets.only(left: 11.5, top:
                                                                              1.5), fontWeight: FontWeight.w500),
                                                                        ),    TableCell(
                                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                                          child: textPadding(lines?[i].barcode??"", fontSize: 12,
                                                                              padding: EdgeInsets.only(left: 11.5, top:
                                                                              1.5), fontWeight: FontWeight.w500),
                                                                        ),
                                                                        TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                                          child: textPadding(currentStock.length!=lines.length?"": currentStock[i].toString(),
                                                                              padding: EdgeInsets.only(left: 11.5, top: 11.5), fontWeight: FontWeight.w500),
                                                                        ),   TableCell(
                                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                                          child: textPadding(lines?[i].purchaseUom??"", fontSize: 12,
                                                                              padding: EdgeInsets.only(left: 11.5, top:
                                                                              1.5), fontWeight: FontWeight.w500),
                                                                        ),
                                                                        TableCell(
                                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                                          child: UnderLinedInput(
                                                                            initialCheck:true,
                                                                            integerOnly: true,
                                                                            readOnly:lines[i].isInvoiced==true?true:false ,

                                                                            // controller: requestedListControllers[i],
                                                                            last: lines?[i].requestedQty.toString()??"",
                                                                            onChanged: (va) {
                                                                              updateCheck=true;
                                                                              lines[i]=lines[i].copyWith(upDateCheck: true);
                                                                              print(va);
                                                                              if (va == "") {
                                                                                print("entered");
                                                                                lines[i] = lines[i].copyWith(requestedQty: 0, vatableAmount: 0, actualCost: 0, grandTotal: 0);
                                                                              } else {
                                                                                var qty = int.tryParse(va);
                                                                                var dis = lines[i].discount;
                                                                                var excess = lines[i].excessTax;
                                                                                var unitcost = lines[i].unitCost;
                                                                                var vat = lines[i].vat;
                                                                                var foc = lines[i].foc;
                                                                                if (qty == 0 || unitcost == 0 ||unitcost=="") {
                                                                                  lines[i] = lines[i].copyWith(vatableAmount: 0, actualCost: 0, grandTotal: 0);
                                                                                }else {
                                                                                  var Vamount;
                                                                                  var vactualCost;

                                                                                  Vamount  =vatableAmountUpdation(unitcost,qty,excess,dis);
                                                                                  if(vat==0 ||vat==""){
                                                                                    vactualCost=Vamount;
                                                                                  }
                                                                                  else{
                                                                                    vactualCost  =actualAndgrandTotalUpdation(Vamount,vat);
                                                                                  }


                                                                                  lines[i] =
                                                                                      lines[i]
                                                                                          .copyWith(
                                                                                          vatableAmount: Vamount,
                                                                                          actualCost: vactualCost,
                                                                                          grandTotal: vactualCost,
                                                                                          requestedQty: qty);
                                                                                }



                                                                              }

                                                                              setState(() {});
                                                                            },
                                                                          ),
                                                                        ),
                                                                        TableCell(
                                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                                          child: textPadding(lines?[i].unitCost.toString()??"", fontSize: 12,
                                                                              padding: EdgeInsets.only(left: 11.5, top:
                                                                              1.5), fontWeight: FontWeight.w500),
                                                                        ),
                                                                        TableCell(
                                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                                          child: textPadding(

                                                                              lines?[i].discount.toString()??"", fontSize: 12,

                                                                              padding: EdgeInsets.only(left: 11.5, top:
                                                                              1.5), fontWeight: FontWeight.w500),
                                                                        ),    TableCell(
                                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                                          child: textPadding(lines?[i].foc.toString()??"",
                                                                              // fontSize: 12,
                                                                              // padding: EdgeInsets.only(left: 11.5, top:
                                                                              // 1.5),
                                                                              fontWeight: FontWeight.w500),
                                                                        ),    TableCell(
                                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                                          child: textPadding(lines?[i].vatableAmount.toString()??"", fontSize: 12,
                                                                              padding: EdgeInsets.only(left: 11.5, top:
                                                                              1.5), fontWeight: FontWeight.w500),
                                                                        ),    TableCell(
                                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                                          child: textPadding(lines?[i].excessTax.toString()??"", fontSize: 12,
                                                                              padding: EdgeInsets.only(left: 11.5, top:
                                                                              1.5), fontWeight: FontWeight.w500),
                                                                        ),    TableCell(
                                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                                          child: textPadding(lines?[i].vat.toString()??"", fontSize: 12,
                                                                              padding: EdgeInsets.only(left: 11.5, top:
                                                                              1.5), fontWeight: FontWeight.w500),
                                                                        ),    TableCell(
                                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                                          child: textPadding(lines?[i].actualCost.toString()??"", fontSize: 12,
                                                                              padding: EdgeInsets.only(left: 11.5, top:
                                                                              1.5), fontWeight: FontWeight.w500),
                                                                        ),    TableCell(
                                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                                          child: textPadding(lines?[i].grandTotal.toString()??"", fontSize: 12,
                                                                              padding: EdgeInsets.only(left: 11.5, top:
                                                                              1.5), fontWeight: FontWeight.w500),
                                                                        ),
                                                                        TableCell(
                                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                                          child: CheckedBoxs(
                                                                              valueChanger:lines![i]
                                                                                  .isInvoiced==null?false:lines![i]
                                                                                  .isInvoiced,

                                                                              onSelection:(bool ? value){


                                                                              }),
                                                                        ),                TableCell(
                                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                                          child: CheckedBoxs(
                                                                              valueChanger:lines![i]
                                                                                  .isFree==null?false:lines![i]
                                                                                  .isFree,

                                                                              onSelection:(bool ? value){

                                                                              }),
                                                                        ),
                                                                        TableCell(
                                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                                          child: CheckedBoxs(
                                                                              valueChanger:lines?[i].isActive==null?false:lines?[i].isActive,

                                                                              onSelection:(bool ? value){
                                                                                if(lines[i].isInvoiced!=true){
                                                                                  updateCheck=true;

                                                                                  lines[i]=lines[i].copyWith(upDateCheck: true);
                                                                                  bool? isActive = lines?[i].isActive??false;
                                                                                  setState(() {

                                                                                    isActive = !isActive!;
                                                                                    print(isActive);
                                                                                    // widget.updation(i,isActive);
                                                                                    lines[i] = lines[i].copyWith(isActive: isActive);
                                                                                    addition();

                                                                                    setState(() {});
                                                                                  });
                                                                                }
                                                                              }),
                                                                        ),
                                                                        TableCell(
                                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                                          child: TableTextButton(
                                                                            label:lines[i].upDateCheck==true? "update":"",
                                                                            onPress: (){
                                                                              updateCheck=false;
                                                                              lines[i]=lines[i].copyWith(upDateCheck: false);
                                                                              addition();
                                                                              setState(() {

                                                                              });


                                                                            },
                                                                          ),
                                                                        ),

                                                                        TableCell(
                                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                                          child: textPadding("", fontSize: 12,
                                                                              padding: EdgeInsets.only(left: 11.5, top:
                                                                              1.5), fontWeight: FontWeight.w500),
                                                                        ),
                                                                      ]
                                                                  )
                                                              ]
                                                            ]
                                                        ),
                                                      ),

                                                    ),
                                                    SizedBox(height: 20,)

                                                  ],
                                                ),

                                              ),
                                            ),
                                          ),
                                          Container(
                                            color: Colors.white,
                                            height: 55,
                                          ),
                                          SaveUpdateResponsiveButton(
                                            label:select?"SAVE":"UPDATE",
                                            discardFunction: (){
                                              if(select){
                                                clear();
                                                lines?.clear();
                                                setState(() {

                                                });
                                              }
                                              else{
                                                showDailogPopUp(
                                                    context,
                                                    LogoutPopup(
                                                      message: "Do you want to delete the order?",
                                                      // table:table,
                                                      // clear:clear(),
                                                      // verticalId:veritiaclid ,
                                                      onPressed:(){

                                                        Navigator.pop(context);
                                                        context.read<ReturdeleteCubit>().returnGeneralDelete(veritiaclid);

                                                      },


                                                    ));

                                              }

                                            },
                                            saveFunction: (){
                                              if( updateCheck)  context.showSnackBarError("please click the update button");
                                              else{
                                                print(lines);
                                                if(lines.isNotEmpty){
                                                  for(var i=0;i<lines.length;i++) {
                                                    if(select) {
                                                      lines[i] = lines[i].copyWith(
                                                          purchaseInvoiceLineCode: lines[i]
                                                              .invoiceLineCode ?? "");
                                                      lines[i] = lines[i].copyWith(
                                                          returnOrderLineCode: lines[i]
                                                              .invoiceLineCode ?? "");
                                                      lines[i] = lines[i].copyWith(
                                                          purchaseInvoiceLineId: lines[i]
                                                              .purchaseInvoiceLineCode ?? "");
                                                      setState(() {

                                                      });
                                                    }
                                                  }
                                                }
                                                print("lines"+noteController.text.toString());
                                                List<PatchLiness>patchLists=[];

                                                if(lines.isNotEmpty) {
                                                  for (var i = 0; i < lines.length; i++) {
                                                    patchLists.add(PatchLiness(
                                                      foc: lines[i].foc ?? 0,
                                                      totalQty: lines[i].requestedQty ?? 0,
                                                      returnOrderLineCode: lines[i]
                                                          .returnOrderLineCode ?? "",
                                                      isActive: lines[i].isActive ?? false,
                                                      purchaseInvoiceLineId: lines[i]
                                                          .purchaseInvoiceLineId ?? "",
                                                      variantId: lines[i].variantId ?? "",
                                                      unitCost: lines[i].unitCost ?? 0,
                                                      discount: lines[i].discount ?? 0,
                                                      vatableAmount: lines[i].vatableAmount ?? 0,
                                                      excessTax: lines[i].excessTax ?? 0,
                                                      vat: lines[i].vat ?? 0,
                                                      actualCost: lines[i].actualCost ?? 0,
                                                      grandTotal: lines[i].grandTotal ?? 0,

                                                    ));
                                                  }
                                                  setState(() {

                                                  });
                                                }
                                                ReturnGeneralPatchModel model1 = ReturnGeneralPatchModel(
                                                  note: noteController.text??"",
                                                  remarks: remarksController.text??"",
                                                  unitCost: double.tryParse( unitCostController.text),
                                                  grandTotal: double.tryParse( grandTotalCostController.text),
                                                  vatableAmount: double.tryParse( vatableAmountController.text),
                                                  discount: double.tryParse( discountController.text),
                                                  excessTax: double.tryParse(excessTaxController.text),
                                                  actualCost: double.tryParse(actualCostController.text),
                                                  vat: double.tryParse(vatController.text),
                                                  foc: double.tryParse(focController.text),
                                                  editedBy: Variable.created_by,
                                                  lines: patchLists??[],
                                                );
                                                PurchaseReturnGeneralPost model = PurchaseReturnGeneralPost(
                                                  orderType: orderTypeController?.text??"",
                                                  inventoryId: inventory?.text??"",
                                                  purchaseInvoiceId: purchaseInvoiceIdController?.text??"",
                                                  vendorAddress: "Aksjjj",
                                                  vendorCode: vendorCodeController?.text??"",
                                                  vendorMailId: vendorMailId?.text??"",
                                                  vendorTrnNumber: vendorTrnNumberController?.text??"",
                                                  note: noteController?.text??"",
                                                  remarks: remarksController.text??"",
                                                  unitCost: double.tryParse( unitCostController.text),
                                                  grandTotal: double.tryParse( grandTotalCostController.text),
                                                  vatableAmount: double.tryParse( vatableAmountController.text),
                                                  discount: double.tryParse( discountController.text),
                                                  excessTax: double.tryParse(excessTaxController.text),
                                                  actualCost: double.tryParse(actualCostController.text),
                                                  vat: double.tryParse(vatController.text),
                                                  foc: double.tryParse(focController.text),
                                                  createdBy: Variable.created_by,
                                                  lines: lines??[],
                                                );
                                                print("Rkaramodel"+model.toString());

                                                // //context.read<PurchaseorderdeleteCubit>().generalPurchaseDelet(1);
                                                select? context.read<GeneralpostCubit>().postGeneral(model):
                                                context.read<PurchasereturngeneralpatchCubit>().getGeneralFormPatch(veritiaclid,model1);}

                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                  );
                },
              ),
            );
          }
      ),
    );
  }
}


