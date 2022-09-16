import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:inventory/Screens/variant/variantdetails/model/variant_read.dart';
import 'package:inventory/Screens/variant/variantdetails/screens.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';

class ProductTable extends StatefulWidget {
final  List<Storage>? aboutProducts;
final  Function storageTableEdit;
final  bool addNew;
final  Key? key;
ProductTable({required this.aboutProducts, required this.storageTableEdit,required this.key, required this.addNew});
  @override
  ProductTableState createState() => ProductTableState();
}

class ProductTableState extends State<ProductTable> {
  TextEditingController name=TextEditingController();
  TextEditingController key=TextEditingController();
  TextEditingController headingController=TextEditingController();
  bool onChange=false;
  List<Storage> aboutProducts=[];
  List<dynamic>keys=[];
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    if(!onChange){
      print("welcome to the entire place");
    setState(() {
      keys=[];
    });


      if(widget.aboutProducts?.isNotEmpty==true){


        setState(() {

          headingController.text=widget.addNew?"":widget.aboutProducts?[0].name??"";
        });
        aboutProducts= widget.aboutProducts??[];
        if(aboutProducts?[0].keyValues?.isNotEmpty==true)
          keys=aboutProducts?[0].keyValues??[];

      }





    }
    onChange=false;
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          underlineTextForm(
            controller: headingController,
            onChange: (va){
              print(va);
              if(aboutProducts.isNotEmpty==true){
                aboutProducts[0]=aboutProducts[0].copyWith(name: va);

              }
              else{
                aboutProducts.add(Storage(name: va));
              }
            },
          ),
          Container(
          width: w/5,
          margin: EdgeInsets.symmetric(horizontal: w*.02),
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

                    'About the Product',

                    padding: EdgeInsets.all(7),

                    height: 46,
                    textColor: Colors.white,


                    size: 13,


                  ),
                  tableHeadtext(

                    '',

                    padding: EdgeInsets.all(7),

                    height: 46,
                    textColor: Colors.white,


                    size: 13,


                  ),





                ],

              ),
    if (keys?.isNotEmpty==true ) ...[


          for (var i = 0; i < keys!.length; i++)
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

                      child:
    // Text(keys?[i]["name"]??"")
                      UnderLinedInput(
                        formatter: false,
                          initialCheck: true,
                          last:keys?[i]["name"]??"",
                        onChanged: (va){
                          print(va);
                          keys[i]["name"] =va;
                          print(keys);



                        },

                      ),


                    ),
                    TableTextButton(

                 label: "upadte",
                      onPress: (){

                   aboutProducts[i]=aboutProducts[i].copyWith(keyValues: keys);
                   widget.storageTableEdit(type:"1",list:aboutProducts);
                      },



                    ),


                  ]),],
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

                        child:UnderLinedInput(
                          formatter: false,
                          onChanged: (va){
                            print(va);
                            name.text=va;
                            setState(() {

                            });

                          },
                        )
                      // UnderLinedInput(
                      //   formatter: false,
                      // ),


                    ),
                    TableTextButton(
                      label: "",
                      onPress: (){
                        onChange=true;


                        setState(() {
                          Map map={
                            "name":name.text,
                          };
                          keys.add(map);
                          print(keys);



                          print(keys);
                          print("attata+"+aboutProducts.toString());
                          aboutProducts?.add(Storage(
                              name: "Akshay",
                              keyValues: keys
                          ));
                          widget.storageTableEdit(type:"1",list:aboutProducts);
                          name.text="";

                        });



                      },

                    )


                  ])


            ],

          ),


    ),
        ],
      );
  }
}
class VariantProductDetails extends StatefulWidget {
  final List<ProductFeatures>? productDetails;
  final  Function productTableEdit;
  VariantProductDetails({required this.productDetails, required this.productTableEdit});

  @override
  VariantProductDetailsState createState() => VariantProductDetailsState();
}

class VariantProductDetailsState extends State<VariantProductDetails> {
  TextEditingController key= TextEditingController();
  TextEditingController value= TextEditingController();
  TextEditingController heading= TextEditingController();
  bool  onChange=false;
  List<ProductFeatures> productDetails=[];
  List<Keys>keys=[];
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;

