import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/frameworkpostcombination/variant_frameworkcombinationpost_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/variant/general/cubits/listvariant/listvariant_cubit.dart';
import 'package:inventory/Screens/variant/general/cubits/variantCreatio_read2/variant_creation_read2_cubit.dart';
import 'package:inventory/Screens/variant/general/cubits/variant_creation_read/variant_creation_read_cubit.dart';
import 'package:inventory/Screens/variant/general/model/variant_read2_model.dart';
import 'package:inventory/Screens/variant/general/model/variant_read_model.dart';
import 'package:inventory/Screens/variant/general/screens/attributescreen.dart';
import 'package:inventory/Screens/variant/general/screens/combinationTable.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/dropdownbutton.dart';

import '../../../commonWidget/commonutils.dart';
import '../../../widgets/customtable.dart';
import '../../GeneralScreen.dart';
import '../../purcahseRecieving.dart';

class ProductModulGeneralScreen extends StatefulWidget {
  @override
  _ProductModulGeneralScreenState createState() =>
      _ProductModulGeneralScreenState();
}

class _ProductModulGeneralScreenState extends State<ProductModulGeneralScreen> {
  TextEditingController controller = TextEditingController();
  TextEditingController variantFrameWorkController = TextEditingController();
  int? veritiaclid = 0;
  var result_value;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  TextEditingController variantController = TextEditingController();
  TextEditingController variantNameController = TextEditingController();
  VariantCreationReadModel group = VariantCreationReadModel();
  int selectedVertical = 0;
  String itemCode = "";
  String uomCode = "";
  List<VariantCreationRead2Model> attribute = [];
  List<List<Map<String, dynamic>>> combinationArray = [];
  List<dynamic> variantList = [];
  List<List<Map<String, dynamic>>> variantList1 = [];
  var lists;
  List<CombinationListClass> vals = [];


  List combination_value_extract(input_list){
    var map_buld = {};
    var comb_buld = {};
    for (var b in input_list){
      for (var attr in b){
        map_buld[attr['attribute_id']] = attr;
        comb_buld[attr['attribute_id']] = comb_buld.containsKey(attr['attribute_id']) ? comb_buld[attr['attribute_id']] : [];
        comb_buld[attr['attribute_id']] += [map_buld[attr['attribute_id']]['value']];
      }
    }
    return [comb_buld,map_buld];
  }


  List combination_build(v,value_mapper){
    var comb_list2 = [];
    int i = 0;
    if (v.isEmpty || value_mapper.isEmpty){
      return [];
    }
    for (var b in v.entries){
      final key = b.key;
      final value = b.value;
      var comb_list2_temp = [];
      for (var a2 in value) {
        var comb_list = [];
        if (comb_list2.isNotEmpty && i != 0){
          var comb_list_copy = comb_list2;
          for (var comb in  comb_list_copy){
            var comb_c = new List.from(comb);
            comb_c.add({"value":a2,"attribute_id":value_mapper[key]['attribute_id'],'attribute_code':value_mapper[key]['attribute_code']});
            comb_list.add(comb_c);
          }
          comb_list2_temp += comb_list;
        }else{
          var comb_temp = [];
          comb_temp.add({"value":a2,"attribute_id":value_mapper[key]['attribute_id'],'attribute_code':value_mapper[key]['attribute_code']});
          comb_list2.add(comb_temp);
        }
      }
      if (comb_list2_temp.isNotEmpty){
        comb_list2 = comb_list2_temp;
      }
      i = i + 1;
    }
    return comb_list2;
  }



