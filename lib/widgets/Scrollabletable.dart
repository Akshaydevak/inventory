import 'package:flutter/material.dart';
import 'package:inventory/commonWidget/Navigationprovider.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/widgets/popupcallwidgets/popupcallwidget.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

import 'dropdownbutton.dart';

class ScrollableTable extends StatefulWidget {
  final Function(int, int, int, int, int, List<OrderLines>,int,int,int)? onTotal;
  final Function(List<OrderLines>)? OrderModel;
  ScrollableTable({this.onTotal, this.OrderModel});

  @override
  State<ScrollableTable> createState() => _ScrollableTableState();
}

class _ScrollableTableState extends State<ScrollableTable> {
  List<TextEditingController> unitcostController = [];
  // double? totalUnitCost=0;
  late EmployeeDataSource employeeDataSource;
  List<Employee> employees = <Employee>[];
  int unitcost = 0;
  int grandTotal = 0;
  int vatValue = 0;
  int VatableValue = 0;
  int excessValue = 0;
  int actualCost = 0;
  int discountValue=0;

  List<OrderLines> orderLines = [];

  NavigationProvider ak = NavigationProvider();
   // EmployeeDataSource employeeDataSource=EmployeeDataSource(employeeData: employees, controller: controller, emptyRowsCount: emptyRowsCount)


  @override
  void initState() {

    ak = Provider.of<NavigationProvider>(context, listen: false);
    employees = getEmployeeData();

    print("+++++++++++++++++" + employees.toString());
    for (int i = 0; i < employees.length; i++) {
      orderLines.add(OrderLines(
          cvd: "akksksk",
          supplierCode: employees[i].SlNo.toString(),
          variantId: employees[i].varientid.toString(),
          variableAmount: employees[i].vatableamount,
          variantName: employees[i].variantname,
          barcode: employees[i].barcode,
          purchaseuom: employees[i].purchasaeuom,
          foc: employees[i].foc,
          discount: employees[i].discount,
          requestedQty: employees[i].requetqty,
          minimumQty: employees[i].minorderqty,
          maximumQty: employees[i].maxorderqty,
          unitCost: employees[i].unitcost,
          grandTotal: employees[i].grandtotal,
          excessTax: employees[i].excisetax,
          actualCost: employees[i].actualcost,
          vat: employees[i].vat));

      unitcost = unitcost + employees[i].unitcost;
      discountValue=discountValue+ employees[i].discount;
      ak.unitcost = ak.unitcost + employees[i].unitcost;
      grandTotal = grandTotal + employees[i].grandtotal;
      vatValue = vatValue + employees[i].vat;
      VatableValue = VatableValue + employees[i].vatableamount;
      excessValue = excessValue + employees[i].excisetax;
      actualCost = actualCost + employees[i].actualcost;

    }
    print("orderlinesLength" + orderLines.length.toString());

    print("provider" + ak.unitcost.toString());
    print(unitcost);
    setState(() {
      widget.onTotal!(
          unitcost, grandTotal, actualCost, excessValue, vatValue, orderLines,discountValue,VatableValue,excessValue);
    });

     employeeDataSource = EmployeeDataSource(
        employees: employees, ontotal: widget.onTotal, emptyRowsCount: 5,controller:unitcostController);
     super.initState();
  }