    if(!onChange){
      setState(() {
        keys=[];
      });

      if(widget.productDetails?.isNotEmpty==true){

        productDetails= widget?.productDetails??[];
        if(productDetails?[0].keyValues?.isNotEmpty==true)
          keys=productDetails?[0].keyValues??[];

      }





    }
    onChange=false;
    return Column(
      children: [
        underlineTextForm(
          controller: heading,
          onChange: (va){
            print(va);
            if(productDetails.isNotEmpty==true){
              productDetails[0]=productDetails[0].copyWith(name: va);
            }
            else{
              productDetails.add(ProductFeatures(name: va));
            }
          },
        ),
        Container(
          width: w/5,
          margin: EdgeInsets.symmetric(horizontal: w*.02),
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


                    'Product details',


                    padding: EdgeInsets.all(7),

                    height: 46,
                    textColor: Colors.white,
                    // color: Color(0xffE5E5E5),

                    size: 13,


                  ),


                  tableHeadtext(
                    'Technical details',
                    textColor: Colors.white,
                    padding: EdgeInsets.all(7),
                    height: 46,
                    size: 13,
                    // color: Color(0xffE5E5E5),
                  ),
                  tableHeadtext(
                    '',
                    textColor: Colors.white,
                    padding: EdgeInsets.all(7),
                    height: 46,
                    size: 13,
                    // color: Color(0xffE5E5E5),
                  ),




                ],

              ),
              if (keys?.isNotEmpty==true ) ...[


                for (var i = 0; i <keys.length; i++)
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

                      child:
                      // Text(keys[i].key??"")
        UnderLinedInput(

          last:  keys[i].key??"",
          initialCheck: true,
           formatter: false,
          onChanged: (va){
            print(va);
            keys[i]=keys[i].copyWith(
              key: va,
            );
          },



                      ),


                    ),
                    TableCell(

                        verticalAlignment: TableCellVerticalAlignment.middle,

                        child:
                        // Text(keys[i].value??"",)
                        UnderLinedInput(
                          initialCheck: true,
        last: keys[i].value??""??"",
                          formatter: false,
                          onChanged: (va){
                            print(va);
                            keys[i]=keys[i].copyWith(value: va);
                          },
                        )
                    ),
                    TableTextButton(onPress: (){
                      productDetails[i]=productDetails[i].copyWith(keyValues: keys);
                      widget.productTableEdit(type:"1",list:productDetails);

                    },label: "",)


                  ])],
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

                        child: UnderLinedInput(
                          onChanged: (va){
                            key.text=va;

                          },

                          formatter: false,

                        ),


                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,

                        child:

                        UnderLinedInput(
                          onChanged: (va){
                            value.text=va;
                          },
                          formatter: false,
                        ),


                      ),
                      TableTextButton(label: "", onPress: (){
                        onChange=true;
                        Keys model=Keys(
                          key: key.text??"",
                          value: value.text??'',
                        );
                        print(model);
                        setState(() {


                          keys?.add(model);
                          print(keys);
                          print("attata+"+productDetails.toString());
                          productDetails?.add(ProductFeatures(
                              name: "Akshay",
                              keyValues: keys
                          ));
                          widget.productTableEdit(type:"1",list:productDetails);
                          key.text="";
                          value.text="";
                        });




                      })


                    ])


            ,

          ]),


        ),
      ],
    );
  }
}
class PrtoductFeatures extends StatefulWidget {
 final  List<ProductFeatures>? productFeatures;
 final  Function productTableEdit;
  PrtoductFeatures({required this.productFeatures, required this.productTableEdit});

  @override
  PrtoductFeaturesState createState() => PrtoductFeaturesState();
}

class PrtoductFeaturesState extends State<PrtoductFeatures> {
  TextEditingController key= TextEditingController();
  TextEditingController value= TextEditingController();
  TextEditingController headingController= TextEditingController();
 bool  onChange=false;
  List<ProductFeatures> productFeatures=[];
  List<Keys>keys=[];

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;

    if(!onChange){
      setState(() {
        keys=[];
      });
      if(widget.productFeatures?.isNotEmpty==true){
        productFeatures= widget?.productFeatures??[];
        headingController=TextEditingController(text:productFeatures?[0].name??"" );
        if(productFeatures?[0].keyValues?.isNotEmpty==true)
          keys=productFeatures?[0].keyValues??[];

      }





    }
    onChange=false;
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        underlineTextForm(
          controller: headingController,
          onChange: (va){
            print(va);
            if(productFeatures.isNotEmpty==true){
              productFeatures[0]=productFeatures[0].copyWith(name: va);
            }
            else{
              productFeatures.add(ProductFeatures(name: va));
            }
          },
        ),
        Container(
          width: w/5,
          margin: EdgeInsets.symmetric(horizontal: w*.02),
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

                    'Product Features',

                    padding: EdgeInsets.all(7),

                    height: 46,
                    textColor: Colors.white,
                    // color: Color(0xffE5E5E5),

                    size: 13,


                  ),


