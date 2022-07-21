import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:inventory/Screens/GeneralScreen.dart';

import 'package:inventory/Screens/purchasreturn/cubits/cubit/generalpost_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/generalread_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/purchaseinvoice_read_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/purchasereturngeneralpatch_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/returdelete_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/vertical/vertiacal_cubit.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/verticallist_cubit.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/purchaseinvoice.dart';
import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/cubit/general_purchase_read_cubit.dart';
import 'package:inventory/cubits/cubit/cubit/purchase_stock_cubit.dart';
import 'package:inventory/model/purchase_current_stock_qty.dart';
import 'package:inventory/model/purchase_order_table_model.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/Scrollabletable.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/dropdownbutton.dart';
import 'package:inventory/widgets/inputfield.dart';
import 'package:provider/src/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:inventory/model/purchaseorder.dart';

import '../../../printScreen.dart';
import 'model/postmodel.dart';

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


  List<Liness>lines=[];
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
    lines=liness;
    setState(() {

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
    if(lines!.isNotEmpty)
      for (var i = 0; i < lines!.length; i++) {
        if (lines?[i].isActive == true) {
          var unicost1= lines?[i].unitCost??0;
          var vatValue1= lines?[i].vat??0;
          var grands1= lines?[i].grandTotal??0;
          var actualValue1= lines?[i].actualCost??0;
          var discountValue1= lines?[i].discount??0;
          var focValue1= lines?[i].foc??0;
          var VatableValue1= lines?[i].vatableAmount??0;
          var excessTAxValue1= lines?[i].excessTax??0;

          unitcost = unitcost +unicost1;

          grands = grands + grands1;
          actualValue = actualValue + actualValue1;
          vatValue = vatValue + vatValue1;
          discountValue = discountValue + discountValue1;
          focValue = focValue + focValue1;

          VatableValue = VatableValue + VatableValue1;
          print("excessTaxvalue"+excessTAxValue.toString());
          excessTAxValue = excessTAxValue + excessTAxValue1;
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
      context.showSnackBarError("Loadingggg");
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
          data.lines != null ? lines = data?.lines ?? [] : lines = [];
          print("lll"+lines.toString());

          orderTypeController.text=data.orderType??"";
          inventory.text=data.inventoryId??"";
          orderDateController.text=data.returnOrderDate??"";
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
            setState(() {
              unitCostController.text  = data.unitCost.toString()??"";
            });
          }
          if(data.excessTax==null||data.excessTax=="null"){
            excessTaxController.text =='';
          }
          else{
            setState(() {
              excessTaxController.text  = data.excessTax.toString()??"";
            });
          }
          if(data.actualCost==null||data.actualCost=="null"){
            actualCostController.text =='';
          }
          else{
            setState(() {
              actualCostController.text  = data.actualCost.toString()??"";
            });
          }
          if(data.vat==null||data.vat=="null"){
            vatController.text =='';
          }
          else{
            setState(() {
              vatController.text  = data.vat.toString()??"";
            });
          }
          if(data.grandTotal==null||data.grandTotal=="null"){
            grandTotalCostController.text =='';
          }
          else{
            setState(() {
              grandTotalCostController.text  = data.grandTotal.toString()??"";
            });
          }
          if(data.vatableAmount==null||data.vatableAmount=="null"){
            vatableAmountController.text =='';
          }
          else{
            setState(() {
              vatableAmountController.text  = data.vatableAmount.toString()??"";
            });
          }
          if(data.foc==null||data.foc=="null"){
            focController.text =='';
          }
          else{
            setState(() {
              focController.text  = data.foc.toString()??"";
            });
          }
          if(data.discount==null||data.discount=="null"){
            discountController.text =='';
          }
          else{
            setState(() {
              discountController.text  = data.discount.toString()??"";
            });
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
          context.showSnackBarError("Loadingggg");
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
          context.showSnackBarError("Loadingggg");
        }, error: () {
          context.showSnackBarError(Variable.errorMessege);
        }, success: (data) {
          print("checkingdata"+data.data1.toString());
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
              print("error");
            },
            success: (data) {
              print("Akshayaaaaa" + data.toString());
              purchaseCurrentStock = data;
              var stockQty = purchaseCurrentStock?.StockQty;
              print("stockqty" + stockQty.toString());
                currentStock.add(stockQty);
                setState(() {});


              // else{
              //   if(Variable.tableedit==false){
              //     print("findinf");
              //     stock=stockQty;
              //     print("st"+stock.toString());
              //     setState(() {
              //
              //     });
              //
              //   }
              //   else{
              //     // additionalVariants[Variable.tableindex] =         additionalVariants[Variable.tableindex].copyWith(currentStock:purchaseCurrentStock?.StockQty   );
              //
              //   }
              //
              //
              //
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
            print("aaaaayyyiram"+list.data.toString());

            result = list.data;
            setState(() {
              if(result.isNotEmpty){
                veritiaclid=result[0].id;
              Variable.verticalid=result[0].id;
              print("Variable.ak"+Variable.verticalid.toString());
              context.read<GeneralreadCubit>().getGeneralPurchaseReturnRead(veritiaclid!);
              }
              else{
                print("common");
                select=true;
                setState(() {
                });

              }


              setState(() {});

            });
          });
  },
  builder: (context, state) {
    return Builder(
    builder: (context) {
      return Scaffold(
              body: SingleChildScrollView(
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      PurchaseVerticalList(

                        selectedVertical: selectedVertical,
                        itemsearch: itemsearch,ontap: (int index){
                        setState(() {
                          selectedVertical=index;
                          select=false;
                          updateCheck=false;


                          veritiaclid = result[index].id;
                          currentStock.clear();

                          context.read<GeneralreadCubit>().getGeneralPurchaseReturnRead(veritiaclid!);
                          setState(() {

                          });
                        });
                      },result: result,
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                children: [

                                  Container(
                                    padding: EdgeInsets.only(top: 15,left: 10),
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                          primary: Colors.blue,
                                          // elevation: 2,
                                          backgroundColor: Colors.white24),
                                      onPressed: () {
                                        select=true;
                                        updateCheck=false;
                                        currentStock.clear();
                                        clear();
                                        lines?.clear();

                                        setState(() {
                                        });

                                      },
                                      child: Text("Create"),
                                    ),
                                  ),
                                  TextButtonLarge(
                                    text: "PREVIEW",
                                    onPress: (){
                                      print("Akshay");
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) =>
                                            PurchaseReturnPrintScreen(

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
                                              // remarks: remarks.text ,





                                            )
                                        ),
                                      );


                                    },
                                  ),
                                ],
                              ),


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
                                height: 50,
                              ),
                              Row(children: [
                                TextWidget(text: "order lines"),
                              ],),

                              Divider(color: Colors.grey,thickness: 1,),
                              // GrowableTable(lines:lines,updation: u,),
                          Scrollbar(
                            controller: recieveController,
                            isAlwaysShown: true,
                            child: Container(
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
                                        padding: EdgeInsets.all(10),
                                        child: customTable(

                                            border: const TableBorder(

                                              verticalInside: BorderSide(
                                                  width:.5,
                                                  color: Colors.black45,
                                                  style: BorderStyle.solid),
                                              horizontalInside: BorderSide(
                                                  width:.3,
                                                  color: Colors.black45,
                                                  // color: Colors.blue,
                                                  style: BorderStyle.solid),),

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

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white,

                                                    ),



                                                    tableHeadtext(

                                                      'Variant Id',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    tableHeadtext(

                                                      'Variant Name',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    // tableHeadtext('description', size: 10, color: null),





                                                    tableHeadtext(
                                                      'Barcode',
                                                      padding: EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                    ),

                                                    tableHeadtext(

                                                      'Current qty',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    tableHeadtext(

                                                      'Purchase UOM',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    tableHeadtext(

                                                      'Qty',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    tableHeadtext(

                                                      'Unitcost',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    tableHeadtext(

                                                      'Discount',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    tableHeadtext(

                                                      'FOC',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    tableHeadtext(

                                                      'Vatable Amount',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),
                                                    tableHeadtext(
                                                      'Excise Tax',
                                                      padding: EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                    ),
                                                    tableHeadtext(

                                                      'VAT',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),



                                                    tableHeadtext(

                                                      'Actual Cost',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    tableHeadtext(

                                                      'Grand Total',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    tableHeadtext(

                                                      'isInvoiced',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    tableHeadtext(

                                                      'isFree',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,

                                                      // color: Palette.containerDarknew,

                                                      // textColor: Palette.white

                                                    ),

                                                    tableHeadtext(

                                                      'IsActive',

                                                      padding: EdgeInsets.all(7),

                                                      height: 46,

                                                      size: 13,


                                                    ),

                                                    tableHeadtext(
                                                      '',
                                                      padding: EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),
                                                    tableHeadtext(
                                                      '',
                                                      padding: EdgeInsets.all(7),
                                                      height: 46,
                                                      size: 13,
                                                      // color: Palette.containerDarknew,
                                                      // textColor: Palette.white
                                                    ),


                                                    // if (widget.onAddNew) textPadding(''),

                                                  ]),
                                              if (lines != null)...[
                                                for (var i = 0; i < lines!.length; i++)
                                                  TableRow(
                                                      decoration: BoxDecoration(color: Colors.grey.shade200, shape: BoxShape.rectangle,
                                                          border:const  Border(left: BorderSide(width: .5, color: Colors.grey, style: BorderStyle.solid),
                                                              bottom: BorderSide(width: .5, color: Colors.grey, style: BorderStyle.solid),
                                                              right: BorderSide(color: Colors.grey, width: .5, style: BorderStyle
                                                                  .solid))),
                                                      children: [
                                                        TableCell(
                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                          child: textPadding((i + 1).toString(), fontSize: 12,
                                                              padding: EdgeInsets.only(left: 11.5, top:
                                                              1.5), fontWeight: FontWeight.w500),
                                                        ),    TableCell(
                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                          child: textPadding(lines?[i].variantId??"", fontSize: 12,
                                                              padding: EdgeInsets.only(left: 11.5, top:
                                                              1.5), fontWeight: FontWeight.w500),
                                                        ),    TableCell(
                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                          child: textPadding(lines?[i].variantName??"", fontSize: 12,
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
                                                            // controller: requestedListControllers[i],
                                                            last: lines?[i].totalQty.toString()??"",
                                                            onChanged: (va) {
                                                              updateCheck=true;
                                                              print(va);
                                                              if (va == "") {
                                                                print("entered");
                                                                lines[i] = lines[i].copyWith(totalQty: 0, vatableAmount: 0, actualCost: 0, grandTotal: 0);
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


                                                                  lines[i] =
                                                                      lines[i]
                                                                          .copyWith(
                                                                          vatableAmount: Vamount,
                                                                          actualCost: vactualCost,
                                                                          grandTotal: vactualCost,
                                                                          totalQty: qty);
                                                                }



                                                              }

                                                              setState(() {});
                                                            },
                                                          ),
                                                        ),
                                                        // TableCell(
                                                        //   verticalAlignment: TableCellVerticalAlignment.middle,
                                                        //   child: textPadding(lines?[i].totalQty.toString()??"", fontSize: 12,
                                                        //       padding: EdgeInsets.only(left: 11.5, top:
                                                        //       1.5), fontWeight: FontWeight.w500),
                                                        // ),
                                                        TableCell(
                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                          child: textPadding(lines?[i].unitCost.toString()??"", fontSize: 12,
                                                              padding: EdgeInsets.only(left: 11.5, top:
                                                              1.5), fontWeight: FontWeight.w500),
                                                        ),    TableCell(
                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                          child: textPadding(

                                                             lines?[i].discount.toString()??"", fontSize: 12,
                                                              height:42,
                                                              padding: EdgeInsets.only(left: 11.5, top:
                                                              1.5), fontWeight: FontWeight.w500),
                                                        ),    TableCell(
                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                          child: textPadding(lines?[i].foc.toString()??"", fontSize: 12,
                                                              padding: EdgeInsets.only(left: 11.5, top:
                                                              1.5), fontWeight: FontWeight.w500),
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
                                                        // TableCell(
                                                        //   verticalAlignment: TableCellVerticalAlignment.middle,
                                                        //   child: textPadding("", fontSize: 12,
                                                        //       padding: EdgeInsets.only(left: 11.5, top:
                                                        //       1.5), fontWeight: FontWeight.w500),
                                                        // ),
                                                        // TableCell(
                                                        //   verticalAlignment: TableCellVerticalAlignment.middle,
                                                        //   child: textPadding("", fontSize: 12,
                                                        //       padding: EdgeInsets.only(left: 11.5, top:
                                                        //       1.5), fontWeight: FontWeight.w500),
                                                        // ),
                                                        //
                                                        TableCell(
                                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                                          child: CheckedBoxs(
                                                              valueChanger:lines?[i].isActive==null?false:lines?[i].isActive,

                                                              onSelection:(bool ? value){
                                                                updateCheck=true;
                                                                bool? isActive = lines?[i].isActive??false;
                                                                setState(() {

                                                                  isActive = !isActive!;
                                                                  print(isActive);
                                                                  // widget.updation(i,isActive);
                                                                  lines?[i] = lines![i].copyWith(isActive: isActive);
                                                                  addition();

                                                                  setState(() {});
                                                                });}),
                                                        ),
                                                        TableTextButton(
                                                          label:updateCheck? "update":"",
                                                          onPress: (){
                                                            updateCheck=false;
                                                            addition();
                                                            setState(() {

                                                            });


                                                          },
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

                                    )

                                  ],
                                ),

                              ),
                            ),
                          ),
                              Container(
                                color: Colors.white,
                                height: 5,
                              ),

                              Container(
                                color: Colors.white,
                                height: 50,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Button(Icons.delete, Colors.red,ctx: context,
                                      text: "Discard",
                                      onApply: (){
                                        if(select){
                                          clear();
                                          lines?.clear();
                                        }
                                        else{
                                          showDailogPopUp(
                                              context,
                                              ConfirmationPopup(
                                                // table:table,
                                                // clear:clear(),
                                                verticalId:veritiaclid ,
                                                onPressed:(){

                                                  Navigator.pop(context);
                                            context.read<ReturdeleteCubit>().returnGeneralDelete(veritiaclid);

                                                },


                                              ));

                                        }
                                      },
                                      height: 29,
                                      width: 90,
                                      labelcolor: Colors.red,
                                      iconColor: Colors.red,
                                      bdr: true),
                                  SizedBox(
                                    width: width * .008,
                                  ),
                                  Button(Icons.check, Colors.grey,ctx: context,
                                    text: select?"Save":"update",
                                    height: 29,
                                      Color: Color(0xff3E4F5B),
                                    width: 90,
                                    labelcolor: Colors.white,
                                    iconColor: Colors.white,
                                    onApply: (){
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
                                    totalQty: lines[i].totalQty ?? 0,
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
                              print("patcghhhhhj"+patchLists.toString());

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
                                      editedBy: "",
                                      lines: patchLists??[],




                                    );
                              PurchaseReturnGeneralPost model = PurchaseReturnGeneralPost(
                                      orderType: orderTypeController?.text??"",
                                      inventoryId: inventory?.text??"",
                                      purchaseInvoiceId: purchaseInvoiceIdController?.text??"",
                                      vendorAddress: vendorAddressController?.text??"",
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
                                      createdBy: "test",
                                      lines: lines??[],
                                    );
                                    print("Rkaramodel"+model.toString());

                                    // //context.read<PurchaseorderdeleteCubit>().generalPurchaseDelet(1);
                                    select? context.read<GeneralpostCubit>().postGeneral(model):
                                    context.read<PurchasereturngeneralpatchCubit>().getGeneralFormPatch(veritiaclid,model1);}
                                    }
                                  ),
                                  SizedBox(
                                    width: width * .008,
                                  ),

                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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
class TopStableTable extends StatefulWidget {
  final TextEditingController inventory;
  final TextEditingController vendorMailId;
  final TextEditingController orderType;
  final TextEditingController orderCode;
  final TextEditingController orderDate;
  final TextEditingController purchaseInvoiceId;
  final TextEditingController vendorCode;
  final TextEditingController vendorAddress;
  final TextEditingController vendorTRNnumber;
  final TextEditingController paymentCode;
  final TextEditingController paymentStatus;
  final TextEditingController returnOrderStatus;
  final TextEditingController returnOrederInvoicetStatus;
  final TextEditingController note;
  final TextEditingController remarks;
  final TextEditingController discount;
  final TextEditingController foc;
  final TextEditingController unitCost;
  final TextEditingController vatableAmount;
  final TextEditingController excessTax;
  final TextEditingController vat;
  final TextEditingController actualCost;
  final TextEditingController grandToatl;
  final bool select;
   List<Liness>? liness;
   final Function? assign;
   final Function currentUser;


  TopStableTable({required this.orderType,required this.orderCode,required this.orderDate,required this.purchaseInvoiceId,this.liness,required this.inventory,
  required this.vendorCode,required this.vendorAddress,required this.vendorTRNnumber,required this.paymentCode,required this.paymentStatus,required this.vendorMailId,
  required this.returnOrederInvoicetStatus,required this.note,required this.remarks,required this.discount,required this.foc,required this.unitCost,required this.currentUser,
  required this.vatableAmount,this.assign,required this.excessTax,required this.select,required this.vat,required this.actualCost,required this.grandToatl,required this.returnOrderStatus});
  @override
  _TopStableTableState createState() => _TopStableTableState();
}

class _TopStableTableState extends State<TopStableTable> {
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MultiBlocListener(
  listeners: [
      BlocListener<PurchaseinvoiceReadCubit, PurchaseinvoiceReadState>(
        listener: (context, state) {
    print("state++++++++++++++++++++++++++++++++");
    state.maybeWhen(
    orElse: () {},
    error: () {
    print("error");
    },
    success: (data) {
    setState(() {
  print("Akshay real "+data.toString());
  widget.vendorCode.text=data.vendorId??"";
  widget.vendorAddress.text=data.vendorAddress??"";
  widget.vendorTRNnumber.text=data.vendorTrnNumber??"";
  widget.orderType.text=data.orderType??"";
  widget.inventory.text=data.inventoryId??"";
  widget.vendorMailId.text=data.vendorMailId??"";


  data.lines != null ? widget.liness = data.lines ?? [] : widget.liness  = [];
  if(widget.liness!=null)
    widget?.assign!(widget.liness);
  if(data.actualCost==null||data.actualCost=="null"){
    widget.actualCost.text =='';
  }
  else{
    setState(() {
      widget.actualCost.text = data.actualCost.toString()??"";
    });
  }
  if(data.foc==null||data.foc=="null"){
    widget.foc.text =='';
  }
  else{
    setState(() {
      widget.foc.text = data.foc.toString()??"";
    });
  }
  if(data.discount==null||data.discount=="null"){
    widget.discount.text =='';
  }
  else{
    setState(() {
      widget.discount.text = data.discount.toString()??"";
    });
  }
  if(data.vat==null||data.vat=="null"){
    widget.vat.text =='';
  }
  else{
    setState(() {
      widget.vat.text = data.vat.toString()??"";
    });
  }
  if(data.unitCost==null||data.unitCost=="null"){
    widget.unitCost.text =='';
  }
  else{
    setState(() {
      widget.unitCost.text = data.unitCost.toString()??"";
    });
  }
  if(data.grandTotal==null||data.grandTotal=="null"){
    widget.grandToatl.text =='';
  }
  else{
    setState(() {
      widget.grandToatl.text = data.grandTotal.toString()??"";
    });
  }
  if(data.vatableAmount==null||data.vatableAmount=="null"){
    widget.vatableAmount.text =='';
  }
  else{
    setState(() {
      widget.vatableAmount.text = data.vatableAmount.toString()??"";
    });
  }
  if(data.excessTax==null||data.excessTax=="null"){
    widget.excessTax.text =='';
  }
  else{
    setState(() {
      widget.excessTax.text = data.excessTax.toString()??"";
    });
  }
widget.currentUser();



    });
    });
    },
    ),

  ],
  child: Builder(
      builder: (context) {
        return Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: Column(
                children: [

                  NewInputCard(
                    readOnly: true,
                      controller: widget.orderType,
                       title: "Order type"),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                    readOnly: true,
                      controller: widget.orderCode, title: "order code"),
                  SizedBox(
                    height: height * .030,
                  ),
                  PopUpDateFormField(

                      format:DateFormat('yyyy-MM-dd'),
                      controller: widget.orderDate,
                      // initialValue:
                      //     DateTime.parse(fromDate!),
                      label: "Promised Reciept Date",
                      onSaved: (newValue) {
                        widget.orderDate.text = newValue
                            ?.toIso8601String()
                            .split("T")[0] ??
                            "";
                        print("promised_receipt_date.text"+widget.orderDate.text.toString());
                      },
                      enable: true),
                  // NewInputCard(
                  //     controller: widget.orderDate, title: "order date"),
                  SizedBox(
                    height: height * .030,
                  ),
                  widget.select? SelectableDropDownpopUp(
                    label: "PurchaseInvoice id",
                    type:"PurchaseInvoices",
                    value: widget.purchaseInvoiceId.text??"",
                    onSelection: (PurchaseInvoice? va) {

                      print(
                          "+++++++++++++++++++++++"+va.toString());
                      //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
                      // setState(() {
                      widget.purchaseInvoiceId.text=va?.invoiceCode??"";
                      print("widget.purchaseInvoiceId.text"+widget.purchaseInvoiceId.text.toString());

                      setState(() {
                        context.read<
                            PurchaseinvoiceReadCubit>()
                            .getGeneralInvoiceRead(
                            va?.id);

                      });


                    },

                  ): NewInputCard(
                    readOnly: true,
                      controller: widget.purchaseInvoiceId, title: "PurchaseInvoice id"),

                  // NewInputCard(
                  //     controller: widget.purchaseInvoiceId, title: "PurchaseInvoice id"),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                    readOnly: true,
                      controller: widget.vendorCode, title: "vendor Code"),
                  SizedBox(
                    height: height * .030,
                  ),

                  NewInputCard(
                    readOnly: true,
                      controller: widget.vendorAddress, title: "Vendor Address "),
                  SizedBox(
                    height: height * .030,
                  ),
                  NewInputCard(
                    readOnly: true,
                      controller: widget.vendorTRNnumber, title: "Vendor TRN Number"),


                ],
              )),
              Expanded(child: Column(children: [



                NewInputCard(
                  readOnly: true,
                    controller: widget.paymentCode, title: "Payment Code"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                  readOnly: true,
                    controller: widget.paymentStatus, title: "Payment  Status"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                  readOnly: true,
                    controller: widget.returnOrderStatus, title: "Return Order Status"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                  readOnly: true,
                    controller: widget.returnOrederInvoicetStatus, title: "Return Order Invoice Status"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                  controller: widget.note, title: "note",
                  height: 90,
                  maxLines: 3,),
                SizedBox(
                  height: height * .002,
                ),
                NewInputCard(
                  controller: widget.remarks, title: "remarks",
                  height: 90,
                  maxLines: 3,),




              ],)),
              Expanded(child: Column(children: [
                SizedBox(
                  height: height * .045,
                ),
                SizedBox(
                  height: height * .045,
                ),

                NewInputCard(
                  readOnly: true,
                    controller: widget.discount, title: "Discount"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                  readOnly: true,
                    controller: widget.foc, title: "Foc"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                  readOnly: true,
                    controller: widget.unitCost, title: "UnitCost"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                  readOnly: true,
                    controller: widget.vatableAmount, title: "Vatable Amount"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                  readOnly: true,
                    controller: widget.excessTax, title: "Excess Atx"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                  readOnly: true,
                    controller: widget.vat, title: "vat"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                  readOnly: true,
                    controller: widget.actualCost, title: "Actual Cost"),
                SizedBox(
                  height: height * .030,
                ),
                NewInputCard(
                  readOnly: true,
                    controller: widget.grandToatl, title: "Grnad Total"),

              ],))

            ],
          ),
        );
      }
    ),
);
  }
}


class GrowableTable extends StatefulWidget {
  final List<Liness>?lines;
  final Function updation;
  GrowableTable({ this.lines,required this.updation});

  @override
  _GrowableTableState createState() => _GrowableTableState();
}

class _GrowableTableState extends State<GrowableTable> {
  late AutoScrollController recieveController;
  void initState() {

    recieveController = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return
      Scrollbar(
      controller: recieveController,
      isAlwaysShown: true,
      child: Container(
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
                  padding: EdgeInsets.all(10),
                  child: customTable(

                      border: const TableBorder(

                        verticalInside: BorderSide(
                            width:.5,
                            color: Colors.black45,
                            style: BorderStyle.solid),
                        horizontalInside: BorderSide(
                            width:.3,
                            color: Colors.black45,
                            // color: Colors.blue,
                            style: BorderStyle.solid),),

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

                                padding: EdgeInsets.all(7),

                                height: 46,

                                size: 13,

                                // color: Palette.containerDarknew,

                                // textColor: Palette.white,

                              ),



                              tableHeadtext(

                                'Variant Id',

                                padding: EdgeInsets.all(7),

                                height: 46,

                                size: 13,

                                // color: Palette.containerDarknew,

                                // textColor: Palette.white

                              ),

                              tableHeadtext(

                                'Variant Name',

                                padding: EdgeInsets.all(7),

                                height: 46,

                                size: 13,

                                // color: Palette.containerDarknew,

                                // textColor: Palette.white

                              ),

                              // tableHeadtext('description', size: 10, color: null),





                              tableHeadtext(
                                'Barcode',
                                padding: EdgeInsets.all(7),
                                height: 46,
                                size: 13,
                              ),

                              tableHeadtext(

                                'Current qty',

                                padding: EdgeInsets.all(7),

                                height: 46,

                                size: 13,

                                // color: Palette.containerDarknew,

                                // textColor: Palette.white

                              ),

                              tableHeadtext(

                                'Purchase UOM',

                                padding: EdgeInsets.all(7),

                                height: 46,

                                size: 13,

                                // color: Palette.containerDarknew,

                                // textColor: Palette.white

                              ),

                              tableHeadtext(

                                'Qty',

                                padding: EdgeInsets.all(7),

                                height: 46,

                                size: 13,

                                // color: Palette.containerDarknew,

                                // textColor: Palette.white

                              ),

                              tableHeadtext(

                                'Unitcost',

                                padding: EdgeInsets.all(7),

                                height: 46,

                                size: 13,

                                // color: Palette.containerDarknew,

                                // textColor: Palette.white

                              ),

                              tableHeadtext(

                                'Discount',

                                padding: EdgeInsets.all(7),

                                height: 46,

                                size: 13,

                                // color: Palette.containerDarknew,

                                // textColor: Palette.white

                              ),

                              tableHeadtext(

                                'FOC',

                                padding: EdgeInsets.all(7),

                                height: 46,

                                size: 13,

                                // color: Palette.containerDarknew,

                                // textColor: Palette.white

                              ),

                              tableHeadtext(

                                'Vatable Amount',

                                padding: EdgeInsets.all(7),

                                height: 46,

                                size: 13,
                                // color: Palette.containerDarknew,
                                // textColor: Palette.white
                              ),
                              tableHeadtext(
                                'Excise Tax',
                                padding: EdgeInsets.all(7),
                                height: 46,
                                size: 13,
                              ),
                              tableHeadtext(

                                'VAT',

                                padding: EdgeInsets.all(7),

                                height: 46,

                                size: 13,

                                // color: Palette.containerDarknew,

                                // textColor: Palette.white

                              ),



                              tableHeadtext(

                                'Actual Cost',

                                padding: EdgeInsets.all(7),

                                height: 46,

                                size: 13,

                                // color: Palette.containerDarknew,

                                // textColor: Palette.white

                              ),

                              tableHeadtext(

                                'Grand Total',

                                padding: EdgeInsets.all(7),

                                height: 46,

                                size: 13,

                                // color: Palette.containerDarknew,

                                // textColor: Palette.white

                              ),

                              tableHeadtext(

                                'isInvoiced',

                                padding: EdgeInsets.all(7),

                                height: 46,

                                size: 13,

                                // color: Palette.containerDarknew,

                                // textColor: Palette.white

                              ),

                              tableHeadtext(

                                'isFree',

                                padding: EdgeInsets.all(7),

                                height: 46,

                                size: 13,

                                // color: Palette.containerDarknew,

                                // textColor: Palette.white

                              ),

                              tableHeadtext(

                                'IsActive',

                                padding: EdgeInsets.all(7),

                                height: 46,

                                size: 13,


                              ),

                              tableHeadtext(
                                '',
                                padding: EdgeInsets.all(7),
                                height: 46,
                                size: 13,
                                // color: Palette.containerDarknew,
                                // textColor: Palette.white
                              ),
                              tableHeadtext(
                                '',
                                padding: EdgeInsets.all(7),
                                height: 46,
                                size: 13,
                                // color: Palette.containerDarknew,
                                // textColor: Palette.white
                              ),


                              // if (widget.onAddNew) textPadding(''),

                            ]),
            if (widget.lines != null)...[
      for (var i = 0; i < widget.lines!.length; i++)
        TableRow(
    decoration: BoxDecoration(color: Colors.grey.shade200, shape: BoxShape.rectangle,
        border:const  Border(left: BorderSide(width: .5, color: Colors.grey, style: BorderStyle.solid),
            bottom: BorderSide(width: .5, color: Colors.grey, style: BorderStyle.solid),
            right: BorderSide(color: Colors.grey, width: .5, style: BorderStyle
                .solid))),
          children: [
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: textPadding((i + 1).toString(), fontSize: 12,
                  padding: EdgeInsets.only(left: 11.5, top:
                  1.5), fontWeight: FontWeight.w500),
            ),    TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: textPadding(widget.lines?[i].variantId??"", fontSize: 12,
                  padding: EdgeInsets.only(left: 11.5, top:
                  1.5), fontWeight: FontWeight.w500),
            ),    TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: textPadding(widget.lines?[i].variantName??"", fontSize: 12,
                  padding: EdgeInsets.only(left: 11.5, top:
                  1.5), fontWeight: FontWeight.w500),
            ),    TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: textPadding(widget.lines?[i].barcode??"", fontSize: 12,
                  padding: EdgeInsets.only(left: 11.5, top:
                  1.5), fontWeight: FontWeight.w500),
            ),    TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: textPadding("", fontSize: 12,
                  padding: EdgeInsets.only(left: 11.5, top:
                  1.5), fontWeight: FontWeight.w500),
            ),    TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: textPadding(widget.lines?[i].purchaseUom??"", fontSize: 12,
                  padding: EdgeInsets.only(left: 11.5, top:
                  1.5), fontWeight: FontWeight.w500),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: textPadding(widget.lines?[i].totalQty.toString()??"", fontSize: 12,
                  padding: EdgeInsets.only(left: 11.5, top:
                  1.5), fontWeight: FontWeight.w500),
            ),    TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: textPadding(widget.lines?[i].unitCost.toString()??"", fontSize: 12,
                  padding: EdgeInsets.only(left: 11.5, top:
                  1.5), fontWeight: FontWeight.w500),
            ),    TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: textPadding(

                  widget.lines?[i].discount.toString()??"", fontSize: 12,
                  height:42,
                  padding: EdgeInsets.only(left: 11.5, top:
                  1.5), fontWeight: FontWeight.w500),
            ),    TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: textPadding(widget.lines?[i].foc.toString()??"", fontSize: 12,
                  padding: EdgeInsets.only(left: 11.5, top:
                  1.5), fontWeight: FontWeight.w500),
            ),    TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: textPadding(widget.lines?[i].vatableAmount.toString()??"", fontSize: 12,
                  padding: EdgeInsets.only(left: 11.5, top:
                  1.5), fontWeight: FontWeight.w500),
            ),    TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: textPadding(widget.lines?[i].excessTax.toString()??"", fontSize: 12,
                  padding: EdgeInsets.only(left: 11.5, top:
                  1.5), fontWeight: FontWeight.w500),
            ),    TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: textPadding(widget.lines?[i].vat.toString()??"", fontSize: 12,
                  padding: EdgeInsets.only(left: 11.5, top:
                  1.5), fontWeight: FontWeight.w500),
            ),    TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: textPadding(widget.lines?[i].actualCost.toString()??"", fontSize: 12,
                  padding: EdgeInsets.only(left: 11.5, top:
                  1.5), fontWeight: FontWeight.w500),
            ),    TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: textPadding(widget.lines?[i].grandTotal.toString()??"", fontSize: 12,
                  padding: EdgeInsets.only(left: 11.5, top:
                  1.5), fontWeight: FontWeight.w500),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: CheckedBoxs(
                  valueChanger:widget?.lines![i]
                      .isFree==null?false:widget?.lines![i]
                      .isFree,

                  onSelection:(bool ? value){

                  }),
            ),                TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: CheckedBoxs(
                  valueChanger:widget?.lines![i]
                      .isFree==null?false:widget?.lines![i]
                      .isFree,

                  onSelection:(bool ? value){

                  }),
            ),
            // TableCell(
            //   verticalAlignment: TableCellVerticalAlignment.middle,
            //   child: textPadding("", fontSize: 12,
            //       padding: EdgeInsets.only(left: 11.5, top:
            //       1.5), fontWeight: FontWeight.w500),
            // ),
            // TableCell(
            //   verticalAlignment: TableCellVerticalAlignment.middle,
            //   child: textPadding("", fontSize: 12,
            //       padding: EdgeInsets.only(left: 11.5, top:
            //       1.5), fontWeight: FontWeight.w500),
            // ),

            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: CheckedBoxs(
                  valueChanger:widget?.lines?[i].isActive==null?false:widget?.lines?[i].isActive,

                  onSelection:(bool ? value){
                    bool? isActive = widget?.lines?[i].isActive??false;
                    setState(() {

                      isActive = !isActive!;
                      print(isActive);
                      // widget.updation(i,isActive);
                      //  widget?.lines?[i] = widget?.lines![i].copyWith(isActive: isActive);

                      setState(() {});
                    });
                  }),
            ),
    TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: textPadding("", fontSize: 12,
                  padding: EdgeInsets.only(left: 11.5, top:
                  1.5), fontWeight: FontWeight.w500),
            ),    TableCell(
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

              )

            ],
          ),

        ),
      ),
    );
  }
}

