import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:inventory/Screens/variant/variantdetails/model/variant_read.dart';
import 'package:inventory/Screens/variant/variantdetails/screens.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';

class ProductTable extends StatefulWidget {
  final Storage? aboutProducts;
  final Function storageTableEdit;
  final bool addNew;
  final Key? key;

  ProductTable(
      {required this.aboutProducts,
      required this.storageTableEdit,
      required this.key,
      required this.addNew});
  @override
  ProductTableState createState() => ProductTableState();
}

class ProductTableState extends State<ProductTable> {
  TextEditingController name = TextEditingController();
  var nameListControllers = <TextEditingController>[];
  TextEditingController key = TextEditingController();
  TextEditingController headingController = TextEditingController();
  TextEditingController newNameController = TextEditingController();
  List<bool>upDate=[];

  List<bool>upDateButton=[];

  List<TextEditingController> nameListTextEditingController = [];
  bool onChange = false;
  Storage? aboutProducts;
  List<dynamic> keys = [];
  bool onSaveActive = false;
  saveButtonActovde(String name){
    print(key);

    onChange=true;
    if(name!="" ){
      setState(() {
        onSaveActive=true;
      });
    }
    else{
      setState(() {
        onSaveActive=false;
      });

    }
  }


  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    if (!onChange) {

      setState(() {

        nameListTextEditingController.clear();
        nameListControllers.clear();
        upDateButton.clear();
        keys =[] ;

      });

      setState(() {
        headingController.text =
            widget.addNew ? "" : widget.aboutProducts?.name ?? "";
      });
      aboutProducts = widget.aboutProducts;
      if (aboutProducts?.keyValues?.isNotEmpty == true) {
        keys = aboutProducts?.keyValues ?? [];
        for( var i =0;i<keys.length;i++){
          upDate.add(false);
          upDateButton.add(false);

          var nameValue = new TextEditingController(text: keys[i]["name"]==null?"":keys[i]["name"]);
          nameListTextEditingController.add(nameValue);
        }
   
      }
    }
    print("keysssssssssssssssssssss"+keys.toString());
    onChange = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        underlineTextForm(
          controller: headingController,
          onChange: (va) {
            print(va);
            aboutProducts = Storage(name: va,keyValues: keys);
            widget.storageTableEdit(
                type: "1", list: aboutProducts);
          },
        ),
        Container(
          // width: w/7,
          margin: EdgeInsets.symmetric(horizontal: w * .02),
          child: customTable(
            border: const TableBorder(
              verticalInside: BorderSide(
                  width: .5, color: Colors.black45, style: BorderStyle.solid),
              horizontalInside: BorderSide(
                  width: .3,
                  color: Colors.black45,
                  // color: Colors.blue,
                  style: BorderStyle.solid),
            ),
            tableWidth: .5,
            childrens: [
              TableRow(
                // decoration: BoxDecoration(

                //     color: Colors.green.shade200,

                //     shape: BoxShape.rectangle,

                //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                children: [
                  tableHeadtext(
                    'About the Product',
                    padding: EdgeInsets.only(left: 13,top: 13),
                   height: 41,
                    textColor: Colors.white,
                    size: 13,
                  ),
                  tableHeadtext(
                    '',
                    padding: EdgeInsets.only(left: 13,top: 13),
                    height: 41,
                    textColor: Colors.white,
                    size: 13,
                  ),

                ],
              ),
              if (keys?.isNotEmpty == true) ...[
                for (var i = 0; i < keys!.length; i++)
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
                          child:
                              // Text(keys?[i]["name"]??"")
                              UnderLinedInput(
                                readOnly: !upDate[i],
                                filledColour: upDate[i]?Colors.white:Colors.transparent,
                                formatter: false,
                            controller: nameListTextEditingController[i],
                            onChanged: (va) {
                              onChange=true;
                              setState(() {

                                  upDateButton[i]=true;



                                keys[i]["name"] = va;
                                aboutProducts = Storage(
                                    name: headingController.text, keyValues: keys);


                              });

                              print(va);


                              print(keys);
                            },
                          ),
                        ),

                        TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Row(
                          children: [
                            TableTextButton(
                              buttonBagroundColor: upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                              textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                              bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),
                              label: upDateButton[i]==true?"Update":"Edit",
                              // icon: upDate[i]==true?Icons.coronavirus_rounded:null,

                              onPress: () {


                                setState(() {
                                  upDate[i]=!upDate[i];
                                  if( upDate[i]==true){
                                    widget.storageTableEdit(
                                        type: "1", list: aboutProducts);
                                    upDateButton[i]=false;
                                  }


                                });
                                setState(() {

                                });

                              },
                            ),
                            TableIconTextButton(
                              label: "",
                              icon: Icons.delete,
                              onPress: () {
                                onChange=true;

                                setState(() {

                                  print(keys);
                                  print(i);


                                  keys?.removeAt(i);
                                  upDate.removeAt(i);
                                  nameListTextEditingController.removeAt(i);

                                  print(keys);

                                  aboutProducts = Storage(
                                      name: headingController.text, keyValues: keys);
                                  widget.storageTableEdit(
                                      type: "1", list: aboutProducts);
                                });
                                setState(() {

                                });

                              },
                            ),

                          ],
                        )),


                      ]),
              ],
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
                        child: UnderLinedInput(
                          controller:name,
                          initialCheck: false,
                          formatter: false,
                          onChanged: (va) {
                            print(va);
                            onChange=true;
                            saveButtonActovde(name.text);
                            setState(() {});
                          },
                        ),

                        // UnderLinedInput(
                        //   formatter: false,
                        // ),

                        ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: TableTextButton(
                        label: "Save",
                        buttonBagroundColor:onSaveActive?Pellet.bagroundColor:Colors.transparent,
                        textColor:onSaveActive?Pellet.bagroundColor:Colors.black,
                        bagroundColor: onSaveActive?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),
                        onPress: () {
                          onChange = true;

                          setState(() {
                            if (name.text.isNotEmpty == true) {
                              Map map = {
                                "name": name.text,
                              };
                              nameListTextEditingController
                                  .add(TextEditingController(text: name.text));
                              keys.add(map);
                              print(keys);

                              print(keys);
                              print("attata+" + aboutProducts.toString());
                              upDate.add(false);
                              upDateButton.add(false);
                              var nameValue = new TextEditingController(text: newNameController.text);

                              nameListControllers.add(nameValue);

                              aboutProducts = Storage(
                                  name: headingController.text, keyValues: keys);
                              widget.storageTableEdit(
                                  type: "1", list: aboutProducts);
                              name.text = "";
                              onSaveActive=false;
                            }
                          });
                        },
                      ),
                    ),

                  ])
            ],
            widths: {
              0: FlexColumnWidth(5),
              1: FlexColumnWidth(.8),
            },
          ),
        ),
      ],
    );
  }
}

class VariantProductDetails extends StatefulWidget {
  final ProductFeatures? productDetails;
  final Function productTableEdit;
  VariantProductDetails(
      {required this.productDetails, required this.productTableEdit});

  @override
  VariantProductDetailsState createState() => VariantProductDetailsState();
}

class VariantProductDetailsState extends State<VariantProductDetails> {
  TextEditingController key = TextEditingController();
  TextEditingController value = TextEditingController();
  TextEditingController heading = TextEditingController();
  List<bool>upDate=[];
  List<bool>upDateButton=[];

  List<TextEditingController> keyListTextEditingController = [];
  List<TextEditingController> valueListTextEditingController = [];
  bool onChange = false;
  bool onSaveActive = false;