                  tableHeadtext(
                    'Features',
                    textColor: Colors.white,
                    padding: EdgeInsets.all(7),
                    height: 46,
                    size: 13,
                    // color: Color(0xffE5E5E5),
                  ),
                  tableHeadtext(
                    '',
                    textColor: Colors.black,
                    padding: EdgeInsets.all(7),
                    height: 46,
                    size: 13,
                    // color: Color(0xffE5E5E5),
                  ),




                ],

              ),
        if (keys?.isNotEmpty==true ) ...[


        for (var i = 0; i <keys.length; i++)
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

                  child:
                  // Text(keys[i].key??"")
                  UnderLinedInput(

                    last:  keys[i].key??"",
                    initialCheck: true,
                    formatter: false,
                    onChanged: (va){
                      print(va);
                      keys[i]=keys[i].copyWith(
                        key: va,
                      );
                    },



                  ),


                ),
                TableCell(

                    verticalAlignment: TableCellVerticalAlignment.middle,

                    child:
                    // Text(keys[i].value??"",)
                    UnderLinedInput(
                      initialCheck: true,
                      last: keys[i].value??""??"",
                      formatter: false,
                      onChanged: (va){
                        print(va);
                        keys[i]=keys[i].copyWith(value: va);
                      },
                    )
                ),
                TableTextButton(onPress: (){
                  productFeatures[i]=productFeatures[i].copyWith(keyValues: keys);
                  widget.productTableEdit(type:"2",list:productFeatures);

                },label: "",)


              ]),],
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

                        child: UnderLinedInput(
                         onChanged: (va){
                           key.text=va;

                         },

                        formatter: false,

                      ),


                    ),
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,

                        child:

                      UnderLinedInput(
                        onChanged: (va){
                          value.text=va;
                        },
                        formatter: false,
                      ),


                    ),
                    TableTextButton(label: "", onPress: (){
                      onChange=true;
          Keys model=Keys(
            key: key.text??"",
            value: value.text??'',
          );
          print(model);
          setState(() {


            keys?.add(model);
            print(keys);
            print("attata+"+productFeatures.toString());
            productFeatures?.add(ProductFeatures(

              keyValues: keys
            ));
            widget.productTableEdit(type:"2",list:productFeatures);
            key.text="";
            value.text="";
          });




                    })


                  ])


            ],

          ),


        ),
      ],
    );
  }
}


class AdditionaslInfo extends StatefulWidget {
 final  List<ProductFeatures>? additionalInfo;
 final  Function productTableEdit;
 AdditionaslInfo({required this.additionalInfo, required this.productTableEdit});

  @override
  AdditionaslInfoState createState() => AdditionaslInfoState();
}

class AdditionaslInfoState extends State<AdditionaslInfo> {
  bool onChange=false;
  List<ProductFeatures> productFeatures=[];
  List<Keys>keys=[];
  TextEditingController key=TextEditingController();
  TextEditingController value=TextEditingController();
  TextEditingController headingController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    if(!onChange){
      setState(() {
        keys=[];
      });
      if(widget.additionalInfo?.isNotEmpty==true){
        productFeatures= widget?.additionalInfo??[];
        if(productFeatures?[0].keyValues?.isNotEmpty==true)
          keys=productFeatures?[0].keyValues??[];

      }





    }
    onChange=false;
    return   Column(
      children: [
        underlineTextForm(
          controller: headingController,
          onChange: (va){
            print(va);
            if(productFeatures.isNotEmpty==true){
              productFeatures[0]=productFeatures[0].copyWith(name: va);
            }
            else{
              productFeatures.add(ProductFeatures(name: va));
            }
          },
        ),

        Container(
          width: w/5,
          margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                    textColor: Colors.black,
                    // color: Color(0xffE5E5E5),

                    size: 13,


                  ),


                  tableHeadtext(
                    '',
                    textColor: Colors.black,
                    padding: EdgeInsets.all(7),
                    height: 46,
                    size: 13,
                    // color: Color(0xffE5E5E5),
                  ),
                  tableHeadtext(
                    '',
                    textColor: Colors.black,
                    padding: EdgeInsets.all(7),
                    height: 46,
                    size: 13,
                    // color: Color(0xffE5E5E5),
                  ),



                ],

              ),
        if (keys?.isNotEmpty==true ) ...[


        for (var i = 0; i <keys.length; i++)



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

        child:
        // Text(keys[i].key??"")
        UnderLinedInput(

        last:  keys[i].key??"",
        initialCheck: true,
        formatter: false,
        onChanged: (va){
        print(va);
        keys[i]=keys[i].copyWith(
        key: va,
        );
        },



        ),


        ),
        TableCell(

        verticalAlignment: TableCellVerticalAlignment.middle,

        child:
        // Text(keys[i].value??"",)
        UnderLinedInput(
        initialCheck: true,
        last: keys[i].value??""??"",
        formatter: false,
        onChanged: (va){
        print(va);
        keys[i]=keys[i].copyWith(value: va);
        },
        )
        ),
        TableTextButton(onPress: (){
        productFeatures[i]=productFeatures[i].copyWith(keyValues: keys);
        widget.productTableEdit(type:"3",list:productFeatures);

        },label: "",)


        ]),
            ],

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

                      child: UnderLinedInput(
                        onChanged: (va){
                          key.text=va;

                        },

                        formatter: false,

                      ),


                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,

                      child:

                      UnderLinedInput(
                        onChanged: (va){
                          value.text=va;
                        },
                        formatter: false,
                      ),


                    ),
                    TableTextButton(label: "", onPress: (){
                      Keys model=Keys(
                        key: key.text??"",
                        value: value.text??'',
                      );
                      setState(() {
                        onChange=true;

                        keys?.add(model);


                        productFeatures?.add(ProductFeatures(

                            keyValues: keys
                        ));
                        widget.productTableEdit(type:"3",list:productFeatures);
                        key.text="";
                        value.text="";
                      });




                    })


                  ])

            ]),


        ),
      ],
    );
  }
}