  List<CombinationListClass> combination_table(combinationArray){

    // print("previousCombinationList"+previousCombinationList.length.toString());
    List<CombinationListClass>combi=[];

    for (var b=0;b<combinationArray.length ;b++){
      CombinationListClass model=CombinationListClass(
        isActive: false,
        value: ""


      );
      combi.add(model);
      var val="";
      for (var attr=0;attr<combinationArray[b].length; attr++){

         val=val+" "+combinationArray[b][attr]["value"];


      }
      combi[b].value=val;
      combi[b].isActive=true;


    }
    // previousCombinationList=List.from(combi);
    print("the cccccccccccccccccccccccccccc"+combi.toString());
    return combi;

  }
  void combinationList(List<List<Map<String, dynamic>>> combinationArrays) {
    setState(() {
      vals.clear();
      variantList.clear();
    });
    print(combinationArrays);
    // print("arrived");
    // if(combinationArrays.isNotEmpty){
    //   for(var i =0;i<combinationArrays.length;i++){
    //     var list=combinationArrays[i];
    //     print(list);
    //     if(list.isNotEmpty){
    //       for(var k=0;k<list.length;k++){
    //
    //
    //       }
    //     }
    //   }
    // }
    // List<List<Map<String, dynamic>>> filterArray=[];
    // if(combinationArray.isNotEmpty){
    //   for(var m=0;m<combinationArray.length;m++){
    //     var list=combinationArray[m];
    //     List<Map<String, dynamic>> list1=[];
    //
    //     if(list.isNotEmpty==true){
    //       for(var p=0;p<list.length;p++){
    //
    //         if(list[p]["flag"]==true){
    //
    //           list1.add(list[p]);
    //           print(list1);
    //           print("thre is the error");
    //
    //
    //
    //
    //
    //
    //         }
    //         filterArray.add(list1);
    //         print("the filterArray"+filterArray.toString());
    //
    //       }
    //     }
    //   }
    // }
    int d=0;

    combinationArray = combinationArrays;
    print("Starting combination Array" + combinationArray.toString());
    if(combinationArray.isNotEmpty) {
      print("enterd to the condition");
      for (var n = 0; n < combinationArray.length; n++) {
        // print(combinationArray[n]);
        // var l1=combinationArray[k];
        if (combinationArray[n].isNotEmpty) {
          print("enterd to 2nd the condition");
          combinationArray[n].removeWhere((element) {
            print("the element is"+element.toString());
            return
              element['flag'] == false;
          });
          // for(var s=0;s<combinationArray[n].length;s++){
          //   if(combinationArray[n][s]["flag"]==false){
          //     combinationArray[n].remove(combinationArray[n][s]);
          //
          //   }
          // }
        }
      }
    }

    List<List<Map<String, dynamic>>> combinationArray1=[];
    combinationArray.forEach((element) {
      if(element.isNotEmpty){
        combinationArray1.add(element);
      }


    });



print("first array $combinationArray1");



    var input_list = combinationArray1;
    var result_extract = combination_value_extract(input_list);
     result_value = combination_build(result_extract[0],result_extract[1]);
 vals=   combination_table(result_value);
    print("the combination aaaaaaaaaaaa"+result_value.toString());

























//     Map map={};
//
//     for (var a=0; a<combinationArray1.length; a++){
// //     print(list[a]);
//       if(combinationArray1[a].isNotEmpty){
//         var list1=[];
//         for(var b=0;b<combinationArray1[a].length;b++){
//
//           var title=combinationArray1[a][b]["attribute_id"];
// //         print(title);
//           list1.add(combinationArray1[a][b]["value"]);
//           map={
//             title:list1
//           };
//         }
//         print("the rrrreeee"+map.toString());
//
//
//       }
//
//     }

// if(combinationArray1.isNotEmpty==true){
//   print("entered");
//   for (var i=0;i<combinationArray1.length;i++){
//     print("entered1");
//     var templist=combinationArray1[i];
//     print("ssssssssssssssssssss"+templist.toString());
//     if(templist.isNotEmpty==true){
//
//       for (var j=0;j<templist.length;j++){
//         if(variantList.isNotEmpty==true && d!=0){
//           for(int copmp=0;copmp<variantList.length;copmp++){
//             print("mmmmmmmmmmmmmm"+variantList[copmp].toString());
//             print("mmmmmmmmmmmmmm"+combinationArray1.toString());
//             print("mmmmmmmmmmmmmm"+j.toString());
//             variantList[copmp].add(templist[j]);
//             print(variantList[copmp]);
//
//             var www = templist[j];
//             print("templist $www");
//
//             vals[copmp]=vals[copmp]+templist[j]["value"];
//           }
//
//         }
//         else{
//           print("entered2 in empty case");
//           List<Map<String, dynamic>> mapList = [];
//           mapList.add(templist[j]);
//           variantList.add(mapList);
//           var val = templist[j]["value"];
//           vals.add(val);
//           print("the maplist" + variantList.toString());
//         }
//
//       }
//       if(templist.isNotEmpty){
//
//         d=d+1;
//       }
//
//     }
//
//
//
//   }
// }

//
// print("the combination list is"+variantList.toString());
//
//     if(combinationArray1.isNotEmpty){
//       if(combinationArray1.length==1){
//         print("entered");
//
//         var list=combinationArray1[0];
//         for(var i=0;i<list.length;i++){
//           var val = list[i]["value"];
//           if (vals.contains(val) == false) {
//             List<Map<String, dynamic>> mapList = [];
//             mapList.add(list[i]);
//
//             variantList.add(mapList);
//             print("the maplist" + variantList.toString());
//
//             vals.add(val);
//           }
//
//
//         }
//         print(list);
//       }
//
//
//   for(var i=0;i<combinationArray1.length-1;i++){
//         var firstList = combinationArray1[i];
//         print("the first list"+firstList.toString());
//
//
//         for(var m =i+1;m<combinationArray1.length;m++){
//           var secondList = combinationArray1[m];
//           print("the first list====" + secondList.toString());
//
//         if (firstList.isNotEmpty){
//             for (var j = 0; j < firstList.length; j++) {if (secondList.isNotEmpty)
//               for (var k = 0; k < secondList.length; k++) {
//                 var val = firstList[j]["value"] + secondList[k]["value"];   if (vals.contains(val) == false) {
//                                     List<Map<String, dynamic>> mapList = [];
//                                     mapList.add(firstList[j]);
//                                     mapList.add(secondList[k]);
//                                     variantList.add(mapList);
//                                     print("the maplist" + variantList.toString());
//
//                                     vals.add(firstList[j]["value"] +" "+ secondList[k]["value"]);
//                                   }
//
//               }
//
//             }
//
//           }
//
//         }
//       }
//
//     }
//

print("the list is"+variantList.toString());


    //
    //  combinationArray.retainWhere((countryone) {
    //   print(countryone);
    //   List<Map<String,dynamic>> comb2=[];
    //   countryone.retainWhere((element) {
    //
    //     if(element["flag"]==true){
    //       comb2.add(element);
    //     }
    //
    //     return true;
    //
    //   });
    //  if(comb2.isNotEmpty)
    //    combinationArray.add(comb2);
    //    return true ;
    //  });

    print("Akskskksksksksksk" + combinationArray.toString());
    // if(combinationArray.isNotEmpty==true){
    //
    // }

    //
    //
    // if (combinationArray.isNotEmpty) {
    //   for (var i = 0; i < combinationArray.length - 1; i++) {
    //     var firstList = combinationArray[i];
    //     // firstList.retainWhere((element) {
    //     //   return element["flag"]==true;
    //     // });
    //
    //     print("the first list====" + firstList.toString());
    //     print("the first list====" + firstList.toString());
    //     for (var m = i + 1; m < combinationArray.length; m++) {
    //       var secondList = combinationArray[m];
    //       print("the first list====" + secondList.toString());
    //       if (firstList.isNotEmpty) print("entered2");
    //       for (var j = 0; j < firstList.length; j++) {
    //         print("entered1");
    //         if (secondList.isNotEmpty)
    //           for (var k = 0; k < secondList.length; k++) {
    //             if (firstList[j]["flag"] == true &&
    //                 secondList[k]["flag"] == true) {
    //               setState(() {
    //                 var val = firstList[j]["value"] + secondList[k]["value"];
    //                 if (vals.contains(val) == false) {
    //                   List<Map<String, dynamic>> mapList = [];
    //                   mapList.add(firstList[j]);
    //                   mapList.add(secondList[k]);
    //                   variantList.add(mapList);
    //                   print("the maplist" + variantList.toString());
    //
    //                   vals.add(firstList[j]["value"] + secondList[k]["value"]);
    //                 }
    //               });
    //               // break;
    //             } else if (firstList[j]["flag"] == true) {
    //               setState(() {
    //                 var val = firstList[j]["value"];
    //                 if (vals.contains(val) == false) {
    //                   List<Map<String, dynamic>> mapList = [];
    //                   mapList.add(firstList[j]);
    //                   variantList.add(mapList);
    //
    //                   print("the maplist" + variantList.toString());
    //                   vals.add(firstList[j]["value"]);
    //                 }
    //               });
    //             } else if (secondList[k]["flag"] == true) {
    //               setState(() {
    //                 var val = secondList[k]["value"];
    //                 if (vals.contains(val) == false) {
    //                   List<Map<String, dynamic>> mapList = [];
    //                   mapList.add(secondList[k]);
    //                   variantList.add(mapList);
    //                   print("else if" + variantList.toString());
    //                   vals.add(secondList[k]["value"]);
    //                 }
    //               });
    //             }
    //           }
    //       }
    //     }
    //   }
    // }

//second case ++++++++++++++++++++

    // if(combinationArray.isNotEmpty){
    //   if(combinationArray.length==1){
    //     print("arrived");
    // var array = combinationArray[0];
    // if(array.isNotEmpty){
    //   for(var i=0;i<array.length;i++){
    //     if(array[i]["flag"]==true){
    //       setState(() {
    //
    //         vals.add(array[i]["value"]);
    //         print(vals.toString());
    //       });
    //
    //
    //     }
    //
    //   }
    // }
    //
    //   }
    //   else if(combinationArray.length==2){
    //     var array1= combinationArray[0];
    //     var array2= combinationArray[1];
    //     if(array1.isNotEmpty){
    //       for (var i =0;i<array1.length;i++){
    //         if(array2.isNotEmpty){
    //           for(var j=0;j<array2.length;j++){
    //             if(array1[i]["flag"]==true &&array2[j]["flag"]==true)
    //               vals.add(array1[i]["value"]+array2[j]["value"]);
    //             else if(array1[i]["flag"]==true)
    //               vals.add(array1[i]["value"]);
    //             else if(array2[j]["flag"]==true)
    //               vals.add(array2[j]["value"]);
    //
    //
    //
    //           }
    //         }
    //       }
    //     }
    //   }
    // }
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
        BlocProvider(
          create: (context) => VariantFrameworkcombinationpostCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<VariantFrameworkcombinationpostCubit,
                VariantFrameworkcombinationpostState>(
              listener: (context, state) {
                print("patch" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loadingggg");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    context.showSnackBarSuccess(data.data2);

                    // context.read<GeneralreadCubit>().getGeneralPurchaseReturnRead(veritiaclid!);
                  } else {
                    context.showSnackBarError(data.data2);
                    print(data.data1);
                  }
                  ;
                });
              },
            ),
            BlocListener<VariantCreationReadCubit, VariantCreationReadState>(
              listener: (context, state) {
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      print("shaaaamna" + data.toString());

                      setState(() {
                        group = data;
                        variantFrameWorkController.text =
                            group.variantFrameWork ?? "";
                        if (group.variantFrameWork?.isNotEmpty == true) {
                          context
                              .read<VariantCreationRead2Cubit>()
                              .getVariantCreationRead2(group.variantFrameWork);
                        }
                      });
                    });
              },
            ),
            BlocListener<VariantCreationRead2Cubit, VariantCreationRead2State>(
              listener: (context, state) {
                print("the searching state" + state.toString());
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      print("the entire data" + data.toString());
                      attribute = data;
                      print("the entire data attribute" + attribute.toString());

                      setState(() {});
                    });
              },
            ),
          ],
          child: Builder(builder: (context) {
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
                          Variable.variantSearchId = result[0].id;
                          itemCode = result[0].code.toString();
                          uomCode = result[0].uomCode.toString();
                          // Variable.verticalid=result[0].id;
                          // print("Variable.ak"+Variable.verticalid.toString());
                          context
                              .read<VariantCreationReadCubit>()
                              .getVariantCreationRead(veritiaclid!);
                        } else {
                          print("common");
                          // select=true;
                          setState(() {});
                        }

                        setState(() {});
                      });
                    });
              },
              builder: (context, state) {
                return Builder(builder: (context) {
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
                                  variantController.clear();
                                  variantNameController.clear();
                                  vals.clear();

                                  // select=false;
                                  // clear();
                                  // exportCheck=false;
                                  // addNew=true;

                                  // updateCheck=false;
                                  print("rijina" + result[index].id.toString());

                                  veritiaclid = result[index].id;
                                  Variable.variantSearchId = result[index].id;
                                  // clear();
                                  // select=true;
                                  //
                                  //

                                  setState(() {
                                    context
                                        .read<VariantCreationReadCubit>()
                                        .getVariantCreationRead(veritiaclid!);
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
                                child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: height / 14,
                                  ),
                                  Container(
                                    width: width / 2,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: NewInputCard(
                                            controller: variantNameController,
                                            icondrop: true,
                                            title: "Variant",
                                            ontap: () {
                                              showDailogPopUp(
                                                context,
                                                TableConfigurePopup(
                                                  type: "varientTabalePopup",
                                                  valueSelect:
                                                      (BrandListModel va) {
                                                    setState(() {
                                                      print(va?.id ?? "");
                                                      variantController.text = va.code.toString();
                                                      variantNameController.text = va.name.toString();
                                                      setState(() {});

                                                      // onChange = true;
                                                      // orderType.text = va!;
                                                    });
                                                  },
                                                ),
                                              );
                                            },
                                          ),
                                          // SelectableDropDownpopUp(
                                          //   // controller:widget.division,
                                          //   label: "Varients",
                                          //   type:"VariantSelection_PopUpCall",
                                          //   value: variantController.text,
                                          //   onchange: (vale){
                                          //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                          //   },
                                          //   enable: true,
                                          //   onSelection: (BrandListModel? va) {
                                          //     setState(() {
                                          //
                                          //
                                          //       // print(va?.id??"");
                                          //       // divisionid=va?.id;
                                          //       // Variable.divisionId=va?.id;
                                          //       //
                                          //       variantController.text=va?.name??"";
                                          //       // setState(() {
                                          //       //
                                          //       // });
                                          //
                                          //
                                          //       // onChange = true;
                                          //       // orderType.text = va!;
                                          //     });
                                          //   },
                                          //
                                          // ),
                                        ),
                                        // Expanded(child: NewInputCard(controller: controller,title: "Varients"),),
                                        Expanded(
                                          child: NewInputCard(
                                              readOnly: true,
                                              controller:
                                                  variantFrameWorkController,
                                              title: "Variant Frame Work"),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: height / 7,
                                  ),
                                  TextButton.icon(
                                      label: Text(
                                        'Add New',
                                        style: TextStyle(fontSize: 11),
                                      ),
                                      icon: Icon(
                                        Icons.add,
                                        size: 11,
                                      ),
                                      onPressed: () {
                                        print('Pressed');
                                      }),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  AttributeScreen(
                                      attributes: attribute,
                                      combination: combinationList),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CombinationTable(list: vals),
                                  SizedBox(
                                    height: height / 9,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Button(Icons.delete, Colors.red,
                                          ctx: context,
                                          text: "DISCARD",
                                          onApply: () {},
                                          height: 29,
                                          width: 90,
                                          labelcolor: Colors.red,
                                          iconColor: Colors.red,
                                          bdr: true),
                                      SizedBox(
                                        width: width * .008,
                                      ),
                                      Button(
                                        Icons.check,
                                        Colors.grey,
                                        ctx: context,
                                        text: "SAVE",
                                        onApply: () {

                                              var filterList;


                                              print("filterList"+ result_value.toString());
                                          if(result_value.isNotEmpty){
                                            for (int i=0;i<result_value.length;i++){
                                              if(vals[i].isActive==true){
                                                variantList.add(result_value[i]);

                                          }
                                            }
                                          }
                                          print("filterList"+variantList.runtimeType.toString());



                                          context
                                              .read<
                                                  VariantFrameworkcombinationpostCubit>()
                                              .postCombinationFrameWork(
                                                  uomCode: uomCode,
                                                  itemCode: itemCode,
                                                  variantCode:
                                                      group.variantFrameWork,
                                                  variantlist: variantList);

                                          // showDailogPopUp(
                                          //     context,
                                          //     ProductModulePopUp(
                                          //       // indexValue: temp,
                                          //       // changeActive: onChangeActive,
                                          //       // changeAdditionalWarranty: onChangeAdditionalWarranty,
                                          //       // changeExtendedWarranty: onChangeExtendedWarranty,
                                          //     ));
                                        },
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
                                  SizedBox(
                                    height: height / 12,
                                  ),
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                  );
                });
              },
            );
          }),
        );
      }),
    );
  }
}

