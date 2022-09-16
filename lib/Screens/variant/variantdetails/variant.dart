import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/listvraiant/listvraiant_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/varaintRead/variantread_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/variant_post/variantpost_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/variantsearch/variantsearch_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variant_read.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variantpatch.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variantpost.dart';
import 'package:inventory/Screens/variant/variantdetails/screens.dart';

import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/searchTextfield.dart';

class VariantDetailScreen extends StatefulWidget {
  @override
  _VariantDetailScreenState createState() => _VariantDetailScreenState();
}

class _VariantDetailScreenState extends State<VariantDetailScreen> {

  TextEditingController controller = TextEditingController();
  TextEditingController itemCodeController = TextEditingController();
  TextEditingController searchController = TextEditingController();
  TextEditingController variantCodeController = TextEditingController();
  TextEditingController variantNameController = TextEditingController();
  TextEditingController variantValueController = TextEditingController();
  TextEditingController variantFrameWorkController = TextEditingController();
  TextEditingController searchNAmeController = TextEditingController();
  TextEditingController displayNAmeController = TextEditingController();
  TextEditingController manuFactreIdController = TextEditingController();
  TextEditingController manuFactreNameController = TextEditingController();
  TextEditingController saftyStockController = TextEditingController();
  TextEditingController reorederPointController = TextEditingController();
  TextEditingController reorederQuaintityController = TextEditingController();
  TextEditingController image1Controller = TextEditingController();
  TextEditingController image2Controller = TextEditingController();
  TextEditingController image3Controller = TextEditingController();
  TextEditingController image4Controller = TextEditingController();
  TextEditingController image5Controller = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController arabicDescriptionController = TextEditingController();
  TextEditingController additionalDescriptionController = TextEditingController();
  TextEditingController posNameController = TextEditingController();
  TextEditingController uomGroupController = TextEditingController();
  TextEditingController baseUomController = TextEditingController();
  TextEditingController salesUomController = TextEditingController();
  TextEditingController purchaseUomController = TextEditingController();
  TextEditingController grossWeightController = TextEditingController();
  TextEditingController netWeightController = TextEditingController();
  TextEditingController unitCostController = TextEditingController();
  TextEditingController landingCostController = TextEditingController();
  TextEditingController actualCostController = TextEditingController();
  TextEditingController unitPrizeController = TextEditingController();
  TextEditingController basePrizePrizeController = TextEditingController();
  TextEditingController producedCountryController = TextEditingController();
  TextEditingController ratioEcommerceController = TextEditingController();
  TextEditingController minMaxController = TextEditingController();
  TextEditingController wholeSaleStockController = TextEditingController();
  TextEditingController minSalesOrderLimitController = TextEditingController();
  TextEditingController maxSalesOrderLimitController = TextEditingController();
  TextEditingController seblingController = TextEditingController();
  TextEditingController linkedItemController = TextEditingController();
  TextEditingController videoUrlController = TextEditingController();
  TextEditingController minimumGpController = TextEditingController();
  TextEditingController relatedController = TextEditingController();
  TextEditingController maximumGpController = TextEditingController();
  TextEditingController averageGpController = TextEditingController();
  TextEditingController targetedGpController = TextEditingController();
  TextEditingController minPurchaseOrderLimitController = TextEditingController();
  TextEditingController maxPurchaseOrderLimitController = TextEditingController();
  TextEditingController vatController = TextEditingController();
  TextEditingController exciseTaxController = TextEditingController();
  TextEditingController returnTypeController = TextEditingController();
  TextEditingController returnTimeController = TextEditingController();
  TextEditingController statusController = TextEditingController();
  TextEditingController barCodeController = TextEditingController();
  TextEditingController qrCodeController = TextEditingController();
  TextEditingController rfIdController = TextEditingController();
  bool salesBolock = false;
  bool purchaseBolock = false;
  bool stockWarning = false;
  bool itmcatelog = false;
  bool itmImage = false;
  bool active = false;
  int? veritiaclid = 0;
  int? checkIdid = 0;
  bool select=false;
  bool addNew=false;
  List<AlternativeBarcode>alternativeBarcode=[];
  List<AlternativeBarcode>alternativeQrCode=[];
  List<Storage>? aboutProducts=[];
  List<VendorDetails>? vendorDetails=[];
  List<ProductFeatures>? productDetails=[];
  List<ProductFeatures>? productFeatures=[];
  List<ProductFeatures>? additionalInfo=[];
  List<ProductFeatures>? nutriantsFacts=[];
  List<ProductFeatures>? ingredians=[];
  List<Storage>? Ingrediants=[];
  VariantReadModel group=VariantReadModel();