class NeutrialFacts extends StatefulWidget {
  List<ProductFeatures>? nutriantsFacts;
  final  Function productTableEdit;
  NeutrialFacts({required this.nutriantsFacts, required this.productTableEdit});
  @override
  NeutrialFactsState createState() => NeutrialFactsState();
}

class NeutrialFactsState extends State<NeutrialFacts> {
  TextEditingController key =TextEditingController();
  TextEditingController values=TextEditingController();
  TextEditingController heading=TextEditingController();
  bool onChange=false;
  List<ProductFeatures> productFeatures=[];
  List<Keys>keys=[];

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    if(!onChange){
      setState(() {
        keys=[];
      });
      if(widget.nutriantsFacts?.isNotEmpty==true){
        heading=TextEditingController(text:widget?.nutriantsFacts?[0].name??"" );
        productFeatures= widget?.nutriantsFacts??[];
        if(productFeatures?[0].keyValues?.isNotEmpty==true)
          keys=productFeatures?[0].keyValues??[];

      }





    }
    onChange=false;
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        underlineTextForm(
          controller: heading,
          onChange: (va){
            print(va);
            if(productFeatures.isNotEmpty==true){
              productFeatures[0]=productFeatures[0].copyWith(name: va);
            }
            else{
              productFeatures.add(ProductFeatures(name: va));
            }
          },
        ),

        Container(
          width: w/5,
          margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                    textColor: Colors.black,
                    // color: Color(0xffE5E5E5),

                    size: 13,


                  ),


                  tableHeadtext(
                    '',
                    textColor: Colors.black,
                    padding: EdgeInsets.all(7),
                    height: 46,
                    size: 13,
                    // color: Color(0xffE5E5E5),
                  ),
                  tableHeadtext(
                    '',
                    textColor: Colors.black,
                    padding: EdgeInsets.all(7),
                    height: 46,
                    size: 13,
                    // color: Color(0xffE5E5E5),
                  ),




                ],

              ),
        if (keys?.isNotEmpty==true ) ...[


        for (var i = 0; i <keys.length; i++)
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

    child:
    // Text(keys[i].key??"")
    UnderLinedInput(

    last:  keys[i].key??"",
    initialCheck: true,
    formatter: false,
    onChanged: (va){
    print(va);
    keys[i]=keys[i].copyWith(
    key: va,
    );
    },



    ),


    ),
    TableCell(

    verticalAlignment: TableCellVerticalAlignment.middle,

    child:
    // Text(keys[i].value??"",)
    UnderLinedInput(
    initialCheck: true,
    last: keys[i].value??""??"",
    formatter: false,
    onChanged: (va){
    print(va);
    keys[i]=keys[i].copyWith(value: va);
    },
    )
    ),
    TableTextButton(onPress: (){
    productFeatures[i]=productFeatures[i].copyWith(keyValues: keys);
    widget.productTableEdit(type:"4",list:productFeatures);

    },label: "",)


    ]),



           ],
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

                        child: UnderLinedInput(
                          // formatter: false,
                          onChanged: (va){
                            values.text=va;

                          },
                        )
                      // UnderLinedInput(
                      //                 formatter: false,
                      //               ),


                    ),
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,

                        child:UnderLinedInput(
                          // formatter: false,
                          onChanged: (va){
                            key.text=va;

                          },

                        )
                      // UnderLinedInput(
                      //                   formatter: false,
                      //                 )),


                    ),
                    TableTextButton(label: "", onPress: (){
                      Keys model=Keys(
                        key: key.text??"",
                        value: values.text??'',
                      );
                      setState(() {
                        onChange=true;

                        keys?.add(model);


                        productFeatures?.add(ProductFeatures(

                            keyValues: keys
                        ));
                        widget.productTableEdit(type:"4",list:productFeatures);
                        key.text="";
                        values.text="";
                      });




                    })
                  ]),

          ]),


        ),
      ],
    );
  }
}


class Ingredians extends StatefulWidget {
  List<Storage>? ingredians;
  final  Function storageTableEdit;
  Ingredians({required this.ingredians, required this.storageTableEdit});
  @override
  IngrediansState createState() => IngrediansState();
}

