import 'package:flutter/material.dart';
import 'package:inventory/Screens/promotiontab/sale/screens/productliststable_tsablescreen.dart';
import 'package:inventory/Screens/promotiontab/sale/screens/segmenttable.dart';
import 'package:inventory/Screens/promotiontab/sale/screens/stable_expandedtables.dart';
import 'package:inventory/commonWidget/Colors.dart';
import 'package:inventory/commonWidget/Textwidget.dart';

class  SalesMainScreen extends StatefulWidget {
  @override
  _SalesMainScreenState createState() => _SalesMainScreenState();
}

class _SalesMainScreenState extends State< SalesMainScreen> {
  TextEditingController  saleCodeController=TextEditingController();
  TextEditingController  offerPeriodController=TextEditingController();
  TextEditingController  offerGroupController=TextEditingController();
  TextEditingController  saleApplyingPlaceController=TextEditingController();
  TextEditingController  saleApplyingPlaceNameController=TextEditingController();
  TextEditingController  titleController=TextEditingController();
  TextEditingController  descriptionController=TextEditingController();
  TextEditingController  imageController=TextEditingController();
  TextEditingController  basedOnController=TextEditingController();
  TextEditingController  discountPercentagePriceController=TextEditingController();
  TextEditingController  totalPricePriceController=TextEditingController();
  TextEditingController  saleApplyingOnController=TextEditingController();
  TextEditingController  saleApplyingNameController=TextEditingController();
  TextEditingController  maximumCountController=TextEditingController();
  TextEditingController  availableCustomerGroupController=TextEditingController();
  TextEditingController  priorityController=TextEditingController();
  bool isAvailableForAll=false;
  bool overidePriority=false;
  bool isAdminBased=false;
  bool isActive=false;

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Pellet.bagroundColor,
      body: SingleChildScrollView(

        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.red,
                height: 600,
                width: 200,
              ),
              Expanded(child: Column(children: [
                SizedBox(height: height*.06,),
                SegmentGrowableTable(),
                SizedBox(height: height*.04,),
                PromotionSaleStableTable(
                  isActive: isActive,
                  priority: priorityController,
                  description: descriptionController,
                  image: imageController,
                   totalprice: totalPricePriceController,
                  availableCustomerGroup: availableCustomerGroupController,
                  basedOn: basedOnController,
                  discountPercenagePrice: discountPercentagePriceController,
                  isAdminBased: isAdminBased,
                  isAvailableforAll: isAvailableForAll,
                  maximumCount: maximumCountController,
                  offerGroup: offerGroupController,
                  offerPeriod: offerPeriodController,
                  overridePriority: overidePriority,
                  saleApplyingName: saleApplyingNameController,
                  saleApplyingOn: saleApplyingOnController,
                  saleApplyingPlace: saleApplyingPlaceController,
                  saleApplyingPlaceName: saleApplyingPlaceNameController,
                  salesCode: saleCodeController,
                  title: titleController,
                ),
                SizedBox(height: height*.04,),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextWidget(text: "Based On Batch"),
                  ],
                ),
                ProductListGrowableTable()

              ],))

            ],
          ),
        ),
      ),
    );
  }
}
