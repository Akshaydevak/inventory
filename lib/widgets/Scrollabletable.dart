import 'package:flutter/material.dart';
import 'package:inventory/commonWidget/Navigationprovider.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class ScrollableTable extends StatefulWidget  {
  final Function(int)? onTotal;
  ScrollableTable({this.onTotal});



  @override
  State<ScrollableTable> createState() => _ScrollableTableState();
}

class _ScrollableTableState extends State<ScrollableTable> {

  // double? totalUnitCost=0;
  List<Employee> employees = <Employee>[];
  int unitcost=0;
   NavigationProvider ak=NavigationProvider();
  late EmployeeDataSource employeeDataSource;

  @override
  void initState() {

    super.initState();
    ak = Provider.of<NavigationProvider>(context,listen: false);
    employees = getEmployeeData();

    print("+++++++++++++++++"+employees.toString());
    for(int i=0;i<employees.length;i++){


        unitcost=unitcost+employees[i].unitcost;
        ak.unitcost=ak.unitcost+
            employees[i].unitcost;










    }

    print("provider"+ak.unitcost.toString());
    print(unitcost);setState(() {
      widget.onTotal!(200);
    });


    employeeDataSource = EmployeeDataSource(employeeData: employees);


  }


  @override

  Widget build(BuildContext context) {



    ak = Provider.of<NavigationProvider>(context);

    return  Container(
      width: MediaQuery.of(context).size.width,
      
      child:SfDataGridTheme(







        data:SfDataGridThemeData(headerColor: const Color(0xffF2F3F5)),
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

          ],
        ),
      ),
    );
  }
  List<Employee> getEmployeeData() {

    return [
      Employee(10001,1, 'James',  20000,"barcode",1,"purchase","qty",1,1,true,100),

      Employee(10001,1, 'James',  20000,"barcode",1,"purchase","qty",1,1,true,100),
      Employee(10001,1, 'James',  20000,"barcode",1,"purchase","qty",1,1,true,100),
      Employee(10001,1, 'James',  20000,"barcode",1,"purchase","qty",1,1,true,100),
      Employee(10001,1, 'James',  20000,"barcode",1,"purchase","qty",1,1,true,100),
      Employee(10001,1, 'James',  20000,"barcode",1,"purchase","qty",1,1,true,100),
      Employee(10001,1, 'James',  20000,"barcode",1,"purchase","qty",1,1,true,100),


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
  Employee(this.SlNo,this.varientid, this.variantname, this.vendorefcode,this.barcode,this.currentqty,
      this.purchasaeuom,this.requetqty,this.minorderqty,this.maxorderqty,this.isrecieved,this.unitcost);

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
/// Salary of an employee.

}
class EmployeeDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  EmployeeDataSource({required List<Employee> employeeData}) {
    _employeeData = employeeData
        .map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<int>(columnName: 'SlNo', value: e.SlNo),
      DataGridCell<int>(columnName: 'varientid', value: e.varientid),
      DataGridCell<String>(
          columnName: 'variantname', value: e.variantname),
      DataGridCell<int>(columnName: 'vendorefcode', value: e.vendorefcode),
      //++++++++++++++++++++++++

      DataGridCell<String>(columnName: 'barcode', value: e.barcode),
      DataGridCell<int>(columnName: 'varientid', value: e.currentqty),
      DataGridCell<String>(
          columnName: 'purchasaeuom', value: e.purchasaeuom),
      DataGridCell<String>(columnName: 'requetqty', value: e.requetqty),
      DataGridCell<int>(columnName: 'minorderqty', value: e.minorderqty),
      DataGridCell<int>(columnName: 'maxorderqty', value: e.maxorderqty),
      DataGridCell<bool>(
          columnName: 'isrecieved', value: e.isrecieved),
      DataGridCell<int>(columnName: 'unitcost', value: e.unitcost),

    ]))
        .toList();
  }

  List<DataGridRow> _employeeData = [];

  @override

  List<DataGridRow> get rows => _employeeData;



  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
          return
            Container(
           // color: Colors.red,
            alignment: Alignment.center,
            padding: EdgeInsets.all(8.0),
            child: Text(e.value.toString()),
          );
        }).toList());
  }
}