  saveButtonActovde(String key,String val){
    print(key);
    print(val);
    onChange=true;
    if(key!="" && val!=""){
      setState(() {
        onSaveActive=true;
      });
    }
    else{
      setState(() {
        onSaveActive=false;
      });

    }
  }
  ProductFeatures? productDetails;
  List<Keys> keys = [];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    if (!onChange) {
      setState(() {
        keys = [];
        upDate.clear();
        onSaveActive=false;
        upDateButton.clear();
        keyListTextEditingController.clear();
        valueListTextEditingController.clear();



      });

      productDetails = widget.productDetails;
      heading =
          TextEditingController(text: productDetails?.name ?? "");
      if (productDetails?.keyValues?.isNotEmpty == true) {
        keys = productDetails?.keyValues ?? [];

        for( var i =0;i<keys.length;i++){
          upDate.add(false);
          upDateButton.add(false);

          var keyValue = new TextEditingController(text: keys[i].key==null?"":keys[i].key);
          keyListTextEditingController.add(keyValue);
          var valueValue = new TextEditingController(text: keys[i].value==null?"":keys[i].value);
          valueListTextEditingController.add(valueValue);
        }


      }
    }
    onChange = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        underlineTextForm(
          controller: heading,
          onChange: (va) {
            print(va);
            print(va);
            productDetails = ProductFeatures(name: va,keyValues: keys);
            widget.productTableEdit(
                type: "1", list: productDetails);
          },
        ),
        Container(
          // width: w/7,
          margin: EdgeInsets.symmetric(horizontal: w * .02),
          child: customTable(
            border:  TableBorder(
              verticalInside: BorderSide(
                  width: .5, color:   Color(0xff3E4F5B).withOpacity(.1), style: BorderStyle.solid),
              horizontalInside: BorderSide(
                  width: .3,
                  color:   Color(0xff3E4F5B).withOpacity(.1),
                  // color: Colors.blue,
                  style: BorderStyle.solid),
            ),
            tableWidth: .5,
            childrens: [
              TableRow(
                // decoration: BoxDecoration(

                //     color: Colors.green.shade200,

                //     shape: BoxShape.rectangle,

                //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                children: [
                  tableHeadtext(
                    'Product details',

                    padding: EdgeInsets.only(left: 13,top: 13),

                    height: 41,
                    textColor: Colors.white,
                    // color: Color(0xffE5E5E5),

                    size: 13,
                  ),
                  tableHeadtext(
                    'Description',
                    textColor: Colors.white,
                    padding: EdgeInsets.only(left: 13,top: 13),
                    height: 41,
                    size: 13,
                    // color: Color(0xffE5E5E5),
                  ),
                  tableHeadtext(
                    '',
                    textColor: Colors.white,
                    padding: EdgeInsets.only(left: 13,top: 13),
                    height: 41,
                    size: 13,
                    // color: Color(0xffE5E5E5),
                  ),

                ],
              ),
              if (keys?.isNotEmpty == true) ...[
                for (var i = 0; i < keys.length; i++)
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
                          child:
                          // Text(keys[i].key??"")
                          UnderLinedInput(
                            readOnly: !upDate[i],
                            filledColour: upDate[i]?Colors.white:Colors.transparent,
                            // last: keys[i].key ?? "",
                            // initialCheck: true,
                            // controller: TextEditingController(text:keys[i].key ?? "" ),
                            controller: keyListTextEditingController[i],
                            formatter: false,
                            onChanged: (va) {
                              onChange=true;
                              setState(() {
                                upDateButton[i]=true;
                              });


                              print(va);
                              keys[i] = keys[i].copyWith(
                                key: va,
                              );
                              productDetails = ProductFeatures(
                                  name: heading.text, keyValues: keys);
                              // productDetails[i]=productDetails[i].copyWith(keyValues: keys);

                            },
                          ),
                        ),

                        TableCell(
                            verticalAlignment:
                            TableCellVerticalAlignment.middle,
                            child:
                            // Text(keys[i].value??"",)
                            UnderLinedInput(
                              readOnly: !upDate[i],
                              filledColour: upDate[i]?Colors.white:Colors.transparent,
                              // initialCheck: true,
                              // last: keys[i].value ?? "" ?? "",
                              controller: valueListTextEditingController[i],
                              formatter: false,
                              onChanged: (va) {
                                onChange=true;
                                setState(() {
                                  upDateButton[i]=true;
                                });
                                print(va);
                                keys[i] = keys[i].copyWith(value: va);
                                productDetails = ProductFeatures(
                                    name: heading.text, keyValues: keys);
                                // productDetails[i]=productDetails[i].copyWith(keyValues: keys);

                              },
                            )),
                        TableCell(
                          verticalAlignment:
                          TableCellVerticalAlignment.middle,
                          child: Container(
                            // margin: EdgeInsets.symmetric(horizontal:5),

                            child: Row(
                              children: [
                                TableTextButton(
                                  buttonBagroundColor: upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                                  textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                                  bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),
                                  label: upDateButton[i]==true?"Update":"Edit",

                                  // icon: upDate[i]==true?Icons.coronavirus_rounded:null,

                                  onPress: () {
                                    onChange=true;


                                    setState(() {
                                      upDate[i]=!upDate[i];

                                      if( upDateButton[i]==true){
                                        widget.productTableEdit(
                                            type: "1", list: productDetails);
                                        upDateButton[i]=false;





                                      }


                                    });
                                    setState(() {

                                    });

                                  },
                                ),
                                SizedBox(width: 3,),


                                TableIconTextButton(

                                  // textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                                  // buttonBagroundColor:upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                                  // bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Colors.transparent,
                                  onPress: () {
                                    onChange=true;
                                    setState(() {


                                      keys?.removeAt(i);
                                      upDate.removeAt(i);
                                      upDateButton.removeAt(i);
                                      keyListTextEditingController.removeAt(i);
                                      valueListTextEditingController.removeAt(i);
                                      productDetails = ProductFeatures(
                                          name: heading.text, keyValues: keys);
                                      // productDetails[i]=productDetails[i].copyWith(keyValues: keys);
                                      widget.productTableEdit(
                                          type: "1", list: productDetails);
                                    });
                                  },
                                  icon: Icons.delete,
                                  label: "",
                                )

                              ],
                            ),
                          ),
                        ),



                        // TableTextButton(
                        //   textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                        //   buttonBagroundColor:upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                        //   bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Colors.transparent,
                        //   onPress: () {
                        //     onChange=true;
                        //     setState(() {
                        //
                        //
                        //       keys?.removeAt(i);
                        //       upDate.removeAt(i);
                        //       upDateButton.removeAt(i);
                        //       keyListTextEditingController.removeAt(i);
                        //       valueListTextEditingController.removeAt(i);
                        //       productDetails = ProductFeatures(
                        //           name: heading.text, keyValues: keys);
                        //       // productDetails[i]=productDetails[i].copyWith(keyValues: keys);
                        //       widget.productTableEdit(
                        //           type: "2", list: productDetails);
                        //     });
                        //   },
                        //   icon: Icons.delete,
                        //   label: "",
                        // )


                      ])
              ],
              TableRow(
                  decoration: BoxDecoration(
                      color: Pellet.tableRowColor,
                      shape: BoxShape.rectangle,
                      border:  Border(
                          left: BorderSide(

                              color:  Color(0xff3E4F5B).withOpacity(.1),
                              style: BorderStyle.solid),
                          bottom: BorderSide(

                              color: Color(0xff3E4F5B).withOpacity(.1),
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Color(0xff3E4F5B).withOpacity(.1),

                              style: BorderStyle.solid))),
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        controller: key,
                        onChanged: (va) {
                          saveButtonActovde(key.text,value.text);
                          // key.text = va;
                        },
                        formatter: false,
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        controller: value,
                        onChanged: (va) {
                          saveButtonActovde(key.text,value.text);
                          // value.text = va;
                        },
                        formatter: false,
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: TableTextButton(
                          buttonBagroundColor:onSaveActive?Pellet.bagroundColor:Colors.transparent,
                          textColor:onSaveActive?Pellet.bagroundColor:Colors.black,
                          bagroundColor: onSaveActive?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),

                          label: "Save",
                          onPress: () {
                            onChange = true;
                            if (key.text.isNotEmpty && value.text.isNotEmpty) {
                              Keys model = Keys(
                                key: key.text ?? "",
                                value: value.text ?? '',
                              );
                              print(model);
                              setState(() {
                                keys?.add(model);

                                upDate.add(false);
                                upDateButton.add(false);
                                var keyValue = new TextEditingController(text: key.text);
                                var valValue = new TextEditingController(text: value.text);

                                keyListTextEditingController.add(keyValue);
                                valueListTextEditingController.add(valValue);

                                productDetails = ProductFeatures(
                                    name: heading.text, keyValues: keys);
                                widget.productTableEdit(
                                    type: "1", list: productDetails);
                                key.text = "";
                                value.text = "";
                                onSaveActive=false;
                              });
                            }
                          }),
                    )  ,


                  ]),
            ],
            widths: {
              0: FlexColumnWidth(5),
              1: FlexColumnWidth(5),
              2: FlexColumnWidth(1.5),

            },
          ),
        ),
      ],
    );
  }
}

class PrtoductFeatures extends StatefulWidget {
  final ProductFeatures? productFeatures;
  final Function productTableEdit;
  PrtoductFeatures(
      {required this.productFeatures, required this.productTableEdit});

  @override
  PrtoductFeaturesState createState() => PrtoductFeaturesState();
}

class PrtoductFeaturesState extends State<PrtoductFeatures> {
  TextEditingController key = TextEditingController();
  TextEditingController value = TextEditingController();
  TextEditingController heading = TextEditingController();
  List<bool>upDate=[];
  List<bool>upDateButton=[];

  List<TextEditingController> keyListTextEditingController = [];
  List<TextEditingController> valueListTextEditingController = [];
  bool onChange = false;
  bool onSaveActive = false;


