


import 'package:dio/dio.dart';
import 'package:inventory/Screens/promotiontab/buy_more/model/create_model.dart';
import 'package:inventory/Screens/promotiontab/discount/model/promotion_discount_model.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/commonWidget/appurl.dart';
import 'package:inventory/commonWidget/sharedpreference.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'package:inventory/widgets/responseutils.dart';

abstract class PromotionDatasourse {
  // Future<DoubleResponse> postImageDiscount(String? imageNmae, String ImageEncode, {String? type});
  Future<DoubleResponse> postCreateOfferPeriod(CreateOfferPeriod model);
  Future<PaginatedResponse<List<OfferPeriodList>>> getOfferPeriodList(String? code, {String? type});
  Future<ReadOfferPeriod>getOfferPeriodRead(int id);
  Future<DoubleResponse> patchOfferPeriod(ReadOfferPeriod model,int? id);
  Future<DoubleResponse> deleteOfferPeriod(int? id,{String? type});
  Future<ReadOfferPeriod> getOfferGroupTypeTo();
  Future<PaginatedResponse<List<salesOrderTypeModel>>> getPromotionSaleVerticalListt(String? code);
  Future<PaginatedResponse<List<salesOrderTypeModel>>> getPromotionDiscountVerticalList(String? code);
  Future<PaginatedResponse<List<salesOrderTypeModel>>> getListSegment(String? code);
  // Future<OfferGroupType> getOfferGroupType();
  // Future<List<ChannelTypeList>> getChannelTypeOfferList(String val);
  // Future<ChannelList> getChannelListOffer();
  Future<DoubleResponse> postCreateOfferGroup(CreateOfferGroup model);
  Future<DoubleResponse> postPromotionSale(PromotionSaleCreateModel model);
  Future<DoubleResponse> postCreatativeVariant(List<VariantModel> idList);
  Future<DoubleResponse> getPromotionSalePatch(PromotionSaleCreateModel model,int ? id);
  Future<PaginatedResponse<List<OfferGroupList>>> getOfferGroupList(String? code, {String? type});
  Future<ReadOfferGroup>getOfferGroupRead(int id);
  Future<List<VariantModel>>getVariantDeactivate(int type, String? typeData, List<int?> idList);
  Future<List<ChannelListModel>>getChannelList(String? code);
  Future<PromotionSaleReadModel>getPromotionSaleRead(int id);
  Future<DoubleResponse> patchOfferGroup(OfferGroupData model,int? id);
  Future<listAllSalesApis> getListAllSalesApi({String? type });
  Future<DoubleResponse> postPromotionImage(String? imageNmae, String ImageEncode,
      {String? type});
  Future<PaginatedResponse<List<OfferPeriodList>>> getSaleApplyingName(salesOrderNamePostModel model, String? code);
  Future<PaginatedResponse<List<SaleLines>>> getVariantList(PromotionVariantPostModel model, String? code);

  //discount
  Future<DoubleResponse> postCreatePromtionDiscount(PromotionDiscountCreationModel model);
  Future<PromotionDiscountReadModel>getPromotionDiscountRead(int id);
  Future<PaginatedResponse<  List<CustomGroupReadModel>>>getCustomGroupRead();
  Future<PaginatedResponse<List<OfferPeriodList>>> getListTypeId(salesOrderNamePostModel model, String? code);
  Future<DoubleResponse> getPromotionDiscountPatch(PromotionDiscountCreationModel model,int ? id);
  Future<PaginatedResponse<List<SaleLines>>> getVariantGroupCodeList(String? code,{String? customereCode});

  //buy more********************
  Future<DoubleResponse> postCreatePromtionBuyMore(PromotionBuyMoreCreationModel model);
  Future<PaginatedResponse<List<OfferPeriodList>>> getBuyMoreVerticalList(String? code);
  Future<PromotionBuyMoreCreationModel>getBuyMoreRead(int id);
  Future<DoubleResponse> buyMorePromotionSalePatch(PromotionBuyMoreCreationModel model,int ? id);





  // Future<DoubleResponse> deleteOfferGroup(int? id);
  // Future<DiscountReadType> getDiscountType();
  // Future<PaginatedResponse<List<TypeAppliyingList>>> getCatagoryList(String? code, {String? type});
  // Future<DoubleResponse> postVariantRead(VariantPostRead model);
  // Future<PaginatedResponse<List<SegmentList>>> getSegmentList(String? code, {String? type});
  // Future<DoubleResponse> postSegment(SegmentPost model);
  // Future<DoubleResponse> postCreateDiscount(CreateDiscount model);

}

class PromotionDatasourseImpl extends PromotionDatasourse {
  final Dio client = Dio();
  PromotionDatasourseImpl();
  String? token="";
//   @override
//   Future<DoubleResponse> postImageDiscount(String? imageNmae, String ImageEncode, {String? type}) async {
//
//     final response = await client.post(postImage,
//         data: {"image_name": imageNmae, "image_encode": ImageEncode},
//         options: Options(headers: {
//           'Content-Type': 'application/json',
//           'Accept': 'application/json',
//         }));
//     print("+++++++++++");
//     print(response);
//     print(response.data["data"]);
//
//     print("imageRes+$response");
//     // if (type != null || type != "") {
//     //   switch (type) {
//     //     case 'image1':
//     //       print("ist image");
//     //       Variable.img1 = response.data["data"];
//     //       //  print(Variable.img1);
//     //       //   Variable.img?.image1 != response.data["data"];
//     //
//     //       break;
//     //
//     //     case 'image2':
//     //       print('2st image');
//     //       // Variable.img= ImagesModel(image2: response.data);
//     //       Variable.img2 = response.data["data"];
//     //       break;
//     //
//     //     case 'image3':
//     //       print('3st image');
//     //       // Variable.img= ImagesModel(image3: response.data);
//     //       Variable.img3 = response.data["data"];
//     //       break;
//     //     case 'image4':
//     //       print('4st image');
//     //       // Variable.img= ImagesModel(itemCatelog1: response.data);
//     //       Variable.img4 = response.data["data"];
//     //       break;
//     //     case 'image5':
//     //       print('5st image');
//     //       // Variable.img= ImagesModel(itemCatelog2: response.data);
//     //       Variable.img5 = response.data["data"];
//     //       break;
//     //     case 'image6':
//     //       print('6st image');
//     //       // Variable.img= ImagesModel(itemCatelog3: response.data);
//     //       Variable.img6 = response.data["data"];
//     //       break;
//     //     case 'image7':
//     //       print('7st image');
//     //       // Variable.img= ImagesModel(itemCatelog4: response.data);
//     //       Variable.img7 = response.data["data"];
//     //       break;
//     //     case 'image8':
//     //       print('8st image');
//     //       // Variable.img= ImagesModel(itemCatelog5: response.data);
//     //       Variable.img8 = response.data["data"];
//     //       break;
//     //   }
//     // }
//     if (response.data['status'] == 'failed') {
//       Variable.errorMessege = response.data['message'];
//     }
//     return DoubleResponse(
//         response.data['status'] == 'success', response.data['data']);
//   }
//
  @override
  Future<DoubleResponse> postCreateOfferPeriod(CreateOfferPeriod model) async {
    print("create offer period"+createOfferPeriod.toString());
    print("create offer period"+model.toString());

    final response = await client.post(createOfferPeriod,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<OfferPeriodList>>> getOfferPeriodList(String? code,
      {String? type}) async {
    code = code == null ? "" : code;
    String path;
    if (code == "")
      path = listOfferGroupUrl;
    else
      path = listOfferGroupUrl + "?title=$code";
    print(path);

    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<OfferPeriodList> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(OfferPeriodList.fromJson(element));
      print("listOfferPeriod" + items.toString());
    });
    return PaginatedResponse<List<OfferPeriodList>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],
    );
  }
