import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/variant/general/cubits/variantCreatio_read2/variant_creation_read2_cubit.dart';
import 'package:inventory/Screens/variant/general/model/variant_read2_model.dart';
import 'package:inventory/commonWidget/commonCheckbox2.dart';
import 'package:inventory/core/uttils/variable.dart';

import '../productmodulegeneral.dart';

class AttributeScreen extends StatefulWidget {
  final List<VariantCreationRead2Model>? attributes;
  final Function(List<List<Map<String, dynamic>>>) combination;
  AttributeScreen({this.attributes, required this.combination});

  @override
  _AttributeScreenState createState() => _AttributeScreenState();
}

class _AttributeScreenState extends State<AttributeScreen> {
  // List<VariantCreationRead2Model> attribute = [];

  bool onChange = false;
  List<Map<String, dynamic>> attributes = [];
  List<List<Map<String, dynamic>>> graphArray = [];
  List<List<Map<String, dynamic>>> newGraphArray = [];

  List<VariantCreationRead2Model> newAttribute = [];
  var maps;
  @override
  void initState() {
// newAttribute=attribute;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    if (!onChange) {
      print("hellooooooooo");

      graphArray.clear();
if(widget.attributes!=null || widget.attributes?.isNotEmpty==true){
  final length=widget.attributes!.length;

  for (var i = 0; i < length; i++) {
    graphArray.add([]);
  }
  print("graphArrayList"+graphArray.length.toString());
  // if

  for (var i = 0; i < length; i++) {
    if( widget.attributes![i].values?.isNotEmpty == true) {
      for (var j = 0; j <  widget.attributes![i].values!.length; j++) {
// maps={
//   "flag":false,
//   "value":attribute[i].values?[j]
// };
// attributes.add(maps);
        graphArray[i].add({
          "attribute_name":  widget.attributes![i].attributeName,
          "attribute_id":  widget.attributes![i].attributeId,
          "attribute_code":  widget.attributes![i].attributeCode,
          "flag": false,
          "value":  widget.attributes![i].values?[j]
        });

        print("grappphAtrray" + graphArray.toString());
      }

      // attribute[i].values?.forEach((element) {
      //   print(element);
      //   print(i);
      //   maps={
      //     "flag":false,
      //     "value":element
      //   };
      //
      //
      //   print("rgc"+maps.toString());
      //
      //   print("rgc"+attributes.toString());
      //   attributes.add(maps);
      //   graphArray[i].add(attributes);
      //
      //   // graphArray.add(attributes);
      //
      // }
      // );

    }

  }
}


//        graphArray = new List.generate(attribute.length, (i) {
//          print("the i is here"+i.toString());
//
//
//
//         var   map= attribute[i].values?.forEach((element) {
//         maps={
//          "flag":false,
//          "value":element
//        };
//
//
//        print("rgc"+attributes.toString());
//         attributes.add(maps);
//
//       });
//
// print("akkkkuatributes"+attributes.toString());
//
//
//       return [];
//       });

      // if(attribute.length)

    }
    onChange = false;