  saveButtonActovde(String key,String val){
    print(key);
    print(val);
    onChange=true;
    if(key!="" && val!=""){
      setState(() {
        onSaveActive=true;
      });
    }
    else{
      setState(() {
        onSaveActive=false;
      });

    }
  }
  ProductFeatures? productDetails;
  List<Keys> keys = [];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    if (!onChange) {
      setState(() {
        keys = [];
        upDate.clear();
        onSaveActive=false;
        upDateButton.clear();
        keyListTextEditingController.clear();
        valueListTextEditingController.clear();



      });

      productDetails = widget.productFeatures;
      heading =
          TextEditingController(text: productDetails?.name ?? "");
      if (productDetails?.keyValues?.isNotEmpty == true) {
        keys = productDetails?.keyValues ?? [];

        for( var i =0;i<keys.length;i++){
          upDate.add(false);
          upDateButton.add(false);

          var keyValue = new TextEditingController(text: keys[i].key==null?"":keys[i].key);
          keyListTextEditingController.add(keyValue);
          var valueValue = new TextEditingController(text: keys[i].value==null?"":keys[i].value);
          valueListTextEditingController.add(valueValue);
        }


      }
    }
    onChange = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        underlineTextForm(
          controller: heading,
          onChange: (va) {
            print(va);
            print(va);
            productDetails = ProductFeatures(name: va,keyValues: keys);
            widget.productTableEdit(
                type: "2", list: productDetails);
          },
        ),
        Container(
          // width: w/7,
          margin: EdgeInsets.symmetric(horizontal: w * .02),
          child: customTable(
            border:  TableBorder(
              verticalInside: BorderSide(
                  width: .5, color:   Color(0xff3E4F5B).withOpacity(.1), style: BorderStyle.solid),
              horizontalInside: BorderSide(
                  width: .3,
                  color:   Color(0xff3E4F5B).withOpacity(.1),
                  // color: Colors.blue,
                  style: BorderStyle.solid),
            ),
            tableWidth: .5,
            childrens: [
              TableRow(
                // decoration: BoxDecoration(

                //     color: Colors.green.shade200,

                //     shape: BoxShape.rectangle,

                //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                children: [
                  tableHeadtext(
                    'Product Features',

                    padding: EdgeInsets.only(left: 13,top: 13),

                    height: 41,
                    textColor: Colors.white,
                    // color: Color(0xffE5E5E5),

                    size: 13,
                  ),
                  tableHeadtext(
                    'Description',
                    textColor: Colors.white,
                    padding: EdgeInsets.only(left: 13,top: 13),
                    height: 41,
                    size: 13,
                    // color: Color(0xffE5E5E5),
                  ),
                  tableHeadtext(
                    '',
                    textColor: Colors.white,
                    padding: EdgeInsets.only(left: 13,top: 13),
                    height: 41,
                    size: 13,
                    // color: Color(0xffE5E5E5),
                  ),

                ],
              ),
              if (keys?.isNotEmpty == true) ...[
                for (var i = 0; i < keys.length; i++)
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
                          child:
                          // Text(keys[i].key??"")
                          UnderLinedInput(
                            readOnly: !upDate[i],
                            filledColour: upDate[i]?Colors.white:Colors.transparent,
                            // last: keys[i].key ?? "",
                            // initialCheck: true,
                            // controller: TextEditingController(text:keys[i].key ?? "" ),
                            controller: keyListTextEditingController[i],
                            formatter: false,
                            onChanged: (va) {
                              onChange=true;
                              setState(() {
                                upDateButton[i]=true;
                              });


                              print(va);
                              keys[i] = keys[i].copyWith(
                                key: va,
                              );
                              productDetails = ProductFeatures(
                                  name: heading.text, keyValues: keys);
                              // productDetails[i]=productDetails[i].copyWith(keyValues: keys);

                            },
                          ),
                        ),

                        TableCell(
                            verticalAlignment:
                            TableCellVerticalAlignment.middle,
                            child:
                            // Text(keys[i].value??"",)
                            UnderLinedInput(
                              readOnly: !upDate[i],
                              filledColour: upDate[i]?Colors.white:Colors.transparent,
                              // initialCheck: true,
                              // last: keys[i].value ?? "" ?? "",
                              controller: valueListTextEditingController[i],
                              formatter: false,
                              onChanged: (va) {
                                onChange=true;
                                setState(() {
                                  upDateButton[i]=true;
                                });
                                print(va);
                                keys[i] = keys[i].copyWith(value: va);
                                productDetails = ProductFeatures(
                                    name: heading.text, keyValues: keys);
                                // productDetails[i]=productDetails[i].copyWith(keyValues: keys);

                              },
                            )),
                        TableCell(
                          verticalAlignment:
                          TableCellVerticalAlignment.middle,
      child: Container(
        // margin: EdgeInsets.symmetric(horizontal:5),

        child: Row(
          children: [
            TableTextButton(
              buttonBagroundColor: upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
              textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
              bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),
              label: upDateButton[i]==true?"Update":"Edit",

              // icon: upDate[i]==true?Icons.coronavirus_rounded:null,

              onPress: () {
                onChange=true;


                setState(() {
                  upDate[i]=!upDate[i];

                  if( upDateButton[i]==true){
                    widget.productTableEdit(
                        type: "2", list: productDetails);
                    upDateButton[i]=false;





                  }


                });
                setState(() {

                });

              },
            ),
            SizedBox(width: 3,),


            TableIconTextButton(

              // textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
              // buttonBagroundColor:upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
              // bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Colors.transparent,
              onPress: () {
                onChange=true;
                setState(() {


                  keys?.removeAt(i);
                  upDate.removeAt(i);
                  upDateButton.removeAt(i);
                  keyListTextEditingController.removeAt(i);
                  valueListTextEditingController.removeAt(i);
                  productDetails = ProductFeatures(
                      name: heading.text, keyValues: keys);
                  // productDetails[i]=productDetails[i].copyWith(keyValues: keys);
                  widget.productTableEdit(
                      type: "2", list: productDetails);
                });
              },
              icon: Icons.delete,
              label: "",
            )

          ],
        ),
      ),
    ),



                        // TableTextButton(
                        //   textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                        //   buttonBagroundColor:upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                        //   bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Colors.transparent,
                        //   onPress: () {
                        //     onChange=true;
                        //     setState(() {
                        //
                        //
                        //       keys?.removeAt(i);
                        //       upDate.removeAt(i);
                        //       upDateButton.removeAt(i);
                        //       keyListTextEditingController.removeAt(i);
                        //       valueListTextEditingController.removeAt(i);
                        //       productDetails = ProductFeatures(
                        //           name: heading.text, keyValues: keys);
                        //       // productDetails[i]=productDetails[i].copyWith(keyValues: keys);
                        //       widget.productTableEdit(
                        //           type: "2", list: productDetails);
                        //     });
                        //   },
                        //   icon: Icons.delete,
                        //   label: "",
                        // )


                      ])
              ],
              TableRow(
                  decoration: BoxDecoration(
                      color: Pellet.tableRowColor,
                      shape: BoxShape.rectangle,
                      border:  Border(
                          left: BorderSide(

                              color:  Color(0xff3E4F5B).withOpacity(.1),
                              style: BorderStyle.solid),
                          bottom: BorderSide(

                              color: Color(0xff3E4F5B).withOpacity(.1),
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Color(0xff3E4F5B).withOpacity(.1),

                              style: BorderStyle.solid))),
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        controller: key,
                        onChanged: (va) {
                          saveButtonActovde(key.text,value.text);
                          // key.text = va;
                        },
                        formatter: false,
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        controller: value,
                        onChanged: (va) {
                          saveButtonActovde(key.text,value.text);
                          // value.text = va;
                        },
                        formatter: false,
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: TableTextButton(
                          buttonBagroundColor:onSaveActive?Pellet.bagroundColor:Colors.transparent,
                          textColor:onSaveActive?Pellet.bagroundColor:Colors.black,
                          bagroundColor: onSaveActive?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),

                          label: "Save",
                          onPress: () {
                            onChange = true;
                            if (key.text.isNotEmpty && value.text.isNotEmpty) {
                              Keys model = Keys(
                                key: key.text ?? "",
                                value: value.text ?? '',
                              );
                              print(model);
                              setState(() {
                                keys?.add(model);

                                upDate.add(false);
                                upDateButton.add(false);
                                var keyValue = new TextEditingController(text: key.text);
                                var valValue = new TextEditingController(text: value.text);

                                keyListTextEditingController.add(keyValue);
                                valueListTextEditingController.add(valValue);

                                productDetails = ProductFeatures(
                                    name: heading.text, keyValues: keys);
                                widget.productTableEdit(
                                    type: "2", list: productDetails);
                                key.text = "";
                                value.text = "";
                                onSaveActive=false;
                              });
                            }
                          }),
                    )  ,


                  ]),
            ],
            widths: {
              0: FlexColumnWidth(5),
              1: FlexColumnWidth(5),
              2: FlexColumnWidth(1.5),

            },
          ),
        ),
      ],
    );
  }
}

class AdditionaslInfo extends StatefulWidget {
  final ProductFeatures? additionalInfo;
  final Function productTableEdit;
  AdditionaslInfo(
      {required this.additionalInfo, required this.productTableEdit});

  @override
  AdditionaslInfoState createState() => AdditionaslInfoState();
}

class AdditionaslInfoState extends State<AdditionaslInfo> {
  TextEditingController key = TextEditingController();
  TextEditingController value = TextEditingController();
  TextEditingController heading = TextEditingController();
  List<bool>upDate=[];
  List<bool>upDateButton=[];

  List<TextEditingController> keyListTextEditingController = [];
  List<TextEditingController> valueListTextEditingController = [];
  bool onChange = false;
  bool onSaveActive = false;


  saveButtonActovde(String key,String val){
    print(key);
    print(val);
    onChange=true;
    if(key!="" && val!=""){
      setState(() {
        onSaveActive=true;
      });
    }
    else{
      setState(() {
        onSaveActive=false;
      });

    }
  }
  ProductFeatures? productDetails;
  List<Keys> keys = [];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    if (!onChange) {
      setState(() {
        keys = [];
        upDate.clear();
        onSaveActive=false;
        upDateButton.clear();
        keyListTextEditingController.clear();
        valueListTextEditingController.clear();



      });

      productDetails = widget.additionalInfo;
      heading =
          TextEditingController(text: productDetails?.name ?? "");
      if (productDetails?.keyValues?.isNotEmpty == true) {
        keys = productDetails?.keyValues ?? [];

        for( var i =0;i<keys.length;i++){
          upDate.add(false);
          upDateButton.add(false);

          var keyValue = new TextEditingController(text: keys[i].key==null?"":keys[i].key);
          keyListTextEditingController.add(keyValue);
          var valueValue = new TextEditingController(text: keys[i].value==null?"":keys[i].value);
          valueListTextEditingController.add(valueValue);
        }


      }
    }
    onChange = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        underlineTextForm(
          controller: heading,
          onChange: (va) {
            print(va);
            print(va);
            productDetails = ProductFeatures(name: va,keyValues: keys);
            widget.productTableEdit(
                type: "3", list: productDetails);
          },
        ),
        Container(
          // width: w/7,
          margin: EdgeInsets.symmetric(horizontal: w * .02),
          child: customTable(
            border:  TableBorder(
              verticalInside: BorderSide(
                  width: .5, color:   Color(0xff3E4F5B).withOpacity(.1), style: BorderStyle.solid),
              horizontalInside: BorderSide(
                  width: .3,
                  color:   Color(0xff3E4F5B).withOpacity(.1),
                  // color: Colors.blue,
                  style: BorderStyle.solid),
            ),
            tableWidth: .5,
            childrens: [
              TableRow(
                // decoration: BoxDecoration(

                //     color: Colors.green.shade200,

                //     shape: BoxShape.rectangle,

                //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                children: [
                  tableHeadtext(
                    'Additiona information',

                    padding: EdgeInsets.only(left: 13,top: 13),

                    height: 41,
                    textColor: Colors.white,
                    // color: Color(0xffE5E5E5),

                    size: 13,
                  ),
                  tableHeadtext(
                    'Description',
                    textColor: Colors.white,
                    padding: EdgeInsets.only(left: 13,top: 13),
                    height: 41,
                    size: 13,
                    // color: Color(0xffE5E5E5),
                  ),
                  tableHeadtext(
                    '',
                    textColor: Colors.white,
                    padding: EdgeInsets.only(left: 13,top: 13),
                    height: 41,
                    size: 13,
                    // color: Color(0xffE5E5E5),
                  ),

                ],
              ),
              if (keys?.isNotEmpty == true) ...[
                for (var i = 0; i < keys.length; i++)
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
                          child:
                          // Text(keys[i].key??"")
                          UnderLinedInput(
                            readOnly: !upDate[i],
                            filledColour: upDate[i]?Colors.white:Colors.transparent,
                            // last: keys[i].key ?? "",
                            // initialCheck: true,
                            // controller: TextEditingController(text:keys[i].key ?? "" ),
                            controller: keyListTextEditingController[i],
                            formatter: false,
                            onChanged: (va) {
                              onChange=true;
                              setState(() {
                                upDateButton[i]=true;
                              });


                              print(va);
                              keys[i] = keys[i].copyWith(
                                key: va,
                              );
                              productDetails = ProductFeatures(
                                  name: heading.text, keyValues: keys);
                              // productDetails[i]=productDetails[i].copyWith(keyValues: keys);

                            },
                          ),
                        ),

                        TableCell(
                            verticalAlignment:
                            TableCellVerticalAlignment.middle,
                            child:
                            // Text(keys[i].value??"",)
                            UnderLinedInput(
                              readOnly: !upDate[i],
                              filledColour: upDate[i]?Colors.white:Colors.transparent,
                              // initialCheck: true,
                              // last: keys[i].value ?? "" ?? "",
                              controller: valueListTextEditingController[i],
                              formatter: false,
                              onChanged: (va) {
                                onChange=true;
                                setState(() {
                                  upDateButton[i]=true;
                                });
                                print(va);
                                keys[i] = keys[i].copyWith(value: va);
                                productDetails = ProductFeatures(
                                    name: heading.text, keyValues: keys);
                                // productDetails[i]=productDetails[i].copyWith(keyValues: keys);

                              },
                            )),
                        TableCell(
                          verticalAlignment:
                          TableCellVerticalAlignment.middle,
                          child: Container(
                            // margin: EdgeInsets.symmetric(horizontal:5),

                            child: Row(
                              children: [
                                TableTextButton(
                                  buttonBagroundColor: upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                                  textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                                  bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),
                                  label: upDateButton[i]==true?"Update":"Edit",

                                  // icon: upDate[i]==true?Icons.coronavirus_rounded:null,

                                  onPress: () {
                                    onChange=true;


                                    setState(() {
                                      upDate[i]=!upDate[i];

                                      if( upDateButton[i]==true){
                                        widget.productTableEdit(
                                            type: "3", list: productDetails);
                                        upDateButton[i]=false;





                                      }


                                    });
                                    setState(() {

                                    });

                                  },
                                ),
                                SizedBox(width: 3,),


                                TableIconTextButton(

                                  // textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                                  // buttonBagroundColor:upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                                  // bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Colors.transparent,
                                  onPress: () {
                                    onChange=true;
                                    setState(() {


                                      keys?.removeAt(i);
                                      upDate.removeAt(i);
                                      upDateButton.removeAt(i);
                                      keyListTextEditingController.removeAt(i);
                                      valueListTextEditingController.removeAt(i);
                                      productDetails = ProductFeatures(
                                          name: heading.text, keyValues: keys);
                                      // productDetails[i]=productDetails[i].copyWith(keyValues: keys);
                                      widget.productTableEdit(
                                          type: "3", list: productDetails);
                                    });
                                  },
                                  icon: Icons.delete,
                                  label: "",
                                )

                              ],
                            ),
                          ),
                        ),



                        // TableTextButton(
                        //   textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                        //   buttonBagroundColor:upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                        //   bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Colors.transparent,
                        //   onPress: () {
                        //     onChange=true;
                        //     setState(() {
                        //
                        //
                        //       keys?.removeAt(i);
                        //       upDate.removeAt(i);
                        //       upDateButton.removeAt(i);
                        //       keyListTextEditingController.removeAt(i);
                        //       valueListTextEditingController.removeAt(i);
                        //       productDetails = ProductFeatures(
                        //           name: heading.text, keyValues: keys);
                        //       // productDetails[i]=productDetails[i].copyWith(keyValues: keys);
                        //       widget.productTableEdit(
                        //           type: "2", list: productDetails);
                        //     });
                        //   },
                        //   icon: Icons.delete,
                        //   label: "",
                        // )


                      ])
              ],
              TableRow(
                  decoration: BoxDecoration(
                      color: Pellet.tableRowColor,
                      shape: BoxShape.rectangle,
                      border:  Border(
                          left: BorderSide(

                              color:  Color(0xff3E4F5B).withOpacity(.1),
                              style: BorderStyle.solid),
                          bottom: BorderSide(

                              color: Color(0xff3E4F5B).withOpacity(.1),
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Color(0xff3E4F5B).withOpacity(.1),

                              style: BorderStyle.solid))),
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        controller: key,
                        onChanged: (va) {
                          saveButtonActovde(key.text,value.text);
                          // key.text = va;
                        },
                        formatter: false,
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        controller: value,
                        onChanged: (va) {
                          saveButtonActovde(key.text,value.text);
                          // value.text = va;
                        },
                        formatter: false,
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: TableTextButton(
                          buttonBagroundColor:onSaveActive?Pellet.bagroundColor:Colors.transparent,
                          textColor:onSaveActive?Pellet.bagroundColor:Colors.black,
                          bagroundColor: onSaveActive?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),

                          label: "Save",
                          onPress: () {
                            onChange = true;
                            if (key.text.isNotEmpty && value.text.isNotEmpty) {
                              Keys model = Keys(
                                key: key.text ?? "",
                                value: value.text ?? '',
                              );
                              print(model);
                              setState(() {
                                keys?.add(model);

                                upDate.add(false);
                                upDateButton.add(false);
                                var keyValue = new TextEditingController(text: key.text);
                                var valValue = new TextEditingController(text: value.text);

                                keyListTextEditingController.add(keyValue);
                                valueListTextEditingController.add(valValue);

                                productDetails = ProductFeatures(
                                    name: heading.text, keyValues: keys);
                                widget.productTableEdit(
                                    type: "3", list: productDetails);
                                key.text = "";
                                value.text = "";
                                onSaveActive=false;
                              });
                            }
                          }),
                    )  ,


                  ]),
            ],
            widths: {
              0: FlexColumnWidth(5),
              1: FlexColumnWidth(5),
              2: FlexColumnWidth(1.5),

            },
          ),
        ),
      ],
    );
  }
}