//
  @override
  Future<ReadOfferPeriod> getOfferPeriodRead( int? id) async {
    String path=readOfferPeriod+id.toString();
    print(path);

try{
  final response = await client.get(path,
    options: Options(
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
    ),
  );
  // print("response" + response.toString());
  ReadOfferPeriod data = ReadOfferPeriod.fromJson(response.data['data']);
  // print(data);
  return data;
}catch(e){
  print(e);
}
final response = await client.get(path,
  options: Options(
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    },
  ),
);
// print("response" + response.toString());
ReadOfferPeriod data = ReadOfferPeriod.fromJson(response.data['data']);
// print(data);
return data;
  }

  @override
  Future<DoubleResponse> patchOfferPeriod(ReadOfferPeriod model,int? id) async {

    final response = await client.patch(readOfferPeriod+id.toString(),
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));

    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }
//
  @override
  Future<DoubleResponse> deleteOfferPeriod(int? id,{String ? type}) async {

    String path = "";
    String url = "";
    print(path);

    switch (type) {
      case "1":
        {
          url = readOfferPeriod;
        }
        break;
      case "2":
        {
          url = readOfferGroupApi;
        }
        break;
      case "3":
        {
          url = readPatchPromotionSaleApi;
        }
        break;
      case "4":
        {
          url = readPatchPromotionDiscountApi;
        }
        break;
      case "5":
        {
          url = readBuyMoreApi;
        }
        break;   case "6":
        {
          url = patchotionBogoApi;
        }
        break;


    }
    path = url + id.toString();

    final response = await client.delete(path,


        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',

        }));
    print("datasourse${response}");
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];

    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