    return BlocListener<VariantCreationRead2Cubit, VariantCreationRead2State>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error");
            },
            success: (data) {
              print("the entire data" + data.toString());
              // attribute = data;
              // print("the entire data attribute" + attribute.toString());

              setState(() {});
            });
      },
      child: Container(
        // height: 200,
        // color: Colors.yellow,
        alignment: Alignment.topRight,
        width: MediaQuery.of(context).size.width - 60,
        child:  widget.attributes?.isNotEmpty == true
            ? ListView.builder(
          shrinkWrap:true,
            // physics: NeverScrollableScrollPhysics(),


            //
            //      gridDelegate: const Sli(
            //
            // maxCrossAxisExtent: 200,
            // childAspectRatio:1 / 1.1,
            // crossAxisSpacing: 20,
            //
            // mainAxisSpacing: 20),



                scrollDirection: Axis.vertical,
                itemCount:  widget.attributes?.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    // height: 400,
                    // width: MediaQuery.of(context).size.width / 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text( widget.attributes![index]?.attributeName.toString() ?? ""),
                        SizedBox(
                          height: 10,
                        ),
                        if (graphArray[index].isNotEmpty == true)
                          Container(
                            // height: 100,
                            // // width: 600,
                            // color: Colors.red,

                            child: GridView.builder(
                              shrinkWrap:true,

                              scrollDirection: Axis.vertical,
                              itemCount: graphArray[index]!.length,
                              itemBuilder: (context, item) {
                                return Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // CustomCheckBox(
                                    //
                                    //   key: UniqueKey(),
                                    //
                                    //   value: list
                                    //
                                    //       .contains(data.data[i].id),
                                    //
                                    //   onChange: (p0) {
                                    //
                                    //     if (p0)
                                    //
                                    //       list.add(data.data[i]);
                                    //
                                    //     else
                                    //
                                    //       list.remove(data.data[i]);
                                    //
                                    //   },
                                    //
                                    // ),
                                    NewCheckBoxText(
                                      label: graphArray[index][item]["value"],
                                      valueChanger: graphArray[index][item]
                                          ["flag"],
                                      onChange: (va) {
                                        setState(() {
                                          print("grapppppppp${graphArray}");

                                          onChange = true;
                                          var val =
                                              graphArray[index][item]["flag"];
                                          print("ch" + val.toString());
                                          val = !val;
                                          print("val" + val.toString());
                                          graphArray[index][item]["flag"] = val;
                                          print(
                                              graphArray[index][item]["flag"]);
                                          print("the changing array is" +
                                              graphArray.toString());

                                          List<List<Map<String,dynamic>>> newGraphArray = [];



                                          for (var i = 0; i < graphArray.length; i++) {
                                            newGraphArray.add([]);
                                            print("newGraphArray"+newGraphArray.length.toString());
                                          }
                                          print("newGraphArray"+newGraphArray.length.toString());
                                          // if

                                          for (var i = 0; i < graphArray.length; i++) {
                                            if (graphArray[i]?.isNotEmpty == true) {
                                              for (var j = 0; j < graphArray[i].length; j++) {
                                                print("aaaaaaaaaaaaaaaaaaaaaa${graphArray}");
// maps={
//   "flag":false,
//   "value":attribute[i].values?[j]
// };
// attributes.add(maps);
                                                newGraphArray[i].add({
                                                  "attribute_name": graphArray[i][j]['attribute_name'],

                                                  "attribute_id": graphArray[i][j]["attribute_id"],
                                                  "attribute_code":graphArray[i][j]["attribute_code"],
                                                  "flag":graphArray[i][j]["flag"],
                                                  "value": graphArray[i][j]["value"]
                                                });


                                              }
                                              print("ppppppppppppppp" + newGraphArray.toString());

                                              // attribute[i].values?.forEach((element) {
                                              //   print(element);
                                              //   print(i);
                                              //   maps={
                                              //     "flag":false,
                                              //     "value":element
                                              //   };
                                              //
                                              //
                                              //   print("rgc"+maps.toString());
                                              //
                                              //   print("rgc"+attributes.toString());
                                              //   attributes.add(maps);
                                              //   graphArray[i].add(attributes);
                                              //
                                              //   // graphArray.add(attributes);
                                              //
                                              // }
                                              // );

                                            }

                                          }




                                          print(graphArray);
                                          print("++++++++++++++++");
                                          print(newGraphArray);



                                          // var copy = [for (var e in graphArray) ...e];
                                          // print("the copy of data"+copy.toString());

                                          // List<dynamic> weightData =
                                          // newGraphArray.entries.map( (entry) => Weight(entry.key, entry.value)).toList();
                                          // Variable.combinationArray=graphArray;
                                          // Variable.combinationArray.clear();




                                          widget.combination(newGraphArray);
                                        });

                                        print("akskks");
                                      },
                                    ),
                                    SizedBox(width: 22,)
                                  ],
                                );
                              }, gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 1/5,
                                mainAxisExtent: MediaQuery.of(context).size.width/40,
                                crossAxisSpacing: 10,

                                crossAxisCount: 5),
                            ),
                          )
                      ],
                    ),
                  );
                },
              )
            : Text("nothing"),
      ),
    );
  }
}