class NeutrialFacts extends StatefulWidget {
  ProductFeatures? nutriantsFacts;
  final Function productTableEdit;
  NeutrialFacts({required this.nutriantsFacts, required this.productTableEdit});
  @override
  NeutrialFactsState createState() => NeutrialFactsState();
}

class NeutrialFactsState extends State<NeutrialFacts> {
  TextEditingController key = TextEditingController();
  TextEditingController value = TextEditingController();
  TextEditingController heading = TextEditingController();
  List<bool>upDate=[];
  List<bool>upDateButton=[];

  List<TextEditingController> keyListTextEditingController = [];
  List<TextEditingController> valueListTextEditingController = [];
  bool onChange = false;
  bool onSaveActive = false;


  saveButtonActovde(String key,String val){
    print(key);
    print(val);
    onChange=true;
    if(key!="" && val!=""){
      setState(() {
        onSaveActive=true;
      });
    }
    else{
      setState(() {
        onSaveActive=false;
      });

    }
  }
  ProductFeatures? productDetails;
  List<Keys> keys = [];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    if (!onChange) {
      setState(() {
        keys = [];
        upDate.clear();
        onSaveActive=false;
        upDateButton.clear();
        keyListTextEditingController.clear();
        valueListTextEditingController.clear();



      });

      productDetails = widget.nutriantsFacts;
      heading =
          TextEditingController(text: productDetails?.name ?? "");
      if (productDetails?.keyValues?.isNotEmpty == true) {
        keys = productDetails?.keyValues ?? [];

        for( var i =0;i<keys.length;i++){
          upDate.add(false);
          upDateButton.add(false);

          var keyValue = new TextEditingController(text: keys[i].key==null?"":keys[i].key);
          keyListTextEditingController.add(keyValue);
          var valueValue = new TextEditingController(text: keys[i].value==null?"":keys[i].value);
          valueListTextEditingController.add(valueValue);
        }


      }
    }
    onChange = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        underlineTextForm(
          controller: heading,
          onChange: (va) {
            print(va);
            print(va);
            productDetails = ProductFeatures(name: va,keyValues: keys);
            widget.productTableEdit(
                type: "4", list: productDetails);
          },
        ),
        Container(
          // width: w/7,
          margin: EdgeInsets.symmetric(horizontal: w * .02),
          child: customTable(
            border:  TableBorder(
              verticalInside: BorderSide(
                  width: .5, color:   Color(0xff3E4F5B).withOpacity(.1), style: BorderStyle.solid),
              horizontalInside: BorderSide(
                  width: .3,
                  color:   Color(0xff3E4F5B).withOpacity(.1),
                  // color: Colors.blue,
                  style: BorderStyle.solid),
            ),
            tableWidth: .5,
            childrens: [
              TableRow(
                // decoration: BoxDecoration(

                //     color: Colors.green.shade200,

                //     shape: BoxShape.rectangle,

                //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                children: [
                  tableHeadtext(
                    'Nutinats Facts',

                    padding: EdgeInsets.only(left: 13,top: 13),

                    height: 41,
                    textColor: Colors.white,
                    // color: Color(0xffE5E5E5),

                    size: 13,
                  ),
                  tableHeadtext(
                    'Description',
                    textColor: Colors.white,
                    padding: EdgeInsets.only(left: 13,top: 13),
                    height: 41,
                    size: 13,
                    // color: Color(0xffE5E5E5),
                  ),
                  tableHeadtext(
                    '',
                    textColor: Colors.white,
                    padding: EdgeInsets.only(left: 13,top: 13),
                    height: 41,
                    size: 13,
                    // color: Color(0xffE5E5E5),
                  ),

                ],
              ),
              if (keys?.isNotEmpty == true) ...[
                for (var i = 0; i < keys.length; i++)
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
                          child:
                          // Text(keys[i].key??"")
                          UnderLinedInput(
                            readOnly: !upDate[i],
                            filledColour: upDate[i]?Colors.white:Colors.transparent,
                            // last: keys[i].key ?? "",
                            // initialCheck: true,
                            // controller: TextEditingController(text:keys[i].key ?? "" ),
                            controller: keyListTextEditingController[i],
                            formatter: false,
                            onChanged: (va) {
                              onChange=true;
                              setState(() {
                                upDateButton[i]=true;
                              });


                              print(va);
                              keys[i] = keys[i].copyWith(
                                key: va,
                              );
                              productDetails = ProductFeatures(
                                  name: heading.text, keyValues: keys);
                              // productDetails[i]=productDetails[i].copyWith(keyValues: keys);

                            },
                          ),
                        ),

                        TableCell(
                            verticalAlignment:
                            TableCellVerticalAlignment.middle,
                            child:
                            // Text(keys[i].value??"",)
                            UnderLinedInput(
                              readOnly: !upDate[i],
                              filledColour: upDate[i]?Colors.white:Colors.transparent,
                              // initialCheck: true,
                              // last: keys[i].value ?? "" ?? "",
                              controller: valueListTextEditingController[i],
                              formatter: false,
                              onChanged: (va) {
                                onChange=true;
                                setState(() {
                                  upDateButton[i]=true;
                                });
                                print(va);
                                keys[i] = keys[i].copyWith(value: va);
                                productDetails = ProductFeatures(
                                    name: heading.text, keyValues: keys);
                                // productDetails[i]=productDetails[i].copyWith(keyValues: keys);

                              },
                            )),
                        TableCell(
                          verticalAlignment:
                          TableCellVerticalAlignment.middle,
                          child: Container(
                            // margin: EdgeInsets.symmetric(horizontal:5),

                            child: Row(
                              children: [
                                TableTextButton(
                                  buttonBagroundColor: upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                                  textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                                  bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),
                                  label: upDateButton[i]==true?"Update":"Edit",

                                  // icon: upDate[i]==true?Icons.coronavirus_rounded:null,

                                  onPress: () {
                                    onChange=true;


                                    setState(() {
                                      upDate[i]=!upDate[i];

                                      if( upDateButton[i]==true){
                                        widget.productTableEdit(
                                            type: "4", list: productDetails);
                                        upDateButton[i]=false;





                                      }


                                    });
                                    setState(() {

                                    });

                                  },
                                ),
                                SizedBox(width: 3,),


                                TableIconTextButton(

                                  // textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                                  // buttonBagroundColor:upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                                  // bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Colors.transparent,
                                  onPress: () {
                                    onChange=true;
                                    setState(() {


                                      keys?.removeAt(i);
                                      upDate.removeAt(i);
                                      upDateButton.removeAt(i);
                                      keyListTextEditingController.removeAt(i);
                                      valueListTextEditingController.removeAt(i);
                                      productDetails = ProductFeatures(
                                          name: heading.text, keyValues: keys);
                                      // productDetails[i]=productDetails[i].copyWith(keyValues: keys);
                                      widget.productTableEdit(
                                          type: "4", list: productDetails);
                                    });
                                  },
                                  icon: Icons.delete,
                                  label: "",
                                )

                              ],
                            ),
                          ),
                        ),



                        // TableTextButton(
                        //   textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                        //   buttonBagroundColor:upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                        //   bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Colors.transparent,
                        //   onPress: () {
                        //     onChange=true;
                        //     setState(() {
                        //
                        //
                        //       keys?.removeAt(i);
                        //       upDate.removeAt(i);
                        //       upDateButton.removeAt(i);
                        //       keyListTextEditingController.removeAt(i);
                        //       valueListTextEditingController.removeAt(i);
                        //       productDetails = ProductFeatures(
                        //           name: heading.text, keyValues: keys);
                        //       // productDetails[i]=productDetails[i].copyWith(keyValues: keys);
                        //       widget.productTableEdit(
                        //           type: "2", list: productDetails);
                        //     });
                        //   },
                        //   icon: Icons.delete,
                        //   label: "",
                        // )


                      ])
              ],
              TableRow(
                  decoration: BoxDecoration(
                      color: Pellet.tableRowColor,
                      shape: BoxShape.rectangle,
                      border:  Border(
                          left: BorderSide(

                              color:  Color(0xff3E4F5B).withOpacity(.1),
                              style: BorderStyle.solid),
                          bottom: BorderSide(

                              color: Color(0xff3E4F5B).withOpacity(.1),
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Color(0xff3E4F5B).withOpacity(.1),

                              style: BorderStyle.solid))),
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        controller: key,
                        onChanged: (va) {
                          saveButtonActovde(key.text,value.text);
                          // key.text = va;
                        },
                        formatter: false,
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        controller: value,
                        onChanged: (va) {
                          saveButtonActovde(key.text,value.text);
                          // value.text = va;
                        },
                        formatter: false,
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: TableTextButton(
                          buttonBagroundColor:onSaveActive?Pellet.bagroundColor:Colors.transparent,
                          textColor:onSaveActive?Pellet.bagroundColor:Colors.black,
                          bagroundColor: onSaveActive?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),

                          label: "Save",
                          onPress: () {
                            onChange = true;
                            if (key.text.isNotEmpty && value.text.isNotEmpty) {
                              Keys model = Keys(
                                key: key.text ?? "",
                                value: value.text ?? '',
                              );
                              print(model);
                              setState(() {
                                keys?.add(model);

                                upDate.add(false);
                                upDateButton.add(false);
                                var keyValue = new TextEditingController(text: key.text);
                                var valValue = new TextEditingController(text: value.text);

                                keyListTextEditingController.add(keyValue);
                                valueListTextEditingController.add(valValue);

                                productDetails = ProductFeatures(
                                    name: heading.text, keyValues: keys);
                                widget.productTableEdit(
                                    type: "4", list: productDetails);
                                key.text = "";
                                value.text = "";
                                onSaveActive=false;
                              });
                            }
                          }),
                    )  ,


                  ]),
            ],
            widths: {
              0: FlexColumnWidth(5),
              1: FlexColumnWidth(5),
              2: FlexColumnWidth(1.5),

            },
          ),
        ),
      ],
    );
  }
}