//   @override
//   Future<OfferGroupType> getOfferGroupType() async {
//
//     final response = await client.get(offerTypeUrl,
//       options: Options(
//         headers: {
//           'Content-Type': 'application/json',
//           'Accept': 'application/json',
//         },
//       ),
//     );
//     // print("is token$token");
//     OfferGroupType offerGroupType = OfferGroupType.fromJson(response.data['data']);
//     print(offerGroupType);
//     return offerGroupType;
//   }
//
//   @override
//   Future<List<ChannelTypeList>> getChannelTypeOfferList(String val) async {
//     print("channelType:$channelTypeList");
//     final response = await client.get(channelTypeList,
//       // +"?name=$val",
//       options: Options(
//         headers: {
//           'Content-Type': 'application/json',
//           'Accept': 'application/json',
//         },
//       ),
//     );
//     print("chann${response.data['data']['results']}");
//     List<ChannelTypeList> items = [];
//
//     (response.data['data']['results'] as List).forEach((element) {
//
//
//       items.add(ChannelTypeList.fromJson(element));
//
//     });
//     print("item${items}");
//     return items;
//
//   }
//   @override
//   Future<ChannelList> getChannelListOffer() async {
//     print("channelType:$channelList");
//
//     final response = await client.get(channelList,
//       options: Options(
//         headers: {
//           'Content-Type': 'application/json',
//           'Accept': 'application/json',
//         },
//       ),
//     );
//     print("chann${response.data['common_attr']}");
//     ChannelList data = ChannelList.fromJson(response.data['common_attr']);
// // print(data);
//     return data;
//
//   }
//
  @override
  Future<DoubleResponse> postCreateOfferGroup(CreateOfferGroup model) async {
    print("aaaaaaaaaaaaaa"+offerAppliedTotypeApi.toString());
    print("aaaaaaaaaaaaaa"+model.toString());
    try{
      final response = await client.post(offerAppliedTotypeApi,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    }
    catch(e){
      final response = await client.post(offerAppliedTotypeApi,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);
    }


  }

  @override
  Future<PaginatedResponse<List<OfferGroupList>>> getOfferGroupList(String? code,
      {String? type}) async {
    code = code == null ? "" : code;
    String path;
    if (code == "")
      path = listOfferGroupList+Variable.inventory_ID;
    else
      path = listOfferGroupList+Variable.inventory_ID+"?"+code.toString();
    print("Offer Link:$path");

    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<OfferGroupList> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(OfferGroupList.fromJson(element));
      print("listOfferPeriod" + items.toString());
    });
    return PaginatedResponse<List<OfferGroupList>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],);
  }

  @override
  Future<ReadOfferPeriod> getOfferGroupTypeTo() async {
    print(offerAppliedTotypeApi);
    final response = await client.get(
      offerAppliedTotypeApi,
      // data:
      // // {"payment_status": "completed", "order_status": "completed"},
      // {
      //
      // },
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );

    ReadOfferPeriod ordertype =
    ReadOfferPeriod.fromJson(response.data['data']);

    return ordertype;
  }

  @override
  Future<ReadOfferGroup> getOfferGroupRead(id) async {

    final response = await client.get(readOfferGroupApi+id.toString(),
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    // print("response" + response.toString());
    ReadOfferGroup data = ReadOfferGroup.fromJson(response.data['data']);
    print("far$data");
    return data;
  }
  @override
  Future<DoubleResponse> patchOfferGroup(OfferGroupData model,int? id) async {

    final response = await client.patch(readOfferGroupApi+id.toString(),
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));

    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<salesOrderTypeModel>>> getPromotionSaleVerticalListt(String? code) async {
    code = code == null ? "" : code;
    String path;
    if (code == "")
      path = listSaleVerticalListApi+Variable.inventory_ID;
    else
      path = listSaleVerticalListApi +Variable.inventory_ID+ "/?$code";




    print(path);

    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<salesOrderTypeModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(salesOrderTypeModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<salesOrderTypeModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],);
  }

  @override
  Future<DoubleResponse> postPromotionSale(PromotionSaleCreateModel model) async {
    print(createPromotionSaleApi);

   try{
     final response = await client.post(createPromotionSaleApi,
         data: model.toJson(),
         options: Options(headers: {
           'Content-Type': 'application/json',
           'Accept': 'application/json',
         }));

     print(response.data);
     if (response.data['status'] == 'failed') {



       if(response.data['is_another_promotion']==true){
         Variable.errorMessege = response.data['message']['message'];
         Variable.type_data = response.data['message']['type_data'];
         Variable.isTypeDataCheck = true;

       }
       else{
         Variable.errorMessege = response.data['message'];
         Variable.isTypeDataCheck = false;
       }
     }
     return DoubleResponse(
         response.data['status'] == 'success', response.data['status'] == 'success'? response.data['message']: Variable.errorMessege);



   }catch(e){
     print(e);

   }
   final response = await client.post(createPromotionSaleApi,
       data: model.toJson(),
       options: Options(headers: {
         'Content-Type': 'application/json',
         'Accept': 'application/json',
       }));

    print(response.data);
    if (response.data['status'] == 'failed') {



      if(response.data['is_another_promotion']==true){
        Variable.errorMessege = response.data['message']['message'];
        Variable.type_data = response.data['message']['type_data'];
        Variable.isTypeDataCheck = true;

      }
      else{
        Variable.errorMessege = response.data['message'];
        Variable.isTypeDataCheck = false;
      }
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['status'] == 'success'? response.data['message']: Variable.errorMessege);


  }

  @override
  Future<listAllSalesApis> getListAllSalesApi({String ? type}) async {

    final response = await client.get(
      createPromotionSaleApi,
      // data:
      // // {"payment_status": "completed", "order_status": "completed"},
      // {
      //
      // },
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    print("response" + response.toString());
    listAllSalesApis ordertype =
    listAllSalesApis.fromJson(response.data['data']);
    print("return OrderType+++++++++++++++++"+ordertype.toString());

    return ordertype;
  }

  @override
  Future<PaginatedResponse<List<salesOrderTypeModel>>> getListSegment(String? code) async {
    code = code == null ? "" : code;
    String path;
    if (code == "")
      path = "https://api-uat-inventory.sidrabazar.com/inventory-product/list-segments";
    else
      path = ListSegmentApi + "?name=$code";
    print("ssssssssssssssssssssssssssssssssssssssssssssssssssss"+path.toString());
    try{
      final response = await client.get(path,
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          }));
      print("sssssssssssssssssss"+response.toString());

      List<salesOrderTypeModel> items = [];
      print("response.data['data'] "+response.data .toString());
      (response.data['data']['results'] as List).forEach((element) {
        items.add(salesOrderTypeModel.fromJson(element));
        print("listOfferPeriod" + items.toString());
      });
      return PaginatedResponse<List<salesOrderTypeModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous'],);
    }catch(e){
      print(e);
    }
    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));
    print("sssssssssssssssssss"+response.toString());

    List<salesOrderTypeModel> items = [];
    print("response.data['data']['results'] "+response.data['data']['results'] .toString());
    (response.data['data']['results'] as List).forEach((element) {
      items.add(salesOrderTypeModel.fromJson(element));
      print("listOfferPeriod" + items.toString());
    });
    return PaginatedResponse<List<salesOrderTypeModel>>(
      items,
      response.data['data']['next'],
      response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],);


  }

  @override
  Future<PaginatedResponse<List<OfferPeriodList>>> getSaleApplyingName(salesOrderNamePostModel model, String? code) async {
    code = code == null ? "" : code;
    String path;
    if (code == "")
      path = "https://api-uat-inventory.sidrabazar.com/inventory-product/list-promotion-applying-on";
    else
      path = "https://api-uat-inventory.sidrabazar.com/inventory-product/list-promotion-applying-on" + "?$code";
    print(path);
    print("sasasasssssssssssssss"+model.toString());

    final response = await client.post(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<OfferPeriodList> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(OfferPeriodList.fromJson(element));
      print("listOfferPeriod" + items.toString());
    });
    return PaginatedResponse<List<OfferPeriodList>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],);
  }

  @override
  Future<PromotionSaleReadModel> getPromotionSaleRead(int id) async {
    print(readPatchPromotionSaleApi+id.toString());
    try{
      final response = await client.get(readPatchPromotionSaleApi+id.toString(),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          },
        ),
      );
      // print("response" + response.toString());
      PromotionSaleReadModel data = PromotionSaleReadModel.fromJson(response.data['data']['sale_data']);
      print("far$data");
      return data;
    }catch(e){
      print("Suryaaaaaaaaaaaaaaaaaaa"+e.toString());
    }
    final response = await client.get(readPatchPromotionSaleApi+id.toString(),
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    // print("response" + response.toString());
    PromotionSaleReadModel data = PromotionSaleReadModel.fromJson(response.data['data']['sale_data']);
    print("far$data");
    return data;

  }

  @override
  Future<PaginatedResponse<List<SaleLines>>> getVariantList(PromotionVariantPostModel model, String? code) async {
    code = code == null ? "" : code;
    String path;
    if (code == "")
      path = "https://api-uat-inventory.sidrabazar.com/inventory-product/list-variant-by-applying-on";
    else
      path = "https://api-uat-inventory.sidrabazar.com/inventory-product/list-variant-by-applying-on" + "?$code";
    print(path);
    print("sasasasssssssssssssss"+model.toString());
    try{
      final response = await client.post(path,
          data:
          {"applying_type":model.applyinType,
            "segment_list":model.segmentList,
            "search_element":model.searchElement,
            "applying_type_code":model.applyingTypeCode,
            "inventory_id":Variable.inventory_ID
          },
          // model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          }));

      List<SaleLines> items = [];
      (response.data['data']['results'] as List).forEach((element) {
        items.add(SaleLines.fromJson(element));
        print("listOfferPeriod" + items.toString());
      });
      return PaginatedResponse<List<SaleLines>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous'],);
    }
    catch(e){
      print(e);

    }
    final response = await client.post(path,
        data:   {"applying_type":model.applyinType,
          "segment_list":model.segmentList,
          "search_element":model.searchElement,
          "applying_type_code":model.applyingTypeCode,
          "inventory_id":Variable.inventory_ID
        },
        // model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<SaleLines> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(SaleLines.fromJson(element));
      print("listOfferPeriod" + items.toString());
    });
    return PaginatedResponse<List<SaleLines>>(
      items,
      response.data['data']['next'],
      response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],);



  }

  @override
  Future<List<ChannelListModel>> getChannelList(String? code) async {
    code=code==""?null:code;
    UserPreferences().getUser().then((value) {
      token = value.token;
      print("token is here222 exist" + token.toString());
    });
    String path="";
    if(code==null)
    path=getChannelListApi+Variable.inventory_ID;
    else
     path=getChannelListApi+Variable.inventory_ID+"?choice="+code.toString();
    print(path);
   try{
     final response = await client.get(path,
       options: Options(
         headers: {
           'Content-Type': 'application/json',
           'Accept': 'application/json',
           'Authorization': '${token}'
         },
       ),
     );
     print("AKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK");
     List<ChannelListModel> items = [];
     (response.data['data'] as List).forEach((element) {
       items.add(ChannelListModel.fromJson(element));
       print("listOfferPeriod" + items.toString());
     });
     // print("response" + res
     // ponse.toString());


     return items;
   }catch(e){
     print("error"+e.toString());
   }
   final response = await client.get(path,
     options: Options(
       headers: {
         'Content-Type': 'application/json',
         'Accept': 'application/json',
         'Authorization':  token
       },
     ),
   );
    print("AKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK");
   // print("response" + response.toString());
    List<ChannelListModel> items = [];
    (response.data['data'] as List).forEach((element) {
      items.add(ChannelListModel.fromJson(element));
      print("listOfferPeriod" + items.toString());
    });
    // print("response" + res
    // ponse.toString());


    return items;
  }

  @override
  Future<DoubleResponse> getPromotionSalePatch(PromotionSaleCreateModel model, int? id) async {

    String path=readPatchPromotionSaleApi+id.toString();
    print(path);
    print(model);

    try{
      final response = await client.patch(path,
          // data: model.toJson(),
          data:{

            //   "name": "model.name",
            //   "offer_period_id": 2,
            //   "offer_group_id": 1,
            //   "based_on": "price",
            //   "discount_percentage_or_price": 1,
            //   "total_price": 400,
            //   "sales_applying_on": "category",
            //   "sales_applying_on_name": " BABY AND KIDS",
            //   "sales_applying_on_id":127,
            //   "sales_applying_on_code": "CATY131280",
            //   "inventory_id": "SBNU1000",
            //   "image": "",
            //   "is_available_for_all": false,
            //   "available_customer_groups": "aaa",
            //   "maximum_count": 100,
            //   "description": "",
            //   "created_by": "EMPY003",
            //   "is_active": true,
            //   "sale_line": [
            //
            //   ]
            // },




              "name":model.name,
              "offer_period_id":model.offerPeriodId,
              "offer_group_id":model.offerGroupId,
              "based_on":model.basedOn,
              "discount_percentage_or_price":model.discountPercentageOrPrice,
              "total_price":model.totalPrice,
              "sales_applying_on":model.salesApplyingOn,
              "sales_applying_on_name":model.salesApplyingOnName,
              "sales_applying_on_id":model.salesApplyingOnId,
              "sales_applying_on_code":model.salesApplyingOnCode,
              "inventory_id":model.inventoryId,
              "image":model.image,
              "is_available_for_all":[model.isAvailableForAll],
              "available_customer_groups":model.availableCustomerGroup,
              "maximum_count":model.maximumCount,
              "description":model.description,
              "created_by":model.createdBy,
              "is_active":model.isActive,
              "sale_line":model.saleLines

          },

          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));

      print(response.data);
      if (response.data['status'] == 'failed') {



        if(response.data['is_another_promotion']==true){
          Variable.errorMessege = response.data['message']['message'];
          Variable.type_data = response.data['message']['type_data'];
          Variable.isTypeDataCheck = true;

        }
        else{
          Variable.errorMessege = response.data['message'];
          Variable.isTypeDataCheck = false;
        }
          }
          return DoubleResponse(
          response.data['status'] == 'success', response.data['status'] == 'success'? response.data['message']: Variable.errorMessege);



          }catch(e){
      print(e);

    }
    final response = await client.patch(path,
        // data: model.toJson(),

          data:{
            //
            // "name": "model.name",
            // "offer_period_id": 2,
            // "offer_group_id": 1,
            // "based_on": "price",
            // "discount_percentage_or_price": 1,
            // "total_price": 400,
            // "sales_applying_on": "category",
            // "sales_applying_on_name": " BABY AND KIDS",
            // "sales_applying_on_id":127,
            // "sales_applying_on_code": "CATY131280",
            // "inventory_id": "SBNU1000",
            // "image": "",
            // "is_available_for_all": false,
            // "available_customer_groups": "aaa",
            // "maximum_count": 100,
            // "description": "",
            // "created_by": "EMPY003",
            // "is_active": true,
            // "sale_line": [
            //
            // ]



            "name":model.name,

            "offer_period_id":model.offerPeriodId,

            "offer_group_id":model.offerGroupId,

            "based_on":model.basedOn,

            "discount_percentage_or_price":model.discountPercentageOrPrice,

            "total_price":model.totalPrice,

            "sales_applying_on":model.salesApplyingOn,

            "sales_applying_on_name":model.salesApplyingOnName,

            "sales_applying_on_id":model.salesApplyingOnId,

            "sales_applying_on_code":model.salesApplyingOnCode,

            "inventory_id":model.inventoryId,

            "image":model.image,

            "is_available_for_all":model.isAvailableForAll,

            "available_customer_groups":model.availableCustomerGroup,

            "maximum_count":model.maximumCount,

            "description":model.description,

            "created_by":model.createdBy,

            "is_active":model.isActive,

            "sale_line":model.saleLines

        },options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));

    print(response.data);
    if (response.data['status'] == 'failed') {



      if(response.data['is_another_promotion']==true){
        Variable.errorMessege = response.data['message']['message'];
        Variable.type_data = response.data['message']['type_data'];
        Variable.isTypeDataCheck = true;

      }
      else{
        Variable.errorMessege = response.data['message'];
        Variable.isTypeDataCheck = false;
      }
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['status'] == 'success'? response.data['message']: Variable.errorMessege);



  }

  @override
  Future<DoubleResponse> postPromotionImage(String? imageNmae, String ImageEncode, {String? type}) async {
    String path = PromotionImagePostApi;
    print(path);
    print("dhoshhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhaaaaaaaaaaaaaaaaaaaaaa");

    final response = await client.post(path,
        data: {"image_name": imageNmae, "image_encode": ImageEncode},
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("+++++++++++");
    print(response);
    print(response.data["data"]);

    print("ananan" + type.toString());
    if (type != null || type != "") {
      switch (type) {
        case 'image1':
          print("ist image");
          Variable.img1 = response.data["data"];
          //  print(Variable.img1);
          //   Variable.img?.image1 != response.data["data"];

          break;

        case 'image2':
          print('2st image');
          // Variable.img= ImagesModel(image2: response.data);
          Variable.img2 = response.data["data"];
          break;

        case 'image3':
          print('3st image');
          // Variable.img= ImagesModel(image3: response.data);
          Variable.img3 = response.data["data"];
          break;
        case 'image4':
          print('4st image');
          // Variable.img= ImagesModel(itemCatelog1: response.data);
          Variable.img4 = response.data["data"];
          break;
        case 'image5':
          print('5st image');
          // Variable.img= ImagesModel(itemCatelog2: response.data);
          Variable.img5 = response.data["data"];
          break;
        case 'image6':
          print('6st image');
          // Variable.img= ImagesModel(itemCatelog3: response.data);
          Variable.img6 = response.data["data"];
          break;
        case 'image7':
          print('7st image');
          // Variable.img= ImagesModel(itemCatelog4: response.data);
          Variable.img7 = response.data["data"];
          break;
        case 'image8':
          print('8st image');
          // Variable.img= ImagesModel(itemCatelog5: response.data);
          Variable.img8 = response.data["data"];
          break;
        case '1':
          print('8st image');
          // Variable.img= ImagesModel(itemCatelog5: response.data);
          Variable.catalog1 = response.data["data"];
          break;
        case '2':

        // Variable.img= ImagesModel(itemCatelog5: response.data);
          Variable.catalog2 = response.data["data"];
          break;
        case '3':

        // Variable.img= ImagesModel(itemCatelog5: response.data);
          Variable.catalog3 = response.data["data"];
          break;
        case '4':

        // Variable.img= ImagesModel(itemCatelog5: response.data);
          Variable.catalog4 = response.data["data"];
          break;
        case '5':

        // Variable.img= ImagesModel(itemCatelog5: response.data);
          Variable.catalog5 = response.data["data"];
          break;
        case '6':

        // Variable.img= ImagesModel(itemCatelog5: response.data);
          Variable.catalog6 = response.data["data"];
          break;
        case '7':

        // Variable.img= ImagesModel(itemCatelog5: response.data);
          Variable.catalog7 = response.data["data"];
          break;
        case '8':

        // Variable.img= ImagesModel(itemCatelog5: response.data);
          Variable.catalog8 = response.data["data"];
          break;
      }
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['data']);

  }

  @override
  Future<List<VariantModel>> getVariantDeactivate(int type, String? typeData, List<int?> idList) async {
    String path=type==1?promotionVariantDeactivateByTypeApi:promotionVariantDeactivateByVariantApi;
    print(path);
    print(typeData);
    print(idList);
try{
  final response = await client.post(path,
    data:{

      "type_data":typeData,
      "id_list":idList
    },

    options: Options(
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
    ),
  );
  // print("response" + response.toString());
  List<VariantModel> items = [];
  (response.data['data'] as List).forEach((element) {
    items.add(VariantModel.fromJson(element));
    print("listOfferPeriod" + items.toString());
  });
  return items;
}
    catch(e){
  print(e);
    }
    final response = await client.post(path,
      data:{

        "type_data":typeData,
        "id_list":idList
      },

      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    // print("response" + response.toString());
    List<VariantModel> items = [];
    (response.data['data'] as List).forEach((element) {
      items.add(VariantModel.fromJson(element));
      print("listOfferPeriod" + items.toString());
    });
    return items;
  }

  @override
  Future<DoubleResponse> postCreatativeVariant(List<VariantModel> idList) async {
    print(deactivateOfferByVariantPostApi);

    try{
      final response = await client.post(deactivateOfferByVariantPostApi,
     data:     {

            "id_list":idList

          },
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      print("");
      print(response);
      print(response.data['message']);
      if (response.data['status'] == 'failed') {
        Variable.errorMessege = response.data['message'];
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['message']);

    }catch(e){
      print(e);

    }
    final response = await client.post(deactivateOfferByVariantPostApi,
        data:     {
          "id_list":idList,
        },
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
    print("");
    print(response);
    print(response.data['message']);
    if (response.data['status'] == 'failed') {
      Variable.errorMessege = response.data['message'];
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['message']);
  }

  @override
  Future<PaginatedResponse<List<salesOrderTypeModel>>> getPromotionDiscountVerticalList(String? code) async {
    code = code == null ? "" : code;
    String path;
    if (code == "")
      path = listDiscountVerticalListApi+Variable.inventory_ID;
    else
      path = listDiscountVerticalListApi +Variable.inventory_ID+ "/?$code";




    print(path);

    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<salesOrderTypeModel> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(salesOrderTypeModel.fromJson(element));
      print("itemsAk" + items.toString());
    });
    return PaginatedResponse<List<salesOrderTypeModel>>(
      items,
      response.data['data']['next'],
      response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],);
  }

  @override
  Future<DoubleResponse> postCreatePromtionDiscount(PromotionDiscountCreationModel model) async {
    print(deletePromotionDiscountApi);
    print(model);

    try{
      final response = await client.post(deletePromotionDiscountApi,
          data: model.toJson(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));

      print(response.data);
      if (response.data['status'] == 'failed') {



        if(response.data['is_another_promotion']==true){
          Variable.errorMessege = response.data['message']['message'];
          Variable.type_data = response.data['message']['type_data'];
          Variable.isTypeDataCheck = true;

        }
        else{
          Variable.errorMessege = response.data['message'];
          Variable.isTypeDataCheck = false;
        }
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['status'] == 'success'? response.data['message']: Variable.errorMessege);



    }catch(e){
      print(e);

    }
    final response = await client.post(deletePromotionDiscountApi,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));


    if (response.data['status'] == 'failed') {

      print(response.data['message']);

      if(response.data['message']["type_data"]!=""){
        Variable.errorMessege = response.data['message']['message'];
        Variable.type_data = response.data['message']['type_data'];
      }
      else{
        Variable.errorMessege = response.data['message'];
      }
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['status'] == 'success'? response.data['message']: Variable.errorMessege);


  }

  @override
  Future<PromotionDiscountReadModel> getPromotionDiscountRead(int id) async {
    String path=readPatchPromotionDiscountApi+id.toString();
    print("sasasasasasa"+path.toString());
try{
  final response = await client.get(path,
    options: Options(
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
    ),
  );
  // print("response" + response.toString());
  PromotionDiscountReadModel data = PromotionDiscountReadModel.fromJson(response.data['data']['discount_data']);
  print("far$data");
  return data;
}catch(e){
  print("pppppppppppppppppppppp"+e.toString());
}
final response = await client.get(path,
  options: Options(
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    },
  ),
);
// print("response" + response.toString());
PromotionDiscountReadModel data = PromotionDiscountReadModel.fromJson(response.data['data']['discount_data']);
print("far$data");
return data;
  }

  @override
  Future<PaginatedResponse<List<OfferPeriodList>>> getListTypeId(salesOrderNamePostModel model, String? code) async {
    String path;

    if (code == "")
      path = "https://api-uat-inventory.sidrabazar.com/inventory-product/list-heirarchies-by-segment";
    else
      path = ListApplyingNameApi + "?$code";
    print(path);
    print("aaamodel"+model.toString());

    final response = await client.post(path,
        data: model.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<OfferPeriodList> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(OfferPeriodList.fromJson(element));
      print("listOfferPeriod" + items.toString());
    });
    return PaginatedResponse<List<OfferPeriodList>>(
      items,
      response.data['data']['next'],
      response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],);
  }

  @override
  Future<DoubleResponse> getPromotionDiscountPatch(PromotionDiscountCreationModel model, int? id) async {
    String path=readPatchPromotionDiscountApi+id.toString();
    print(path);
    print(model);

    try{
      final response = await client.patch(path,
          // data: model.toJson(),
          data:

            //   "name": "model.name",
            //   "offer_period_id": 2,
            //   "offer_group_id": 1,
            //   "based_on": "price",
            //   "discount_percentage_or_price": 1,
            //   "total_price": 400,
            //   "sales_applying_on": "category",
            //   "sales_applying_on_name": " BABY AND KIDS",
            //   "sales_applying_on_id":127,
            //   "sales_applying_on_code": "CATY131280",
            //   "inventory_id": "SBNU1000",
            //   "image": "",
            //   "is_available_for_all": false,
            //   "available_customer_groups": "aaa",
            //   "maximum_count": 100,
            //   "description": "",
            //   "created_by": "EMPY003",
            //   "is_active": true,
            //   "sale_line": [
            //
            //   ]
            // },




                {

            "offer_period_id":model.offerPeriodId,

            "offer_group_id":model.offerGroupId,

            "based_on":model.basedOn,

            "discount_percentage_or_price":model.discountPercentageOrPrice,

            "image":model.image,

            "title":model.title,

            "description":model.description,

            "is_available_for_all":model.isAvailableFor,

            "available_customer_groups":model.availableCustomerGroups,

            "is_active":model.isActive,

            "created_by":model.createdBy,

            "offer_lines":model.offerLines

            } ,
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));

      print(response.data);
      if (response.data['status'] == 'failed') {



        if(response.data['is_another_promotion']==true){
          Variable.errorMessege = response.data['message']['message'];
          Variable.type_data = response.data['message']['type_data'];
          Variable.isTypeDataCheck = true;

        }
        else{
          Variable.errorMessege = response.data['message'];
          Variable.isTypeDataCheck = false;
        }
      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['status'] == 'success'? response.data['message']: Variable.errorMessege);



    }catch(e){
      print(e);

    }
    final response = await client.patch(path,
        // data: model.toJson(),

        data:{
          //
          // "name": "model.name",
          // "offer_period_id": 2,
          // "offer_group_id": 1,
          // "based_on": "price",
          // "discount_percentage_or_price": 1,
          // "total_price": 400,
          // "sales_applying_on": "category",
          // "sales_applying_on_name": " BABY AND KIDS",
          // "sales_applying_on_id":127,
          // "sales_applying_on_code": "CATY131280",
          // "inventory_id": "SBNU1000",
          // "image": "",
          // "is_available_for_all": false,
          // "available_customer_groups": "aaa",
          // "maximum_count": 100,
          // "description": "",
          // "created_by": "EMPY003",
          // "is_active": true,
          // "sale_line": [
          //
          // ]


          {

            "offer_period_id":model.offerPeriodId,

            "offer_group_id":model.offerGroupId,

            "based_on":model.basedOn,

            "discount_percentage_or_price":model.discountPercentageOrPrice,

            "image":model.image,

            "title":model.title,

            "description":model.description,

            "is_available_for_all":model.isAvailableFor,

            "available_customer_groups":[],

            "is_active":model.isActive,

            "created_by":model.createdBy,

            "offer_lines":model.offerLines

          }

        },
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));

    print(response.data);
    if (response.data['status'] == 'failed') {



      if(response.data['is_another_promotion']==true){
        Variable.errorMessege = response.data['message']['message'];
        Variable.type_data = response.data['message']['type_data'];
        Variable.isTypeDataCheck = true;

      }
      else{
        Variable.errorMessege = response.data['message'];
        Variable.isTypeDataCheck = false;
      }
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['status'] == 'success'? response.data['message']: Variable.errorMessege);


  }

  @override
  Future<DoubleResponse> postCreatePromtionBuyMore(PromotionBuyMoreCreationModel model) async {
    print(createPromotionBuyMore);
    try{
      final response = await client.post(createPromotionBuyMore,
          data: model.toJson(),
          // data:{
          //
          //
          //   "lines": model.lines,
          //
          //
          //   "inventory_id": model.inventoryId,
          //
          //   "offer_applied_to": model.offerAppliedTo,
          //
          //   "offer_applied_to_id": model.offerAppliedToId,
          //
          //   "offer_applied_to_code": model.offerAppliedToCode,
          //
          //   "title": "ajjhaa",
          //
          //   "description": "",
          //
          //   "segments":[{"segment_name":"groceries","segment_code":"groceries"}],
          //
          //   "is_available_for_all": true,
          //
          //   "available_customer_groups": [],
          //
          //   "count_price_percentage": [{"count":10,"price_percentage":10}],
          //
          //   "image": "",
          //
          //   "based_on": "price",
          //
          //   "buy_more_applying_on": "category",
          //
          //   "buy_more_applying_on_name": "CATY130171",
          //
          //   "buy_more_applying_on_id": 70,
          //
          //   "buy_more_applying_on_code": "CATY130171",
          //
          //   "created_by": "hai",
          //
          //   "is_active": false,
          //
          //   "offer_period_id": model.offerPeriodId,
          //
          //   "offer_group_id":model.offerGroupId
          //
          //
          //
          // },
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));

      print(response.data);
      if (response.data['status'] == 'failed') {



        if(response.data['is_another_promotion']==true){
          Variable.errorMessege = response.data['message']['message'];
          Variable.type_data = response.data['message']['type_data'];
          Variable.isTypeDataCheck = true;

        }
        else{
          Variable.errorMessege = response.data['message'];
          Variable.isTypeDataCheck = false;
        }

      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['status'] == 'success'? response.data['message']: Variable.errorMessege);
    }catch(e){
      print(e);

    }
    final response = await client.post(createPromotionBuyMore,
        data: model.toJson(),
        // data:{
        //
        //
        //   "lines": model.lines,
        //
        //
        //   "inventory_id": model.inventoryId,
        //
        //   "offer_applied_to": model.offerAppliedTo,
        //
        //   "offer_applied_to_id": model.offerAppliedToId,
        //
        //   "offer_applied_to_code": model.offerAppliedToCode,
        //
        //   "title": "ajjhaa",
        //
        //   "description": "",
        //
        //   "segments":[{"segment_name":"groceries","segment_code":"groceries"}],
        //
        //   "is_available_for_all": true,
        //
        //   "available_customer_groups": [],
        //
        //   "count_price_percentage": [{"count":10,"price_percentage":10}],
        //
        //   "image": "",
        //
        //   "based_on": "price",
        //
        //   "buy_more_applying_on": "category",
        //
        //   "buy_more_applying_on_name": "CATY130171",
        //
        //   "buy_more_applying_on_id": 70,
        //
        //   "buy_more_applying_on_code": "CATY130171",
        //
        //   "created_by": "hai",
        //
        //   "is_active": false,
        //
        //   "offer_period_id": model.offerPeriodId,
        //
        //   "offer_group_id":model.offerGroupId
        //
        //
        //
        // },
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));

    print(response.data);
    if (response.data['status'] == 'failed') {



      if(response.data['is_another_promotion']==true){
        Variable.errorMessege = response.data['message']['message'];
        Variable.type_data = response.data['message']['type_data'];
        Variable.isTypeDataCheck = true;

      }
      else{
        Variable.errorMessege = response.data['message'];
        Variable.isTypeDataCheck = false;
      }
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['status'] == 'success'? response.data['message']: Variable.errorMessege);
  }

  @override
  Future<PaginatedResponse<List<OfferPeriodList>>> getBuyMoreVerticalList(String? code) async {
    code = code == null ? "" : code;
    String path;
    if (code == "")
      path = listBuyMoreVerticalListApi+Variable.inventory_ID;
    else
      path = listBuyMoreVerticalListApi +Variable.inventory_ID+ "?$code";
    print(path);

    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<OfferPeriodList> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(OfferPeriodList.fromJson(element));
      print("listOfferPeriod" + items.toString());
    });
    return PaginatedResponse<List<OfferPeriodList>>(
      items,
      response.data['data']['next'],
      response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],
    );
  }

  @override
  Future<PromotionBuyMoreCreationModel> getBuyMoreRead(int id) async {
    String path=readBuyMoreApi+id.toString();
    print(path);
try{
  final response = await client.get(path,
    options: Options(
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
    ),
  );
  // print("response" + response.toString());
  PromotionBuyMoreCreationModel data = PromotionBuyMoreCreationModel.fromJson(response.data['data']['buy_more_data']);
  print("far$data");
  return data;
}catch(e){


  print("the error is here is "+e.toString());
}
    final response = await client.get(path,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );
    // print("response" + response.toString());
    PromotionBuyMoreCreationModel data = PromotionBuyMoreCreationModel.fromJson(response.data['data']['buy_more_data']);
    print("far$data");
    return data;
  }

  @override
  Future<DoubleResponse> buyMorePromotionSalePatch(PromotionBuyMoreCreationModel model, int? id) async {
    String path=readBuyMoreApi+id.toString();
    print(path);
    print(model);

    try{
      final response = await client.patch(path,
          // data: model.toJson(),

        data:  {
          // "title": "kjsbxjkssssab",
          // "offer_period_id": 2,
          // "offer_group_id": 2,
          // "based_on": "price",
          // "created_by": "msb",
          // "inventory_id": "SBNU1003",
          // "segments":[],
          // "count_price_percentage": [
          //   {
          //     "count": 10,
          //     "price_percentage": 10
          //   }
          // ],
          // "description": "ajshvs",
          // "is_available_for_all": true,
          // "available_customer_groups": [
          //   {
          //     "customer_group_code": null,
          //     "customer_group_name": null
          //   }
          // ],
          // "image": null,
          // "is_active": true,
          // "lines": [
          //
          // ]
            "title":model.title,
            "offer_period_id":model.offerPeriodId,
            "offer_group_id":model.offerGroupId,
            "based_on":model.basedOn,
            "created_by":model.createdBy,
            "inventory_id":model.inventoryId,
            "count_price_percentage":model.countPricePercentage,
            "description":model.description,
            "is_available_for_all":model.isAvailableForAll,
             "segments":model.segments,
            "available_customer_groups":   {
              "customer_group_code": null,
              "customer_group_name": null
            },
            // model.availableCustomerGroups,

            "image":model.image,

            "is_active":model.isActive,


            "lines":model.lines


          },
      //     options: Options(headers: {
      //       'Content-Type': 'application/json',
      //       'Accept': 'application/json',
      //     }));
      // print("");
      // print(response);
      // print(response.data['message']);
      // if (response.data['status'] == 'failed') {
      //   Variable.errorMessege = response.data['message'];
      // }
      // return DoubleResponse(
      //     response.data['status'] == 'success', response.data['message']);

          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));

      print(response.data);
      if (response.data['status'] == 'failed') {



        if(response.data['is_another_promotion']==true){
          Variable.errorMessege = response.data['message']['message'];
          Variable.type_data = response.data['message']['type_data'];
          Variable.isTypeDataCheck = true;

        }
        else{
          Variable.errorMessege = response.data['message'];
          Variable.isTypeDataCheck = false;
        }

      }
      return DoubleResponse(
          response.data['status'] == 'success', response.data['status'] == 'success'? response.data['message']: Variable.errorMessege);

    }catch(e){
      print("the error is here"+e.toString());

    }
    final response = await client.patch(path,
        // data: model.toJson(),

        // data: model.toJson(),

        data:  {

          // "title": "kjsbxjksab",
          // "offer_period_id": 2,
          // "offer_group_id": 2,
          // "based_on": "price",
          // "created_by": "msb",
          // "inventory_id": "SBNU1003",
          // "segments":[],
          // "count_price_percentage": [
          //   {
          //     "count": 10,
          //     "price_percentage": 10
          //   }
          // ],
          // "description": "ajshvs",
          // "is_available_for_all": true,
          // "available_customer_groups": [
          //   {
          //     "customer_group_code": null,
          //     "customer_group_name": null
          //   }
          // ],
          // "image": null,
          // "is_active": true,
          // "lines": [
          //
          // ]

          "title":model.title,
          "offer_period_id":model.offerPeriodId,
          "offer_group_id":model.offerGroupId,
          "based_on":model.basedOn,
          "created_by":model.createdBy,
          "inventory_id":model.inventoryId,
          "count_price_percentage":model.countPricePercentage,
          "description":model.description,
          "is_available_for_all":model.isAvailableForAll,
          "segments":model.segments,
          "available_customer_groups":  {
            "customer_group_code": null,
            "customer_group_name": null
          },

          // model.availableCustomerGroups,
          "image":model.image,
          "is_active":model.isActive,
          "lines":model.lines


        },
    //     options: Options(headers: {
    //       'Content-Type': 'application/json',
    //       'Accept': 'application/json',
    //     }));
    // print("");
    // print(response);
    // print(response.data['message']);
    // if (response.data['status'] == 'failed') {
    //   Variable.errorMessege = response.data['message'];
    // }
    // return DoubleResponse(
    //     response.data['status'] == 'success', response.data['message']);
    //
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));

    print(response.data);
    if (response.data['status'] == 'failed') {



      if(response.data['is_another_promotion']==true){
        Variable.errorMessege = response.data['message']['message'];
        Variable.type_data = response.data['message']['type_data'];
        Variable.isTypeDataCheck = true;

      }
      else{
        Variable.errorMessege = response.data['message'];
        Variable.isTypeDataCheck = false;
      }
    }
    return DoubleResponse(
        response.data['status'] == 'success', response.data['status'] == 'success'? response.data['message']: Variable.errorMessege);;
  }

  @override
  Future<PaginatedResponse<  List<CustomGroupReadModel>>> getCustomGroupRead() async {
    var path=Uri.parse("https://api-customergroup-application.hilalcart.com/");
    print(path);
    try{
      final response = await client.get(path.toString(),
          options:Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
          )
      );
      print(response);

      List<CustomGroupReadModel> items = [];

      (response.data['data']['Group_Code_Name'] as List).forEach((element) {
        items.add(CustomGroupReadModel.fromJson(element));
        print("listOfferPeriod" + items.toString());
      });
      return PaginatedResponse<List<CustomGroupReadModel>>(
        items,
        response.data['data']['next'],
        response.data['data']['count'].toString(),
        previousUrl: response.data['data']['previous'],
      );
    }catch(e){
      print("pppppppppppppppppppppp"+e.toString());
    }
    print("hi here");
    final response = await client.get(path.toString(),
      options:Options(
          headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        },
      )
    );

    List<CustomGroupReadModel> items = [];

    (response.data['data']['Group_Code_Name'] as List).forEach((element) {
      items.add(CustomGroupReadModel.fromJson(element));
      print("listOfferPeriod" + items.toString());
    });
    return PaginatedResponse<List<CustomGroupReadModel>>(
      items,
      response.data['data']['next'],
      response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],
    );
  }

  @override
  Future<PaginatedResponse<List<SaleLines>>> getVariantGroupCodeList(String? code,{String? customereCode}) async {
    code = code == null ? "" : code;
    String path;
    if (code == "")
      path = listDiscountVariantByGroupCodeApi+customereCode.toString();
    else
      path = listDiscountVariantByGroupCodeApi +customereCode.toString()+ "?$code";
    print(path);

    final response = await client.get(path,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }));

    List<SaleLines> items = [];
    (response.data['data']['results'] as List).forEach((element) {
      items.add(SaleLines.fromJson(element));
      print("listOfferPeriod" + items.toString());
    });
    return PaginatedResponse<List<SaleLines>>(
      items,
      response.data['data']['next'],
      response.data['data']['count'].toString(),
      previousUrl: response.data['data']['previous'],
    );
  }