  @override
  Widget build(BuildContext context) {

    ak = Provider.of<NavigationProvider>(context);

    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            child: SfDataGridTheme(
              data: SfDataGridThemeData(headerColor: const Color(0xffF2F3F5)),
              child: SfDataGrid(

                isScrollbarAlwaysShown: true,
                source: employeeDataSource,
                gridLinesVisibility: GridLinesVisibility.both,
                headerGridLinesVisibility: GridLinesVisibility.both,
                columnWidthMode: ColumnWidthMode.auto,
                headerRowHeight: 46,
                columns: <GridColumn>[
                  GridColumn(
                      columnName: 'SlNo',
                      label: Container(
                          padding: EdgeInsets.all(7.0),
                          alignment: Alignment.center,
                          child: Text(
                            'Sl.No',
                          ))),
                  GridColumn(
                      columnName: 'varientid',
                      label: Container(
                          padding: EdgeInsets.all(7.0),
                          alignment: Alignment.center,
                          child: Text('Variant Id'))),
                  GridColumn(
                      columnName: 'variantname',
                      label: Container(
                          padding: EdgeInsets.all(7.0),
                          alignment: Alignment.center,
                          child: Text(
                            'Variant Name',
                            overflow: TextOverflow.ellipsis,
                          ))),
                  GridColumn(
                      columnName: 'vendorefcode',
                      label: Container(
                          padding: EdgeInsets.all(6.0),
                          alignment: Alignment.center,
                          child: Text('Vendor Ref.code'))),
                  GridColumn(
                      columnName: 'barcode',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: Text('Barcode'))),
                  GridColumn(
                      columnName: 'currentqty',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: Text('Current Qty'))),
                  GridColumn(
                      columnName: 'purchasaeuom',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: Text('Purchase UOM'))),
                  GridColumn(
                      columnName: 'requetqty',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: Text('Requet Qty'))),
                  GridColumn(
                      columnName: 'minorderqty',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: Text('Min.order.qty'))),
                  GridColumn(
                      columnName: 'maxorderqty',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: Text('Max.Order.Qty'))),
                  GridColumn(
                      columnName: 'isrecieved',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: Text('Is Recieved'))),
                  GridColumn(
                      columnName: 'unitcost',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: Text('Unit Cost'))),
                  GridColumn(
                      columnName: 'discount',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: Text('discount'))),
                  GridColumn(
                      columnName: 'foc',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: Text('FOC'))),
                  GridColumn(
                      columnName: 'vatableamount',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: Text('vatable  amount'))),
                  GridColumn(
                      columnName: 'excisetax',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: Text('excise tax'))),
                  GridColumn(
                      columnName: 'vat',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: Text('vat'))),
                  GridColumn(
                      columnName: 'actualcost',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: Text('actual cost'))),
                  GridColumn(
                      columnName: 'grandtotal',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: Text('grand total'))),
                  GridColumn(
                      columnName: 'isinvoiced',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: Text('is invoiced'))),
                  GridColumn(
                      columnName: 'isactive',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: Text('is active'))),
                ],


              ),

            ),
          ),
          RaisedButton(onPressed: (){
            print("++++sss"+unitcostController[0].text);
            int ?unitCost=int.tryParse(unitcostController[0].text);


            employeeDataSource._employees .add   (  Employee(10001,"", 1, 'asss', 20000, "barcode", 1, "purchase", 200, 1, 1,
                     true, 100, 2, 1, 1, 1, 1, 1, 3, true, 2));
            print("leee"+ employeeDataSource._employees.length.toString());
            employeeDataSource.updateDataGridRows();
            employeeDataSource.updateDataGridSource();






          }

          )
        ],
      ),
    );
  }

  List<Employee> getEmployeeData() {
    return [
      Employee(10001,"", 1, 'asss', 20000, "barcode", 1, "purchase", 200, 1, 1,
          true, 100, 2, 1, 1, 1, 1, 1, 3, true, 2),
      // Employee(10001,"", 1, 'asss', 20000, "barcode", 1, "purchase", 200, 1, 1,
      //     true, 100, 2, 1, 1, 1, 1, 1, 3, true, 2),
      // Employee(10001,"", 1, 'asss', 20000, "barcode", 1, "purchase", 200, 1, 1,
      //     true, 100, 2, 1, 1, 1, 1, 1, 3, true, 2),

      // Employee(10001,1, 'James',  20000,"barcode",1,"purchase","qty",1,1,true,100,2,1,1,1,1,1,3,true,2),
      // Employee(10001,1, 'James',  20000,"barcode",1,"purchase","qty",1,1,true,100,2,1,1,1,1,1,3,true,2),
      // Employee(10001,1, 'James',  20000,"barcode",1,"purchase","qty",1,1,true,100,2,1,1,1,1,1,3,true,2),
      // Employee(10001,1, 'James',  20000,"barcode",1,"purchase","qty",1,1,true,100,2,1,1,1,1,1,3,true,2),
      // Employee(10001,1, 'James',  20000,"barcode",1,"purchase","qty",1,1,true,100,2,1,1,1,1,1,3,true,2),
      // Employee(10001,1, 'James',  20000,"barcode",1,"purchase","qty",1,1,true,10,2,1,1,1,1,1,3,true,2),

      // Employee(10002,1, 'Kathryn', 'Manager', 30000),
      // Employee(10003,2 ,'Lara', 'Developer', 15000),
      // Employee(10004,3 ,'Michael', 'Designer', 15000),
      // Employee(10005,3 ,'Martin', 'Developer', 15000),
      // Employee(10006,4, 'Newberry', 'Developer', 15000),
      // Employee(10007,5 ,'Balnc', 'Developer', 15000),
      // Employee(10008,6, 'Perry', 'Developer', 15000),
      // Employee(10009, 7,'Gable', 'Developer', 15000),
      // Employee(10010,8, 'Grimes', 'Developer', 15000)
    ];
  }
}

class Employee {
  /// Creates the employee class with required details.
  Employee(
      this.SlNo,
      this.type,
      this.varientid,
      this.variantname,
      this.vendorefcode,
      this.barcode,
      this.currentqty,
      this.purchasaeuom,
      this.requetqty,
      this.minorderqty,
      this.maxorderqty,
      this.isrecieved,
      this.unitcost,
      this.discount,
      this.foc,
      this.vatableamount,
      this.excisetax,
      this.actualcost,
      this.grandtotal,
      this.isinvoiced,
      this.isactive,
      this.vat);