class Ingredians extends StatefulWidget {
  Storage? ingredians;
  final Function storageTableEdit;
  Ingredians({required this.ingredians, required this.storageTableEdit});
  @override
  IngrediansState createState() => IngrediansState();
}

class IngrediansState extends State<Ingredians> {
  TextEditingController name = TextEditingController();
  var nameListControllers = <TextEditingController>[];
  TextEditingController key = TextEditingController();
  TextEditingController headingController = TextEditingController();
  TextEditingController newNameController = TextEditingController();
  List<bool>upDate=[];

  List<bool>upDateButton=[];

  List<TextEditingController> nameListTextEditingController = [];
  bool onChange = false;
  Storage? aboutProducts;
  List<dynamic> keys = [];
  bool onSaveActive = false;
  saveButtonActovde(String name){
    print(key);

    onChange=true;
    if(name!="" ){
      setState(() {
        onSaveActive=true;
      });
    }
    else{
      setState(() {
        onSaveActive=false;
      });

    }
  }


  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    if (!onChange) {

      setState(() {
        nameListTextEditingController.clear();
        nameListControllers.clear();
        upDateButton.clear();
        keys =[] ;
        nameListTextEditingController.clear();
      });

      setState(() {
        headingController.text =
       widget.ingredians?.name ?? "";
      });
      aboutProducts = widget.ingredians;
      if (aboutProducts?.keyValues?.isNotEmpty == true) {
        keys = aboutProducts?.keyValues ?? [];
        for( var i =0;i<keys.length;i++){
          upDate.add(false);
          upDateButton.add(false);

          var nameValue = new TextEditingController(text: keys[i]["name"]==null?"":keys[i]["name"]);
          nameListTextEditingController.add(nameValue);
        }

      }
    }
    print("keysssssssssssssssssssss"+keys.toString());
    onChange = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        underlineTextForm(
          controller: headingController,
          onChange: (va) {
            print(va);
            aboutProducts = Storage(name: va,keyValues: keys);
            widget.storageTableEdit(
                type: "2", list: aboutProducts);
          },
        ),
        Container(
          // width: w/7,
          margin: EdgeInsets.symmetric(horizontal: w * .02),
          child: customTable(
            border: const TableBorder(
              verticalInside: BorderSide(
                  width: .5, color: Colors.black45, style: BorderStyle.solid),
              horizontalInside: BorderSide(
                  width: .3,
                  color: Colors.black45,
                  // color: Colors.blue,
                  style: BorderStyle.solid),
            ),
            tableWidth: .5,
            childrens: [
              TableRow(
                // decoration: BoxDecoration(

                //     color: Colors.green.shade200,

                //     shape: BoxShape.rectangle,

                //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                children: [
                  tableHeadtext(
                    'Ingrediants',
                    padding: EdgeInsets.only(left: 13,top: 13),
                    height: 41,
                    textColor: Colors.white,
                    size: 13,
                  ),
                  tableHeadtext(
                    '',
                    padding: EdgeInsets.only(left: 13,top: 13),
                    height: 41,
                    textColor: Colors.white,
                    size: 13,
                  ),

                ],
              ),
              if (keys?.isNotEmpty == true) ...[
                for (var i = 0; i < keys!.length; i++)
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
                          child:
                          // Text(keys?[i]["name"]??"")
                          UnderLinedInput(
                            readOnly: !upDate[i],
                            filledColour: upDate[i]?Colors.white:Colors.transparent,
                            formatter: false,
                            controller: nameListTextEditingController[i],
                            onChanged: (va) {
                              onChange=true;
                              setState(() {

                                upDateButton[i]=true;



                                keys[i]["name"] = va;
                                aboutProducts = Storage(
                                    name: headingController.text, keyValues: keys);


                              });

                              print(va);


                              print(keys);
                            },
                          ),
                        ),

                        TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Row(
                              children: [
                                TableTextButton(
                                  buttonBagroundColor: upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                                  textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                                  bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),
                                  label: upDateButton[i]==true?"Update":"Edit",
                                  // icon: upDate[i]==true?Icons.coronavirus_rounded:null,

                                  onPress: () {


                                    setState(() {
                                      upDate[i]=!upDate[i];
                                      if( upDate[i]==true){
                                        widget.storageTableEdit(
                                            type: "2", list: aboutProducts);
                                        upDateButton[i]=false;
                                      }


                                    });
                                    setState(() {

                                    });

                                  },
                                ),
                                TableIconTextButton(
                                  label: "",
                                  icon: Icons.delete,
                                  onPress: () {
                                    onChange=true;

                                    setState(() {

                                      print(keys);
                                      print(i);


                                      keys?.removeAt(i);
                                      upDate.removeAt(i);
                                      nameListTextEditingController.removeAt(i);

                                      print(keys);

                                      aboutProducts = Storage(
                                          name: headingController.text, keyValues: keys);
                                      widget.storageTableEdit(
                                          type: "2", list: aboutProducts);
                                    });
                                    setState(() {

                                    });

                                  },
                                ),

                              ],
                            )),


                      ]),
              ],
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
                      child: UnderLinedInput(
                        controller:name,
                        initialCheck: false,
                        formatter: false,
                        onChanged: (va) {
                          print(va);
                          onChange=true;

                          saveButtonActovde(name.text);
                          setState(() {});
                        },
                      ),

                      // UnderLinedInput(
                      //   formatter: false,
                      // ),

                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: TableTextButton(
                        label: "Save",
                        buttonBagroundColor:onSaveActive?Pellet.bagroundColor:Colors.transparent,
                        textColor:onSaveActive?Pellet.bagroundColor:Colors.black,
                        bagroundColor: onSaveActive?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),
                        onPress: () {
                          onChange = true;

                          setState(() {
                            if (name.text.isNotEmpty == true) {
                              Map map = {
                                "name": name.text,
                              };
                              nameListTextEditingController
                                  .add(TextEditingController(text: name.text));
                              keys.add(map);
                              print(keys);

                              print(keys);
                              print("attata+" + aboutProducts.toString());
                              upDate.add(false);
                              upDateButton.add(false);
                              var nameValue = new TextEditingController(text: newNameController.text);

                              nameListControllers.add(nameValue);

                              aboutProducts = Storage(
                                  name: headingController.text, keyValues: keys);
                              widget.storageTableEdit(
                                  type: "2", list: aboutProducts);
                              name.text = "";
                              onSaveActive=false;
                            }
                          });
                        },
                      ),
                    ),

                  ])
            ],
            widths: {
              0: FlexColumnWidth(5),
              1: FlexColumnWidth(.8),
            },
          ),
        ),
      ],
    );
  }
}

class UsageDirection extends StatefulWidget {
  final Storage? usageDirection;
  final Function storageTableEdit;
  UsageDirection(
      {required this.usageDirection, required this.storageTableEdit});
  @override
  _UsageDirectionState createState() => _UsageDirectionState();
}

class _UsageDirectionState extends State<UsageDirection> {
  TextEditingController name = TextEditingController();
  var nameListControllers = <TextEditingController>[];
  TextEditingController key = TextEditingController();
  TextEditingController headingController = TextEditingController();
  TextEditingController newNameController = TextEditingController();
  List<bool>upDate=[];

  List<bool>upDateButton=[];

