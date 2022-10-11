import 'package:flutter/material.dart';
import 'package:inventory/widgets/NewinputScreen.dart';

class PromotionSaleStableTable extends StatefulWidget {
  final TextEditingController salesCode;
  final TextEditingController offerPeriod;
  final TextEditingController offerGroup;
  final TextEditingController saleApplyingPlace;
  final TextEditingController saleApplyingPlaceName;
  final TextEditingController title;
  final TextEditingController description;
  final TextEditingController image;

  final TextEditingController basedOn;
  final TextEditingController discountPercenagePrice;
  final TextEditingController totalprice;
  final TextEditingController saleApplyingOn;
  final TextEditingController saleApplyingName;
  final TextEditingController maximumCount;
  final TextEditingController availableCustomerGroup;
  final TextEditingController priority;



  // final Function trueOrFalseChange;
  final bool isAvailableforAll;
  final bool overridePriority;
  final bool isAdminBased;
  final bool isActive;











  PromotionSaleStableTable({
    required this.salesCode, required this.offerPeriod, required this.offerGroup, required this.saleApplyingPlace, required this.saleApplyingPlaceName, required this.title, required this.description, required this.image, required this.basedOn, required this.discountPercenagePrice, required this.totalprice, required this.saleApplyingOn, required this.saleApplyingName, required this.maximumCount, required this.availableCustomerGroup, required this.priority, required this.isAvailableforAll, required this.overridePriority, required this.isAdminBased, required this.isActive});
  @override
  _PromotionSaleStableTableState createState() => _PromotionSaleStableTableState();
}

class _PromotionSaleStableTableState extends State<PromotionSaleStableTable> {

  String imageName1="";
  String imageName2="";
  String imageName3="";
  String imageName4="";
  String imageName5="";
  String imageName6="";
  String imageName7="";
  String imageName8="";
  String imageEncode="";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return
      Builder(
          builder: (context) {
            return Column(
              children: [

                Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(child: Column(
                        children: [
                          SizedBox(
                            height: height * .035,
                          ),

                          NewInputCard(
                              readOnly: true,
                              controller: widget.salesCode,
                              title: "Sale Code"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(  readOnly: true,
                              controller: widget.offerPeriod, title: " Offer Period"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(  readOnly: true,
                              controller: widget.offerGroup, title: "OfferGroup"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              readOnly: true,


                              controller: widget.saleApplyingPlace, title: "Sale Applying Place"),
                          SizedBox(
                            height: height * .030,
                          ),

                          NewInputCard(
                              formatter: true,

                              controller: widget.saleApplyingName, title: "Sale Applying Place Name"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(



                              controller: widget.title, title: "Title"),
                          SizedBox(
                            height: height * .030,
                          ),
                          NewInputCard(
                              readOnly: true,


                              controller: widget.description, title: "Description"),
                          SizedBox(
                            height: height * .030,
                          ),




                        ],
                      )),
                      Expanded(child: Column(children: [
                        SizedBox(
                          height: height * .035,
                        ),

                        NewInputCard(
                            controller: widget.image, title: "Image"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(


                            controller: widget.basedOn, title: "Based On"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(

                            controller: widget.discountPercenagePrice, title: "Discount Percentage/price"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(



                            controller: widget.totalprice, title: "Total Price"),
                        SizedBox(
                          height: height * .030,
                        ),

                        NewInputCard(
                            readOnly: true,
                            controller: widget.saleApplyingOn, title: "Sale Applying On"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            readOnly: true,
                            controller: widget.saleApplyingName, title: "Sale  Applying name"),
                        SizedBox(
                          height: height * .030,
                        ),
                        NewInputCard(
                            controller: widget.maximumCount, title: "Maximum Count"),





                      ],)),
                      Expanded(child: Column(children: [

                        NewInputCard(
                            readOnly: true,
                            controller: widget.availableCustomerGroup, title: "Available Customer Group"),
                        SizedBox(
                          height: height * .030,
                        ),

                        NewInputCard(

                            controller: widget.priority, title: "Priority"),
                        SizedBox(
                          height: height * .030,
                        ),
                        PopUpSwitchTile(
                            value:widget?. overridePriority??false,
                            title: "Override Priority",
                            onClick: (gg) {
                              bool val=widget. overridePriority;
                              val=!val;
                              // widget.trueOrFalseChange(type: "1",val:val);





                              // extendedWarranty = gg;
                              // widget.changeExtendedWarranty(gg);
                              // onChangeExtWarranty = gg;
                              setState(() {});
                            }),

                        SizedBox(
                          height: height * .030,
                        ),
                        PopUpSwitchTile(
                            value:widget?. isAdminBased??false,
                            title: "Is Admin Baseed",
                            onClick: (gg) {
                              bool val=widget. overridePriority;
                              val=!val;
                              // widget.trueOrFalseChange(type: "1",val:val);





                              // extendedWarranty = gg;
                              // widget.changeExtendedWarranty(gg);
                              // onChangeExtWarranty = gg;
                              setState(() {});
                            }),

                        SizedBox(
                          height: height * .030,
                        ),


                        PopUpSwitchTile(
                            value:widget?. isActive??false,
                            title: "Is Avtive",
                            onClick: (gg) {
                              bool val=widget.isActive;
                              val=!val;
                              // widget.trueOrFalseChange(type: "2",val:val);
                              setState(() {});
                            }),
                        SizedBox(
                          height: height * .030,
                        ),
                        PopUpSwitchTile(
                            value:widget?. isAvailableforAll??false,
                            title: "Stock Warning",
                            onClick: (gg) {
                              bool val=widget. isAvailableforAll;
                              val=!val;
                              // widget.trueOrFalseChange(type: "1",val:val);





                              // extendedWarranty = gg;
                              // widget.changeExtendedWarranty(gg);
                              // onChangeExtWarranty = gg;
                              setState(() {});
                            }),

                        SizedBox(
                          height: height * .200,
                        ),














                      ],))

                    ],
                  ),
                ),


              ],
            );
          }
      );
  }
}