class NewCheckBoxText extends StatefulWidget {
  final Function(bool?) onChange;
  final String label;
  final bool? valueChanger;
  final bool labelI1st;
  NewCheckBoxText(
      {required this.label,
      required this.onChange,
      this.valueChanger = false,
      this.labelI1st = false});
  @override
  _NewCheckBoxTextState createState() => _NewCheckBoxTextState();
}

class _NewCheckBoxTextState extends State<NewCheckBoxText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          if (widget.labelI1st != true)
            CheckedBoxs(
                valueChanger: widget.valueChanger,
                onSelection: (va) {
                  widget.onChange(va);
                }),
          SizedBox(
            width: 5,
          ),
          Text(widget.label),
          if (widget.labelI1st == true) ...[
            SizedBox(
              width: 5,
            ),
            CheckedBoxs(
                valueChanger: widget.valueChanger,
                onSelection: (va) {
                  print(va);

                  widget.onChange(va);
                }),
          ]
        ],
      ),
    );
  }
}



class NewRadioButtonText extends StatefulWidget {
  final String lable;

   final Function valueAssign;
  NewRadioButtonText({required this.lable,required this.valueAssign});


  @override

  State<NewRadioButtonText> createState() => _NewRadioButtonTextState();
}

class _NewRadioButtonTextState extends State<NewRadioButtonText> {
  List<String>aaa=["home","office","other"];
  String? gender;
  int m=-2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for(var i=0;i<aaa.length;i++)...[
        Text(aaa[i],style:GoogleFonts.roboto(fontSize: 13,fontWeight: FontWeight.w600) ),
        Radio(
          value: m,
          groupValue: i,
          activeColor: Pellet.tableBlueHeaderPrint,
          onChanged: (val) {
            setState(() {
              m=i;
              widget.valueAssign(aaa[m]);

            });
          },
        ),
      ],
    ]
    );
  }
}


class NewCheckBoxBox extends StatefulWidget {
  final Function onChange;
  final String label;
  final Color clr;

  NewCheckBoxBox(
      {required this.label, required this.onChange, this.clr = Colors.white});
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
                border:
                    Border.all(width: 2, color: Colors.blue.withOpacity(.5))),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width: 20,
            height: 22,
            decoration: BoxDecoration(
              color: widget.clr,
              // Red border with the width is equal to 5
            ),
          ),
        ],
      ),
    );
  }
}
class CombinationListClass{
  bool isActive;
  String value;
  CombinationListClass({required this.isActive,required this.value});

}