  List<TextEditingController> nameListTextEditingController = [];
  bool onChange = false;
  Storage? aboutProducts;
  List<dynamic> keys = [];
  bool onSaveActive = false;
  saveButtonActovde(String name){
    print(key);

    onChange=true;
    if(name!="" ){
      setState(() {
        onSaveActive=true;
      });
    }
    else{
      setState(() {
        onSaveActive=false;
      });

    }
  }


  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    if (!onChange) {

      setState(() {
        nameListTextEditingController.clear();
        nameListControllers.clear();
        upDateButton.clear();
        keys =[] ;
        nameListTextEditingController.clear();
      });

      setState(() {
        headingController.text = widget.usageDirection?.name ?? "";
      });
      aboutProducts = widget.usageDirection;
      if (aboutProducts?.keyValues?.isNotEmpty == true) {
        keys = aboutProducts?.keyValues ?? [];
        for( var i =0;i<keys.length;i++){
          upDate.add(false);
          upDateButton.add(false);

          var nameValue = new TextEditingController(text: keys[i]["name"]==null?"":keys[i]["name"]);
          nameListTextEditingController.add(nameValue);
        }

      }
    }
    print("keysssssssssssssssssssss"+keys.toString());
    onChange = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        underlineTextForm(
          controller: headingController,
          onChange: (va) {
            print(va);
            aboutProducts = Storage(name: va,keyValues: keys);
            widget.storageTableEdit(
                type: "3", list: aboutProducts);
          },
        ),
        Container(
          // width: w/7,
          margin: EdgeInsets.symmetric(horizontal: w * .02),
          child: customTable(
            border: const TableBorder(
              verticalInside: BorderSide(
                  width: .5, color: Colors.black45, style: BorderStyle.solid),
              horizontalInside: BorderSide(
                  width: .3,
                  color: Colors.black45,
                  // color: Colors.blue,
                  style: BorderStyle.solid),
            ),
            tableWidth: .5,
            childrens: [
              TableRow(
                // decoration: BoxDecoration(

                //     color: Colors.green.shade200,

                //     shape: BoxShape.rectangle,

                //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                children: [
                  tableHeadtext(
                    'Usage Direction',
                    padding: EdgeInsets.only(left: 13,top: 13),
                    height: 41,
                    textColor: Colors.white,
                    size: 13,
                  ),
                  tableHeadtext(
                    '',
                    padding: EdgeInsets.only(left: 13,top: 13),
                    height: 41,
                    textColor: Colors.white,
                    size: 13,
                  ),

                ],
              ),
              if (keys?.isNotEmpty == true) ...[
                for (var i = 0; i < keys!.length; i++)
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
                          child:
                          // Text(keys?[i]["name"]??"")
                          UnderLinedInput(
                            readOnly: !upDate[i],
                            filledColour: upDate[i]?Colors.white:Colors.transparent,
                            formatter: false,
                            controller: nameListTextEditingController[i],
                            onChanged: (va) {
                              onChange=true;
                              setState(() {

                                upDateButton[i]=true;



                                keys[i]["name"] = va;
                                aboutProducts = Storage(
                                    name: headingController.text, keyValues: keys);


                              });

                              print(va);


                              print(keys);
                            },
                          ),
                        ),

                        TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Row(
                              children: [
                                TableTextButton(
                                  buttonBagroundColor: upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                                  textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                                  bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),
                                  label: upDateButton[i]==true?"Update":"Edit",
                                  // icon: upDate[i]==true?Icons.coronavirus_rounded:null,

                                  onPress: () {


                                    setState(() {
                                      upDate[i]=!upDate[i];
                                      if( upDate[i]==true){
                                        widget.storageTableEdit(
                                            type: "3", list: aboutProducts);
                                        upDateButton[i]=false;
                                      }


                                    });
                                    setState(() {

                                    });

                                  },
                                ),
                                TableIconTextButton(
                                  label: "",
                                  icon: Icons.delete,
                                  onPress: () {
                                    onChange=true;

                                    setState(() {

                                      print(keys);
                                      print(i);


                                      keys?.removeAt(i);
                                      upDate.removeAt(i);
                                      nameListTextEditingController.removeAt(i);

                                      print(keys);

                                      aboutProducts = Storage(
                                          name: headingController.text, keyValues: keys);
                                      widget.storageTableEdit(
                                          type: "3", list: aboutProducts);
                                    });
                                    setState(() {

                                    });

                                  },
                                ),

                              ],
                            )),


                      ]),
              ],
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
                      child: UnderLinedInput(
                        controller:name,
                        initialCheck: false,
                        formatter: false,
                        onChanged: (va) {
                          print(va);
                          onChange=true;

                          saveButtonActovde(name.text);
                          setState(() {});
                        },
                      ),

                      // UnderLinedInput(
                      //   formatter: false,
                      // ),

                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: TableTextButton(
                        label: "Save",
                        buttonBagroundColor:onSaveActive?Pellet.bagroundColor:Colors.transparent,
                        textColor:onSaveActive?Pellet.bagroundColor:Colors.black,
                        bagroundColor: onSaveActive?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),
                        onPress: () {
                          onChange = true;

                          setState(() {
                            if (name.text.isNotEmpty == true) {
                              Map map = {
                                "name": name.text,
                              };
                              nameListTextEditingController
                                  .add(TextEditingController(text: name.text));
                              keys.add(map);
                              print(keys);

                              print(keys);
                              print("attata+" + aboutProducts.toString());
                              upDate.add(false);
                              upDateButton.add(false);
                              var nameValue = new TextEditingController(text: newNameController.text);

                              nameListControllers.add(nameValue);

                              aboutProducts = Storage(
                                  name: headingController.text, keyValues: keys);
                              widget.storageTableEdit(
                                  type: "3", list: aboutProducts);
                              name.text = "";
                              onSaveActive=false;
                            }
                          });
                        },
                      ),
                    ),

                  ])
            ],
            widths: {
              0: FlexColumnWidth(5),
              1: FlexColumnWidth(.8),
            },
          ),
        ),
      ],
    );
  }
}

class StoragesWidget extends StatefulWidget {
  final Storage? storage;
  final Function storageTableEdit;
  StoragesWidget({required this.storage, required this.storageTableEdit});
  @override
  _StoragesWidgetState createState() => _StoragesWidgetState();
}

class _StoragesWidgetState extends State<StoragesWidget> {
  TextEditingController name = TextEditingController();
  var nameListControllers = <TextEditingController>[];
  TextEditingController key = TextEditingController();
  TextEditingController headingController = TextEditingController();
  TextEditingController newNameController = TextEditingController();
  List<bool>upDate=[];

  List<bool>upDateButton=[];

  List<TextEditingController> nameListTextEditingController = [];
  bool onChange = false;
  Storage? aboutProducts;
  List<dynamic> keys = [];
  bool onSaveActive = false;
  saveButtonActovde(String name){
    print(key);

    onChange=true;
    if(name!="" ){
      setState(() {
        onSaveActive=true;
      });
    }
    else{
      setState(() {
        onSaveActive=false;
      });

    }
  }


  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    if (!onChange) {

      setState(() {
        nameListTextEditingController.clear();
        nameListControllers.clear();
        upDateButton.clear();
        keys =[] ;
        nameListTextEditingController.clear();
      });

      setState(() {
        headingController.text = widget.storage?.name ?? "";
      });
      aboutProducts = widget.storage;
      if (aboutProducts?.keyValues?.isNotEmpty == true) {
        keys = aboutProducts?.keyValues ?? [];
        for( var i =0;i<keys.length;i++){
          upDate.add(false);
          upDateButton.add(false);

          var nameValue = new TextEditingController(text: keys[i]["name"]==null?"":keys[i]["name"]);
          nameListTextEditingController.add(nameValue);
        }

      }
    }
    print("keysssssssssssssssssssss"+keys.toString());
    onChange = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        underlineTextForm(
          controller: headingController,
          onChange: (va) {
            print(va);
            aboutProducts = Storage(name: va,keyValues: keys);
            widget.storageTableEdit(
                type: "4", list: aboutProducts);
          },
        ),
        Container(
          // width: w/7,
          margin: EdgeInsets.symmetric(horizontal: w * .02),
          child: customTable(
            border: const TableBorder(
              verticalInside: BorderSide(
                  width: .5, color: Colors.black45, style: BorderStyle.solid),
              horizontalInside: BorderSide(
                  width: .3,
                  color: Colors.black45,
                  // color: Colors.blue,
                  style: BorderStyle.solid),
            ),
            tableWidth: .5,
            childrens: [
              TableRow(
                // decoration: BoxDecoration(

                //     color: Colors.green.shade200,

                //     shape: BoxShape.rectangle,

                //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                children: [
                  tableHeadtext(
                    'Storage',
                    padding: EdgeInsets.only(left: 13,top: 13),
                    height: 41,
                    textColor: Colors.white,
                    size: 13,
                  ),
                  tableHeadtext(
                    '',
                    padding: EdgeInsets.only(left: 13,top: 13),
                    height: 41,
                    textColor: Colors.white,
                    size: 13,
                  ),

                ],
              ),
              if (keys?.isNotEmpty == true) ...[
                for (var i = 0; i < keys!.length; i++)
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
                          child:
                          // Text(keys?[i]["name"]??"")
                          UnderLinedInput(
                            readOnly: !upDate[i],
                            filledColour: upDate[i]?Colors.white:Colors.transparent,
                            formatter: false,
                            controller: nameListTextEditingController[i],
                            onChanged: (va) {
                              onChange=true;
                              setState(() {

                                upDateButton[i]=true;



                                keys[i]["name"] = va;
                                aboutProducts = Storage(
                                    name: headingController.text, keyValues: keys);


                              });

                              print(va);


                              print(keys);
                            },
                          ),
                        ),

                        TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Row(
                              children: [
                                TableTextButton(
                                  buttonBagroundColor: upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                                  textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                                  bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),
                                  label: upDateButton[i]==true?"Update":"Edit",
                                  // icon: upDate[i]==true?Icons.coronavirus_rounded:null,

                                  onPress: () {


                                    setState(() {
                                      upDate[i]=!upDate[i];
                                      if( upDate[i]==true){
                                        widget.storageTableEdit(
                                            type: "4", list: aboutProducts);
                                        upDateButton[i]=false;
                                      }


                                    });
                                    setState(() {

                                    });

                                  },
                                ),
                                TableIconTextButton(
                                  label: "",
                                  icon: Icons.delete,
                                  onPress: () {
                                    onChange=true;

                                    setState(() {

                                      print(keys);
                                      print(i);


                                      keys?.removeAt(i);
                                      upDate.removeAt(i);
                                      nameListTextEditingController.removeAt(i);

                                      print(keys);

                                      aboutProducts = Storage(
                                          name: headingController.text, keyValues: keys);
                                      widget.storageTableEdit(
                                          type: "4", list: aboutProducts);
                                    });
                                    setState(() {

                                    });

                                  },
                                ),

                              ],
                            )),


                      ]),
              ],
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
                      child: UnderLinedInput(
                        controller:name,
                        initialCheck: false,
                        formatter: false,
                        onChanged: (va) {
                          print(va);
                          onChange=true;

                          saveButtonActovde(name.text);
                          setState(() {});
                        },
                      ),

                      // UnderLinedInput(
                      //   formatter: false,
                      // ),

                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: TableTextButton(
                        label: "Save",
                        buttonBagroundColor:onSaveActive?Pellet.bagroundColor:Colors.transparent,
                        textColor:onSaveActive?Pellet.bagroundColor:Colors.black,
                        bagroundColor: onSaveActive?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),
                        onPress: () {
                          onChange = true;
                          setState(() {
                            if (name.text.isNotEmpty == true) {
                              Map map = {
                                "name": name.text,
                              };
                              nameListTextEditingController
                                  .add(TextEditingController(text: name.text));
                              keys.add(map);
                              print(keys);

                              print(keys);
                              print("attata+" + aboutProducts.toString());
                              upDate.add(false);
                              upDateButton.add(false);
                              var nameValue = new TextEditingController(text: newNameController.text);

                              nameListControllers.add(nameValue);

                              aboutProducts = Storage(
                                  name: headingController.text, keyValues: keys);
                              widget.storageTableEdit(
                                  type: "4", list: aboutProducts);
                              name.text = "";
                              onSaveActive=false;
                            }
                          });
                        },
                      ),
                    ),

                  ])
            ],
            widths: {
              0: FlexColumnWidth(5),
              1: FlexColumnWidth(.8),
            },
          ),
        ),
      ],
    );
  }
}