  List<Storage>? usageDirection=[];
  List<Storage>? storage=[];
  List<ProductFeatures>? importantInfo=[];
  List<ProductFeatures>? productBehavior=[];
  bool exportCheck=false;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  int selectedVertical = 0;
  var list;
  bool img1=false;
  bool img2=false;
  bool img3=false;
  bool img4=false;
  bool img5=false;


  trueOrFalseChange({String? type,bool val=false}){

    switch(type){

      case 'Sales' :
        salesBolock=val;
        setState(() {

        });
        break;

      case 'Purchase' :
        purchaseBolock=val;
        setState(() {

        });
        break;

      case 'Stock' :
        stockWarning=val;
        setState(() {

        });
        break;
      case 'Catalog' :
        itmcatelog=val;
        setState(() {
        });
        break;
      case 'Image' :
        itmImage=val;
        setState(() {

        });
        break;
      case 'Active' :
        itmImage=val;
        setState(() {

        });
        break;




    }

  }
  vendorDetailsTableAssign({List<VendorDetails>?list}) {
    setState(() {
      vendorDetails = list;
    });
  }
barQrCodeTableAssign({String? type,List<AlternativeBarcode>?list}){
  switch(type){

    case '1' :
      alternativeBarcode=list??[];
      break;

    case '2' :
      alternativeQrCode=list??[];
      break;







  }

  }
  storageDetailsTableAssign({String? type,List<Storage>?list}){

    switch(type){

      case '1' :
        aboutProducts=list;
        break;

      case '2' :
        Ingrediants=list;
        break;

      case '3' :
        usageDirection=list;
        break;
      case '4' :
        storage=list;
        break;





    }


  }
  productFeaturesableAssign({String? type,List<ProductFeatures>?list}){
    print("arrived"+type.toString());
    // aboutProducts=list;



    switch(type){

      case '1' :
        productDetails=list;
        break;

      case '2' :
        productFeatures=list;
        break;

      case '3' :
        additionalInfo=list;
        break;
      case '4' :
        nutriantsFacts=list;
        break;
      case '5' :
        importantInfo=list;
        break;




    }
  }

  imagePostCheck({String? type}){




    switch(type){

      case '1' :
        img1=true;
        break;

      case '2' :
        img2=true;
        break;

      case '3' :
        img3=true;
        break;
      case '4' :
        img4=true;
        break;
      case '5' :
        img5=true;
        break;




    }


  }
  clear(){
    setState(() {
      aboutProducts=[];
      importantInfo=[];
      productDetails=[];
      nutriantsFacts=[];
      usageDirection=[];
      productFeatures=[];
      storage=[];
      Ingrediants=[];
      importantInfo=[];
    });




  }

