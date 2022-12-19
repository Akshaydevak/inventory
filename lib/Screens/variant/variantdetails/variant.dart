import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/cubits/deletion/deletioncosting_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/listvraiant/listvraiant_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/varaintRead/variantread_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/variant_post/variantpost_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/variantsearch/variantsearch_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variant_read.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variantpatch.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variantpost.dart';
import 'package:inventory/Screens/variant/variantdetails/screens.dart';
import 'package:inventory/commonWidget/Colors.dart';

import 'package:inventory/commonWidget/Textwidget.dart';
import 'package:inventory/commonWidget/commonutils.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/tableConfiguration.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/customtable.dart';
import 'package:inventory/widgets/searchTextfield.dart';
import 'package:url_launcher/url_launcher.dart';

import 'cubits/generateqrcode/qrgenerating_cubit.dart';

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
  TextEditingController catalog1 = TextEditingController();
  TextEditingController catalog2 = TextEditingController();
  TextEditingController catalog3 = TextEditingController();
  TextEditingController catalog4 = TextEditingController();
  TextEditingController catalog5 = TextEditingController();
  TextEditingController catalog6 = TextEditingController();
  TextEditingController catalog7 = TextEditingController();
  TextEditingController catalog8 = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController arabicDescriptionController = TextEditingController();
  TextEditingController additionalDescriptionController = TextEditingController();
  TextEditingController posNameController = TextEditingController();
  TextEditingController uomGroupController = TextEditingController();
  TextEditingController baseUomController = TextEditingController();
  TextEditingController salesUomController = TextEditingController();
  TextEditingController purchaseUomController = TextEditingController();
  TextEditingController grossWeightController = TextEditingController();
  TextEditingController uomGroupNameController = TextEditingController();
  TextEditingController baseUomNameController = TextEditingController();
  TextEditingController salesUomNameController = TextEditingController();
  TextEditingController purchaseUomNameController = TextEditingController();
  TextEditingController netWeightController = TextEditingController();
  TextEditingController unitCostController = TextEditingController();
  TextEditingController landingCostController = TextEditingController();
  TextEditingController actualCostController = TextEditingController();
  TextEditingController unitPrizeController = TextEditingController();
  TextEditingController basePrizePrizeController = TextEditingController();
  TextEditingController producedCountryController = TextEditingController();
  TextEditingController weightUomIdController = TextEditingController();
  TextEditingController ratioEcommerceController = TextEditingController();
  TextEditingController minMaxController = TextEditingController();
  TextEditingController wholeSaleStockController = TextEditingController();
  TextEditingController minSalesOrderLimitController = TextEditingController();
  TextEditingController maxSalesOrderLimitController = TextEditingController();
  TextEditingController seblingController = TextEditingController();
  TextEditingController seblingNameController = TextEditingController();
  TextEditingController linkedItemController = TextEditingController();
  TextEditingController videoUrlController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController widthController = TextEditingController();
  TextEditingController lengthController = TextEditingController();
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
  TextEditingController weightController = TextEditingController();
  TextEditingController shelfTypeController = TextEditingController();
  TextEditingController shelfTimeController = TextEditingController();
  bool salesBolock = false;
  bool purchaseBolock = false;
  bool stockWarning = false;
  bool haveGiftOption = false;
  bool haveWrapOption = false;
  bool itmcatelog = false;
  bool itmImage = false;
  bool active = false;
  bool needMultipleIntegration = false;
  int? veritiaclid = 0;
  int? baseUomId = 0;
  int? checkIdid = 0;
  bool select=false;
  bool addNew=false;
  List<AlternativeBarcode>alternativeBarcode=[];
  List<AlternativeBarcode>alternativeQrCode=[];
  Storage? aboutProducts;
 List< VendorDetails>? vendorDetails;
  ProductFeatures? productDetails;
  ProductFeatures? productFeatures;
  ProductFeatures? additionalInfo;
  ProductFeatures? nutriantsFacts;
  ProductFeatures? ingredians;
 List< productBehaviour>? inforMationList;
  Storage? Ingrediants;
  VariantReadModel group=VariantReadModel();

  Storage? usageDirection;
  Storage? storage;