class IngrediansState extends State<Ingredians> {
  TextEditingController name = TextEditingController();
  TextEditingController key = TextEditingController();
  TextEditingController headingController = TextEditingController();
  bool onChange = false;
  List<Storage> ingriansProduct = [];
  List<dynamic>keys = [];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery
        .of(context)
        .size
        .height;
    double w = MediaQuery
        .of(context)
        .size
        .width;
    if (!onChange) {
      setState(() {
        keys=[];
      });
      if (widget.ingredians?.isNotEmpty == true) {
        setState(() {
          headingController.text = widget.ingredians ? [0].name ?? "";
        });
        ingriansProduct = widget.ingredians ?? [];
        if (ingriansProduct ? [0].keyValues?.isNotEmpty == true)
          keys = ingriansProduct ? [0].keyValues ?? [];
      }
    }
    onChange = false;
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          underlineTextForm(
            controller: headingController,
            onChange: (va) {
              print(va);
              if (ingriansProduct.isNotEmpty == true) {
                ingriansProduct[0] = ingriansProduct[0].copyWith(name: va);
              }
              else {
                ingriansProduct.add(Storage(name: va));
              }
            },
          ),
          Container(
            width: w / 5,
            margin: EdgeInsets.symmetric(horizontal: w * .02),
            child: customTable(

              border: const TableBorder(

                verticalInside: BorderSide(
                    width: .5,
                    color: Colors.black45,
                    style: BorderStyle.solid),
                horizontalInside: BorderSide(
                    width: .3,
                    color: Colors.black45,
                    // color: Colors.blue,
                    style: BorderStyle.solid),),

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

                      padding: EdgeInsets.all(7),

                      height: 46,
                      textColor: Colors.white,
                      // color: Color(0xffE5E5E5),

                      size: 13,


                    ),
                    tableHeadtext(

                      '',

                      padding: EdgeInsets.all(7),

                      height: 46,
                      textColor: Colors.black,
                      // color: Color(0xffE5E5E5),

                      size: 13,


                    ),


                  ],

                ),
                if (keys?.isNotEmpty == true ) ...[


                  for (var i = 0; i < keys!.length; i++)
                    TableRow(
                        decoration: BoxDecoration(
                            color: Colors.grey
                                .shade200,
                            shape: BoxShape
                                .rectangle,
                            border: const Border(
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
                            verticalAlignment: TableCellVerticalAlignment
                                .middle,

                            child:
                            // Text(keys?[i]["name"]??"")
                            UnderLinedInput(
                              formatter: false,
                              initialCheck: true,
                              last: keys ? [i]["name"] ?? "",
                              onChanged: (va) {
                                print(va);
                                keys[i]["name"] = va;
                                print(keys);
                              },

                            ),


                          ),
                          TableTextButton(

                            label: "upadte",
                            onPress: () {
                              ingriansProduct[i] =
                                  ingriansProduct[i].copyWith(keyValues: keys);
                              widget.storageTableEdit(
                                  type: "3", list: ingriansProduct);
                            },


                          ),


                        ]),
                ],
                TableRow(
                    decoration: BoxDecoration(
                        color: Colors.grey
                            .shade200,
                        shape: BoxShape
                            .rectangle,
                        border: const Border(
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

                          child: UnderLinedInput(
                            formatter: false,
                            onChanged: (va) {
                              print(va);
                              name.text = va;
                              setState(() {

                              });
                            },
                          )
                        // UnderLinedInput(
                        //   formatter: false,
                        // ),


                      ),
                      TableTextButton(
                        label: "",
                        onPress: () {
                          onChange = true;


                          setState(() {
                            Map map = {
                              "name": name.text,
                            };
                            keys.add(map);
                            print(keys);


                            print(keys);
                            print("attata+" + ingriansProduct.toString());
                            ingriansProduct?.add(Storage(

                                keyValues: keys
                            ));
                            widget.storageTableEdit(
                                type: "3", list: ingriansProduct);
                            name.text = "";
                          });
                        },

                      )


                    ])


              ],

            ),


          ),
        ],
      );
  }
}



class UsageDirection extends StatefulWidget {
 final  List<Storage>? usageDirection;
 final  Function storageTableEdit;
 UsageDirection({required this.usageDirection, required this.storageTableEdit});
  @override
  _UsageDirectionState createState() => _UsageDirectionState();
}

