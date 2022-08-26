import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/widgets/NewinputScreen.dart';

import '../../../commonWidget/commonutils.dart';
import '../../../widgets/customtable.dart';
import '../../GeneralScreen.dart';
import '../../purcahseRecieving.dart';

class ProductModulGeneralScreen extends StatefulWidget {
  @override
  _ProductModulGeneralScreenState createState() => _ProductModulGeneralScreenState();
}

class _ProductModulGeneralScreenState extends State<ProductModulGeneralScreen> {
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 200,
                height: double.infinity,
                color: Color(0xffEDF1F2),
              ),
              Expanded(
                  child:Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: height/14,),

                        Container(
                          width: width/2,
                          child: Row(
                            children: [
                              Expanded(child: NewInputCard(controller: controller,title: "Varients"),),
                              Expanded(child: NewInputCard(controller: controller,title: "Variant Frame Work"),)
                            ],
                          ),
                        ),
                        SizedBox(height: height/7,),
                        TextButton.icon(
                            label: Text('Add New',style: TextStyle(fontSize: 11),),
                            icon: Icon(Icons.add,size: 11,),
                            onPressed: () {
                              print('Pressed');
                            }
                        ),
                        Row(
                          mainAxisAlignment:  MainAxisAlignment.start,
                          children: [
                            Expanded(

                              child: Column(
                                children: [
                                  Container(
                                    width: width/4,
                                    child:Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        NewCheckBoxText(label: "2",onChange: (){},),
                                        NewCheckBoxText(label: "2",onChange: (){},),
                                        NewCheckBoxText(label: "2",onChange: (){},),
                                        NewCheckBoxText(label: "2",onChange: (){},),
                                      ],
                                    ),

                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 25,),
                            TextButton.icon(
                                label: Text('Add New',style: TextStyle(fontSize: 11),),
                                icon: Icon(Icons.add,size: 11,),
                                onPressed: () {
                                  print('Pressed');
                                }
                            ),
                            Expanded(

                              child: Column(
                                children: [
                                  Container(
                                    width: width/4,
                                    child:Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        NewCheckBoxText(label: "2",onChange: (){},),
                                        NewCheckBoxText(label: "2",onChange: (){},),
                                        NewCheckBoxText(label: "2",onChange: (){},),
                                        NewCheckBoxText(label: "2",onChange: (){},),
                                      ],
                                    ),

                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 25,),
                            Expanded(

                              child: Column(
                                children: [
                                  Container(
                                    width: width/4,
                                    child:Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        NewCheckBoxText(label: "2",onChange: (){},),
                                        NewCheckBoxText(label: "2",onChange: (){},),
                                        NewCheckBoxText(label: "2",onChange: (){},),
                                        NewCheckBoxText(label: "2",onChange: (){},),
                                      ],
                                    ),

                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: height/9,),
                        Container(
                          width: width/4,
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              NewCheckBoxBox(label: "2",onChange: (){},clr: Colors.red,),
                              NewCheckBoxBox(label: "2",onChange: (){},clr: Colors.blue,),
                              NewCheckBoxBox(label: "2",onChange: (){},clr: Colors.green,),
                              NewCheckBoxBox(label: "2",onChange: (){},clr:Colors.purple),
                            ],
                          ),


                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: width/4,
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              NewCheckBoxBox(label: "2",onChange: (){},clr: Colors.red,),
                              NewCheckBoxBox(label: "2",onChange: (){},clr: Colors.blue,),
                              NewCheckBoxBox(label: "2",onChange: (){},clr: Colors.green,),
                              NewCheckBoxBox(label: "2",onChange: (){},clr: Colors.green,),

                            ],
                          ),

                        ),
                        SizedBox(height: height/10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 10,),
                            Text("Variant List",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13),),
                            SizedBox(width: 18,),
                            Text("Bulk Action",style: TextStyle(color: Colors.black,fontSize: 13),),
                          ],
                        ),
                        Container(
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

                                        'Status',

                                        padding: EdgeInsets.all(7),

                                        height: 46,
                                        textColor: Colors.black,
                                        color: Color(0xffE5E5E5),

                                        size: 13,


                                      ),


                                      tableHeadtext(
                                        'Variant list',
                                        textColor: Colors.black,
                                        padding: EdgeInsets.all(7),
                                        height: 46,
                                        size: 13,
                                        color: Color(0xffE5E5E5),
                                      ),


                                    ],

                                ),
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

                                        child:   CheckedBoxs(
                                            valueChanger: true,
                                            onSelection:(va){

                                            }

                                        ),),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,

                                        child:   Text("32/Xl"


                                        ),)

                                    ]),


                              ],
                            widths: {
                          0: FlexColumnWidth(1),
                          1: FlexColumnWidth(4),


                          },
                          ),


                        ),
                        SizedBox(height: height/9,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Button(Icons.delete, Colors.red,
                                ctx: context,
                                text: "Discard", onApply: () {

                                },
                                height: 29,
                                width: 90,
                                labelcolor: Colors.red,
                                iconColor: Colors.red,
                                bdr: true),
                            SizedBox(
                              width: width * .008,
                            ),
                            Button(Icons.check, Colors.grey,
                                ctx: context,
                                text: "Save", onApply: (){
                                // showDailogPopUp(
                                //     context,
                                //     ProductModulePopUp(
                                //       // indexValue: temp,
                                //       // changeActive: onChangeActive,
                                //       // changeAdditionalWarranty: onChangeAdditionalWarranty,
                                //       // changeExtendedWarranty: onChangeExtendedWarranty,
                                //     ));
                              } ,
                                height: 29,
                                Color: Color(0xff3E4F5B),
                                width: 90,
                                labelcolor: Colors.white,
                                iconColor: Colors.white,
                                ),
                            SizedBox(
                              width: width * .008,
                            ),
                          ],
                        ),
                        SizedBox(height: height/12,),


                      ],
                    ),
                  )
              )


            ],
          ),
        ),
      ),
    );
  }
}


class NewCheckBoxText extends StatefulWidget {
  final Function onChange;
  final String label;
  NewCheckBoxText({required this.label,required this.onChange});
  @override
  _NewCheckBoxTextState createState() => _NewCheckBoxTextState();
}

class _NewCheckBoxTextState extends State<NewCheckBoxText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CheckedBoxs(
            valueChanger: true,
            onSelection:(va){
              widget.onChange();
            }

          ),
          SizedBox(width: 5,),
          Text(widget.label)

        ],
      ),
    );
  }
}



class NewCheckBoxBox extends StatefulWidget {
  final Function onChange;
  final String label;
  final Color clr;

  NewCheckBoxBox({required this.label,required this.onChange,this.clr=Colors.white});
  @override
  _NewCheckBoxBoxState createState() => _NewCheckBoxBoxState();
}

class _NewCheckBoxBoxState extends State<NewCheckBoxBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
     Container(
        width: 18,
        height: 16,
        decoration: BoxDecoration(

            // Red border with the width is equal to 5
            border: Border.all(
                width: 2,
              color: Colors.blue.withOpacity(.5)

            )
        ),
      ),

          SizedBox(width: 5,),
      Container(
      width: 20,
      height: 22,
      decoration: BoxDecoration(
          color:widget.clr,
          // Red border with the width is equal to 5
      ),
    ),




        ],
      ),
    );
  }
}