  /// Id of an employee.
  final int SlNo;
  final int varientid;

  /// Name of an employee.
  final String variantname;
  final int? vendorefcode;
  final String? type;

  /// Designation of an employee.

  final String barcode;
  final int? currentqty;
  final String purchasaeuom;
  final int? requetqty;
  final int minorderqty;
  final int maxorderqty;
  final bool isrecieved;
  final int unitcost;
  final int discount;
  final int foc;
  final int vatableamount;
  final int excisetax;
  final int actualcost;
  final int grandtotal;
  final int vat;
  final int isinvoiced;
  final bool isactive;

  /// Salary of an employee.

}

class EmployeeDataSource extends DataGridSource {
  final Function(int, int, int, int, int, List<OrderLines>,int,int,int  )? ontotal;
  int unitostvalue = 0;
  List<TextEditingController> controller ;
  // TextEditingController txt1 = TextEditingController();
  String? variantId;
  int a = -1;

  /// Creates the employee data source class with required details.
  EmployeeDataSource(
      {  required List<Employee> employees,
      this.ontotal,
    required    this.controller,
     required  int  emptyRowsCount}) {
    _employees = employees;
    //
    dataGridRow = _employees    .map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<int>(columnName: 'SlNo', value: e.SlNo),
      DataGridCell<int>(columnName: 'varientid', value: e.varientid),
      DataGridCell<String>(
          columnName: 'variantname', value: e.variantname),
      DataGridCell<int>(
          columnName: 'vendorefcode', value: e.vendorefcode),
      //++++++++++++++++++++++++

      DataGridCell<String>(columnName: 'barcode', value: e.barcode),
      DataGridCell<int>(columnName: 'currentqty', value: e.currentqty),
      DataGridCell<String>(
          columnName: 'purchasaeuom', value: e.purchasaeuom),
      DataGridCell<int>(columnName: 'requetqty', value: e.requetqty),
      DataGridCell<int>(
          columnName: 'minorderqty', value: e.minorderqty),
      DataGridCell<int>(
          columnName: 'maxorderqty', value: e.maxorderqty),
      DataGridCell<bool>(columnName: 'isrecieved', value: e.isrecieved),
      DataGridCell<int>(columnName: 'unitcost', value: e.unitcost),
      DataGridCell<int>(columnName: 'discount', value: e.discount),
      DataGridCell<int>(columnName: 'foc', value: e.foc),
      DataGridCell<int>(
          columnName: 'vatableamount', value: e.vatableamount),
      DataGridCell<int>(columnName: 'excisetax', value: e.excisetax),
      DataGridCell<int>(columnName: 'vat', value: e.vat),
      DataGridCell<int>(columnName: 'actualcost', value: e.actualcost),
      DataGridCell<int>(columnName: 'grandtotal', value: e.grandtotal),
      DataGridCell<int>(columnName: 'isinvoiced', value: e.isinvoiced),
      DataGridCell<bool>(columnName: 'isactive', value: e.isactive),
    ]))
        .toList();
    for (int i = 0; i < 6; i++) {
      dataGridRow.add(const DataGridRow(cells: [
        DataGridCell<int>(columnName: 'SlNo', value: null),
        DataGridCell<int>(columnName: 'varientid', value: null),
        DataGridCell<String>(columnName: 'variantname', value: null),
        DataGridCell<int>(columnName: 'vendorefcode', value: null),
        //++++++++++++++++++++++++

        DataGridCell<String>(columnName: 'barcode', value: null),
        DataGridCell<int>(columnName: 'currentqty', value: null),
        DataGridCell<String>(columnName: 'purchasaeuom', value: null),
        DataGridCell<String>(columnName: 'requetqty', value: null),
        DataGridCell<int>(columnName: 'minorderqty', value: null),
        DataGridCell<int>(columnName: 'maxorderqty', value: null),
        DataGridCell<bool>(columnName: 'isrecieved', value: null),
        DataGridCell<int>(columnName: 'unitcost', value: null),
        DataGridCell<int>(columnName: 'discount', value: null),
        DataGridCell<int>(columnName: 'foc', value: null),
        DataGridCell<int>(columnName: 'vatableamount', value: null),
        DataGridCell<int>(columnName: 'excisetax', value: null),
        DataGridCell<int>(columnName: 'vat', value: null),
        DataGridCell<int>(columnName: 'actualcost', value: null),
        DataGridCell<int>(columnName: 'grandtotal', value: null),
        DataGridCell<int>(columnName: 'isinvoiced', value: null),
        DataGridCell<bool>(columnName: 'isactive', value: null),
      ]));
    }
    updateDataGridRows();
    for(int i=0;i<4;i++){
      controller.add(TextEditingController());
    }
  }

  List<DataGridRow> dataGridRow = [];
  late List<Employee> _employees;
  Color? rowBackgroundColor;

  void updateDataGridRows() {
    dataGridRow = _employees
        .map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<int>(columnName: 'SlNo', value: e.SlNo),
      DataGridCell<int>(columnName: 'varientid', value: e.varientid),
      DataGridCell<String>(
          columnName: 'variantname', value: e.variantname),
      DataGridCell<int>(
          columnName: 'vendorefcode', value: e.vendorefcode),
      //++++++++++++++++++++++++

      DataGridCell<String>(columnName: 'barcode', value: e.barcode),
      DataGridCell<int>(columnName: 'currentqty', value: e.currentqty),
      DataGridCell<String>(
          columnName: 'purchasaeuom', value: e.purchasaeuom),
      DataGridCell<int>(columnName: 'requetqty', value: e.requetqty),
      DataGridCell<int>(
          columnName: 'minorderqty', value: e.minorderqty),
      DataGridCell<int>(
          columnName: 'maxorderqty', value: e.maxorderqty),
      DataGridCell<bool>(columnName: 'isrecieved', value: e.isrecieved),
      DataGridCell<int>(columnName: 'unitcost', value: e.unitcost),
      DataGridCell<int>(columnName: 'discount', value: e.discount),
      DataGridCell<int>(columnName: 'foc', value: e.foc),
      DataGridCell<int>(
          columnName: 'vatableamount', value: e.vatableamount),
      DataGridCell<int>(columnName: 'excisetax', value: e.excisetax),
      DataGridCell<int>(columnName: 'vat', value: e.vat),
      DataGridCell<int>(columnName: 'actualcost', value: e.actualcost),
      DataGridCell<int>(columnName: 'grandtotal', value: e.grandtotal),
      DataGridCell<int>(columnName: 'isinvoiced', value: e.isinvoiced),
      DataGridCell<bool>(columnName: 'isactive', value: e.isactive),
    ]))
        .toList();
    for (int i = 0; i <2; i++) {
      dataGridRow.add(const DataGridRow(cells: [
        DataGridCell<int>(columnName: 'SlNo', value: null),
        DataGridCell<int>(columnName: 'varientid', value: null),
        DataGridCell<String>(columnName: 'variantname', value: null),
        DataGridCell<int>(columnName: 'vendorefcode', value: null),
        //++++++++++++++++++++++++

        DataGridCell<String>(columnName: 'barcode', value: null),
        DataGridCell<int>(columnName: 'currentqty', value: null),
        DataGridCell<String>(columnName: 'purchasaeuom', value: null),
        DataGridCell<String>(columnName: 'requetqty', value: null),
        DataGridCell<int>(columnName: 'minorderqty', value: null),
        DataGridCell<int>(columnName: 'maxorderqty', value: null),
        DataGridCell<bool>(columnName: 'isrecieved', value: null),
        DataGridCell<int>(columnName: 'unitcost', value: null),
        DataGridCell<int>(columnName: 'discount', value: null),
        DataGridCell<int>(columnName: 'foc', value: null),
        DataGridCell<int>(columnName: 'vatableamount', value: null),
        DataGridCell<int>(columnName: 'excisetax', value: null),
        DataGridCell<int>(columnName: 'vat', value: null),
        DataGridCell<int>(columnName: 'actualcost', value: null),
        DataGridCell<int>(columnName: 'grandtotal', value: null),
        DataGridCell<int>(columnName: 'isinvoiced', value: null),
        DataGridCell<bool>(columnName: 'isactive', value: null),
      ]));

    }
    print("length"+controller.length.toString());

  }



  @override
  List<DataGridRow> get rows => dataGridRow;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return  DataGridRowAdapter(


        cells: row.getCells().map<Widget>((e) {

          if(e.columnName=="unitcost"){
            print("unitcost length"+controller.length.toString());
            print("+++++++++++++++++++s"+a.toString());
            a=a+1;
            print("++a"+a.toString());










            return TextFormField(
              keyboardType:TextInputType.number ,


              controller: controller[0],
              onChanged:(value) {
                print("values__________"+value.toString());
              },
            );



          }
          //
          //  if(index>3){
          //    print("enterred");
          //    index=-1;
          // //   notifyListeners();
          //
          //  }
         // index=index+1;
         // print("index"+index.toString());
          print( "e.value"+ e.value.toString());



          return  e.value==null? TextFormField(
            // controller:controller[index],
          ):
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(e.value?.toString()??""),
          );

        }
        )
            .toList());

  }

  void updateDataGridSource() {
    notifyListeners();

  }
}