class _UsageDirectionState extends State<UsageDirection> {
  TextEditingController name=TextEditingController();
  TextEditingController key=TextEditingController();
  TextEditingController headingController=TextEditingController();
  bool onChange=false;
  List<Storage> usageProducts=[];
  List<dynamic>keys=[];
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    if(!onChange){
      setState(() {
        keys=[];
      });

      if(widget.usageDirection?.isNotEmpty==true){

        setState(() {
          headingController.text=widget.usageDirection?[0].name??"";
        });
        usageProducts= widget.usageDirection??[];
        if(usageProducts?[0].keyValues?.isNotEmpty==true)
          keys=usageProducts?[0].keyValues??[];

      }





    }
    onChange=false;
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          underlineTextForm(
            controller: headingController,
            onChange: (va){
              print(va);
              if(usageProducts.isNotEmpty==true){
                usageProducts[0]=usageProducts[0].copyWith(name: va);

              }
              else{
                usageProducts.add(Storage(name: va));
              }
            },
          ),
          Container(
            width: w/5,
            margin: EdgeInsets.symmetric(horizontal: w*.02),
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

                      'About the Product',

                      padding: EdgeInsets.all(7),

                      height: 46,
                      textColor: Colors.white,
                      // color: Color(0xffE5E5E5),

                      size: 13,


                    ),
                    tableHeadtext(

                      '',

                      padding: EdgeInsets.all(7),

                      height: 46,
                      textColor: Colors.black,
                      // color: Color(0xffE5E5E5),

                      size: 13,


                    ),





                  ],

                ),
                if (keys?.isNotEmpty==true ) ...[


                  for (var i = 0; i < keys!.length; i++)
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

                            child:
                            // Text(keys?[i]["name"]??"")
                            UnderLinedInput(
                              formatter: false,
                              initialCheck: true,
                              last:keys?[i]["name"]??"",
                              onChanged: (va){
                                print(va);
                                keys[i]["name"] =va;
                                print(keys);



                              },

                            ),


                          ),
                          TableTextButton(

                            label: "upadte",
                            onPress: (){

                              usageProducts[i]=usageProducts[i].copyWith(keyValues: keys);
                              widget.storageTableEdit(type:"3",list:usageProducts);
                            },



                          ),


                        ]),],
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

                          child:UnderLinedInput(
                            formatter: false,
                            onChanged: (va){
                              print(va);
                              name.text=va;
                              setState(() {

                              });

                            },
                          )
                        // UnderLinedInput(
                        //   formatter: false,
                        // ),


                      ),
                      TableTextButton(
                        label: "",
                        onPress: (){
                          onChange=true;


                          setState(() {
                            Map map={
                              "name":name.text,
                            };
                            keys.add(map);
                            print(keys);



                            print(keys);
                            print("attata+"+usageProducts.toString());
                            usageProducts?.add(Storage(

                                keyValues: keys
                            ));
                            widget.storageTableEdit(type:"3",list:usageProducts);
                            name.text="";

                          });



                        },

                      )


                    ])


              ],

            ),


          ),
        ],
      );
  }
}



class StoragesWidget extends StatefulWidget {
 final  List<Storage>? storage;
 final  Function storageTableEdit;
 StoragesWidget({required this.storage, required this.storageTableEdit});
  @override
  _StoragesWidgetState createState() => _StoragesWidgetState();
}

class _StoragesWidgetState extends State<StoragesWidget> {

  TextEditingController name=TextEditingController();
  TextEditingController key=TextEditingController();
  TextEditingController headingController=TextEditingController();
  bool onChange=false;
  List<Storage> aboutProducts=[];
  List<dynamic>keys=[];
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    if(!onChange){
      setState(() {
        keys=[];
      });

      if(widget.storage?.isNotEmpty==true){

        setState(() {
          headingController.text=widget.storage?[0].name??"";
        });
        aboutProducts= widget.storage??[];
        if(aboutProducts?[0].keyValues?.isNotEmpty==true)
          keys=aboutProducts?[0].keyValues??[];

      }





    }
    onChange=false;
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          underlineTextForm(
            controller: headingController,
            onChange: (va){
              print(va);
              if(aboutProducts.isNotEmpty==true){
                aboutProducts[0]=aboutProducts[0].copyWith(name: va);

              }
              else{
                aboutProducts.add(Storage(name: va));
              }
            },
          ),
          Container(
            width: w/5,
            margin: EdgeInsets.symmetric(horizontal: w*.02),
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

                      'About the Product',

                      padding: EdgeInsets.all(7),

                      height: 46,
                      textColor: Colors.white,
                      // color: Color(0xffE5E5E5),

                      size: 13,


                    ),
                    tableHeadtext(

                      '',

                      padding: EdgeInsets.all(7),

                      height: 46,
                      textColor: Colors.black,
                      // color: Color(0xffE5E5E5),

                      size: 13,


                    ),





                  ],

                ),
                if (keys?.isNotEmpty==true ) ...[


                  for (var i = 0; i < keys!.length; i++)
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

                            child:
                            // Text(keys?[i]["name"]??"")
                            UnderLinedInput(
                              formatter: false,
                              initialCheck: true,
                              last:keys?[i]["name"]??"",
                              onChanged: (va){
                                print(va);
                                keys[i]["name"] =va;
                                print(keys);



                              },

                            ),


                          ),
                          TableTextButton(

                            label: "upadte",
                            onPress: (){

                              aboutProducts[i]=aboutProducts[i].copyWith(keyValues: keys);
                              widget.storageTableEdit(type:"4",list:aboutProducts);
                            },



                          ),


                        ]),],
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

                          child:UnderLinedInput(
                            formatter: false,
                            onChanged: (va){
                              print(va);
                              name.text=va;
                              setState(() {

                              });

                            },
                          )
                        // UnderLinedInput(
                        //   formatter: false,
                        // ),


                      ),
                      TableTextButton(
                        label: "",
                        onPress: (){
                          onChange=true;


                          setState(() {
                            Map map={
                              "name":name.text,
                            };
                            keys.add(map);
                            print(keys);



                            print(keys);
                            print("attata+"+aboutProducts.toString());
                            aboutProducts?.add(Storage(

                                keyValues: keys
                            ));
                            widget.storageTableEdit(type:"4",list:aboutProducts);
                            name.text="";

                          });



                        },

                      )


                    ])


              ],

            ),


          ),
        ],
      );
  }
}



