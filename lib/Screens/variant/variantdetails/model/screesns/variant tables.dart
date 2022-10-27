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
  TextEditingController key = TextEditingController();
  TextEditingController headingController = TextEditingController();
  List<TextEditingController> nameListTextEditingController = [];
  bool onChange = false;
  Storage? aboutProducts;
  List<dynamic> keys = [];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    if (!onChange) {

      setState(() {
        nameListTextEditingController.clear();
        keys =[] ;
        nameListTextEditingController.clear();
      });

      setState(() {
        headingController.text =
            widget.addNew ? "" : widget.aboutProducts?.name ?? "";
      });
      aboutProducts = widget.aboutProducts;
      if (aboutProducts?.keyValues?.isNotEmpty == true) {
        keys = aboutProducts?.keyValues ?? [];
        for (var i = 0; i < keys.length; i++) {
          var value = keys?[i]["name"];
          if (value == null) value = "";
          nameListTextEditingController.add(TextEditingController(text: value));
        }
      }
    }
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
                    padding: EdgeInsets.all(7),
                   height: 41,
                    textColor: Colors.white,
                    size: 13,
                  ),
                  tableHeadtext(
                    '',
                    padding: EdgeInsets.all(7),
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
                          color: Colors.grey.shade200,
                          shape: BoxShape.rectangle,
                          border: const Border(
                              left: BorderSide(
                                  width: .5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              bottom: BorderSide(
                                  width: .5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              right: BorderSide(
                                  color: Colors.grey,
                                  width: .5,
                                  style: BorderStyle.solid))),
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child:
                              // Text(keys?[i]["name"]??"")
                              UnderLinedInput(
                            formatter: false,
                            controller: nameListTextEditingController[i],
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
                            aboutProducts = Storage(
                                name: headingController.text, keyValues: keys);
                            widget.storageTableEdit(
                                type: "1", list: aboutProducts);
                          },
                        ),
                      ]),
              ],
              TableRow(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.rectangle,
                      border: const Border(
                          left: BorderSide(
                              width: .5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          bottom: BorderSide(
                              width: .5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Colors.grey,
                              width: .5,
                              style: BorderStyle.solid))),
                  children: [
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: UnderLinedInput(
                          formatter: false,
                          onChanged: (va) {
                            print(va);
                            onChange=true;
                            name.text = va;
                            setState(() {});
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

                            aboutProducts = Storage(
                                name: headingController.text, keyValues: keys);
                            widget.storageTableEdit(
                                type: "1", list: aboutProducts);
                            name.text = "";
                          }
                        });
                      },
                    )
                  ])
            ],
            widths: {
              0: FlexColumnWidth(5),
              2: FlexColumnWidth(2),
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
  bool onChange = false;
  ProductFeatures? productDetails;
  List<Keys> keys = [];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    if (!onChange) {
      setState(() {
        keys = [];
      });

      productDetails = widget.productDetails;
      heading =
          TextEditingController(text: productDetails?.name ?? "");
      if (productDetails?.keyValues?.isNotEmpty == true) {
        keys = productDetails?.keyValues ?? [];
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
                    'Product details',

                    padding: EdgeInsets.all(7),

                    height: 41,
                    textColor: Colors.white,
                    // color: Color(0xffE5E5E5),

                    size: 13,
                  ),
                  tableHeadtext(
                    'Technical details',
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
              if (keys?.isNotEmpty == true) ...[
                for (var i = 0; i < keys.length; i++)
                  TableRow(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.rectangle,
                          border: const Border(
                              left: BorderSide(
                                  width: .5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              bottom: BorderSide(
                                  width: .5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              right: BorderSide(
                                  color: Colors.grey,
                                  width: .5,
                                  style: BorderStyle.solid))),
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child:
                              // Text(keys[i].key??"")
                              UnderLinedInput(
                            last: keys[i].key ?? "",
                            initialCheck: true,
                            formatter: false,
                            onChanged: (va) {
                              print(va);
                              keys[i] = keys[i].copyWith(
                                key: va,
                              );
                            },
                          ),
                        ),
                        TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child:
                                // Text(keys[i].value??"",)
                                UnderLinedInput(
                              initialCheck: true,
                              last: keys[i].value ?? "" ?? "",
                              formatter: false,
                              onChanged: (va) {
                                print(va);
                                keys[i] = keys[i].copyWith(value: va);
                              },
                            )),
                        TableTextButton(
                          onPress: () {
                            productDetails = ProductFeatures(
                                name: heading.text, keyValues: keys);
                            // productDetails[i]=productDetails[i].copyWith(keyValues: keys);
                            widget.productTableEdit(
                                type: "1", list: productDetails);
                          },
                          label: "",
                        )
                      ])
              ],
              TableRow(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.rectangle,
                      border: const Border(
                          left: BorderSide(
                              width: .5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          bottom: BorderSide(
                              width: .5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Colors.grey,
                              width: .5,
                              style: BorderStyle.solid))),
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        onChanged: (va) {
                          key.text = va;
                        },
                        formatter: false,
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        onChanged: (va) {
                          value.text = va;
                        },
                        formatter: false,
                      ),
                    ),
                    TableTextButton(
                        label: "",
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
                              print(keys);
                              print("attata+" + productDetails.toString());
                              productDetails = ProductFeatures(
                                  name: heading.text, keyValues: keys);
                              widget.productTableEdit(
                                  type: "1", list: productDetails);
                              key.text = "";
                              value.text = "";
                            });
                          }
                        })
                  ]),
            ],
            widths: {
              0: FlexColumnWidth(5),
              1: FlexColumnWidth(5),
              2: FlexColumnWidth(2),
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
  TextEditingController headingController = TextEditingController();
  bool onChange = false;
  ProductFeatures? productFeatures;
  List<Keys> keys = [];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    if (!onChange) {
      setState(() {
        keys = [];
      });

      productFeatures = widget?.productFeatures;
      headingController =
          TextEditingController(text: productFeatures?.name ?? "");
      if (productFeatures?.keyValues?.isNotEmpty == true)
        keys = productFeatures?.keyValues ?? [];
    }
    onChange = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        underlineTextForm(
          controller: headingController,
          onChange: (va) {
            print(va);

            print(va);
            print(va);
            productFeatures = ProductFeatures(name: va);
            widget.productTableEdit(
                type: "2", list: productFeatures);
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
                    'Product Features',

                    padding: EdgeInsets.all(7),

                    height: 41,
                    textColor: Colors.white,
                    // color: Color(0xffE5E5E5),

                    size: 13,
                  ),
                  tableHeadtext(
                    'Features',
                    textColor: Colors.white,
                    padding: EdgeInsets.all(7),
                    height: 41,
                    size: 13,
                    // color: Color(0xffE5E5E5),
                  ),
                  tableHeadtext(
                    '',
                    textColor: Colors.black,
                    padding: EdgeInsets.all(7),
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
                          color: Colors.grey.shade200,
                          shape: BoxShape.rectangle,
                          border: const Border(
                              left: BorderSide(
                                  width: .5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              bottom: BorderSide(
                                  width: .5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              right: BorderSide(
                                  color: Colors.grey,
                                  width: .5,
                                  style: BorderStyle.solid))),
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child:
                              // Text(keys[i].key??"")
                              UnderLinedInput(
                            last: keys[i].key ?? "",
                            initialCheck: true,
                            formatter: false,
                            onChanged: (va) {
                              print(va);
                              keys[i] = keys[i].copyWith(
                                key: va,
                              );
                            },
                          ),
                        ),
                        TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child:
                                // Text(keys[i].value??"",)
                                UnderLinedInput(
                              initialCheck: true,
                              last: keys[i].value ?? "" ?? "",
                              formatter: false,
                              onChanged: (va) {
                                print(va);
                                keys[i] = keys[i].copyWith(value: va);
                              },
                            )),
                        TableTextButton(
                          onPress: () {
                            productFeatures = ProductFeatures(
                                name: headingController.text, keyValues: keys);
                            widget.productTableEdit(
                                type: "2", list: productFeatures);
                          },
                          label: "",
                        )
                      ]),
              ],
              TableRow(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.rectangle,
                      border: const Border(
                          left: BorderSide(
                              width: .5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          bottom: BorderSide(
                              width: .5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Colors.grey,
                              width: .5,
                              style: BorderStyle.solid))),
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        onChanged: (va) {
                          key.text = va;
                        },
                        formatter: false,
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        onChanged: (va) {
                          value.text = va;
                        },
                        formatter: false,
                      ),
                    ),
                    TableTextButton(
                        label: "",
                        onPress: () {
                          onChange = true;
                          if (key.text.isNotEmpty == true &&
                              value.text.isNotEmpty == true) {
                            Keys model = Keys(
                              key: key.text ?? "",
                              value: value.text ?? '',
                            );
                            print(model);
                            setState(() {
                              keys?.add(model);
                              print(keys);
                              print("attata+" + productFeatures.toString());
                              productFeatures = ProductFeatures(
                                  name: headingController.text, keyValues: keys);
                              widget.productTableEdit(
                                  type: "2", list: productFeatures);
                              key.text = "";
                              value.text = "";
                            });
                          }
                        })
                  ])
            ],
            widths: {
              0: FlexColumnWidth(5),
              1: FlexColumnWidth(5),
              2: FlexColumnWidth(2),
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
  bool onChange = false;
ProductFeatures? productFeatures ;
  List<Keys> keys = [];
  TextEditingController key = TextEditingController();
  TextEditingController value = TextEditingController();
  TextEditingController headingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    if (!onChange) {
      setState(() {
        keys = [];
      });

        productFeatures = widget?.additionalInfo;
      setState(() {
        headingController =

            TextEditingController(text: productFeatures?.name ?? "");
      });

        if (productFeatures?.keyValues?.isNotEmpty == true)
          keys = productFeatures?.keyValues ?? [];

    }
    onChange = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        underlineTextForm(
          controller: headingController,
          onChange: (va) {
            print(va);
            productFeatures = ProductFeatures(name: va);
            widget.productTableEdit(
                type: "3", list: productFeatures);
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
                    'Additional Info',

                    padding: EdgeInsets.all(7),

                    height: 41,
                    // textColor: Colors.black,
                    // color: Color(0xffE5E5E5),

                    size: 13,
                  ),
                  tableHeadtext(
                    '',
                    textColor: Colors.black,
                    padding: EdgeInsets.all(7),
                    height: 41,
                    size: 13,
                    // color: Color(0xffE5E5E5),
                  ),
                  tableHeadtext(
                    '',
                    textColor: Colors.black,
                    padding: EdgeInsets.all(7),
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
                          color: Colors.grey.shade200,
                          shape: BoxShape.rectangle,
                          border: const Border(
                              left: BorderSide(
                                  width: .5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              bottom: BorderSide(
                                  width: .5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              right: BorderSide(
                                  color: Colors.grey,
                                  width: .5,
                                  style: BorderStyle.solid))),
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child:
                              // Text(keys[i].key??"")
                              UnderLinedInput(
                            last: keys[i].key ?? "",
                            initialCheck: true,
                            formatter: false,
                            onChanged: (va) {
                              print(va);
                              keys[i] = keys[i].copyWith(
                                key: va,
                              );
                            },
                          ),
                        ),
                        TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child:
                                // Text(keys[i].value??"",)
                                UnderLinedInput(
                              initialCheck: true,
                              last: keys[i].value ?? "" ?? "",
                              formatter: false,
                              onChanged: (va) {
                                print(va);
                                keys[i] = keys[i].copyWith(value: va);
                              },
                            )),
                        TableTextButton(
                          onPress: () {
                            productFeatures = ProductFeatures(
                                name: headingController.text, keyValues: keys);
                            widget.productTableEdit(
                                type: "3", list: productFeatures);
                          },
                          label: "",
                        )
                      ]),
              ],
              TableRow(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.rectangle,
                      border: const Border(
                          left: BorderSide(
                              width: .5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          bottom: BorderSide(
                              width: .5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Colors.grey,
                              width: .5,
                              style: BorderStyle.solid))),
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        onChanged: (va) {
                          key.text = va;
                        },
                        formatter: false,
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        onChanged: (va) {
                          value.text = va;
                        },
                        formatter: false,
                      ),
                    ),
                    TableTextButton(
                        label: "",
                        onPress: () {
                          if (key.text.isNotEmpty == true &&
                              value.text.isNotEmpty) {
                            Keys model = Keys(
                              key: key.text ?? "",
                              value: value.text ?? '',
                            );
                            setState(() {
                              onChange = true;

                              keys?.add(model);
                              productFeatures = ProductFeatures(
                                  name: headingController.text, keyValues: keys);
                              widget.productTableEdit(
                                  type: "3", list: productFeatures);
                              key.text = "";
                              value.text = "";
                            });
                          }
                        })
                  ])
            ],
            widths: {
              0: FlexColumnWidth(5),
              1: FlexColumnWidth(5),
              2: FlexColumnWidth(2),
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
  TextEditingController values = TextEditingController();
  TextEditingController heading = TextEditingController();
  bool onChange = false;
  ProductFeatures? productFeatures ;
  List<Keys> keys = [];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    if (!onChange) {
      setState(() {
        keys = [];
      });

      productFeatures = widget?.nutriantsFacts;
      setState(() {
        heading =

            TextEditingController(text: productFeatures?.name ?? "");
      });

      if (productFeatures?.keyValues?.isNotEmpty == true)
        keys = productFeatures?.keyValues ?? [];

    }
    onChange = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        underlineTextForm(
          controller: heading,
          onChange: (va) {
            print(va);
            productFeatures = ProductFeatures(name: va);
            widget.productTableEdit(
                type: "4", list: productFeatures);
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
                    '',

                    padding: EdgeInsets.all(7),

                    height: 41,
                    textColor: Colors.black,
                    // color: Color(0xffE5E5E5),

                    size: 13,
                  ),
                  tableHeadtext(
                    'NutrianFacts',
                    // textColor: Colors.black,
                    padding: EdgeInsets.all(7),
                    height: 41,
                    size: 13,
                    // color: Color(0xffE5E5E5),
                  ),
                  tableHeadtext(
                    '',
                    textColor: Colors.black,
                    padding: EdgeInsets.all(7),
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
                          color: Colors.grey.shade200,
                          shape: BoxShape.rectangle,
                          border: const Border(
                              left: BorderSide(
                                  width: .5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              bottom: BorderSide(
                                  width: .5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              right: BorderSide(
                                  color: Colors.grey,
                                  width: .5,
                                  style: BorderStyle.solid))),
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child:
                              // Text(keys[i].key??"")
                              UnderLinedInput(
                            last: keys[i].key ?? "",
                            initialCheck: true,
                            formatter: false,
                            onChanged: (va) {
                              print(va);
                              keys[i] = keys[i].copyWith(
                                key: va,
                              );
                            },
                          ),
                        ),
                        TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child:
                                // Text(keys[i].value??"",)
                                UnderLinedInput(
                              initialCheck: true,
                              last: keys[i].value ?? "" ?? "",
                              formatter: false,
                              onChanged: (va) {
                                print(va);
                                keys[i] = keys[i].copyWith(value: va);
                              },
                            )),
                        TableTextButton(
                          onPress: () {
                            productFeatures = ProductFeatures(
                                name: heading.text, keyValues: keys);
                            widget.productTableEdit(
                                type: "4", list: productFeatures);
                          },
                          label: "",
                        )
                      ]),
              ],
              TableRow(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.rectangle,
                      border: const Border(
                          left: BorderSide(
                              width: .5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          bottom: BorderSide(
                              width: .5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Colors.grey,
                              width: .5,
                              style: BorderStyle.solid))),
                  children: [
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: UnderLinedInput(
                          formatter: false,
                          onChanged: (va) {
                            values.text = va;
                          },
                        )
                        // UnderLinedInput(
                        //                 formatter: false,
                        //               ),

                        ),
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: UnderLinedInput(
                          formatter: false,
                          onChanged: (va) {
                            key.text = va;
                          },
                        )
                        // UnderLinedInput(
                        //                   formatter: false,
                        //                 )),

                        ),
                    TableTextButton(
                        label: "",
                        onPress: () {
                          if (key.text.isNotEmpty == true &&
                              values.text.isNotEmpty) {
                            Keys model = Keys(
                              key: key.text ?? "",
                              value: values.text ?? '',
                            );
                            setState(() {
                              onChange = true;

                              keys?.add(model);

                              productFeatures = ProductFeatures(
                                  name: heading.text, keyValues: keys);
                              widget.productTableEdit(
                                  type: "4", list: productFeatures);
                              key.text = "";
                              values.text = "";
                            });
                          }
                        })
                  ]),
            ],
            widths: {
              0: FlexColumnWidth(5),
              1: FlexColumnWidth(5),
              2: FlexColumnWidth(2),
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
  TextEditingController key = TextEditingController();
  TextEditingController headingController = TextEditingController();
  bool onChange = false;
  Storage? ingriansProduct ;
  List<dynamic> keys = [];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    if (!onChange) {
      setState(() {
        keys = [];
      });

        setState(() {
          headingController.text = widget.ingredians?.name ?? "";
        });
        ingriansProduct = widget.ingredians;
        if (ingriansProduct?.keyValues?.isNotEmpty == true)
          keys = ingriansProduct?.keyValues ?? [];

    }
    onChange = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        underlineTextForm(
          controller: headingController,
          onChange: (va) {
            ingriansProduct = Storage(name: va);
            widget.storageTableEdit(
                type: "2", list: ingriansProduct);
          },
        ),
        Container(
          // width: w / 7,
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

                    padding: EdgeInsets.all(7),

                    height: 41,
                    textColor: Colors.white,
                    // color: Color(0xffE5E5E5),

                    size: 13,
                  ),
                  tableHeadtext(
                    '',

                    padding: EdgeInsets.all(7),

                    height: 41,
                    textColor: Colors.black,
                    // color: Color(0xffE5E5E5),

                    size: 13,
                  ),
                ],
              ),
              if (keys?.isNotEmpty == true) ...[
                for (var i = 0; i < keys!.length; i++)
                  TableRow(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.rectangle,
                          border: const Border(
                              left: BorderSide(
                                  width: .5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              bottom: BorderSide(
                                  width: .5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              right: BorderSide(
                                  color: Colors.grey,
                                  width: .5,
                                  style: BorderStyle.solid))),
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child:
                              // Text(keys?[i]["name"]??"")
                              UnderLinedInput(
                            formatter: false,
                            initialCheck: true,
                            last: keys?[i]["name"] ?? "",
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
                            ingriansProduct = Storage(
                                name: headingController.text, keyValues: keys);
                            widget.storageTableEdit(
                                type: "2", list: ingriansProduct);
                          },
                        ),
                      ]),
              ],
              TableRow(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.rectangle,
                      border: const Border(
                          left: BorderSide(
                              width: .5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          bottom: BorderSide(
                              width: .5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Colors.grey,
                              width: .5,
                              style: BorderStyle.solid))),
                  children: [
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: UnderLinedInput(
                          formatter: false,
                          onChanged: (va) {
                            onChange=true;
                            print(va);
                            name.text = va;
                            setState(() {});
                          },
                        )
                        // UnderLinedInput(
                        //   formatter: false,
                        // ),

                        ),
                    TableTextButton(
                      label: "",
                      onPress: () {
                        if (name.text.isNotEmpty) {
                          onChange = true;

                          setState(() {
                            Map map = {
                              "name": name.text,
                            };
                            keys.add(map);
                            print(keys);

                            print(keys);
                            print("attata+" + ingriansProduct.toString());
                            ingriansProduct = Storage(
                                name: headingController.text, keyValues: keys);
                            widget.storageTableEdit(
                                type: "2", list: ingriansProduct);
                            name.text = "";
                          });
                        }
                      },
                    )
                  ])
            ],
            widths: {
              0: FlexColumnWidth(5),
              2: FlexColumnWidth(2),
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
  TextEditingController key = TextEditingController();
  TextEditingController headingController = TextEditingController();
  bool onChange = false;
  Storage? usageProducts;
  List<dynamic> keys = [];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    if (!onChange) {
      setState(() {
        keys = [];
      });

      setState(() {
        headingController.text = widget.usageDirection?.name ?? "";
      });
      usageProducts = widget.usageDirection;
      if (usageProducts?.keyValues?.isNotEmpty == true)
        keys = usageProducts?.keyValues ?? [];
    }
    onChange = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        underlineTextForm(
          controller: headingController,
          onChange: (va) {
            print(va);
            usageProducts = Storage(name: va);
            widget.storageTableEdit(
                type: "3", list: usageProducts);
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
                    '',

                    padding: EdgeInsets.all(7),

                    height: 41,
                    textColor: Colors.white,
                    // color: Color(0xffE5E5E5),

                    size: 13,
                  ),
                  tableHeadtext(
                    '',

                    padding: EdgeInsets.all(7),

                    height: 41,
                    textColor: Colors.black,
                    // color: Color(0xffE5E5E5),

                    size: 13,
                  ),
                ],
              ),
              if (keys?.isNotEmpty == true) ...[
                for (var i = 0; i < keys!.length; i++)
                  TableRow(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.rectangle,
                          border: const Border(
                              left: BorderSide(
                                  width: .5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              bottom: BorderSide(
                                  width: .5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              right: BorderSide(
                                  color: Colors.grey,
                                  width: .5,
                                  style: BorderStyle.solid))),
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child:
                              // Text(keys?[i]["name"]??"")
                              UnderLinedInput(
                            formatter: false,
                            initialCheck: true,
                            last: keys?[i]["name"] ?? "",
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
                            usageProducts = Storage(
                                name: headingController.text, keyValues: keys);
                            widget.storageTableEdit(
                                type: "3", list: usageProducts);
                          },
                        ),
                      ]),
              ],
              TableRow(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.rectangle,
                      border: const Border(
                          left: BorderSide(
                              width: .5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          bottom: BorderSide(
                              width: .5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Colors.grey,
                              width: .5,
                              style: BorderStyle.solid))),
                  children: [
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: UnderLinedInput(
                          formatter: false,
                          onChanged: (va) {
                            onChange=true;
                            print(va);
                            name.text = va;
                            setState(() {});
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
                          if (name.text.isNotEmpty) {
                            Map map = {
                              "name": name.text,
                            };
                            keys.add(map);
                            print(keys);

                            print(keys);
                            print("attata+" + usageProducts.toString());
                            usageProducts = Storage(
                                name: headingController.text, keyValues: keys);
                            widget.storageTableEdit(
                                type: "3", list: usageProducts);
                            name.text = "";
                          }
                        });
                      },
                    )
                  ])
            ],
            widths: {
              0: FlexColumnWidth(5),
              2: FlexColumnWidth(2),
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
  TextEditingController key = TextEditingController();
  TextEditingController headingController = TextEditingController();
  bool onChange = false;
  Storage? aboutProducts ;
  List<dynamic> keys = [];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    if (!onChange) {
      setState(() {
        keys = [];
      });

      setState(() {
        headingController.text = widget.storage?.name ?? "";
      });
      aboutProducts = widget.storage;
      if (aboutProducts?.keyValues?.isNotEmpty == true)
        keys = aboutProducts?.keyValues ?? [];
    }
    onChange = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        underlineTextForm(
          controller: headingController,
          onChange: (va) {
            print(va);
            aboutProducts = Storage(name: va);
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
                    'Importand Info',

                    padding: EdgeInsets.all(7),

                    height: 41,
                    textColor: Colors.white,
                    // color: Color(0xffE5E5E5),

                    size: 13,
                  ),
                  tableHeadtext(
                    '',

                    padding: EdgeInsets.all(7),

                    height: 41,
                    textColor: Colors.black,
                    // color: Color(0xffE5E5E5),

                    size: 13,
                  ),
                ],
              ),
              if (keys?.isNotEmpty == true) ...[
                for (var i = 0; i < keys!.length; i++)
                  TableRow(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.rectangle,
                          border: const Border(
                              left: BorderSide(
                                  width: .5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              bottom: BorderSide(
                                  width: .5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              right: BorderSide(
                                  color: Colors.grey,
                                  width: .5,
                                  style: BorderStyle.solid))),
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child:
                              // Text(keys?[i]["name"]??"")
                              UnderLinedInput(
                            formatter: false,
                            initialCheck: true,
                            last: keys?[i]["name"] ?? "",
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
                            aboutProducts = Storage(
                                name: headingController.text, keyValues: keys);
                            widget.storageTableEdit(
                                type: "4", list: aboutProducts);
                          },
                        ),
                      ]),
              ],
              TableRow(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.rectangle,
                      border: const Border(
                          left: BorderSide(
                              width: .5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          bottom: BorderSide(
                              width: .5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Colors.grey,
                              width: .5,
                              style: BorderStyle.solid))),
                  children: [
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: UnderLinedInput(
                          formatter: false,
                          onChanged: (va) {
                            onChange=true;
                            print(va);
                            name.text = va;
                            setState(() {});
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
                          if (name.text.isNotEmpty) {
                            Map map = {
                              "name": name.text,
                            };
                            keys.add(map);
                            print(keys);

                            print(keys);
                            print("attata+" + aboutProducts.toString());

                            aboutProducts = Storage(
                                name: headingController.text, keyValues: keys);
                            widget.storageTableEdit(
                                type: "4", list: aboutProducts);
                            name.text = "";
                          }
                        });
                      },
                    )
                  ])
            ],
            widths: {
              0: FlexColumnWidth(5),
              2: FlexColumnWidth(2),
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
  bool onChange = false;
 ProductFeatures? importandInfo ;
  List<Keys> keys = [];
  TextEditingController key = TextEditingController();
  TextEditingController value = TextEditingController();
  TextEditingController headingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    print('wwwwwwwwwwwwwwwwwwwwwwww' + widget.importantInfo.toString());
    if (!onChange) {
      setState(() {
        keys = [];
      });

      importandInfo = widget.importantInfo;
      headingController =
          TextEditingController(text: importandInfo?.name ?? "");
      if (importandInfo?.keyValues?.isNotEmpty == true) {
        keys = importandInfo?.keyValues ?? [];
      }
    }
    print('wwwwwwwwwwwwwwwwwwwwwwww' + importandInfo.toString());
    onChange = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        underlineTextForm(
          controller: headingController,
          onChange: (va) {
            print(va);
            importandInfo = ProductFeatures(name: va);
            widget.productTableEdit(
                type: "5", list: importandInfo);
          },
        ),
        Container(
          // width: w/5,
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
                    'Importand Info',

                    padding: EdgeInsets.all(7),

                    height: 41,
                    textColor: Colors.white,
                    // color: Color(0xffE5E5E5),

                    size: 13,
                  ),
                  tableHeadtext(
                    '',
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
              if (keys?.isNotEmpty == true) ...[
                for (var i = 0; i < keys.length; i++)
                  TableRow(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.rectangle,
                          border: const Border(
                              left: BorderSide(
                                  width: .5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              bottom: BorderSide(
                                  width: .5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              right: BorderSide(
                                  color: Colors.grey,
                                  width: .5,
                                  style: BorderStyle.solid))),
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child:
                              // Text(keys[i].key??"")
                              UnderLinedInput(
                            last: keys[i].key ?? "",
                            initialCheck: true,
                            formatter: false,
                            onChanged: (va) {
                              print(va);
                              keys[i] = keys[i].copyWith(
                                key: va,
                              );
                            },
                          ),
                        ),
                        TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child:
                                // Text(keys[i].value??"",)
                                UnderLinedInput(
                              initialCheck: true,
                              last: keys[i].value ?? "" ?? "",
                              formatter: false,
                              onChanged: (va) {
                                print(va);
                                keys[i] = keys[i].copyWith(value: va);
                              },
                            )),
                        TableTextButton(
                          onPress: () {
                            importandInfo = ProductFeatures(
                                name: headingController.text, keyValues: keys);
                            widget.productTableEdit(
                                type: "5", list: importandInfo);
                          },
                          label: "",
                        )
                      ]),
              ],
              TableRow(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.rectangle,
                      border: const Border(
                          left: BorderSide(
                              width: .5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          bottom: BorderSide(
                              width: .5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Colors.grey,
                              width: .5,
                              style: BorderStyle.solid))),
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        onChanged: (va) {
                          key.text = va;
                        },
                        formatter: false,
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        onChanged: (va) {
                          value.text = va;
                        },
                        formatter: false,
                      ),
                    ),
                    TableTextButton(
                        label: "",
                        onPress: () {
                          Keys model = Keys(
                            key: key.text ?? "",
                            value: value.text ?? '',
                          );
                          setState(() {
                            onChange = true;

                            keys?.add(model);

                            importandInfo = ProductFeatures(
                                name: headingController.text, keyValues: keys);
                            widget.productTableEdit(
                                type: "5", list: importandInfo);
                            key.text = "";
                            value.text = "";
                          });
                        })
                  ])
            ],
            widths: {
              0: FlexColumnWidth(5),
              1: FlexColumnWidth(5),  2: FlexColumnWidth(2),
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
  String choosenValue = '';
  bool onChange = false;
  List<String> items = ["Male", "Female"];
  List<String> ethinikItem = ["young", "old", "medium"];

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
      });
      if (widget.inforMationList?.isNotEmpty == true) {
        inforMationList = widget?.inforMationList ?? [];
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
                      color: Colors.grey.shade200,
                      shape: BoxShape.rectangle,
                      border: const Border(
                          left: BorderSide(
                              width: .5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          bottom: BorderSide(
                              width: .5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Colors.grey,
                              width: .5,
                              style: BorderStyle.solid))),
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: CustomDropDown(
                          choosenValue: inforMationList?[i].genderGroup ?? "",
                          onChange: (val) {
                            // inforMationList?[i]=.gender=val;
                            //      print(inforMationList);
                          },
                          items: items),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        initialCheck: true,
                        last: inforMationList[i].ageGroup,
                        formatter: false,
                        onChanged: (val) {
                          // inforMationList[i].age=val;
                        },
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        formatter: false,
                        initialCheck: true,
                        last: inforMationList[i].ethinik,
                        onChanged: (val) {
                          // inforMationList[i].ethlink=val;
                        },
                      ),
                    ),
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
                            print(va);
                            // inforMationList[i].countries=va;
                          },
                          //show selected item
                          selectedItem: inforMationList[i].countries ?? "",
                        ),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: UnderLinedInput(
                        formatter: false,
                        initialCheck: true,
                        last: inforMationList[i].purpose,
                        onChanged: (val) {
                          // inforMationList[i].purpose=val;
                        },
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: TableTextButton(
                        label: "Add",
                        onPress: () {
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
                    ),
                  ]),
          ],
          TableRow(
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  shape: BoxShape.rectangle,
                  border: const Border(
                      left: BorderSide(
                          width: .5,
                          color: Colors.grey,
                          style: BorderStyle.solid),
                      bottom: BorderSide(
                          width: .5,
                          color: Colors.grey,
                          style: BorderStyle.solid),
                      right: BorderSide(
                          color: Colors.grey,
                          width: .5,
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
                    formatter: false,
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