class ImportantInfo extends StatefulWidget {
  final ProductFeatures? importantInfo;
  final Function productTableEdit;
  ImportantInfo({this.importantInfo, required this.productTableEdit});

  @override
  _ImportantInfoState createState() => _ImportantInfoState();
}

class _ImportantInfoState extends State<ImportantInfo> {
  TextEditingController key = TextEditingController();
  TextEditingController value = TextEditingController();
  TextEditingController heading = TextEditingController();
  List<bool>upDate=[];
  List<bool>upDateButton=[];

  List<TextEditingController> keyListTextEditingController = [];
  List<TextEditingController> valueListTextEditingController = [];
  bool onChange = false;
  bool onSaveActive = false;


  saveButtonActovde(String key,String val){
    print(key);
    print(val);
    onChange=true;
    if(key!="" && val!=""){
      setState(() {
        onSaveActive=true;
      });
    }
    else{
      setState(() {
        onSaveActive=false;
      });

    }
  }
  ProductFeatures? productDetails;
  List<Keys> keys = [];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    if (!onChange) {
      setState(() {
        keys = [];
        upDate.clear();
        onSaveActive=false;
        upDateButton.clear();
        keyListTextEditingController.clear();
        valueListTextEditingController.clear();



      });

      productDetails = widget.importantInfo;
      heading =
          TextEditingController(text: productDetails?.name ?? "");
      if (productDetails?.keyValues?.isNotEmpty == true) {
        keys = productDetails?.keyValues ?? [];

        for( var i =0;i<keys.length;i++){
          upDate.add(false);
          upDateButton.add(false);

          var keyValue = new TextEditingController(text: keys[i].key==null?"":keys[i].key);
          keyListTextEditingController.add(keyValue);
          var valueValue = new TextEditingController(text: keys[i].value==null?"":keys[i].value);
          valueListTextEditingController.add(valueValue);
        }


      }
    }
    onChange = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        underlineTextForm(
          controller: heading,
          onChange: (va) {
            print(va);
            print(va);
            productDetails = ProductFeatures(name: va,keyValues: keys);
            widget.productTableEdit(
                type: "5", list: productDetails);
          },
        ),
        Container(
          // width: w/7,
          margin: EdgeInsets.symmetric(horizontal: w * .02),
          child: customTable(
            border:  TableBorder(
              verticalInside: BorderSide(
                  width: .5, color:   Color(0xff3E4F5B).withOpacity(.1), style: BorderStyle.solid),
              horizontalInside: BorderSide(
                  width: .3,
                  color:   Color(0xff3E4F5B).withOpacity(.1),
                  // color: Colors.blue,
                  style: BorderStyle.solid),
            ),
            tableWidth: .5,
            childrens: [
              TableRow(
                // decoration: BoxDecoration(

                //     color: Colors.green.shade200,

                //     shape: BoxShape.rectangle,

                //     border: const Border(bottom: BorderSide(color: Colors.grey))),

                children: [
                  tableHeadtext(
                    'Important Info',

                    padding: EdgeInsets.only(left: 13,top: 13),

                    height: 41,
                    textColor: Colors.white,
                    // color: Color(0xffE5E5E5),

                    size: 13,
                  ),
                  tableHeadtext(
                    'Description',
                    textColor: Colors.white,
                    padding: EdgeInsets.only(left: 13,top: 13),
                    height: 41,
                    size: 13,
                    // color: Color(0xffE5E5E5),
                  ),
                  tableHeadtext(
                    '',
                    textColor: Colors.white,
                    padding: EdgeInsets.only(left: 13,top: 13),
                    height: 41,
                    size: 13,
                    // color: Color(0xffE5E5E5),
                  ),

                ],
              ),
              if (keys?.isNotEmpty == true) ...[
                for (var i = 0; i < keys.length; i++)
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
                          child:
                          // Text(keys[i].key??"")
                          UnderLinedInput(
                            readOnly: !upDate[i],
                            filledColour: upDate[i]?Colors.white:Colors.transparent,
                            // last: keys[i].key ?? "",
                            // initialCheck: true,
                            // controller: TextEditingController(text:keys[i].key ?? "" ),
                            controller: keyListTextEditingController[i],
                            formatter: false,
                            onChanged: (va) {
                              onChange=true;
                              setState(() {
                                upDateButton[i]=true;
                              });


                              print(va);
                              keys[i] = keys[i].copyWith(
                                key: va,
                              );
                              productDetails = ProductFeatures(
                                  name: heading.text, keyValues: keys);
                              // productDetails[i]=productDetails[i].copyWith(keyValues: keys);

                            },
                          ),
                        ),

                        TableCell(
                            verticalAlignment:
                            TableCellVerticalAlignment.middle,
                            child:
                            // Text(keys[i].value??"",)
                            UnderLinedInput(
                              readOnly: !upDate[i],
                              filledColour: upDate[i]?Colors.white:Colors.transparent,
                              // initialCheck: true,
                              // last: keys[i].value ?? "" ?? "",
                              controller: valueListTextEditingController[i],
                              formatter: false,
                              onChanged: (va) {
                                onChange=true;
                                setState(() {
                                  upDateButton[i]=true;
                                });
                                print(va);
                                keys[i] = keys[i].copyWith(value: va);
                                productDetails = ProductFeatures(
                                    name: heading.text, keyValues: keys);
                                // productDetails[i]=productDetails[i].copyWith(keyValues: keys);

                              },
                            )),
                        TableCell(
                          verticalAlignment:
                          TableCellVerticalAlignment.middle,
                          child: Container(
                            // margin: EdgeInsets.symmetric(horizontal:5),

                            child: Row(
                              children: [
                                TableTextButton(
                                  buttonBagroundColor: upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                                  textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                                  bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),
                                  label: upDateButton[i]==true?"Update":"Edit",

                                  // icon: upDate[i]==true?Icons.coronavirus_rounded:null,

                                  onPress: () {
                                    onChange=true;


                                    setState(() {
                                      upDate[i]=!upDate[i];

                                      if( upDateButton[i]==true){
                                        widget.productTableEdit(
                                            type: "5", list: productDetails);
                                        upDateButton[i]=false;





                                      }


                                    });
                                    setState(() {

                                    });

                                  },
                                ),
                                SizedBox(width: 3,),


                                TableIconTextButton(

                                  // textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                                  // buttonBagroundColor:upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                                  // bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Colors.transparent,
                                  onPress: () {
                                    onChange=true;
                                    setState(() {


                                      keys?.removeAt(i);
                                      upDate.removeAt(i);
                                      upDateButton.removeAt(i);
                                      keyListTextEditingController.removeAt(i);
                                      valueListTextEditingController.removeAt(i);
                                      productDetails = ProductFeatures(
                                          name: heading.text, keyValues: keys);
                                      // productDetails[i]=productDetails[i].copyWith(keyValues: keys);
                                      widget.productTableEdit(
                                          type: "5", list: productDetails);
                                    });
                                  },
                                  icon: Icons.delete,
                                  label: "",
                                )

                              ],
                            ),
                          ),
                        ),



                        // TableTextButton(
                        //   textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                        //   buttonBagroundColor:upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                        //   bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Colors.transparent,
                        //   onPress: () {
                        //     onChange=true;
                        //     setState(() {
                        //
                        //
                        //       keys?.removeAt(i);
                        //       upDate.removeAt(i);
                        //       upDateButton.removeAt(i);
                        //       keyListTextEditingController.removeAt(i);
                        //       valueListTextEditingController.removeAt(i);
                        //       productDetails = ProductFeatures(
                        //           name: heading.text, keyValues: keys);
                        //       // productDetails[i]=productDetails[i].copyWith(keyValues: keys);
                        //       widget.productTableEdit(
                        //           type: "2", list: productDetails);
                        //     });
                        //   },
                        //   icon: Icons.delete,
                        //   label: "",
                        // )


                      ])
              ],
              TableRow(
                  decoration: BoxDecoration(
                      color: Pellet.tableRowColor,
                      shape: BoxShape.rectangle,
                      border:  Border(
                          left: BorderSide(

                              color:  Color(0xff3E4F5B).withOpacity(.1),
                              style: BorderStyle.solid),
                          bottom: BorderSide(

                              color: Color(0xff3E4F5B).withOpacity(.1),
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Color(0xff3E4F5B).withOpacity(.1),

                              style: BorderStyle.solid))),
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        controller: key,
                        onChanged: (va) {
                          saveButtonActovde(key.text,value.text);
                          // key.text = va;
                        },
                        formatter: false,
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        controller: value,
                        onChanged: (va) {
                          saveButtonActovde(key.text,value.text);
                          // value.text = va;
                        },
                        formatter: false,
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: TableTextButton(
                          buttonBagroundColor:onSaveActive?Pellet.bagroundColor:Colors.transparent,
                          textColor:onSaveActive?Pellet.bagroundColor:Colors.black,
                          bagroundColor: onSaveActive?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),

                          label: "Save",
                          onPress: () {
                            onChange = true;
                            if (key.text.isNotEmpty && value.text.isNotEmpty) {
                              Keys model = Keys(
                                key: key.text ?? "",
                                value: value.text ?? '',
                              );
                              print(model);
                              setState(() {
                                keys?.add(model);

                                upDate.add(false);
                                upDateButton.add(false);
                                var keyValue = new TextEditingController(text: key.text);
                                var valValue = new TextEditingController(text: value.text);

                                keyListTextEditingController.add(keyValue);
                                valueListTextEditingController.add(valValue);

                                productDetails = ProductFeatures(
                                    name: heading.text, keyValues: keys);
                                widget.productTableEdit(
                                    type: "5", list: productDetails);
                                key.text = "";
                                value.text = "";
                                onSaveActive=false;
                              });
                            }
                          }),
                    )  ,


                  ]),
            ],
            widths: {
              0: FlexColumnWidth(5),
              1: FlexColumnWidth(5),
              2: FlexColumnWidth(1.5),

            },
          ),
        ),
      ],
    );
  }
}

class ProductBehaviour extends StatefulWidget {
  final Function productFeaturesableAssign;
  final List<productBehaviour>? inforMationList;
  ProductBehaviour(
      {required this.productFeaturesableAssign, required this.inforMationList});
  @override
  _ProductBehaviourState createState() => _ProductBehaviourState();
}