ProductFeatures? importantInfo;
  ProductFeatures? productBehavior;
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
  bool cata1=false;
  bool cata2=false;
  bool cata3=false;
  bool cata4=false;
  bool cata5=false;
  bool cata6=false;
  bool cata7=false;
  bool cata8=false;
  bool suffixIcon=false;


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
        active=val;
        setState(() {

        });
        break;
        case 'Multiple' :
        needMultipleIntegration=val;
        setState(() {

        });
        break;  case 'GiftOption' :
      haveGiftOption=val;
        setState(() {

        });
        break;
        case 'GiftWrap' :
          haveWrapOption=val;
        setState(() {

        });
        break;




    }

  }
  vendorDetailsTableAssign({List<VendorDetails>?list}) {
    setState(() {
      vendorDetails = list;

      print("vendordetailS${vendorDetails}");


    });
  }
barQrCodeTableAssign({String? type,List<AlternativeBarcode>?list}){
    print("list"+list.toString());
  switch(type){

    case '1' :
      alternativeBarcode=list??[];
      break;

    case '2' :
      alternativeQrCode=list??[];
      break;







  }

  }
  storageDetailsTableAssign({String? type,Storage ?list}){


    print("list is hereeeee"+list.toString());

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
  productFeaturesableAssign({  List<productBehaviour>? list}){
    print("here");
    setState(() {
      inforMationList=list;

    });


    // aboutProducts=list;









  }
  ProductBehaviourTableAssign({String? type,ProductFeatures? list}){
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
        case '6' :
        cata1=true;
        break;
        case '7' :
        cata2=true;
        break;
        case '8' :
        cata3=true;
        break;
        case '9' :
        cata4=true;
        break;
        case '10' :
        cata5=true;
        break;
        case '11' :
        cata6=true;
        break;
        case '12' :
        cata7=true;
        break;
        case '13' :
        cata8=true;
        break;




    }


  }
  clear(){


      setState(() {
      // aboutProducts?.clear();
      // importantInfo=[];
      // productDetails=[];
      // nutriantsFacts=[];
      // usageDirection=[];
      // productFeatures=[];
      // storage=[];
      // Ingrediants=[];
      // importantInfo=[];

        baseUomNameController.clear();
      purchaseUomNameController.clear();
      salesUomNameController.clear();
      uomGroupNameController.clear();
      saftyStockController.clear();
      minPurchaseOrderLimitController.clear();
      maxPurchaseOrderLimitController.clear();

      catalog1.clear();
      catalog2.clear();
      catalog3.clear();
      catalog4.clear();
      catalog5.clear();
      catalog6.clear();
      catalog7.clear();
      catalog8.clear();
      searchNAmeController.clear();
      image2Controller.clear();
      image3Controller.clear();
      image1Controller.clear();
      displayNAmeController.clear();
      image4Controller.clear();
      image5Controller.clear();
      itemCodeController.clear();
      manuFactreIdController.clear();
      manuFactreNameController.clear();
      reorederPointController.clear();
      saftyStockController.clear();
       salesBolock=false;
      weightUomIdController.clear();
       variantCodeController.clear();
       variantFrameWorkController.clear();
       variantNameController.clear();
       shelfTimeController.clear();
       shelfTypeController.clear();
      variantValueController.clear();
       descriptionController.clear();
       arabicDescriptionController.clear();
      additionalDescriptionController.clear();
      posNameController.clear();
      uomGroupController.clear();
     baseUomController.clear();
      salesUomController.clear();
      variantCodeController.clear();
      purchaseUomController.clear();
     grossWeightController.clear();
       netWeightController.clear();
      unitCostController.clear();
    landingCostController.clear();
      actualCostController.clear();
       unitPrizeController.clear();
       basePrizePrizeController.clear();
       producedCountryController.clear();
      purchaseBolock=false;
      lengthController.clear();
      widthController.clear();
      heightController.clear();
      ratioEcommerceController.clear();
      minMaxController.clear();
       wholeSaleStockController.clear();
       minSalesOrderLimitController.clear();
    maxSalesOrderLimitController.clear();
       stockWarning=false;
      itmcatelog=false;
     itmImage=false;
    active=false;
       seblingController.clear();
      linkedItemController.clear();
     videoUrlController.clear();
      minimumGpController.clear();
      maximumGpController.clear();
     averageGpController.clear();
    targetedGpController.clear();
      minPurchaseOrderLimitController.clear()
;      maxPurchaseOrderLimitController.clear();
      vatController.clear();
     exciseTaxController.clear();
     returnTypeController.clear();
     returnTimeController.clear();
     weightController.clear();


      img1=false;
      img2=false;
      img3=false;
      img4=false;
      img5=false;
      img5=false;
      cata1=false;
      cata2=false;
      cata3=false;
      cata4=false;
      cata5=false;
      cata6=false;
      cata7=false;
      cata8=false;




      Variable.uomId=0;
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
        // BlocProvider(
        //   create: (context) => VariantsearchCubit(),
        // ),
        BlocProvider(
          create: (context) => VariantpostCubit(),
        ),  BlocProvider(
          create: (context) => QrgeneratingCubit(),
        ),

        
      ],
      child: Builder(
        builder: (context) {
          return MultiBlocListener(
  listeners: [
    BlocListener<QrgeneratingCubit, QrgeneratingState>(
  listener: (context, state) {
    print("postssssssss" + state.toString());
    state.maybeWhen(orElse: () {
      // context.
      context.showSnackBarError("Loading");
    }, error: () {
      context.showSnackBarError(Variable.errorMessege);
    }, success: (data) {


      if (data.data1) {
        setState(() async {

          qrCodeController.text = data.data2;
          await launch(qrCodeController.text);
        });

        Timer(Duration(seconds: 5), () {
          setState(() {
            context.read<ListvraiantCubit>().getVariantList();
            // select=false;
          });
        });
      } else {
        context.showSnackBarError(Variable.errorMessege);
        print(data.data1);
      }
      ;
    });
  },
),
    BlocListener<VariantreadCubit, VariantreadState>(
  listener: (context, state) {
    print("state++++++++++++++++++++++++++++++++");
    state.maybeWhen(
        orElse: () {},
        error: () {
          print("error");
        },
        success: (data) {
          // print("aval ethito" + data.toString());


          // group=data;

          variantNameController.text=data.name??"";
          itemCodeController.text=data.itemData?.itemName??"";
          variantNameController.text=data.name??"";
          shelfTypeController.text=data.shelfType??"";
          shelfTimeController.text=data.shelfTime?.toString()??"";
          minSalesOrderLimitController.text=data?.minSaleOrderLimit.toString()??"";
          maxSalesOrderLimitController.text=data?.maxSaleOrderLimit.toString()??"";
          salesUomController.text=data.SalesUom??"";
          salesUomNameController.text=data.salesUomData?.salesUomName??"";
          purchaseUomController.text=data.purchaseuom??"";
          purchaseUomNameController.text=data.purchaseUomdata?.purchaseUomName??"";
          searchNAmeController.text=data?.searchName??"";
          posNameController.text=data?.posName??"";
          displayNAmeController.text=data?.displayname??"";
          seblingController.text=data?.siblingCode??"";
          heightController.text=data?.dimension?.height.toString()??"";
          widthController.text=data?.dimension?.width?.toString()??"";
          lengthController.text=data?.dimension?.length.toString()??"";
          descriptionController.text=data?.description??"";
          variantCodeController.text=data?.code??"";
          linkedItemController.text=data?.linkedItem??"";
          catalog1.text=data?.variantMeta?.catelog?.keyValues?.catelog1??"";
          catalog2.text=data?.variantMeta?.catelog?.keyValues?.catelog2??"";
          catalog3.text=data?.variantMeta?.catelog?.keyValues?.catelog3??"";
          catalog4.text=data?.variantMeta?.catelog?.keyValues?.catelog4??"";
          catalog5.text=data?.variantMeta?.catelog?.keyValues?.catelog5??"";
          catalog6.text=data?.variantMeta?.catelog?.keyValues?.catelog6??"";
          catalog7.text=data?.variantMeta?.catelog?.keyValues?.catelog7??"";
          catalog8.text=data?.variantMeta?.catelog?.keyValues?.catelog8??"";


          variantFrameWorkController.text=data?.variantframeWork?.variantFrameWork??"";
          baseUomNameController.text=data?.uomNameData?.uomName??"";
          arabicDescriptionController.text=data?.arabicDescription??"";
          additionalDescriptionController.text=data?.additionalDescription??"";
          image1Controller.text=data?.image1??"";
          image2Controller.text=data?.variantMeta?.image?.keyValues?.image2??"";
          image3Controller.text=data?.variantMeta?.image?.keyValues?.image3??"";
          image4Controller.text=data?.variantMeta?.image?.keyValues?.image4??"";
          image5Controller.text=data?.variantMeta?.image?.keyValues?.image5??"";

          grossWeightController.text=data.grossWeight??"";
          baseUomController.text=data.uomId??"";
          uomGroupNameController.text=data.uomGroupName??"";
          baseUomId =int.tryParse(data.uomId.toString())??0;
          netWeightController.text=data.netWeight??"";
          weightController.text=data.dimension?.weight?.toString()??"";

          // maxSalesOrderLimitController.text=data.max
          unitCostController.text=data.unitCost?.toString()??"";
          landingCostController.text=data.landingCost?.toString()??"";
          actualCostController.text=data.actualCost?.toString()??"";
          producedCountryController.text=data?.producedCountry??"";
          manuFactreNameController.text=data?.manuFacturedName??"";
          manuFactreIdController.text=data?.manuFacturedId.toString()??"";
          videoUrlController.text=data?.vdeioUrl??"";
          salesBolock=data.salesBlock??false;
          purchaseBolock=data.purchaseBlock??false;
          stockWarning=data.stockWarning??false;
          itmcatelog=data.itemCatalog??false;
          itmImage=data.itemImage??false;
          active=data.isActive??false;
          weightUomIdController.text=data?.weightUomId.toString()??"";
          returnTypeController.text=data?.returnType??"";
          returnTimeController.text=data?.returnTime?.toString()??"";
          vatController.text=data.vat?.toString()??"";
          exciseTaxController.text=data.excessTax?.toString()??"";
          minimumGpController.text=data.minGap?.toString()??"";
          maximumGpController.text=data.maxGp?.toString()??"";
          targetedGpController.text=data.targetedGp?.toString()??"";
          alternativeBarcode=data.alterNativeBarcode??[];
          alternativeQrCode=data.alterNativeQrCode??[];
          barCodeController.text=data?.barcode?.barcodeNumber??"";
          qrCodeController.text=data?.qrcode?.qrCodeNumber??"";
          aboutProducts=data.variantMeta?.aboutProducts;
          importantInfo=data.variantMeta?.importantInfo;
          productDetails=data.variantMeta?.productDetails;
          nutriantsFacts=data.variantMeta?.nutriantFacts;
          reorederPointController.text=data?.reOrderPoint?.toString()??"";
          averageGpController.text=data.avgGp.toString();
          saftyStockController.text=data.safetyStock?.toString()??"";
          minPurchaseOrderLimitController.text=data?.minPurchaseOrderLimit?.toString()??"";
          maxPurchaseOrderLimitController.text=data?.maxPurchaseOrderLimit?.toString()??"";

          usageDirection=data.variantMeta?.usageDirection;
          vendorDetails=data.vendorDetails??[];
          print("vendor detailse"+vendorDetails.toString());
          productFeatures=data.variantMeta?.productFeatures;
          additionalInfo=data.variantMeta?.additionalInfo;
          storage=data.variantMeta?.storage;
          Ingrediants=data.variantMeta?.Ingrediants;
          importantInfo=data.variantMeta?.importantInfo;
          inforMationList=data.variantMeta?.productBehave;
          print(alternativeBarcode);
          print("alternativeBarcode");
          // addNew=false;






        });
  },
),
    BlocListener<VariantpostCubit, VariantpostState>(
      listener: (context, state) {
        print("postssssssss" + state.toString());
        state.maybeWhen(orElse: () {
          // context.
          context.showSnackBarError("Loading");
        }, error: () {
          context.showSnackBarError(Variable.errorMessege);
        }, success: (data) {
          if (data.data1) {
            context.showSnackBarSuccess(data.data2);
            Timer(Duration(seconds: 5), () {

                img1=false;
                img2=false;
                img3=false;
                img4=false;
                img5=false;
                img5=false;
                cata1=false;
                cata2=false;
                cata3=false;
                cata4=false;
                cata5=false;
                cata6=false;
                cata7=false;
                cata8=false;
                context.read<ListvraiantCubit>().getVariantList();
                // select=false;

            });
          } else {
            context.showSnackBarError(data.data2);
            print(data.data1);
          }
          ;
        });
      },
    ),
    BlocListener<DeletioncostingCubit, DeletioncostingState>(
      listener: (context, state) {
        print("delete" + state.toString());
        state.maybeWhen(orElse: () {
          // context.
          context.showSnackBarError("Loading");
        }, error: () {
          context.showSnackBarError(Variable.errorMessege);
        }, success: (data) {
          if (data.data1) {
            context.showSnackBarSuccess(data.data2);
            context.read<ListvraiantCubit>().getVariantList();
          } else {
            context.showSnackBarError(data.data2);
            print(data.data1);
          }
          ;
        });
      },
    ),
    // BlocListener<VariantsearchCubit, VariantsearchState>(
    //   listener: (context, state) {
    //     print("state++++++++++++++++++++++++++++++++");
    //     state.maybeWhen(
    //         orElse: () {},
    //         error: () {
    //           print("error");
    //         },
    //         success: (data) {
    //           if(data.data.length==0){
    // setState(() {
    //   exportCheck = false;
    //   context.showSnackBarError("Does not exist");
    // }); }
    //           else{
    // setState(() {
    //   print("aaaayyiram" + data.data.toString());
    //   exportCheck = true;
    //   checkIdid = data.data[0].id;
    //   }); }
    //
    //
    //         });
    //   },
    // ),

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

                      if (result.isNotEmpty) {
                        veritiaclid = result[0].id;
                        Variable.variantCode=result[0].code.toString();

                        // Variable.verticalid=result[0].id;
                        // print("Variable.ak"+Variable.verticalid.toString());
                        context.read<VariantreadCubit>().getVariantRead(veritiaclid!);
                      }
                      else {
                        print("common");
                        // select=true;

                      }




                  });
            },
            builder: (context, state) {
              return Builder(
                  builder: (context) {
                    return Scaffold(
                        backgroundColor: Pellet.bagroundColor,
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
                                        Variable.variantCode=result[index].code.toString();
                                        // clear();
                                        // select=true;
                                        //
                                        //




                                          context.read<VariantreadCubit>().getVariantRead(veritiaclid!);


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
                                      SizedBox(height: height * .073,),
                                      Container(
                                        // width: width / 2,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: width * .02),
                                              child: SearchTextfiled(
                                                suffixColor: suffixIcon?Pellet.bagroundColor:Colors.grey,
                                                suffiXCheck: true,

                                                w: width * .3,
                                                h: 48,

                                                // h: h,
                                                color: Color(0xffFAFAFA),
                                                hintText: "Search....",
                                                ctrlr: searchController,
                                                onTap: () {
                                                  showDailogPopUp(
                                                    context,
                                                    TableConfigurePopup(

                                                      type: "Search_tablePopup",
                                                      valueSelect: (BrandListModel va) {
                                                        setState(() {
                                                          checkIdid = va.id;
                                                          exportCheck = true;
                                                          searchController.text=va.name??"";


                                                          // onChange = true;
                                                          // orderType.text = va!;
                                                        });
                                                      },
                                                    ),
                                                  );
                                                  setState(() {

                                                  //
                                                  // if(va!=""){
                                                  //   suffixIcon=true;
                                                  // }
                                                  // else
                                                  //   suffixIcon=false;
                                                  });


                                                },
                                                // onComplete: ( String? va),
                                              ),
                                            ),
                                            // gapWidthColumn(width: width * .01),
                                            // Button(null, Colors.grey,
                                            //     ctx: context,
                                            //     text: "Search",
                                            //     height: 38,
                                            //     Color:exportCheck? Pellet.tableBlueHeaderPrint:Pellet.tableBlueHeaderPrint,
                                            //     width: 90,
                                            //     labelcolor: Colors.white,
                                            //     iconColor: Colors.white,
                                            //     onApply: () {
                                            //   setState(() {
                                            //     print("testing Case");
                                            //     context.read<VariantsearchCubit>().getVariantSearch(searchController.text??"");
                                            //   });
                                            //
                                            //
                                            //
                                            //     }),
                                            gapWidthColumn(width: width * .008),
                                            Visibility(
                                              visible: exportCheck,
                                              child: Button(null, Colors.grey,
                                                  ctx: context,
                                                  text: "Export",
                                                  height: 32,
                                                  Color: Color(0xff3E4F5B),
                                                  width: 90,
                                                  labelcolor: Colors.white,
                                                  iconColor: Colors.white,
                                                  onApply: () {
                                                setState(() {
                                                  clear();
                                                  print(checkIdid);
                                                  select=true;
                                                  context.read<VariantreadCubit>().getVariantRead(checkIdid!);

                                                });





                                                  }),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: height * .10,),
                                      VariantStabletable(needMultipleIntegration:needMultipleIntegration,
                                        weightUom:weightUomIdController, weight:weightController,
                                          baseUomId:baseUomId,
                                        seblingNameController: seblingNameController, height: heightController, width: widthController, length: lengthController, baseGroupName: baseUomNameController, purchaseUomName: purchaseUomNameController, salesUomName: salesUomNameController,
                                          uomGroupName: uomGroupNameController, veritiaclid:veritiaclid, catalog1: catalog1,catalog2: catalog2,
                                          catalog3: catalog3,
                                         catalog4: catalog4,
                                         catalog5: catalog5,
                                         catalog6: catalog6,
                                         catalog7: catalog7,
                                         catalog8: catalog8,
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
                                        status: statusController,
                                          relatedItem: relatedController,
                                        shelfType:shelfTypeController,
                                        shelfTime:shelfTimeController,
                                        haveGiftOption:haveGiftOption,
                                        haveWrapOption:haveWrapOption,
                                        imagePostCheck:imagePostCheck,
                                          trueOrFalseChange:trueOrFalseChange),
                                      SizedBox(height: height * .07,),
                                      Row(mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          TextWidget(text: "Vendor Details"),
                                        ],
                                      ),
                                      // Divider(color: Colors.grey,thickness: 1,),
                                      SizedBox(height: height * .01,),

                                      VendorDetailsVarient(
                                          vendorDetails:vendorDetails,
                                        vendorTableEdit:vendorDetailsTableAssign,
                                      ),
                                      SizedBox(height:height * .11,),
                                      Row(mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          TextWidget(text: "Identification"),
                                        ],
                                      ),
                                      // Divider(color: Colors.grey,thickness: 1,),
                                      SizedBox(height: height * .01,),
                                      Identification(
                                        select:select,
                                        veritiaclid:veritiaclid ,
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
                                      SizedBox(height: height * .04,),
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
                                        productTableEdit:ProductBehaviourTableAssign,
                                        imPorantInfo:importantInfo,

                                          productFeaturesableAssign:productFeaturesableAssign,
                                          inforMationList:inforMationList,




                                      ),
                                      SizedBox(height: height * .13,),
                                      Container(
                                        margin:EdgeInsets.only(right: width*.015) ,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [

                                            Button(Icons.delete,  Colors.grey,
                                                ctx: context,
                                                text: "Generate QR Code",
                                                onApply: () {
                                                  context
                                                      .read<QrgeneratingCubit>()
                                                      .getQrCodeRead(veritiaclid);

                                                },
                                                height: 29,
                                                width: 165,
                                                Color:  Color(0xff3E4F5B),
                                                labelcolor: Colors.white,
                                                iconColor: Colors.white,
                                                bdr: true),
                                            SizedBox(
                                              width: width * .008,
                                            ),
                                            Button(Icons.delete, Colors.red,
                                                ctx: context,
                                                text: "DISCARD",
                                                onApply: () {


                                                  showDailogPopUp(
                                                      context,
                                                      ConfirmationPopup(
                                                        // table:table,
                                                        // clear:clear(),
                                                        verticalId:veritiaclid ,
                                                        onPressed:(){
                                                          print("akshay");
                                                          Navigator.pop(context);
                                                          context
                                                              .read<DeletioncostingCubit>()
                                                              .CostingDelete(veritiaclid, type: "6");;

                                                        },


                                                      ));

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
                                                text: select?"SAVE":"UPDATE",
                                                height: 29,
                                                Color: Color(0xff3E4F5B),
                                                width: 90,
                                                labelcolor: Colors.white,
                                                iconColor: Colors.white,
                                                onApply: () {
                                              print(vendorDetails![0].vendorName.runtimeType);
                                              if(select){
                                                VariantPost model = VariantPost(
                                                  weight:double.tryParse( weightController.text),
                                                  inventoryId: Variable.inventory_ID,
                                                  height: double.tryParse(heightController.text),
                                                  width: double.tryParse(widthController.text),
                                                  length: double.tryParse(lengthController.text),
                                                  inventoryName: Variable.inventory_Name,
                                                  weightUomId: int.tryParse(weightUomIdController.text),
                                                  searchName:searchNAmeController.text.isEmpty?null:searchNAmeController?.text,
                                                  posName:posNameController.text.isEmpty?null:posNameController?.text,
                                                  displayName:displayNAmeController.text.isEmpty?null:displayNAmeController?.text,
                                                  arabicDescription:arabicDescriptionController.text.isEmpty?null:arabicDescriptionController?.text,
                                                  additionalDescription:additionalDescriptionController.text.isEmpty?null:additionalDescriptionController?.text??"",
                                                  salesUom: int.tryParse(salesUomController?.text??""),
                                                  seblingId: int.tryParse(seblingController.text),
                                                  purchaseUom: int.tryParse(purchaseUomController?.text??""),
                                                  grossWeight:double.tryParse( grossWeightController.text??""),
                                                  actualCost:double.tryParse( actualCostController.text??""),
                                                  safetyStock: int.tryParse(saftyStockController?.text??""),
                                                  reOrderPoint: int.tryParse(reorederPointController?.text??""),
                                                  reorderQuantity: int.tryParse(reorederQuaintityController?.text??""),
                                                  salesBolock: salesBolock,
                                                  purchaseBlock: purchaseBolock,
                                                  ratioToEcommerce:ratioEcommerceController.text.isEmpty?null: ratioEcommerceController.text,
                                                  itemCatelog: itmcatelog,
                                                  itemImage: itmImage,
                                                  vendorDetails: vendorDetails,
                                                  needMultipleIntegration: needMultipleIntegration,

                                                  minMaxRatio:minMaxController.text.isEmpty?null: minMaxController?.text,
                                                  wholeSaleStock:int.tryParse( wholeSaleStockController?.text??""),
                                                  minSalesOrderLimit:int.tryParse( minSalesOrderLimitController?.text??""),
                                                  maxSalesOrderLimit:int.tryParse( maxSalesOrderLimitController?.text??""),
                                                  minPurchaseOrderLimit:int.tryParse( minPurchaseOrderLimitController?.text??""),
                                                  maxPurchaseOrderLimit:int.tryParse( maxPurchaseOrderLimitController?.text??""),
                                                  stockWarning:stockWarning,

                                                  producedCountry:alternativeQrCode.isEmpty?null: producedCountryController?.text??"",
                                                  basePrize: double.tryParse(basePrizePrizeController.text),
                                                  vat: double.tryParse(vatController.text??""),
                                                  excessTax: double.tryParse(exciseTaxController.text??""),
                                                  minGap: double.tryParse(minimumGpController.text??""),
                                                  maxGp: double.tryParse(maximumGpController.text??""),
                                                  avgGp: double.tryParse(averageGpController.text??""),
                                                  targetedGp: double.tryParse(targetedGpController.text??""),
                                                  vedioUrl: videoUrlController.text.isEmpty?null:videoUrlController.text,
                                                  alternativeBarcode:alternativeBarcode,
                                                  alternativeQrCodeBarcode: alternativeQrCode,
                                                  returnType: returnTypeController.text,
                                                  shelfTime: shelfTimeController.text.isEmpty?null:int.tryParse(shelfTimeController.text),
                                                  shelfType: shelfTypeController.text.isEmpty?null:shelfTypeController.text,
                                                  haveWrapOption: haveWrapOption,
                                                  haveGiftOption: haveGiftOption,
                                                  returnTime: int.tryParse(returnTimeController.text),
                                                  variantStatus: "va",
                                                  isActive: active,
                                                  image1: img1?Variable.imageName.toString():image1Controller.text??"",
                                                  image2:img2?Variable.img2.toString():  image2Controller?.text??"",
                                                  image3:img3?Variable.img3.toString():image3Controller?.text??"",
                                                  image4:img4?Variable.img4.toString().toString(): image4Controller?.text??"",
                                                  image5:img5?Variable.img5.toString(): image5Controller?.text??"",
                                                  catalog1:cata1?Variable.catalog1.toString(): group.variantMeta?.catelog?.keyValues?.catelog1??"",
                                                  catalog2:cata2?Variable.catalog2.toString(): group.variantMeta?.catelog?.keyValues?.catelog2??"",
                                                  catalog3:cata3?Variable.catalog3.toString():group.variantMeta?.catelog?.keyValues?.catelog3??"",
                                                  catalog4:cata4?Variable.catalog4.toString(): group.variantMeta?.catelog?.keyValues?.catelog4??"",
                                                  catalog5:cata5?Variable.catalog5.toString():group.variantMeta?.catelog?.keyValues?.catelog5??"",
                                                  catalog6:cata6?Variable.catalog6.toString(): group.variantMeta?.catelog?.keyValues?.catelog6??"",
                                                  catalog7:cata7?Variable.catalog7.toString():group.variantMeta?.catelog?.keyValues?.catelog7??"",
                                                  catalog8:cata8?Variable.catalog8.toString(): group.variantMeta?.catelog?.keyValues?.catelog8??"",
                                                  aboutProducts: aboutProducts,
                                                  productDetails: productDetails,
                                                  productFeatures:productFeatures,
                                                  additionalInfo: additionalInfo,
                                                  nutriantsFacts:nutriantsFacts,
                                                  Ingrediants: Ingrediants,
                                                  usageDirection: usageDirection,
                                                  storage:storage,
                                                  importantInfo:importantInfo,
                                                  productBehavior:   inforMationList,

                                                );
                                                print("shifasssss"+  model.productBehavior.toString());
                                                context.read<VariantpostCubit>().postVariant(checkIdid, model);
                                                setState(() {

                                                });
                                              }
                                              else{
                                                VariantPatch model=VariantPatch (
                                                  weight:double.tryParse( weightController.text),
                                                  length: double.tryParse(lengthController.text),
                                                  width: double.tryParse(widthController.text),
                                                  height: double.tryParse(heightController.text),
                                                  variantName: variantNameController!.text.isEmpty?null:variantNameController?.text,
                                                  salesUom:  salesUomController!.text.isEmpty?null:salesUomController?.text,
                                                  // "1",

                                                  purchaseUom:purchaseUomController.text.isEmpty?null:purchaseUomController.text,
                                                  itemImage: itmImage,
                                                  itemCatelog: itmcatelog,
                                                  vendorDetails: vendorDetails,
                                                  needMultipleIntegration: needMultipleIntegration,
                                                  weightUomId: int.tryParse(weightUomIdController.text),
                                                  shelfTime: shelfTimeController.text.isEmpty?null:int.tryParse(shelfTimeController.text),
                                                  shelfType: shelfTypeController.text.isEmpty?null:shelfTypeController.text,
                                                  haveWrapOption: haveWrapOption,
                                                  haveGiftOption: haveGiftOption,
                                                  // purchaseUomController!.text.isEmpty?null:purchaseUomController?.text,
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
                                                  isActive: active,
                                                  producedCountry: producedCountryController.text.isEmpty?null:producedCountryController.text,
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
                                                  image2:img2?Variable.img2.toString().isEmpty?null:Variable.img2.toString():  image2Controller.text.isEmpty?null:image2Controller.text,
                                                  image3:img3?Variable.img3.toString():image3Controller?.text,
                                                  image4:img4?Variable.img4.toString(): image4Controller?.text,
                                                  image5:img5?Variable.img5.toString():image5Controller?.text,
                                                  catalog1:cata1?Variable.catalog1.toString(): group.variantMeta?.catelog?.keyValues?.catelog1,
                                                  catalog2:cata2?Variable.catalog2.toString(): group.variantMeta?.catelog?.keyValues?.catelog2,
                                                  catalog3:cata3?Variable.catalog3.toString(): group.variantMeta?.catelog?.keyValues?.catelog3,
                                                  catalog4:cata4?Variable.catalog4.toString():group.variantMeta?.catelog?.keyValues?.catelog4,
                                                  catalog5:cata5?Variable.catalog5.toString(): group.variantMeta?.catelog?.keyValues?.catelog5,
                                                  catalog6:cata6?Variable.catalog6.toString(): group.variantMeta?.catelog?.keyValues?.catelog6,
                                                  catalog7:cata7?Variable.catalog7.toString(): group.variantMeta?.catelog?.keyValues?.catelog7,
                                                  catalog8:cata8?Variable.catalog8.toString(): group.variantMeta?.catelog?.keyValues?.catelog8,

                                                  variantStatus:null,
                                                  stockWarning: stockWarning,
                                                  aboutProducts: aboutProducts,
                                                  productDetails:productDetails,
                                                  productFeatures:productFeatures,
                                                  additionalInfo: additionalInfo,
                                                  nutriantsFacts:nutriantsFacts,
                                                  Ingrediants: Ingrediants,
                                                  usageDirection: usageDirection,
                                                  storage:storage,
                                                  importantInfo:importantInfo,
                                                  productBehavior: inforMationList,

                                                );
                                                print("the searching model is here"+model.toString());
                                                context.read<VariantpostCubit>().patchVariant(veritiaclid, model);

                                              }





                                                }),
                                            SizedBox(
                                              width: width * .008,
                                            ),
                                          ],
                                        ),
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
