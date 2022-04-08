import 'package:flutter/material.dart';
import 'package:inventory/commonWidget/Navigationprovider.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/widgets/popupcallwidgets/popupcallwidget.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

import 'dropdownbutton.dart';

class ScrollableTable extends StatefulWidget {
  final Function(int, int)? onTotal;
  ScrollableTable({this.onTotal});

  @override
  State<ScrollableTable> createState() => _ScrollableTableState();
}

class _ScrollableTableState extends State<ScrollableTable> {
  // double? totalUnitCost=0;
  List<OrderLines> employees = <OrderLines>[];
  int unitcost = 0;
  int grandTotal = 0;
  NavigationProvider ak = NavigationProvider();
  late EmployeeDataSource employeeDataSource;

  @override
  void initState() {
    super.initState();
    ak = Provider.of<NavigationProvider>(context, listen: false);
    employees = getEmployeeData();

    print("+++++++++++++++++" + employees.toString());
    for (int i = 0; i < employees.length; i++) {
      unitcost = unitcost+(employees[i].unitCost as int);
      print(unitcost);
      // grandTotal = grandTotal + employees[i].grandtotal;
      // ak.unitcost = ak.unitcost + employees[i].unitcost;
    }

    print("provider" + ak.unitcost.toString());
    print(unitcost);
    setState(() {
      widget.onTotal!(unitcost, grandTotal);
    });

    employeeDataSource = EmployeeDataSource(
        employeeData: employees, ontotal: widget.onTotal, emptyRowsCount: 5);
  }

  @override
  Widget build(BuildContext context) {
    ak = Provider.of<NavigationProvider>(context);

    return Container(
      width: MediaQuery.of(context).size.width,
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
    );
  }

  List<OrderLines> getEmployeeData() {
    return [
      OrderLines( ),


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
  final int vendorefcode;

  /// Designation of an employee.

  final String barcode;
  final int currentqty;
  final String purchasaeuom;
  final String requetqty;
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
  final Function(int, int)? ontotal;
  int unitostvalue = 0;
  List<TextEditingController> unitcost = [];
  TextEditingController txt1 = TextEditingController();
  String? variantId;
  int a = 0;

  /// Creates the employee data source class with required details.
  EmployeeDataSource(
      {required List<OrderLines> employeeData,
      this.ontotal,
      required int emptyRowsCount}) {
    print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++" +
        employeeData.length.toString());
    _employeeData = employeeData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'SlNo', value: e.supplierCode),
              // DataGridCell<String>(columnName: 'varientid', value: e.variantId),
              // DataGridCell<String>(
              //     columnName: 'variantname', value: e.variantName),
              // // DataGridCell<int>(columnName: 'vendorefcode', value: e.v),
              // //++++++++++++++++++++++++
              //
              // DataGridCell<String>(columnName: 'barcode', value: e.barcode),
              // //DataGridCell<int>(columnName: 'currentqty', value: e.cu),
              // DataGridCell<String>(
              //     columnName: 'purchasaeuom', value: e.purchaseuom),
              // DataGridCell<int>(columnName: 'requetqty', value: e.requestedQty),
              // DataGridCell<int>(columnName: 'minorderqty', value: e.minimumQty),
              // DataGridCell<int>(columnName: 'maxorderqty', value: e.maximumQty),
              // // DataGridCell<bool>(columnName: 'isrecieved', value: e.isrecieved),
              // DataGridCell<int>(columnName: 'unitcost', value: e.unitCost),
              // DataGridCell<int>(columnName: 'discount', value: e.discount),
              // DataGridCell<int>(columnName: 'foc', value: e.foc),
              // DataGridCell<int>(
              //     columnName: 'vatableamount', value: e.variableAmount),
              // DataGridCell<int>(columnName: 'excisetax', value: e.excessTax),
              // DataGridCell<int>(columnName: 'vat', value: e.vat),
              // DataGridCell<int>(columnName: 'actualcost', value: e.actualCost),
              // DataGridCell<int>(columnName: 'grandtotal', value: e.grandTotal),
              // DataGridCell<int>(columnName: 'isinvoiced', value: e.isinvoiced),
              // DataGridCell<bool>(columnName: 'isactive', value: e.isactive),
            ]))
        .toList();
    for (int i = 0; i < emptyRowsCount; i++) {
      _employeeData.add(const DataGridRow(cells: [
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
  }

  List<DataGridRow> _employeeData = [];

  @override
  List<DataGridRow> get rows => _employeeData;

  @override
  DataGridRowAdapter buildRow(
    DataGridRow row,
  ) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      print(e.columnName);
      if (e.columnName == "varientid") {
        return PopUpCall(
          // label: "purchase UOM",
          type: "cost-method-list",
          value: variantId,
          onSelection: (String? va) {
            print("+++++++++++++++++++++++");
            //   print("val+++++++++++++++++++++++++++++++++++++s++++++++++${va?.orderTypes?[0]}");
            // setState(() {
            //   variantId = va;
            //
            //   onChange = true;
            //   orderType = va!;
            // });
          },
          onAddNew: () {},
          // restricted: true,
        );
      }
      //
      //
      // if(e.columnName=="unitcost"){
      //   for (int i=0;i<7;i++)
      //     unitcost.add(TextEditingController());
      //   a=a+1;
      //   print("++a"+a.toString());
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //   return TextFormField(
      //     keyboardType:TextInputType.number ,
      //
      //
      //     controller: unitcost[a],
      //   );
      //
      //
      //
      // }

      // ontotal!(100,200);

      return Container(
        // color: Colors.red,
        alignment: Alignment.center,
        padding: EdgeInsets.all(8.0),
        child: Text(e.value?.toString() ?? ''),
      );
    }).toList());
  }
}