class _ProductBehaviourState extends State<ProductBehaviour> {
  List<productBehaviour> inforMationList = [];
  TextEditingController purposeController = TextEditingController();
  TextEditingController ethlinkController = TextEditingController();
  TextEditingController ageGroupController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  List<TextEditingController> ageListTextEditingController = [];
  List<TextEditingController> purposeListTextEditingController = [];
  String choosenValue = '';
  bool onChange = false;
  List<String> items = ["Male", "Female"];
  List<String> ethinikItem = ["young", "old", "medium"];
  List<bool>upDate=[];
  List<bool>upDateButton=[];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    if (!onChange) {
      setState(() {
        choosenValue = '';
        ageGroupController.clear();
        countryController.clear() ;
        purposeController.clear() ;
        ethlinkController.clear() ;
        inforMationList = [];
        ageListTextEditingController.clear();
        purposeListTextEditingController.clear();
        upDate.clear();
        // onSaveActive=false;
        upDateButton.clear();
      });
      if (widget.inforMationList?.isNotEmpty == true) {
        inforMationList = widget?.inforMationList ?? [];
        if(inforMationList.isNotEmpty==true){
          for( var i =0;i<inforMationList.length;i++){
            upDate.add(false);
            upDateButton.add(false);

            var ageValue = new TextEditingController(text: inforMationList[i].ageGroup==null?"":inforMationList[i].ageGroup);
            ageListTextEditingController.add(ageValue);
            var purposeValue = new TextEditingController(text: inforMationList[i].purpose==null?"":inforMationList[i].purpose);
            purposeListTextEditingController.add(purposeValue);
          }
        }
      }
    }
    onChange = false;

    return Container(
      width: w / 2.5,
      margin: EdgeInsets.symmetric(horizontal: w * .02),
      child: customTable(
        border: const TableBorder(
          verticalInside: BorderSide(
              width: .5, color: Colors.black45, style: BorderStyle.solid),
          horizontalInside: BorderSide(
              width: .3,
              color: Colors.black45,
              // color: Colors.blue,
              style: BorderStyle.solid),
        ),
        tableWidth: .5,
        childrens: [
          TableRow(
            // decoration: BoxDecoration(

            //     color: Colors.green.shade200,

            //     shape: BoxShape.rectangle,

            //     border: const Border(bottom: BorderSide(color: Colors.grey))),

            children: [
              tableHeadtext(
                'Gender Group',

                padding: EdgeInsets.all(7),

                height: 41,
                textColor: Colors.white,
                // color: Color(0xffE5E5E5),

                size: 13,
              ),
              tableHeadtext(
                'Age Group',
                textColor: Colors.white,
                padding: EdgeInsets.all(7),
                height: 41,
                size: 13,
                // color: Color(0xffE5E5E5),
              ),
              tableHeadtext(
                'Ethinik',
                textColor: Colors.white,
                padding: EdgeInsets.all(7),
                height: 41,
                size: 13,
                // color: Color(0xffE5E5E5),
              ),
              tableHeadtext(
                'Countries',
                // textColor: Colors.white,
                padding: EdgeInsets.all(7),
                height: 41,
                size: 13,
                // color: Color(0xffE5E5E5),
              ),
              tableHeadtext(
                'Purpose',
                textColor: Colors.white,
                padding: EdgeInsets.all(7),
                height: 41,
                size: 13,
                // color: Color(0xffE5E5E5),
              ),
              tableHeadtext(
                '',
                textColor: Colors.white,
                padding: EdgeInsets.all(7),
                height: 41,
                size: 13,
                // color: Color(0xffE5E5E5),
              ),
            ],
          ),
          if (inforMationList?.isNotEmpty == true) ...[
            for (var i = 0; i < inforMationList!.length; i++)
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
    upDate[i]?  TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child:CustomDropDown(
                          clr: upDate[i]?Colors.white:Colors.transparent,

                          choosenValue: inforMationList?[i].genderGroup ?? "",
                          onChange: (val) {
                            onChange=true;

                            setState(() {
                              upDateButton[i]=true;
                            });

                            inforMationList?[i]=inforMationList[i].copyWith(genderGroup: val);
                                 print(inforMationList);
                            widget.productFeaturesableAssign(
                                list: inforMationList);
                          },
                          items: items)
                    ):  TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: textPadding(inforMationList?[i].genderGroup ?? "",height: 48)),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        readOnly: !upDate[i],
                        filledColour: upDate[i]?Colors.white:Colors.transparent,
                        controller: ageListTextEditingController[i],

                        onChanged: (val) {
                          onChange=true;

                          setState(() {
                            upDateButton[i]=true;
                          });

                          inforMationList?[i]=inforMationList[i].copyWith(ageGroup: val);
                          print(inforMationList);
                          widget.productFeaturesableAssign(
                              list: inforMationList);
                        },
                      ),
                    ),
    upDate[i]? TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child:CustomDropDown(
                          clr: upDate[i]?Colors.white:Colors.transparent,
                          choosenValue:inforMationList[i].ethinik,
                          onChange: (val) {
                            onChange=true;
                            setState(() {
                              onChange=true;

                                upDateButton[i]=true;




                                inforMationList?[i]=inforMationList[i].copyWith(ethinik: val);
                                print(inforMationList);
                                widget.productFeaturesableAssign(
                                    list: inforMationList);
                            });
                          },
                          items: ethinikItem)


                      // UnderLinedInput(
                      //   formatter: false,
                      //   initialCheck: true,
                      //   last: inforMationList[i].ethinik,
                      //   onChanged: (val) {
                      //     onChange=true;
                      //
                      //     inforMationList?[i]=inforMationList[i].copyWith(ethinik: val);
                      //     print(inforMationList);
                      //     widget.productFeaturesableAssign(
                      //         list: inforMationList);
                      //   },
                      // ),
                    ):textPadding(inforMationList?[i].ethinik ?? "",height: 48),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Container(
                        height: 48,
                        color:upDate[i]?Colors.white:Colors.transparent,

                        // width: 100,
                        child:upDate[i]? DropdownSearch<String>(

                          dropdownSearchDecoration: InputDecoration(

                            border: InputBorder.none,
                          ),

                          // mode of dropdown
                          mode: Mode.DIALOG,
                          //to show search box
                          showSearchBox: true,
                          showSelectedItem: true,

                          //list of dropdown items
                          items: [
                            "India",
                            "USA",
                            "Brazil",
                            "Canada",
                            "Australia",
                            "Singapore"
                          ],
                          // label: "Country",
                          onChanged: (String? va) {
                            print(va);
                            onChange=true;

                            setState(() {
                              upDateButton[i]=true;
                            });

                            inforMationList?[i]=inforMationList[i].copyWith(countries: va);
                            print(inforMationList);
                            widget.productFeaturesableAssign(
                                list: inforMationList);
                          },
                          //show selected item
                          selectedItem: inforMationList[i].countries ?? "",
                        ):  textPadding(inforMationList?[i].countries ?? "",height: 48),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        formatter: false,
                        readOnly: !upDate[i],
                        filledColour: upDate[i]?Colors.white:Colors.transparent,
                        controller: purposeListTextEditingController[i],

                        onChanged: (val) {
                          onChange=true;

                          setState(() {
                            upDateButton[i]=true;
                          });

                          inforMationList?[i]=inforMationList[i].copyWith(purpose: val);
                          print(inforMationList);
                          widget.productFeaturesableAssign(
                              list: inforMationList);
                        },
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Row(
                        children: [                TableTextButton(
                          buttonBagroundColor: upDateButton[i]?Pellet.bagroundColor:Colors.transparent,
                          textColor: upDateButton[i]?Pellet.bagroundColor:Colors.black,
                          bagroundColor:  upDateButton[i]?Pellet.tableBlueHeaderPrint:Color( 0xffe7e7e7),
                          label: upDateButton[i]==true?"Update":"Edit",

                          // icon: upDate[i]==true?Icons.coronavirus_rounded:null,

                          onPress: () {
                            onChange=true;


                            setState(() {
                              upDate[i]=!upDate[i];

                              if( upDateButton[i]==true){
                                widget.productFeaturesableAssign(
                                    list: inforMationList);
                                upDateButton[i]=false;





                              }


                            });
                            setState(() {

                            });

                          },
                        ),
                          SizedBox(width: 3,),
                          TableIconTextButton(
                            label: "",
                            icon: Icons.delete,
                            onPress: () {
                              onChange=true;



                              inforMationList?.removeWhere(
                                      (element) =>
                                  element ==
                                      inforMationList?[
                                    i]);
                              upDate.removeAt(i);
                              upDateButton.removeAt(i);
                              purposeListTextEditingController.removeAt(i);
                              ageListTextEditingController.removeAt(i);
                              widget.productFeaturesableAssign(
                                  list: inforMationList);
                              // inforMationList?.add(InformationClass(
                              //   gender: choosenValue,
                              //   age: ageGroupController.text,
                              //    ,
                              //   countries:countryController.text,
                              //   purpose: purposeController.text,
                              //
                              // ));
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                    ),
                  ]),
          ],
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
                  child: CustomDropDown(
                      choosenValue: choosenValue,
                      onChange: (val) {
                        choosenValue = val;
                      },
                      items: items),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: UnderLinedInput(

                    controller: ageGroupController,
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: CustomDropDown(
                      choosenValue: ethlinkController.text,
                      onChange: (val) {
                        ethlinkController.text = val;
                      },
                      items: ethinikItem),
                ),
                /* TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,

                  child:  UnderLinedInput(
                    formatter: false,
                    controller: ethlinkController,

                  ),


                ),*/
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Container(
                    // width: 100,
                    child: DropdownSearch<String>(
                      dropdownSearchDecoration: InputDecoration(
                        border: InputBorder.none,
                      ),

                      // mode of dropdown
                      mode: Mode.DIALOG,
                      //to show search box
                      showSearchBox: true,
                      showSelectedItem: true,

                      //list of dropdown items
                      items: [
                        "India",
                        "USA",
                        "Brazil",
                        "Canada",
                        "Australia",
                        "Singapore"
                      ],
                      // label: "Country",
                      onChanged: (String? va) {
                        onChange = true;
                        setState(() {
                          countryController?.text = va ?? "";
                          print("weldone ");
                          print(
                              " countryController?.text${countryController?.text}");
                        });
                      },
                      //show selected item
                      // selectedItem: "India",
                    ),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: UnderLinedInput(
                    formatter: false,
                    controller: purposeController,
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: TableTextButton(
                    label: "Add",
                    onPress: () {
                      setState(() {
                        upDate.add(false);
                        upDateButton.add(false);
                        var ageValue = new TextEditingController(text: ageGroupController.text);
                        var purposeValue = new TextEditingController(text: purposeController.text);

                        ageListTextEditingController.add(ageValue);
                        purposeListTextEditingController.add(purposeValue);

                        inforMationList?.add(productBehaviour(
                          genderGroup: choosenValue,
                          ageGroup: ageGroupController.text ?? '',
                          ethinik: ethlinkController.text,
                          countries: countryController.text,
                          purpose: purposeController.text,
                        ));
                        print("the list is" + inforMationList.toString());
                        widget.productFeaturesableAssign(list: inforMationList);

                      });
                    },
                  ),
                ),
              ]),
        ],
      ),
    );
  }
}