//   @override
//   Future<DoubleResponse> deleteOfferGroup(int? id) async {
//
//     final response = await client.delete(readOfferGroup+id.toString(),
//
//
//         options: Options(headers: {
//           'Content-Type': 'application/json',
//           'Accept': 'application/json',
//
//         }));
//     print("datasourse${response}");
//     if (response.data['status'] == 'failed') {
//       Variable.errorMessege = response.data['message'];
//
//     }
//     return DoubleResponse(
//         response.data['status'] == 'success', response.data['message']);
//   }
//
//   @override
//   Future<DiscountReadType> getDiscountType() async {
//
//     final response = await client.get(typeUrl,
//       options: Options(
//         headers: {
//           'Content-Type': 'application/json',
//           'Accept': 'application/json',
//         },
//       ),
//     );
//     // print("is token$token");
//     DiscountReadType Type = DiscountReadType.fromJson(response.data['data']);
//     print(Type);
//     return Type;
//   }
//   @override
//   Future<PaginatedResponse<List<TypeAppliyingList>>> getCatagoryList(String? code,
//       {String? type}) async {
//
//     final response = await client.get(segmentPost,
//         options: Options(headers: {
//           'Content-Type': 'application/json',
//           'Accept': 'application/json'
//         }));
//
//     List<TypeAppliyingList> items = [];
//     (response.data['data']['results'] as List).forEach((element) {
//       items.add(TypeAppliyingList.fromJson(element));
//       print("segPostData" + items.toString());
//     });
//     return PaginatedResponse<List<TypeAppliyingList>>(
//         items,
//         response.data['data']['next'],
//         response.data['data']['count'].toString());
//   }
//   @override
//   Future<DoubleResponse> postVariantRead(VariantPostRead model) async {
//
//     final response = await client.post(variantReadPost,
//         data: model.toJson(),
//         options: Options(headers: {
//           'Content-Type': 'application/json',
//           'Accept': 'application/json',
//         }));
//     print(response);
//     print("kgf${response.data['data']}");
//     List<VariantReadTypes> items = [];
//     if (response.data['status'] == 'success') {
//
//
//       (response.data['data']['results'] as List).forEach((element) {
//
//
//         items.add(VariantReadTypes.fromJson(element));
//
//       });
//     }
//     print("Pas$items");
//     return DoubleResponse(
//         response.data['status'] == 'success', items);
//   }
//
//   @override
//   Future<PaginatedResponse<List<SegmentList>>> getSegmentList(String? code,
//       {String? type}) async {
//
//
//     final response = await client.get(segmentList,
//         options: Options(headers: {
//           'Content-Type': 'application/json',
//           'Accept': 'application/json'
//         }));
//
//     List<SegmentList> items = [];
//     (response.data['data']['results'] as List).forEach((element) {
//       items.add(SegmentList.fromJson(element));
//       print("segmentData"+items.toString());
//     });
//     return PaginatedResponse<List<SegmentList>>(
//         items,
//         response.data['data']['next'],
//         response.data['data']['count'].toString());
//   }
//
//   @override
//   Future<DoubleResponse> postSegment(SegmentPost model) async {
//
//     final response = await client.post(segmentPost,
//         data: model.toJson(),
//         options: Options(headers: {
//           'Content-Type': 'application/json',
//           'Accept': 'application/json',
//         }));
//     print("");
//     print(response);
//     print(response.data['message']);
//     List<TypeAppliyingList> items = [];
//     if (response.data['status'] == 'success') {
//
//
//       (response.data['data']['results'] as List).forEach((element) {
//
//
//         items.add(TypeAppliyingList.fromJson(element));
//
//       });
//     }
//     print("Pas$items");
//     return DoubleResponse(
//         response.data['status'] == 'success', items);
//   }
//
//   @override
//   Future<DoubleResponse> postCreateDiscount(CreateDiscount model) async {
//
//     final response = await client.post(createDiscount,
//         data: model.toJson(),
//         options: Options(headers: {
//           'Content-Type': 'application/json',
//           'Accept': 'application/json',
//         }));
//     print("");
//     print(response);
//     print(response.data['message']);
//     if (response.data['status'] == 'failed') {
//       Variable.errorMessege = response.data['message'];
//     }
//     return DoubleResponse(
//         response.data['status'] == 'success', response.data['message']);
//   }
}