class ImportantInfo extends StatefulWidget {
  final  List<ProductFeatures>? importantInfo;
final  Function productTableEdit;
  ImportantInfo({ this.importantInfo, required this.productTableEdit});


  @override
  _ImportantInfoState createState() => _ImportantInfoState();
}

class _ImportantInfoState extends State<ImportantInfo> {
  bool onChange=false;
  List<ProductFeatures> importandInfo=[];
  List<Keys>keys=[];
  TextEditingController key=TextEditingController();
  TextEditingController value=TextEditingController();
  TextEditingController headingController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    if(!onChange){
      setState(() {
        keys=[];
      });
      if(widget.importantInfo?.isNotEmpty==true){
        importandInfo= widget?.importantInfo??[];
        if(importandInfo?[0].keyValues?.isNotEmpty==true)
          keys=importandInfo?[0].keyValues??[];

      }





    }
    onChange=false;
    return   Column(
      children: [
        underlineTextForm(
          controller: headingController,
          onChange: (va){
            print(va);
            if(importandInfo.isNotEmpty==true){
              importandInfo[0]=importandInfo[0].copyWith(name: va);
            }
            else{
              importandInfo.add(ProductFeatures(name: va));
            }
          },
        ),

        Container(
          width: w/5,
          margin: EdgeInsets.symmetric(horizontal: w*.02),
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
                      textColor: Colors.white,
                      // color: Color(0xffE5E5E5),

                      size: 13,


                    ),


                    tableHeadtext(
                      '',
                      textColor: Colors.white,
                      padding: EdgeInsets.all(7),
                      height: 46,
                      size: 13,
                      // color: Color(0xffE5E5E5),
                    ),
                    tableHeadtext(
                      '',
                      textColor: Colors.white,
                      padding: EdgeInsets.all(7),
                      height: 46,
                      size: 13,
                      // color: Color(0xffE5E5E5),
                    ),



                  ],

                ),
                if (keys?.isNotEmpty==true ) ...[


                  for (var i = 0; i <keys.length; i++)



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

                            child:
                            // Text(keys[i].key??"")
                            UnderLinedInput(

                              last:  keys[i].key??"",
                              initialCheck: true,
                              formatter: false,
                              onChanged: (va){
                                print(va);
                                keys[i]=keys[i].copyWith(
                                  key: va,
                                );
                              },



                            ),


                          ),
                          TableCell(

                              verticalAlignment: TableCellVerticalAlignment.middle,

                              child:
                              // Text(keys[i].value??"",)
                              UnderLinedInput(
                                initialCheck: true,
                                last: keys[i].value??""??"",
                                formatter: false,
                                onChanged: (va){
                                  print(va);
                                  keys[i]=keys[i].copyWith(value: va);
                                },
                              )
                          ),
                          TableTextButton(onPress: (){
                            importandInfo[i]=importandInfo[i].copyWith(keyValues: keys);
                            widget.productTableEdit(type:"5",list:importandInfo);

                          },label: "",)


                        ]),
                ],

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

                        child: UnderLinedInput(
                          onChanged: (va){
                            key.text=va;

                          },

                          formatter: false,

                        ),


                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,

                        child:

                        UnderLinedInput(
                          onChanged: (va){
                            value.text=va;
                          },
                          formatter: false,
                        ),


                      ),
                      TableTextButton(label: "", onPress: (){
                        Keys model=Keys(
                          key: key.text??"",
                          value: value.text??'',
                        );
                        setState(() {
                          onChange=true;

                          keys?.add(model);


                          importandInfo?.add(ProductFeatures(

                              keyValues: keys
                          ));
                          widget.productTableEdit(type:"5",list:importandInfo);
                          key.text="";
                          value.text="";
                        });




                      })


                    ])

              ]),


        ),
      ],
    );
  }
}

class ProductBehaviour extends StatefulWidget {
  @override
  _ProductBehaviourState createState() => _ProductBehaviourState();
}

