import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/devision_list/devision_list_cubit.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/searchTextfield.dart';

import '../Screens/heirarchy/general/model/listbrand.dart';

class TableConfigurePopup extends StatelessWidget {
  final String type;
  final Function valueSelect;


  TableConfigurePopup(
      {Key? key, required this.type, required this.valueSelect})
      : super(key: key);
  late Widget data;
  @override
  Widget build(BuildContext context) {


    switch (type) {
      case "division-TablePopup":
        {
          data = divisionTabalePopup(
            type: type,
              valueSelect:valueSelect,
          );
        }
        break;



    }


    return data;
  }
}



class divisionTabalePopup extends StatefulWidget {
  final String type;
  final Function valueSelect;

  divisionTabalePopup({
    Key? key,
    required this.type,
    required this.valueSelect,
  }) : super(key: key);

  @override
  _divisionTabalePopup createState() => _divisionTabalePopup();
}

class _divisionTabalePopup extends State<divisionTabalePopup> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName = "";
  String imageEncode = "";
  List<BrandListModel> table=[];
  var list1;
  TextEditingController searchContoller=TextEditingController();


  void changeAddNew(bool va) {
    // addNew = va;
    // onChange = false;
  }

  void initState() {
    // context
    //     .read<MaterialListCubit>()
    //     .getMaterialList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());
    return Builder(builder: (context) {
      context.read<DevisionListCubit>().getDevisionList();
      return BlocConsumer<DevisionListCubit, DevisionListState>(
        listener: (context, state) {
          print("state" + state.toString());
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error");
              },
              success: (list) {
                print("Welcome"+list.toString());
                table=list.data;
                list1=list;


              });
        },
        builder: (context, state) {
          return Builder(builder: (context) {
            double h=MediaQuery.of(context).size.height;
            double w=MediaQuery.of(context).size.width;
            return AlertDialog(
              content: PopUpHeader(
                functionChane: true,
                buttonCheck: true,
                onTap: () {

                },
                isDirectCreate: true,
                addNew: false,
                label: "division  Popup",
                onApply: () {


                  // widget.onTap();
                  setState(() {});
                },
                onEdit: () {

                },
                onCancel: () {
                  // context
                  //     .read<MaterialdeleteCubit>()
                  //     .materialDelete(veritiaclid,"material");
                },
                onAddNew: (v) {
                  print("Akshay" + v.toString());
                  // changeAddNew(v);
                  // setState(() {});
                  //
                  // setState(() {});
                },
                dataField: Container(
                  // height: 500,
                  child: Column(
                    children: [

                      Container(
                          margin: EdgeInsets.all(5),
                          child: SearchTextfiled(
                            color: Color(0xffFAFAFA),
                            h: 40,
                            hintText: "Search...",
                            ctrlr:searchContoller,
                            onChanged: (va) {
                              print("searching case"+va.toString());
                              context
                                  .read<DevisionListCubit>()
                                  .searchDevisionList(searchContoller.text);
                              if(va==""){
                                context
                                    .read<DevisionListCubit>()
                                    .getDevisionList();

                              }

                            },
                          )),
                      SizedBox(height: h*.004,),
                      Container(
                        height: h/2,
                        // width: w/7,
                        // margin: EdgeInsets.symmetric(horizontal: w*.02),
                        child: SingleChildScrollView(
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

                                    '',

                                    padding: EdgeInsets.all(7),

                                    height: 46,
                                    // textColor: Colors.black,
                                    // color: Color(0xffE5E5E5),

                                    size: 13,


                                  ),


                                  tableHeadtext(
                                    'Item',
                                    // textColor: Colors.black,
                                    padding: EdgeInsets.all(7),
                                    height: 46,
                                    size: 13,
                                    // color: Color(0xffE5E5E5),
                                  ),
                                  // tableHeadtext(
                                  //   '',
                                  //   textColor: Colors.black,
                                  //   padding: EdgeInsets.all(7),
                                  //   height: 46,
                                  //   size: 13,
                                  //   // color: Color(0xffE5E5E5),
                                  // ),



                                ],

                              ),
                              if (table?.isNotEmpty==true ) ...[


                                for (var i = 0; i <table.length; i++)



                                  TableRow(
                                      decoration: BoxDecoration(
                                          color: Colors.grey
                                              .shade200,
                                          shape: BoxShape
                                              .rectangle,
                                          border:const  Border(
                                              left: BorderSide(
                                                  width: .5,
                                                  color: Colors
                                                      .grey,
                                                  style: BorderStyle
                                                      .solid),
                                              bottom: BorderSide(
                                                  width: .5,
                                                  color: Colors
                                                      .grey,
                                                  style: BorderStyle
                                                      .solid),
                                              right: BorderSide(
                                                  color: Colors
                                                      .grey,
                                                  width: .5,
                                                  style: BorderStyle
                                                      .solid))),
                                      children: [

                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,

                                          child:textPadding((i+1).toString())
                                          // Text(keys[i].key??"")



                                        ),
                                        TableCell(

                                            verticalAlignment: TableCellVerticalAlignment.middle,

                                            child:InkWell(
                                              onTap: (){
                                                BrandListModel model=BrandListModel(
                                                  id: table[i].id,
                                                  name: table[i].name,
                                                  code: table[i].code,

                                                );

                                                widget.valueSelect(model);

                                              },
                                              child: Container(child:Text(table[i].name??""),
                                                  height: 45),
                                            )
                                          // Text(keys[i].value??"",)

                                        ),



                                      ]),
                              ],



                            ],
                            widths: {

                              0: FlexColumnWidth(2),
                              1: FlexColumnWidth(5),


                            },),
                        ),


                      ),
                    ],
                  ),
                ),
              ),
            );
          });
        },
      );
    });
  }
}