  @override
  void initState() {
    context.read<ListvraiantCubit>().getVariantList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => VariantreadCubit(),
        ),
        BlocProvider(
          create: (context) => VariantsearchCubit(),
        ),
        BlocProvider(
          create: (context) => VariantpostCubit(),
        ),

        
      ],
      child: Builder(
        builder: (context) {
          return MultiBlocListener(
  listeners: [
    BlocListener<VariantreadCubit, VariantreadState>(
  listener: (context, state) {
    print("state++++++++++++++++++++++++++++++++");
    state.maybeWhen(
        orElse: () {},
        error: () {
          print("error");
        },
        success: (data) {
        setState(() {
          print("aval ethito" + data.toString());
          // group=data;

          variantNameController.text=data.name??"";
          variantNameController.text=data.name??"";
          salesUomController.text=data.salesUomData?.salesUomName??"";
          purchaseUomController.text=data.purchaseUomdata?.purchaseUomName??"";
          searchNAmeController.text=data?.searchName??"";
          posNameController.text=data?.posName??"";
          displayNAmeController.text=data?.displayname??"";
          descriptionController.text=data?.description??"";
          arabicDescriptionController.text=data?.arabicDescription??"";
          additionalDescriptionController.text=data?.additionalDescription??"";
          image1Controller.text=data?.image1??"";
          image2Controller.text=data?.variantMeta?.image?.keyValues?.image2??"";

          image3Controller.text=data?.variantMeta?.image?.keyValues?.image3??"";
          image4Controller.text=data?.variantMeta?.image?.keyValues?.image4??"";
          image5Controller.text=data?.variantMeta?.image?.keyValues?.image5??"";
          grossWeightController.text=data.grossWeight??"";
          netWeightController.text=data.netWeight??"";
          // maxSalesOrderLimitController.text=data.max
          unitCostController.text=data.unitCost.toString()??"";
          landingCostController.text=data.landingCost.toString()??"";
          actualCostController.text=data.actualCost.toString()??"";
          producedCountryController.text=data?.producedCountry??"";
          videoUrlController.text=data?.vdeioUrl??"";
          salesBolock=data.salesBlock??false;
          purchaseBolock=data.purchaseBlock??false;
          stockWarning=data.stockWarning??false;
          itmcatelog=data.itemCatalog??false;
          itmImage=data.itemImage??false;
          active=data.isActive??false;
          vatController.text=data.vat.toString()??"";
          exciseTaxController.text=data.vat.toString()??"";
          minimumGpController.text=data.minGap.toString()??"";
          maximumGpController.text=data.maxGp.toString()??"";
          targetedGpController.text=data.targetedGp.toString()??"";
          alternativeBarcode=data.alterNativeBarcode??[];
          alternativeQrCode=data.alterNativeQrCode??[];
          barCodeController.text=data?.barcode?.barcodeNumber??"";
          qrCodeController.text=data?.qrcode?.qrCodeNumber??"";
          aboutProducts=data.variantMeta?.aboutProducts??[];
          importantInfo=data.variantMeta?.importantInfo??[];
          productDetails=data.variantMeta?.productDetails??[];
          nutriantsFacts=data.variantMeta?.nutriantFacts??[];
          usageDirection=data.variantMeta?.usageDirection??[];
          // vendorDetails=data.vendorDetails??[];
          print("vendor detailse"+vendorDetails.toString());
          productFeatures=data.variantMeta?.productFeatures??[];
          storage=data.variantMeta?.storage??[];
          Ingrediants=data.variantMeta?.Ingrediants??[];
          importantInfo=data.variantMeta?.importantInfo??[];
          // addNew=false;
















        });





        });
  },
),
    BlocListener<VariantpostCubit, VariantpostState>(
      listener: (context, state) {
        print("postssssssss" + state.toString());
        state.maybeWhen(orElse: () {
          // context.
          context.showSnackBarError("Loadingggg");
        }, error: () {
          context.showSnackBarError(Variable.errorMessege);
        }, success: (data) {
          if (data.data1) {
            context.showSnackBarSuccess(data.data2);
            Timer(Duration(seconds: 5), () {
              setState(() {
                context.read<ListvraiantCubit>().getVariantList();
                // select=false;
              });
            });
          } else {
            context.showSnackBarError(data.data2);
            print(data.data1);
          }
          ;
        });
      },
    ),
    BlocListener<VariantsearchCubit, VariantsearchState>(
      listener: (context, state) {
        print("state++++++++++++++++++++++++++++++++");
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error");
            },
            success: (data) {
              if(data.data.length==0){
                exportCheck=false;
                context.showSnackBarError("Does not exist");
                setState(() {

                });

              }
              else{
                print("aaaayyiram"+data.data.toString());
                exportCheck=true;
                checkIdid=data.data[0].id;
                setState(() {

                });
              }












              setState(() {

              });









            });
      },
    ),

  ],
  child: BlocConsumer<ListvraiantCubit, ListvraiantState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    print("aaaaayyyiram" + list.data.toString());
                    list = list;

                    result = list.data;
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        // Variable.verticalid=result[0].id;
                        // print("Variable.ak"+Variable.verticalid.toString());
                        context.read<VariantreadCubit>().getVariantRead(veritiaclid!);
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
                                children: [
                                  VariantVerticalList(
                                    list: list,


                                    selectedVertical: selectedVertical,
                                    itemsearch: itemsearch,
                                    ontap: (int index) {
                                      setState(() {
                                        selectedVertical = index;

                                        select=false;
                                        clear();
                                        exportCheck=false;
                                        // addNew=true;

                                        // updateCheck=false;
                                        print("rijina"+result[index].id.toString());


                                        veritiaclid = result[index].id;
                                        // clear();
                                        // select=true;
                                        //
                                        //



                                        setState(() {
                                          context.read<VariantreadCubit>().getVariantRead(veritiaclid!);

                                        });
                                      });
                                    },
                                    search: (String va) {
                                      print(va);
                                      context
                                          .read<ListvraiantCubit>()
                                          .getSearchVariantList(va);
                                      if (va == "") {
                                        context
                                            .read<ListvraiantCubit>()
                                            .getVariantList();
                                      }
                                    },
                                    result: result,
                                  ),
                                  Expanded(child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: height * .04,),
                                      Container(
                                        width: width / 2,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: width * .02),
                                              child: SearchTextfiled(
                                                w: width * .3,
                                                h: 48,

                                                // h: h,
                                                color: Color(0xffFAFAFA),
                                                hintText: "Search...",
                                                ctrlr: searchController,
                                                onChanged: (va) {


                                                },
                                                // onComplete: ( String? va),
                                              ),
                                            ),
                                            gapWidthColumn(width: width * .01),
                                            Button(null, Colors.grey,
                                                ctx: context,
                                                text: "Search",
                                                height: 32,
                                                Color: Color(0xff3E4F5B),
                                                width: 90,
                                                labelcolor: Colors.white,
                                                iconColor: Colors.white,
                                                onApply: () {
                                              setState(() {
                                                print("testing Case");
                                                context.read<VariantsearchCubit>().getVariantSearch(searchController.text??"");
                                              });



                                                }),
                                            gapWidthColumn(width: width * .008),
                                            Visibility(
                                              visible: exportCheck,
                                              child: Button(null, Colors.grey,
                                                  ctx: context,
                                                  text: "export",
                                                  height: 32,
                                                  Color: Color(0xff3E4F5B),
                                                  width: 90,
                                                  labelcolor: Colors.white,
                                                  iconColor: Colors.white,
                                                  onApply: () {
                                                setState(() {
                                                  print(checkIdid);
                                                  select=true;
                                                  context.read<VariantreadCubit>().getVariantRead(checkIdid!);

                                                });





                                                  }),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: height * .15,),
                                      VariantStabletable(
                                        searchName: searchNAmeController,
                                        image2: image2Controller,
                                        image3: image3Controller,
                                        image1: image1Controller,
                                        displayName: displayNAmeController,
                                        image4: image4Controller,
                                        image5: image5Controller,
                                        itemId: itemCodeController,
                                        manuFactureId: manuFactreIdController,
                                        manuFactureName: manuFactreNameController,
                                        reorderPoint: reorederPointController,
                                        reorderQuantity: reorederQuaintityController,
                                        saftyStock: saftyStockController,
                                        salesBlock: salesBolock,
                                        variantCode: variantCodeController,
                                        variantFrameWork: variantFrameWorkController,
                                        variantName: variantNameController,
                                        variantValue: variantValueController,
                                        description: descriptionController,
                                        arabicDescription: arabicDescriptionController,
                                        additionDescription: additionalDescriptionController,
                                        posName: posNameController,
                                        uomGroup: uomGroupController,
                                        baseuom: baseUomController,
                                        salesUom: salesUomController,
                                        purchaseUom: purchaseUomController,
                                        grossWeight: grossWeightController,
                                        netWeight: netWeightController,
                                        unitCost: unitCostController,
                                        landingCost: landingCostController,
                                        actualCost: actualCostController,
                                        unitPrize: unitPrizeController,
                                        basePrize: basePrizePrizeController,
                                        producedCountry: producedCountryController,
                                        purchaseBlock: purchaseBolock,
                                        ratioEccomerce: ratioEcommerceController,
                                        minMax: minMaxController,
                                        wholeSaleStock: wholeSaleStockController,
                                        minSalesOrderLimit: minSalesOrderLimitController,
                                        maxSalesOrderLimit: maxSalesOrderLimitController,
                                        stockWarning: stockWarning,
                                        itmCatelog: itmcatelog,
                                        itmImage: itmImage,
                                        active: active,
                                        sellingId: seblingController,
                                       linkedItem: linkedItemController,
                                        videoUrl: videoUrlController,
                                        minimumGp: minimumGpController,
                                        maximumGp: maximumGpController,
                                        averageGp: averageGpController,
                                        targetedgp: targetedGpController,
                                        minPurchaseOrderLimit: minPurchaseOrderLimitController,
                                        maxPurchaseOrderLimit: maxPurchaseOrderLimitController,
                                        vat: vatController,
                                        exciseTax: exciseTaxController,
                                        returnType: returnTypeController,
                                        returnTime: returnTimeController,
                                        status: statusController, relatedItem: relatedController,
                                        imagePostCheck:imagePostCheck,
                                          trueOrFalseChange:trueOrFalseChange




                                      ),
                                      SizedBox(height: 5,),
                                      Row(mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          TextWidget(text: "Vendor details"),
                                        ],
                                      ),
                                      Divider(color: Colors.grey,thickness: 1,),

                                      VendorDetailsVarient(
                                          vendorDetails:vendorDetails,
                                        vendorTableEdit:vendorDetailsTableAssign,
                                      ),
                                      SizedBox(height:height * .10,),
                                      Row(mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          TextWidget(text: "Identification"),
                                        ],
                                      ),
                                      Divider(color: Colors.grey,thickness: 1,),
                                      SizedBox(height: 10,),
                                      Identification(
                                        rfId: rfIdController,
                                        qrCode: qrCodeController,
                                        barCode: barCodeController,
                                          alternativeBarcode:alternativeBarcode,
                                        alternativeQrCode: alternativeQrCode,
                                          barQrCodeTableAssign:barQrCodeTableAssign,

                                      ),
                                      SizedBox(height: 10,),
                                      TextWidget(text: "Product"),
                                      Divider(color: Colors.grey,thickness: 1,),
                                      ProductTables(
                                        addNew:addNew,
                                          aboutProducts:aboutProducts,
                                        productDetails:productDetails,
                                        productFeatures:productFeatures,
                                        additionalInfo:additionalInfo,
                                        nutriantsFacts:nutriantsFacts,
                                        ingredians:Ingrediants,
                                          usageDirection:usageDirection,
                                        storage:storage,
                                        storageTableEdit:storageDetailsTableAssign,
                                        productTableEdit:productFeaturesableAssign,
                                        imPorantInfo:importantInfo,




                                      ),
                                      SizedBox(height: height * .13,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Button(Icons.delete, Colors.red,
                                              ctx: context,
                                              text: "Discard",
                                              onApply: () {
                                                // if(updateCheck){
                                                //   // clears();
                                                //
                                                //
                                                // }

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
                                              text: select?"Save":"update",
                                              height: 29,
                                              Color: Color(0xff3E4F5B),
                                              width: 90,
                                              labelcolor: Colors.white,
                                              iconColor: Colors.white,
                                              onApply: () {
                                            if(select){
                                              VariantPost model = VariantPost(
                                                inventoryId: Variable.inventory_ID,
                                                searchName:searchNAmeController?.text??"",
                                                posName:posNameController?.text??"",
                                                displayName:displayNAmeController?.text??"",
                                                arabicDescription:arabicDescriptionController?.text??"",
                                                additionalDescription:additionalDescriptionController?.text??"",
                                                salesUom: int.tryParse(salesUomController?.text??""),
                                                purchaseUom: int.tryParse(purchaseUomController?.text??""),
                                                grossWeight:double.tryParse( grossWeightController.text??""),
                                                actualCost:double.tryParse( actualCostController.text??""),
                                                safetyStock: int.tryParse(saftyStockController?.text??""),
                                                reOrderPoint: int.tryParse(reorederPointController?.text??""),
                                                reorderQuantity: int.tryParse(reorederQuaintityController?.text??""),
                                                salesBolock: salesBolock,
                                                purchaseBlock: purchaseBolock,
                                                ratioToEcommerce: ratioEcommerceController.text??"",
                                                minMaxRatio: minMaxController?.text??"",
                                                wholeSaleStock:int.tryParse( wholeSaleStockController?.text??""),
                                                minSalesOrderLimit:int.tryParse( minSalesOrderLimitController?.text??""),
                                                maxSalesOrderLimit:int.tryParse( maxSalesOrderLimitController?.text??""),
                                                minPurchaseOrderLimit:int.tryParse( minPurchaseOrderLimitController?.text??""),
                                                maxPurchaseOrderLimit:int.tryParse( maxPurchaseOrderLimitController?.text??""),
                                                stockWarning:stockWarning,
                                                retailSellingPricePercentage:2,
                                                wholeSellingPricePercentage: 2,
                                                onlineSellingPercenage: 2,
                                                producedCountry: producedCountryController?.text??"",
                                                basePrize: double.tryParse(basePrizePrizeController.text),
                                                vat: double.tryParse(vatController.text??""),
                                                excessTax: double.tryParse(exciseTaxController.text??""),
                                                minGap: double.tryParse(minimumGpController.text??""),
                                                maxGp: double.tryParse(maximumGpController.text??""),
                                                avgGp: double.tryParse(averageGpController.text??""),
                                                targetedGp: double.tryParse(targetedGpController.text??""),
                                                vedioUrl: videoUrlController.text??'',
                                                alternativeBarcode:alternativeBarcode??[],
                                                alternativeQrCodeBarcode: alternativeQrCode??[],
                                                returnType: returnTypeController.text??"",
                                                returnTime: int.tryParse(returnTimeController.text),
                                                variantStatus: "va",
                                                isActive: active,
                                                image2:img2?Variable.img2:  int.tryParse(image2Controller?.text??""),
                                                image3:img3?Variable.img3: int.tryParse(image3Controller?.text??""),
                                                image4:img4?Variable.img4: int.tryParse(image4Controller?.text??""),
                                                image5:img5?Variable.img5: int.tryParse(image5Controller?.text??""),
                                                catalog1:int.tryParse( group.variantMeta?.catelog?.keyValues?.catelog1??""),
                                                catalog2:int.tryParse( group.variantMeta?.catelog?.keyValues?.catelog2??""),
                                                catalog3:int.tryParse( group.variantMeta?.catelog?.keyValues?.catelog3??""),
                                                catalog4:int.tryParse( group.variantMeta?.catelog?.keyValues?.catelog4??""),
                                                catalog5:int.tryParse( group.variantMeta?.catelog?.keyValues?.catelog5??""),
                                                catalog6:int.tryParse( group.variantMeta?.catelog?.keyValues?.catelog6??""),
                                                catalog7:int.tryParse( group.variantMeta?.catelog?.keyValues?.catelog7??""),
                                                catalog8:int.tryParse( group.variantMeta?.catelog?.keyValues?.catelog8??""),
                                                aboutProducts: aboutProducts??[],
                                                productDetails: productDetails??[],
                                                productFeatures:productFeatures??[],
                                                additionalInfo: additionalInfo??[],
                                                nutriantsFacts:nutriantsFacts??[],
                                                Ingrediants: Ingrediants??[],
                                                usageDirection: usageDirection??[],
                                                storage:storage??[],
                                                importantInfo:importantInfo??[],
                                                productBehavior: productBehavior??[],












                                              );
                                              print("model"+  model.toString());
                                              context.read<VariantpostCubit>().postVariant(checkIdid, model);
                                              setState(() {

                                              });
                                            }
                                            else{
                                              VariantPatch model=VariantPatch (
                                                variantName: variantNameController!.text.isEmpty?null:variantNameController?.text,
                                                salesUom: salesUomController!.text.isEmpty?null:salesUomController?.text,
                                                purchaseUom: purchaseUomController!.text.isEmpty?null:purchaseUomController?.text,
                                                barcode: barCodeController!.text.isEmpty?null:barCodeController.text,
                                                qrcode: qrCodeController!.text.isEmpty?null:qrCodeController?.text,
                                                alternativeBarcode: alternativeBarcode.isEmpty?null: alternativeBarcode,
                                                alternativeQrCodeBarcode: alternativeQrCode.isEmpty?null:alternativeQrCode,
                                                searchName: searchNAmeController.text.isEmpty?null:searchNAmeController?.text,
                                                displayName: displayNAmeController!.text.isEmpty?null:displayNAmeController?.text,
                                                description: descriptionController.text.isEmpty?null:descriptionController?.text,
                                                arabicDescription: arabicDescriptionController.text.isEmpty?null: arabicDescriptionController?.text,
                                                additionalDescription: additionalDescriptionController.text.isEmpty?null:additionalDescriptionController?.text,
                                                posName: posNameController.text.isEmpty?null:posNameController?.text,
                                                grossWeight: grossWeightController.text.isEmpty?null:grossWeightController?.text,
                                                netWeight: netWeightController.text.isEmpty?null:netWeightController?.text,
                                                unitCost: double.tryParse( unitCostController?.text??""),
                                                landingCost:double.tryParse( landingCostController?.text??""),
                                                actualCost:double.tryParse( actualCostController?.text??""),
                                                basePrize:double.tryParse( basePrizePrizeController?.text??""),
                                                manuFacturedId:int.tryParse( manuFactreIdController?.text??""),
                                                manuFacturedName: manuFactreNameController.text.isEmpty?null:manuFactreNameController?.text,
                                                safetyStock:int.tryParse(saftyStockController?.text??""),
                                                reOrderPoint:int.tryParse(reorederPointController?.text??""),
                                                reorderQuantity:int.tryParse(reorederQuaintityController?.text??""),
                                                salesBolock: salesBolock,
                                                purchaseBlock: purchaseBolock,
                                                ratioToEcommerce: ratioEcommerceController!.text.isEmpty?null: ratioEcommerceController?.text,
                                                minMaxRatio: minMaxController!.text.isEmpty?null:minMaxController?.text,
                                                minSalesOrderLimit:int.tryParse( minSalesOrderLimitController?.text??""),
                                                maxSalesOrderLimit:int.tryParse( maxSalesOrderLimitController?.text??""),
                                                wholeSaleStock:int.tryParse( wholeSaleStockController?.text??""),
                                                onlineSellingPercenage:double.tryParse( ""),
                                                minGap:double.tryParse( minimumGpController?.text??""),
                                                maxGp:double.tryParse( maximumGpController?.text??""),
                                                avgGp:double.tryParse( averageGpController?.text??""),
                                                targetedGp:double.tryParse( targetedGpController?.text??""),
                                                minPurchaseOrderLimit:int.tryParse( minPurchaseOrderLimitController?.text??""),
                                                returnTime:int.tryParse( returnTimeController?.text??""),
                                                maxPurchaseOrderLimit:int.tryParse( maxPurchaseOrderLimitController?.text??""),
                                                vat:double.tryParse( vatController?.text??""),
                                                excessTax:double.tryParse( exciseTaxController?.text??""),
                                                vedioUrl: videoUrlController!.text.isEmpty?null:videoUrlController?.text,
                                                returnType: returnTypeController!.text.isEmpty?null:returnTypeController?.text,
                                                status: statusController.text.isEmpty?null:statusController?.text,
                                                variantStatus:null,
                                                aboutProducts: aboutProducts!.isEmpty?[]:aboutProducts,
                                                productDetails: productDetails!.isEmpty?[]:productDetails,
                                                productFeatures:productFeatures!.isEmpty?[]:productFeatures,
                                                additionalInfo: additionalInfo!.isEmpty?[]:additionalInfo,
                                                nutriantsFacts:nutriantsFacts!.isEmpty?[]:nutriantsFacts,
                                                Ingrediants: Ingrediants!.isEmpty?[]:Ingrediants,
                                                usageDirection: usageDirection!.isEmpty?[]:usageDirection,
                                                storage:storage!.isEmpty?[]:storage,
                                                importantInfo:importantInfo!.isEmpty?[]:importantInfo,
                                                productBehavior: productBehavior!.isEmpty?[]:productBehavior,

                                              );
                                              print(model);
                                              context.read<VariantpostCubit>().patchVariant(veritiaclid, model);

                                            }





                                              }),
                                          SizedBox(
                                            width: width * .008,
                                          ),
                                        ],
                                      ),

                                    ],
                                  ))
                                ],
                              )
                          ),
                        )

                    );
                  }
              );
            },
          ),
);
        }
      ),
    );
  }
}