class _ProductBehaviourState extends State<ProductBehaviour> {
  List<InformationClass> inforMationList=[];
  TextEditingController purposeController=TextEditingController();
  TextEditingController ethlinkController=TextEditingController();
  TextEditingController ageGroupController=TextEditingController();
  TextEditingController countryController=TextEditingController();
  String choosenValue='';
  List<String>items=["Male","Female"];
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return  Container(
      width: w/2.2,
      margin: EdgeInsets.symmetric(horizontal: w*.02),
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

                'Gender Group',

                padding: EdgeInsets.all(7),

                height: 46,
                textColor: Colors.white,
                // color: Color(0xffE5E5E5),

                size: 13,


              ),


              tableHeadtext(
                'Age Group',
                textColor: Colors.white,
                padding: EdgeInsets.all(7),
                height: 46,
                size: 13,
                // color: Color(0xffE5E5E5),
              ),

              tableHeadtext(
                'Etinlk',
                textColor: Colors.white,
                padding: EdgeInsets.all(7),
                height: 46,
                size: 13,
                // color: Color(0xffE5E5E5),
              ),
              tableHeadtext(
                'Countries',
                // textColor: Colors.white,
                padding: EdgeInsets.all(7),
                height: 46,
                size: 13,
                // color: Color(0xffE5E5E5),
              ),
              tableHeadtext(
                'Purpose',
                textColor: Colors.white,
                padding: EdgeInsets.all(7),
                height: 46,
                size: 13,
                // color: Color(0xffE5E5E5),
              ),
              tableHeadtext(
                '',
                textColor: Colors.white,
                padding: EdgeInsets.all(7),
                height: 46,
                size: 13,
                // color: Color(0xffE5E5E5),
              ),


            ],

          ),
          if(inforMationList?.isNotEmpty==true)...[
            for(var i=0;i<inforMationList!.length;i++)
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

                      child:
                      CustomDropDown(choosenValue: inforMationList?[i].gender??"",onChange: (val){
                        inforMationList[i].gender=val;
                        print(inforMationList);

                      }, items: items),


                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,

                      child:  UnderLinedInput(

                        initialCheck: true,
                        last: inforMationList[i].age,
                        formatter: false,
                        onChanged: (val){
                          inforMationList[i].age=val;
                        },



                      ),


                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,

                      child:  UnderLinedInput(
                        formatter: false,
                        initialCheck: true,
                        last: inforMationList[i].ethlink,
                        onChanged: (val){
                          inforMationList[i].ethlink=val;
                        },


                      ),


                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,

                      child: Container(

                        // width: 100,
                        child: DropdownSearch<String>(
                          dropdownSearchDecoration:InputDecoration(
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
                          onChanged: (String? va){
                            print(va);
                            inforMationList[i].countries=va;

                          },
                          //show selected item
                          selectedItem: inforMationList[i].countries??"",
                        ),
                      ),),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,

                      child:   UnderLinedInput(
                        formatter: false,
                        initialCheck: true,
                        last: inforMationList[i].purpose,
                        onChanged: (val){
                          inforMationList[i].purpose=val;
                        },



                      ),),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,

                      child:   TableTextButton(
                        label: "Add",
                        onPress: (){
                          // inforMationList?.add(InformationClass(
                          //   gender: choosenValue,
                          //   age: ageGroupController.text,
                          //    ,
                          //   countries:countryController.text,
                          //   purpose: purposeController.text,
                          //
                          // ));
                          setState(() {

                          });
                          print(inforMationList!.length);


                        },


                      ),),


                  ]),

          ],

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

                  child:  CustomDropDown(choosenValue: choosenValue,onChange:(val){
                    choosenValue=val;

                  } ,items: items),


                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,

                  child:  UnderLinedInput(
                    formatter: false,

                    controller: ageGroupController,

                  ),


                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,

                  child:  UnderLinedInput(
                    formatter: false,
                    controller: ethlinkController,

                  ),


                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,

                  child: Container(

                    // width: 100,
                    child: DropdownSearch<String>(
                      dropdownSearchDecoration:InputDecoration(
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
                      onChanged: (String? va){
                        print(va);
                      },
                      //show selected item
                      selectedItem: "India",
                    ),
                  ),),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,

                  child:   UnderLinedInput(
                    formatter: false,
                    controller: purposeController,



                  ),),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,

                  child:   TableTextButton(
                    label: "Add",
                    onPress: (){
                      setState(() {
                        inforMationList?.add(InformationClass(
                          gender: choosenValue,
                          age: ageGroupController.text??'',
                          ethlink: ethlinkController.text,
                          countries:countryController.text,
                          purpose: purposeController.text,

                        ));
                        choosenValue='';
                        ageGroupController.text="";
                        countryController.text="";
                        purposeController.text="";
                        ethlinkController.text="";



                        print(inforMationList?[0].gender);

                      });




                    },


                  ),),


              ]),


        ],

      ),


    );
  }
}
