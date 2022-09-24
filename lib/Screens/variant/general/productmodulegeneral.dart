import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/variant/general/cubits/listvariant/listvariant_cubit.dart';
import 'package:inventory/Screens/variant/general/cubits/variantCreatio_read2/variant_creation_read2_cubit.dart';
import 'package:inventory/Screens/variant/general/cubits/variant_creation_read/variant_creation_read_cubit.dart';
import 'package:inventory/Screens/variant/general/model/variant_read2_model.dart';
import 'package:inventory/Screens/variant/general/model/variant_read_model.dart';
import 'package:inventory/Screens/variant/general/screens/attributescreen.dart';
import 'package:inventory/Screens/variant/general/screens/combinationTable.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/dropdownbutton.dart';

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
  TextEditingController variantFrameWorkController=TextEditingController();
  int? veritiaclid = 0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  TextEditingController variantController = TextEditingController();
  VariantCreationReadModel group=VariantCreationReadModel();
  int selectedVertical = 0;
 List< VariantCreationRead2Model>attribute=[];
  List<List<Map<String,dynamic>>> combinationArray=[];
  var lists;
  List<String>vals=[];
  combinationList( List<List<Map<String,dynamic>>> combinationArrays){
  setState(() {
    vals.clear();
  });
    print("arrived");
    combinationArray=combinationArrays;
  if(combinationArray.isNotEmpty){
    if(combinationArray.length==1){
      print("arrived");
  var array = combinationArray[0];
  if(array.isNotEmpty){
    for(var i=0;i<array.length;i++){
      if(array[i]["flag"]==true){
        setState(() {

          vals.add(array[i]["value"]);
          print(vals.toString());
        });


      }

    }
  }

    }
    else if(combinationArray.length==2){
      var array1= combinationArray[0];
      var array2= combinationArray[1];
      if(array1.isNotEmpty){
        for (var i =0;i<array1.length;i++){
          if(array2.isNotEmpty){
            for(var j=0;j<array2.length;i++){
              if(array1[i]["flag"]==true &&array2[j]["flag"]==true)
                vals.add(array1[i]["value"]+array2[j]["value"]);
              else if(array1[i]["flag"]==true)
                vals.add(array1[i]["value"]);
              else if(array2[i]["flag"]==true)
                vals.add(array2[i]["value"]);


              
            }
          }
        }
      }
    }
  }

  }
  @override
  void initState() {
    context.read<ListvariantCubit>().getVariantCreationList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
  providers: [
    BlocProvider(
  create: (context) => VariantCreationReadCubit(),
),
    BlocProvider(
      create: (context) => VariantCreationRead2Cubit(),
    ),
  
  ],
  child: Builder(
    builder: (context) {
      return MultiBlocListener(
  listeners: [
    BlocListener<VariantCreationReadCubit, VariantCreationReadState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error");
            },
            success: (data) {
              print("shaaaamna"+data.toString());

              setState(() {
                group=data;
                variantFrameWorkController.text=group.variantFrameWork??"";
                if(group.variantFrameWork?.isNotEmpty==true){
                  context.read<VariantCreationRead2Cubit>().getVariantCreationRead2(group.variantFrameWork);
                  
                }





              });
            });
      },
),
    BlocListener<VariantCreationRead2Cubit, VariantCreationRead2State>(
      listener: (context, state) {
        print("the searching state"+state.toString());
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error");
            },
            success: (data) {
              print("the entire data"+data.toString());
              attribute=data;

              setState(() {






              });
            });
      },
    ),

  ],
  child: Builder(
          builder: (context) {
            return BlocConsumer<ListvariantCubit, ListvariantState>(
      listener: (context, state) {
            print("state" + state.toString());
            state.maybeWhen(
                orElse: () {},
                error: () {
                  print("error");
                },
                success: (list) {

                  lists = list;

                  result = list.data;
                  print("seee" + result.toString());
                  setState(() {
                    if (result.isNotEmpty) {
                      veritiaclid = result[0].id;
                      // Variable.verticalid=result[0].id;
                      // print("Variable.ak"+Variable.verticalid.toString());
                      context.read<VariantCreationReadCubit>().getVariantCreationRead(veritiaclid!);
                    }
                    else {
                      print("common");
                      // select=true;
                      setState(() {});
                    }


                    setState(() {});
                  });
                });
      },
      builder: (context, state) {
            return Builder(
              builder: (context) {
                return Scaffold(
                  backgroundColor: Colors.white,
                  body: SingleChildScrollView(
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          VariantVerticalList(
                            list: lists,


                            selectedVertical: selectedVertical,
                            itemsearch: itemsearch,
                            ontap: (int index) {
                              setState(() {
                                selectedVertical = index;

                                // select=false;
                                // clear();
                                // exportCheck=false;
                                // addNew=true;

                                // updateCheck=false;
                                print("rijina"+result[index].id.toString());


                                veritiaclid = result[index].id;
                                // clear();
                                // select=true;
                                //
                                //



                                setState(() {
                                  context.read<VariantCreationReadCubit>().getVariantCreationRead(veritiaclid!);

                                });
                              });
                            },
                            search: (String va) {
                              print(va);
                              context
                                  .read<ListvariantCubit>()
                                  .searchVariantList(va);
                              if (va == "") {
                                context
                                    .read<ListvariantCubit>()
                                    .getVariantCreationList();
                              }
                            },
                            result: result,
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
                                          Expanded(
                                            child: SelectableDropDownpopUp(
                                              // controller:widget.division,
                                              label: "Varients",
                                              type:"VariantSelection_PopUpCall",
                                              value: variantController.text,
                                              onchange: (vale){
                                                // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                              },
                                              enable: true,
                                              onSelection: (BrandListModel? va) {
                                                setState(() {


                                                  // print(va?.id??"");
                                                  // divisionid=va?.id;
                                                  // Variable.divisionId=va?.id;
                                                  //
                                                  variantController.text=va?.name??"";
                                                  // setState(() {
                                                  //
                                                  // });


                                                  // onChange = true;
                                                  // orderType.text = va!;
                                                });
                                              },

                                            ),
                                          ),
                                          // Expanded(child: NewInputCard(controller: controller,title: "Varients"),),
                                          Expanded(child: NewInputCard(controller: variantFrameWorkController,title: "Variant Frame Work"),)
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
                                    AttributeScreen(attributes: attribute,combination:combinationList),
                                    // Row(
                                    //   mainAxisAlignment:  MainAxisAlignment.start,
                                    //   children: [
                                    //     Expanded(
                                    //
                                    //       child: Column(
                                    //         children: [
                                    //           Container(
                                    //             width: width/4,
                                    //             child:Row(
                                    //               mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    //               children: [
                                    //                 NewCheckBoxText(label: "2",onChange: (va){},),
                                    //                 NewCheckBoxText(label: "2",onChange: (va){},),
                                    //                 NewCheckBoxText(label: "2",onChange: (va){},),
                                    //                 NewCheckBoxText(label: "2",onChange: (va){},),
                                    //               ],
                                    //             ),
                                    //
                                    //           ),
                                    //         ],
                                    //       ),
                                    //     ),
                                    //     SizedBox(width: 25,),
                                    //     TextButton.icon(
                                    //         label: Text('Add New',style: TextStyle(fontSize: 11),),
                                    //         icon: Icon(Icons.add,size: 11,),
                                    //         onPressed: () {
                                    //           print('Pressed');
                                    //         }
                                    //     ),
                                    //     Expanded(
                                    //
                                    //       child: Column(
                                    //         children: [
                                    //           Container(
                                    //             width: width/4,
                                    //             child:Row(
                                    //               mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    //               children: [
                                    //                 NewCheckBoxText(label: "2",onChange: (va){},),
                                    //                 NewCheckBoxText(label: "2",onChange: (va){},),
                                    //                 NewCheckBoxText(label: "2",onChange: (va){},),
                                    //                 NewCheckBoxText(label: "2",onChange: (va){},),
                                    //               ],
                                    //             ),
                                    //
                                    //           ),
                                    //         ],
                                    //       ),
                                    //     ),
                                    //     SizedBox(width: 25,),
                                    //     Expanded(
                                    //
                                    //       child: Column(
                                    //         children: [
                                    //           Container(
                                    //             width: width/4,
                                    //             child:Row(
                                    //               mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    //               children: [
                                    //                 NewCheckBoxText(label: "2",onChange: (va){},),
                                    //                 NewCheckBoxText(label: "2",onChange: (va){},),
                                    //                 NewCheckBoxText(label: "2",onChange: (va){},),
                                    //                 NewCheckBoxText(label: "2",onChange: (va){},),
                                    //               ],
                                    //             ),
                                    //
                                    //           ),
                                    //         ],
                                    //       ),
                                    //     ),
                                    //
                                    //   ],
                                    // ),
                                    // SizedBox(height: height/9,),
                                    // Container(
                                    //   width: width/4,
                                    //   child:Row(
                                    //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    //     children: [
                                    //       NewCheckBoxBox(label: "2",onChange: (){},clr: Colors.red,),
                                    //       NewCheckBoxBox(label: "2",onChange: (){},clr: Colors.blue,),
                                    //       NewCheckBoxBox(label: "2",onChange: (){},clr: Colors.green,),
                                    //       NewCheckBoxBox(label: "2",onChange: (){},clr:Colors.purple),
                                    //     ],
                                    //   ),
                                    //
                                    //
                                    // ),
                                    // SizedBox(height: 10,),
                                    // Container(
                                    //   width: width/4,
                                    //   child:Row(
                                    //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    //     children: [
                                    //       NewCheckBoxBox(label: "2",onChange: (){},clr: Colors.red,),
                                    //       NewCheckBoxBox(label: "2",onChange: (){},clr: Colors.blue,),
                                    //       NewCheckBoxBox(label: "2",onChange: (){},clr: Colors.green,),
                                    //       NewCheckBoxBox(label: "2",onChange: (){},clr: Colors.green,),
                                    //
                                    //     ],
                                    //   ),
                                    //
                                    // ),
                                    // SizedBox(height: height/10,),
                                    // Row(
                                    //   mainAxisAlignment: MainAxisAlignment.start,
                                    //   children: [
                                    //     SizedBox(width: 10,),
                                    //     Text("Variant List",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13),),
                                    //     SizedBox(width: 18,),
                                    //     Text("Bulk Action",style: TextStyle(color: Colors.black,fontSize: 13),),
                                    //   ],
                                    // ),
                                    CombinationTable(list:vals),
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
            );
      },
);
          }
        ),
);
    }
  ),
);
  }
}


class NewCheckBoxText extends StatefulWidget {
  final Function(bool?) onChange;
  final String label;
  final bool? valueChanger;
  final bool labelI1st;
  NewCheckBoxText({required this.label,required this.onChange,this.valueChanger=false,this.labelI1st=false});
  @override
  _NewCheckBoxTextState createState() => _NewCheckBoxTextState();
}

class _NewCheckBoxTextState extends State<NewCheckBoxText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
      if(widget.labelI1st!=true)    CheckedBoxs(
            valueChanger: widget.valueChanger,
            onSelection:(va){
              widget.onChange(va);

            }




          ),
          SizedBox(width: 5,),
          Text(widget.label),
          if(widget.labelI1st==true)...[
            SizedBox(width: 5,),
            CheckedBoxs(
              valueChanger: widget.valueChanger,
              onSelection:(va){print(va);

              widget.onChange(va);
              }

          ),
    ]

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
