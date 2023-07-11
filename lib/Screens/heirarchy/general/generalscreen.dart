import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/GeneralScreen.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/branddelete/branddelete_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/brandread/brandread_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/categorylist/categorylist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/createbrand/createbrand_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/itemcreation/itemcreatin_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/itemread/itemread_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/model/brandreadmodel.dart';
import 'package:inventory/Screens/heirarchy/general/model/frameworklistmodel.dart';
import 'package:inventory/Screens/heirarchy/general/model/images.dart';
import 'package:inventory/Screens/heirarchy/general/model/itemcreation.dart';
import 'package:inventory/Screens/heirarchy/general/model/itemread.dart';
import 'package:inventory/Screens/heirarchy/general/screens.dart';

import 'package:inventory/Screens/variant/general/productmodulegeneral.dart';
import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/dropdownbutton.dart';
import 'package:inventory/widgets/searchTextfield.dart';

import '../../../commonWidget/Textwidget.dart';
import '../../../commonWidget/commonutils.dart';
import '../../../commonWidget/popupinputfield.dart';
import '../../../commonWidget/tableConfiguration.dart';
import '../../../core/uttils/variable.dart';
import '../../../widgets/customtable.dart';
import '../../sales/general/model/customeridlistmodel.dart';
import 'cubits/baseuomlist/baseuomlist_cubit.dart';
import 'cubits/devision_list/materialdelete_cubit.dart';
import 'cubits/imagepost/imagepost_cubit.dart';
import 'cubits/itemverticallist/itemcreation_list_cubit.dart';
import 'cubits/listbrand2/listbrand2_cubit.dart';
import 'model/brandcreation.dart';
import 'model/listbrand.dart';

class HeirarchyGeneralScreen extends StatefulWidget {
  @override
  _HeirarchyGeneralScreenState createState() => _HeirarchyGeneralScreenState();
}

class _HeirarchyGeneralScreenState extends State<HeirarchyGeneralScreen> {
  TextEditingController controller = TextEditingController();
  TextEditingController BrandController = TextEditingController();
  TextEditingController divisionNameController = TextEditingController();
  TextEditingController categoryNameController = TextEditingController();
  TextEditingController subCategoryNameController = TextEditingController();
  TextEditingController materialNameController = TextEditingController();
  TextEditingController variantNameController = TextEditingController();
  TextEditingController staticNameController = TextEditingController();
  TextEditingController BrandNameController = TextEditingController();
  TextEditingController uomGroupNameController = TextEditingController();
  TextEditingController baseUomGroupName = TextEditingController();
  TextEditingController GroupController = TextEditingController();
  TextEditingController GroupNameController = TextEditingController();
  TextEditingController materialController = TextEditingController();
  TextEditingController devisionController = TextEditingController();
  TextEditingController staticController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController uomGroupController = TextEditingController();
  TextEditingController subCategoryController = TextEditingController();
  TextEditingController uomCategoryController = TextEditingController();
  TextEditingController itemCodeController = TextEditingController();
  TextEditingController itemNameController = TextEditingController();
  TextEditingController searchNameController = TextEditingController();
  TextEditingController displayNameController = TextEditingController();
  TextEditingController discriptionNameController = TextEditingController();
  TextEditingController oldSystemCodeNameController = TextEditingController();
  TextEditingController statusCodeNameController = TextEditingController();
  TextEditingController image1Controller = TextEditingController();
  TextEditingController image2Controller = TextEditingController();
  TextEditingController image3Controller = TextEditingController();
  TextEditingController itemCatelog1Controller = TextEditingController();
  TextEditingController itemCatelog2Controller = TextEditingController();
  TextEditingController itemCatelog3Controller = TextEditingController();
  TextEditingController itemCatelog4Controller = TextEditingController();
  TextEditingController itemCatelog5Controller = TextEditingController();
  TextEditingController variantFrameworkController = TextEditingController();
  TextEditingController barCodeController = TextEditingController();
  TextEditingController qrCodeController = TextEditingController();
  TextEditingController rfIdController = TextEditingController();
  int? divisionId = 0;
  int? categoryId = 0;
  int? subCategoryId = 0;
  int? uomGroupId = 0;

  bool active = false;
  bool select = false;
  ItemReadModel? group;
  bool img1 = false;
  bool img2 = false;
  bool img3 = false;
  bool img4 = false;
  bool img5 = false;
  bool img6 = false;
  bool img7 = false;
  bool img8 = false;
  clear() {
    itemCodeController.text = "";
    itemNameController.text = "";
    staticNameController.clear();
    searchNameController.text = "";
    displayNameController.text = "";
    discriptionNameController.text = "";
    oldSystemCodeNameController.text = "";
    uomGroupController.text = "";
    uomCategoryController.text = "";
    statusCodeNameController.text = "";
    image1Controller.text = "";
    image2Controller.text = "";
    image3Controller.text = "";
    uomGroupNameController.text = "";
    baseUomGroupName.clear();
    divisionNameController.clear();
    itemCatelog1Controller.text = "";
    itemCatelog2Controller.text = "";
    itemCatelog3Controller.text = "";
    itemCatelog4Controller.text = "";
    itemCatelog5Controller.text = "";
    devisionController.text = "";
    categoryController.text = "";
    categoryNameController.text = "";
    subCategoryController.text = "";
    subCategoryNameController.text = "";
    GroupController.text = "";
    GroupNameController.text = "";
    materialController.text = "";
    materialNameController.text = "";
    variantFrameworkController.text = "";
    variantNameController.text = "";
    staticController.text = "";
    barCodeController.text = "";
    BrandController.text = "";
    BrandNameController.text = "";
    qrCodeController.text = "";
    rfIdController.text = "";
    categoryId = 0;
    subCategoryId = 0;
    divisionId = 0;
    uomGroupId = 0;
    Variable.divisionId = 0;
    Variable.categoryId = 0;
    Variable.subCategorycategory = 0;
    img1 = false;
    img2 = false;
    img3 = false;
    img4 = false;
    img5 = false;
    img6 = false;
    img7 = false;
    active = false;
  }

  imagePostCheck({String? type}) {
    switch (type) {
      case '1':
        img1 = true;
        break;

      case '2':
        img2 = true;
        break;

      case '3':
        img3 = true;
        break;
      case '4':
        img4 = true;
        break;
      case '5':
        img5 = true;
        break;
      case '6':
        img6 = true;
        break;
      case '7':
        img7 = true;
        break;
        case '8':
        img8 = true;
        break;
    }
  }

  int? veritiaclid = 0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  int selectedVertical = 0;
  var list1;
  idChange(int type,int id){
    print("the id"+id.toString());
    switch (type) {
      case 1:
        uomGroupId = id;
        break;

      case 2:
        divisionId = id;
        break;

      case 3:
        categoryId = id;
        break;
      case 4:
        subCategoryId = id;


    }


    print(divisionId);

  }

  activeChange(bool active1) {
    if (select != true) {
      active = active1;
      setState(() {});
    }
  }

  @override
  void initState() {
    context.read<ItemcreationListCubit>().getItemListList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CreatebrandCubit(),
        ),
        BlocProvider(
          create: (context) => Listbrand2Cubit(),
        ),
        BlocProvider(
          create: (context) => ItemcreatinCubit(),
        ),
        BlocProvider(
          create: (context) => ItemreadCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialdeleteCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<ItemcreatinCubit, ItemcreatinState>(
              listener: (context, state) {
                print("postssssssss" + state.toString());
                state.maybeWhen(orElse: () {
                  // context.
                  context.showSnackBarError("Loading");
                }, error: () {
                  context.showSnackBarError(Variable.errorMessege);
                }, success: (data) {
                  if (data.data1) {
                    img1 = false;
                    img2 = false;
                    img3 = false;
                    img4 = false;
                    img5 = false;
                    img6 = false;
                    img7 = false;
                    img8 = false;
                    context.showSnackBarSuccess(data.data2);
                    Timer(Duration(seconds: 5), () {
                      setState(() {

                        context
                                .read<ItemcreationListCubit>()
                                .getItemListList();

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
            BlocListener<ItemreadCubit, ItemreadState>(
              listener: (context, state) {
                print("state++++++++++++++++++++++++++++++++");
                state.maybeWhen(
                    orElse: () {},
                    error: () {
                      print("error");
                    },
                    success: (data) {
                      print("ansawww" + data.toString());
                      group = data;
                      uomCategoryController.text = data?.uomGroupCode ?? '';
                      subCategoryController.text = data?.subCategoryCode ?? '';
                      subCategoryNameController.text =
                          data?.subCategoryName ?? '';
                      uomGroupController.text = data?.uomGroupCode ?? '';

                      GroupController.text = data?.groupCode ?? '';
                      GroupNameController.text = data?.groupName ?? '';
                      uomGroupNameController.text = data.uomGroupName ?? '';
                      BrandController.text = data?.brandCode ?? '';
                      BrandNameController.text = data?.brandName ?? '';
                      staticController.text = data?.staticGroupCode ?? '';
                      staticNameController.text = data?.staticGroupName ?? '';
                      oldSystemCodeNameController.text =
                          data?.oldSystemCode ?? '';
                      baseUomGroupName.text = data?.uomName ?? '';
                      uomCategoryController.clear();

                      Variable.divisionId = data.divisionId;
                      divisionId = data.divisionId;
                      Variable.categoryId = data.categoryId;
                      categoryId = data.categoryId;
                      Variable.subCategorycategory = data.subCategoryId;
                      subCategoryId = data.subCategoryId;
                      Variable.uomGroupId = data.uomGroupId;
                      uomGroupId = data.uomGroupId;

                      materialController.text = data?.materialCode ?? '';
                      materialNameController.text = data?.materialName ?? '';
                      devisionController.text = data?.divisionCode ?? '';
                      divisionNameController.text = data?.divisionName ?? '';
                      uomCategoryController.text = data?.uomCode ?? '';
                      categoryController.text = data?.categoryCode ?? '';
                      categoryNameController.text = data?.categoryName ?? '';
                      subCategoryController.text = data?.subCategoryCode ?? '';
                      itemCodeController.text = data?.code ?? '';
                      itemNameController.text = data?.name ?? '';
                      subCategoryNameController.text =
                          data?.subCategoryName ?? '';
                      barCodeController.text =
                          data?.barcode?.barcodeNumber ?? '';
                      qrCodeController.text = data?.qrCode?.qrCodeNumber ?? '';
                      image1Controller.text = data?.image1 ?? '';
                      image2Controller.text = data?.image2 ?? '';
                      image3Controller.text = data?.image3 ?? '';
                      itemCatelog1Controller.text = data?.itemCatelog1 ?? '';
                      itemCatelog2Controller.text = data?.itemCatelog2 ?? '';
                      itemCatelog3Controller.text = data?.itemCatelog3 ?? '';
                      itemCatelog4Controller.text = data?.itemCatelog4 ?? '';
                      itemCatelog5Controller.text = data?.itemCatelog5 ?? '';
                      searchNameController.text = data?.searchName ?? '';
                      displayNameController.text = data?.displayname ?? '';
                      active = data?.isActive ?? false;
                      discriptionNameController.text =
                          data?.itemMeta?.description ?? "";
                      variantFrameworkController.text =
                          data?.variantFrameWork ?? "";
                      variantNameController.text =
                          data?.variantFrameWorkName ?? "";

                      setState(() {});
                    });
              },
            ),
            BlocListener<MaterialdeleteCubit, MaterialdeleteState>(
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
                    context.read<ItemcreationListCubit>().getItemListList();
                  } else {
                    context.showSnackBarError(data.data2);
                    print(data.data1);
                  }
                  ;
                });
              },
            ),
          ],
          child: BlocConsumer<ItemcreationListCubit, ItemcreationListState>(
            listener: (context, state) {
              print("state" + state.toString());
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error");
                  },
                  success: (list) {
                    list1 = list;

                    result = list.data;
                    print("seee" + result.toString());
                    setState(() {
                      if (result.isNotEmpty) {print("istCAse   enterd inthis case1");
                        if(select){
                          print("istCAse   enterd inthis case2");
                          veritiaclid = result[0].id;
                          selectedVertical=0;
                          context.read<ItemreadCubit>().getItemRead(veritiaclid!);
                        }
                        else{
                          var ab=result.any((item) => item.id ==veritiaclid);
                          print("ab$ab");
                       if(   result.any((item) => item.id ==veritiaclid)){
                         print("istCAse   enterd inthis case3");
                         context.read<ItemreadCubit>().getItemRead(veritiaclid!);
                       }
                       else{
                         print("istCAse   enterd inthis case4");
                        veritiaclid = result[0].id;
                        selectedVertical=0;
                        context.read<ItemreadCubit>().getItemRead(veritiaclid!);
                      }

                        }
                        select = false;
                      } else {
                        print("istCAse   enterd inthis case5");

                        select = true;
                        clear();
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
                  body: IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ItemVerticalList(
                          list: list1,
                          select: select,
                          selectedVertical: selectedVertical,
                          itemsearch: itemsearch,
                          ontap: (int index) {
                            setState(() {
                              selectedVertical = index;
                              active = false;

                              // select=false;
                              // updateCheck=false;

                              veritiaclid = result[index].id;
                              clear();
                              select = false;


                              context
                                  .read<ItemreadCubit>()
                                  .getItemRead(veritiaclid!);

                              setState(() {});
                            });
                          },
                          result: result,
                          child:                         tablePagination(
                                () => context
                                .read<ItemcreationListCubit>()
                                .refresh(),
                            back: list1?.previousUrl == null
                                ? null
                                : () {
                              context
                                  .read<ItemcreationListCubit>()
                                  .previuosslotSectionPageList();
                            },
                            next:list1?.nextPageUrl == null
                                ? null
                                : () {
                              // print(data.nextPageUrl);
                              context
                                  .read<ItemcreationListCubit>()
                                  .nextslotSectionPageList();
                            },
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.end,
                                  children: [
                                    TextButtonLarge(
                                      onPress: () {
                                        setState(() {
                                          select = true;
                                          clear();
                                          active = true;

                                          // updateCheck=false;
                                          // currentStock.clear();
                                          //
                                          //
                                          // table.clear();
                                          // clear();
                                        });
                                      },
                                      // icon: Icon(Icons.refresh),
                                      // label: Text("Clear")
                                      text: "CREATE",
                                    ),
                                  ],
                                ),
                                HeirarchySalesStableTable(
                                    select:select,
                                  uomGroupid: uomGroupId,
                                  uomGroupController: uomGroupController,
                                  uomController: uomCategoryController,
                                  displayName: displayNameController,
                                  discription: discriptionNameController,
                                  image1: image1Controller,
                                  image2: image2Controller,
                                  image3: image3Controller,
                                  itemCatelog1: itemCatelog1Controller,
                                  itemCatelog2: itemCatelog2Controller,
                                  itemCatelog3: itemCatelog3Controller,
                                  itemCatelog4: itemCatelog4Controller,
                                  itemCatelog5: itemCatelog5Controller,
                                  itemCode: itemCodeController,
                                  itemName: itemNameController,
                                  oldSystemCode: oldSystemCodeNameController,
                                  searchName: searchNameController,
                                  status: statusCodeNameController,
                                  active: active,
                                  activeChange: activeChange,
                                  imagePostCheck: imagePostCheck,
                                  baseuomNameController: baseUomGroupName,
                                  uomGroupNameController: uomGroupNameController,
                                    idChange:idChange

                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  children: [
                                    TextWidget(text: "Item Hierarchy"),
                                  ],
                                ),

                                ItemHeirarchyStableTable(
                                  categoryid: categoryId,
                                  subCategoryId: subCategoryId,
                                  divisionId: divisionId,
                                  brandName: BrandNameController,
                                  categoryName: categoryNameController,
                                  divisionName: divisionNameController,
                                  groupName: GroupNameController,
                                  materialName: materialNameController,
                                  staticName: staticNameController,
                                  subCategoryName: subCategoryNameController,
                                  variantFrameworkName: variantNameController,
                                  group: GroupController,
                                  variantFramework: variantFrameworkController,
                                  brand: BrandController,
                                  division: devisionController,
                                  material: materialController,
                                  static: staticController,
                                  category: categoryController,
                                  subCategory: subCategoryController,
                                    idChange:idChange
                                ),
                                Row(
                                  children: [
                                    TextWidget(text: "Identification"),
                                  ],
                                ),
                                // Divider(
                                //   color: Colors.grey,
                                //   thickness: 2,
                                // ),
                                SizedBox(height: h*.02,),
                                TableBottom(
                                  select: select,
                                  barCode: barCodeController,
                                  qrCode: qrCodeController,
                                  rfId: rfIdController,
                                ),
                                Container(
                                  color: Colors.white,
                                  height: 35,
                                ),
                                SaveUpdateResponsiveButton(
                                  label:  select ? "SAVE" : "UPDATE",
                                  discardFunction: (){
                                    showDailogPopUp(
                                        context,
                                        LogoutPopup(
                                          message: "Do you want to delete the order",
                                          // table:table,
                                          // clear:clear(),
                                          // verticalId: veritiaclid,
                                          onPressed: () {
                                            print("akshay");
                                            Navigator.pop(context);

                                            context
                                                .read<MaterialdeleteCubit>()
                                                .materialDelete(veritiaclid,
                                                "item_create");
                                            // context
                                            //     .read<
                                            //     SalesgeneraldeleteCubit>()
                                            //     .salesGeneralDelete(
                                            //     veritiaclid);
                                          },
                                        ));
                                  },
                                  saveFunction: (){
                                    ItemCreationModel model =
                                    ItemCreationModel(
                                      name: itemNameController.text.isEmpty
                                          ? null
                                          : itemNameController?.text,
                                      barcode: barCodeController.text.isEmpty
                                          ? null
                                          : barCodeController?.text,
                                      qrCode: qrCodeController.text.isEmpty
                                          ? null
                                          : qrCodeController?.text,
                                      materialCode:
                                      materialController.text.isEmpty
                                          ? null
                                          : materialController?.text,
                                      uomGroupCode:
                                      uomGroupController.text.isEmpty
                                          ? null
                                          : uomGroupController?.text,
                                      uomCode:
                                      uomCategoryController.text.isEmpty
                                          ? null
                                          : uomCategoryController?.text,
                                      groupCode: GroupController.text.isEmpty
                                          ? null
                                          : GroupController.text,
                                      brandCode: BrandController.text.isEmpty
                                          ? null
                                          : BrandController.text,
                                      staticGroupCode:
                                      staticController.text ?? "",
                                      variantFrameWorkCode:
                                      variantFrameworkController.text ??
                                          "",
                                      image1: Variable.img1,
                                      searchName:
                                      searchNameController.text ?? "",
                                      displayName:
                                      displayNameController?.text ?? "",
                                      itemCatelog1: img4
                                          ? Variable.img4
                                          : int.tryParse(""),
                                      itemCatelog2: img5
                                          ? Variable.img5: int.tryParse(""),
                                      itemCatelog3: img6
                                          ? Variable.img6
                                          : int.tryParse(""),
                                      itemCatelog4: img7
                                          ? Variable.img7
                                          : int.tryParse(""),
                                      itemCatelog5: img8 ? Variable.img8:int.tryParse(""),
                                      image2: img2
                                          ? Variable.img2
                                          : int.tryParse(""),
                                      image3: img3
                                          ? Variable.img3
                                          : int.tryParse(""),
                                      description:
                                      discriptionNameController?.text ??
                                          "",
                                      oldsystemCode:
                                      oldSystemCodeNameController?.text ??
                                          "",
                                      salesBlock: false,
                                      purchaseBlock: false,
                                    );
                                    ItemReadModel model1 = ItemReadModel(
                                      name: itemNameController?.text ?? "",
                                      materialCode: materialController?.text ?? "",
                                      staticGroupCode: staticController?.text ?? "",
                                      uomGroupCode: uomGroupController?.text ?? "",
                                      groupCode:GroupController.text.isEmpty
                                          ? null
                                          : GroupController.text,
                                      brandCode: BrandController?.text ?? "",
                                      variantFrameWork: variantFrameworkController?.text ?? "",
                                      searchName: searchNameController?.text ?? "",
                                      displayname: displayNameController?.text ?? "",
                                      isActive: active,
                                      oldSystemCode: oldSystemCodeNameController.text.isEmpty?null:oldSystemCodeNameController.text,
                                      description: discriptionNameController.text ?? "",
                                      image1: img1 ? Variable.img1.toString() : image1Controller.text ?? "",
                                      image2: img2 ? Variable.img2.toString() : image2Controller.text,
                                      image3: img3 ? Variable.img3.toString() : image3Controller.text,
                                      itemCatelog1: img4 ? Variable.img4.toString() : itemCatelog1Controller.text,
                                      itemCatelog2: img5 ? Variable.img5.toString() : itemCatelog2Controller.text,
                                      itemCatelog3: img6 ? Variable.img6.toString() : itemCatelog3Controller.text,
                                      itemCatelog4: img7 ? Variable.img7.toString() : itemCatelog4Controller.text,
                                      itemCatelog5: img8 ? Variable.img8.toString() : itemCatelog5Controller.text,

                                    );
                                    print(model1);
                                    print(img5);
                                    print(itemCatelog2Controller.text);

                                    select ? context.read<ItemcreatinCubit>().postCreateItem(model) : context.read<ItemcreatinCubit>().postItemPatch(
                                        veritiaclid, model1);

                                  },
                                ),
                                // Container(
                                //   margin: EdgeInsets.only(right:w*.015,),
                                //   child: Row(
                                //     mainAxisAlignment: MainAxisAlignment.end,
                                //     children: [
                                //       Button(Icons.delete, Colors.red,
                                //           ctx: context,
                                //           text: "DISCARD", onApply: () {
                                //         // if(updateCheck){
                                //         //   // clears();
                                //         //
                                //         //
                                //         // }
                                //         showDailogPopUp(
                                //             context,
                                //             ConfirmationPopup(
                                //               // table:table,
                                //               // clear:clear(),
                                //               verticalId: veritiaclid,
                                //               onPressed: () {
                                //                 print("akshay");
                                //                 Navigator.pop(context);
                                //
                                //                 context
                                //                     .read<MaterialdeleteCubit>()
                                //                     .materialDelete(veritiaclid,
                                //                         "item_create");
                                //                 // context
                                //                 //     .read<
                                //                 //     SalesgeneraldeleteCubit>()
                                //                 //     .salesGeneralDelete(
                                //                 //     veritiaclid);
                                //               },
                                //             ));
                                //       },
                                //           height: 29,
                                //           width: 90,
                                //           labelcolor: Colors.red,
                                //           iconColor: Colors.red,
                                //           bdr: true),
                                //       SizedBox(
                                //         width: w * .008,
                                //       ),
                                //       Button(Icons.check, Colors.grey,
                                //           ctx: context,
                                //           text: select ? "SAVE" : "UPDATE",
                                //           height: 29,
                                //           Color: Color(0xff3E4F5B),
                                //           width: 90,
                                //           labelcolor: Colors.white,
                                //           iconColor: Colors.white, onApply: () {
                                //         ItemCreationModel model =
                                //             ItemCreationModel(
                                //           name: itemNameController.text.isEmpty
                                //               ? null
                                //               : itemNameController?.text,
                                //           barcode: barCodeController.text.isEmpty
                                //               ? null
                                //               : barCodeController?.text,
                                //           qrCode: qrCodeController.text.isEmpty
                                //               ? null
                                //               : qrCodeController?.text,
                                //           materialCode:
                                //               materialController.text.isEmpty
                                //                   ? null
                                //                   : materialController?.text,
                                //           uomGroupCode:
                                //               uomGroupController.text.isEmpty
                                //                   ? null
                                //                   : uomGroupController?.text,
                                //           uomCode:
                                //               uomCategoryController.text.isEmpty
                                //                   ? null
                                //                   : uomCategoryController?.text,
                                //           groupCode: GroupController.text.isEmpty
                                //               ? null
                                //               : GroupController.text,
                                //           brandCode: BrandController.text.isEmpty
                                //               ? null
                                //               : BrandController.text,
                                //           staticGroupCode:
                                //               staticController.text ?? "",
                                //           variantFrameWorkCode:
                                //               variantFrameworkController.text ??
                                //                   "",
                                //           image1: Variable.img1,
                                //           searchName:
                                //               searchNameController.text ?? "",
                                //           displayName:
                                //               displayNameController?.text ?? "",
                                //           itemCatelog1: img4
                                //               ? Variable.img4
                                //               : int.tryParse(""),
                                //           itemCatelog2: img5
                                //               ? Variable.img5: int.tryParse(""),
                                //           itemCatelog3: img6
                                //               ? Variable.img6
                                //               : int.tryParse(""),
                                //           itemCatelog4: img7
                                //               ? Variable.img7
                                //               : int.tryParse(""),
                                //               itemCatelog5: img8 ? Variable.img8:int.tryParse(""),
                                //           image2: img2
                                //               ? Variable.img2
                                //               : int.tryParse(""),
                                //           image3: img3
                                //               ? Variable.img3
                                //               : int.tryParse(""),
                                //           description:
                                //               discriptionNameController?.text ??
                                //                   "",
                                //           oldsystemCode:
                                //               oldSystemCodeNameController?.text ??
                                //                   "",
                                //           salesBlock: false,
                                //           purchaseBlock: false,
                                //         );
                                //         ItemReadModel model1 = ItemReadModel(
                                //           name: itemNameController?.text ?? "",
                                //           materialCode: materialController?.text ?? "",
                                //           staticGroupCode: staticController?.text ?? "",
                                //           uomGroupCode: uomGroupController?.text ?? "",
                                //           groupCode:GroupController.text.isEmpty
                                //               ? null
                                //               : GroupController.text,
                                //           brandCode: BrandController?.text ?? "",
                                //           variantFrameWork: variantFrameworkController?.text ?? "",
                                //           searchName: searchNameController?.text ?? "",
                                //           displayname: displayNameController?.text ?? "",
                                //           isActive: active,
                                //           oldSystemCode: oldSystemCodeNameController.text.isEmpty?null:oldSystemCodeNameController.text,
                                //           description: discriptionNameController.text ?? "",
                                //           image1: img1 ? Variable.img1.toString() : image1Controller.text ?? "",
                                //           image2: img2 ? Variable.img2.toString() : image2Controller.text,
                                //           image3: img3 ? Variable.img3.toString() : image3Controller.text,
                                //           itemCatelog1: img4 ? Variable.img4.toString() : itemCatelog1Controller.text,
                                //           itemCatelog2: img5 ? Variable.img5.toString() : itemCatelog2Controller.text,
                                //           itemCatelog3: img6 ? Variable.img6.toString() : itemCatelog3Controller.text,
                                //           itemCatelog4: img7 ? Variable.img7.toString() : itemCatelog4Controller.text,
                                //           itemCatelog5: img8 ? Variable.img8.toString() : itemCatelog5Controller.text,
                                //
                                //         );
                                //         print(model1);
                                //         print(img5);
                                //         print(itemCatelog2Controller.text);
                                //
                                //         select ? context
                                //             .read<ItemcreatinCubit>()
                                //                 .postCreateItem(model)
                                //             : context
                                //                 .read<ItemcreatinCubit>()
                                //                 .postItemPatch(
                                //                     veritiaclid, model1);
                                //         img1 = false;
                                //         img2 = false;
                                //         img3 = false;
                                //         img4 = false;
                                //         img5 = false;
                                //         img6 = false;
                                //         img7 = false;
                                //         // active = false;
                                //       }),
                                //       SizedBox(
                                //         width: w * .008,
                                //       ),
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    );
  }
}

class ItemHeirarchyStableTable extends StatefulWidget {
  final TextEditingController brand;
  final TextEditingController brandName;
  final TextEditingController group;
  final TextEditingController groupName;
  final TextEditingController material;
  final TextEditingController materialName;
  final TextEditingController division;
  final TextEditingController divisionName;
  final TextEditingController static;
  final TextEditingController staticName;
  final TextEditingController category;
  final TextEditingController categoryName;
  final TextEditingController subCategory;
  final TextEditingController subCategoryName;
  final TextEditingController variantFramework;
  final TextEditingController variantFrameworkName;
   int? divisionId;
   int? categoryid;
   int? subCategoryId;
  final Function   idChange;

  ItemHeirarchyStableTable(
      {required this.brand,
      required this.subCategoryId,
      required this.divisionId,
        required this.idChange,
      required this.categoryid,
      required this.brandName,
      required this.variantFramework,
      required this.variantFrameworkName,
      required this.material,
      required this.materialName,
      required this.division,
      required this.divisionName,
      required this.static,
      required this.staticName,
      required this.group,
      required this.groupName,
      required this.category,
      required this.categoryName,
      required this.subCategory,
      required this.subCategoryName});
  @override
  _ItemHeirarchyStableTableState createState() =>
      _ItemHeirarchyStableTableState();
}

class _ItemHeirarchyStableTableState extends State<ItemHeirarchyStableTable> {
  TextEditingController controller = TextEditingController();
  TextEditingController codecontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController imagecontroller = TextEditingController();
  TextEditingController parentIdcontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();
  TextEditingController brandIdentifiercontroller = TextEditingController();
  TextEditingController brandcontroller = TextEditingController();

  TextEditingController divisionNameController = TextEditingController();
  TextEditingController categoryNameController = TextEditingController();
  TextEditingController subCategoryNameController = TextEditingController();
  TextEditingController groupNameController = TextEditingController();
  TextEditingController materialNameController = TextEditingController();
  TextEditingController variantFrameworkNameController =
      TextEditingController();
  TextEditingController staticNameController = TextEditingController();
  TextEditingController brandNameController = TextEditingController();

  int divisionid=0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
            children: [
              SizedBox(
                height: height * .030,
              ),
              // SelectableDropDownpopUp(label: "ssss", onSelection: (){
              //
              // }, controller:widget.division,
              //   type:"DivisionListPopUpCall",
              // ),
              // SelectableDropDownpopUp(
              //   controller:widget.divisionName,
              //   label: "Division",
              //   type:"Division_ListPopUpCall",
              //   value:  widget.divisionName.text,
              //   onchange: (vale){
              //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
              //   },
              //   enable: true,
              //   onSelection: (BrandListModel? va) {
              //     setState(() {
              //
              //
              //       print(va?.id??"");
              //       divisionid=va?.id;
              //       Variable.divisionId=va?.id;
              //
              //       widget.division.text=va?.code??"";
              //       widget.divisionName.text=va?.name??"";
              //       setState(() {
              //
              //       });
              //
              //
              //       // onChange = true;
              //       // orderType.text = va!;
              //     });
              //   },
              //   onAddNew: () {
              //
              //     showDailogPopUp(
              //       context,
              //       ConfigurePopup(
              //         type: "devision-group",
              //       ),
              //
              //
              //     );
              //   },
              // ),
              NewInputCard(
                controller: widget.divisionName,

                icondrop: true,
                title: "Division",
                readOnly: true,
                ontap: () {
                  if(widget.divisionName.text.isNotEmpty){
    setState(() {
                    widget.divisionName.text="";
                    widget.division.text="";
                    widget.category.clear();
                    widget.divisionId=0;
                    widget.categoryName.clear();
                    widget.subCategory.clear();
                    widget.subCategoryName.clear();
                    widget.group.clear();
                    widget.groupName.clear();
                    widget.categoryid=0;
                    widget.subCategoryId=0;
    });
                  }
                  else{
                    showDailogPopUp(
                      context,
                      TableConfigurePopup(type: "division_TablePopup",
                        valueSelect: (BrandListModel va) {
                          setState(() {
                            print(va?.id ?? "");
                            divisionid = va?.id??0;
                            Variable.divisionId = va?.id;


                            // onChan
                            widget.division.text = va?.code ?? "";
                            widget.divisionName.text = va?.name ?? "";
                            widget.idChange(2,va?.id);

                            widget.divisionId=va?.id;
                            print("widget.divisionId"+va.id.toString());
                            widget.category.clear();
                            widget.categoryName.clear();
                            widget.subCategory.clear();
                            widget.subCategoryName.clear();
                            widget.group.clear();
                            widget.groupName.clear();
                            widget.categoryid=0;
                            widget.subCategoryId=0;
                            //                           setState(() {});ge = true;
                            // orderType.text = va!;
                          });
                        },
                      ),
                    );
                  }

                },
              ),
              SizedBox(
                height: height * .030,
              ),


              NewInputCard(
                controller: widget.groupName,
                icondrop: true,
                title: "Group",
                readOnly: true,
                ontap: () {
                  if(widget.groupName.text.isNotEmpty){
                    setState(() {
                      widget.groupName.text="";
                      widget.group.text="";

                    });
                  }
                  else{
                    showDailogPopUp(
                      context,
                      TableConfigurePopup(
                        id:widget.subCategoryId!=0?widget.subCategoryId:widget.categoryid,
                        type: "GroupTabalePopup",
                        valueSelect: (BrandListModel va) {
                          setState(() {
                            widget.group.text = va?.code ?? "";
                            widget.groupName.text = va?.name ?? "";
                            setState(() {});

                            // onChange = true;
                            // orderType.text = va!;
                          });
                        },
                      ),
                    );
                  }

                },
              ),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                controller: widget.staticName,
                icondrop: true,
                readOnly: true,
                title: "Static Group",
                ontap: () {
                  if(widget.staticName.text.isNotEmpty){
                    setState(() {
                      widget.staticName.text="";
                      widget.static.text="";

                    });
                  }else{
                    showDailogPopUp(
                      context,
                      TableConfigurePopup(
                        type: "StaticTabalePopup",
                        valueSelect: (BrandListModel va) {
                          setState(() {
                            widget.static.text = va?.code ?? "";
                            widget.staticName.text = va?.name ?? "";
                            setState(() {});

                            // onChange = true;
                            // orderType.text = va!;
                          });
                        },
                      ),
                    );
                  }

                },
              ),



              // SelectableDropDownpopUp(
              //   id:divisionid,
              //
              //   controller:widget.categoryName,
              //   label: "category",
              //   type:"Category_PopUpCall",
              //   value:  widget.categoryName.text,
              //   onchange: (vale){
              //     print("searching for search"+vale.toString());
              //     context.read<CategorylistCubit>().searchCategoryist(vale);
              //   },
              //   enable: true,
              //   onSelection: (BrandListModel? va) {
              //     setState(() {
              //
              //       widget.category.text=va?.code??"";
              //       widget.categoryName.text=va?.name??"";
              //       Variable.categoryId=va?.id;
              //       setState(() {
              //
              //       });
              //
              //
              //       // onChange = true;
              //       // orderType.text = va!;
              //     });
              //   },
              //   onAddNew: () {
              //
              //     showDailogPopUp(
              //       context,
              //       ConfigurePopup(
              //         type: "category_group",
              //       ),
              //
              //
              //     );
              //   },
              // ),



              //   SelectableDropDownpopUp(
              //   id:divisionid,
              //   controller:widget.subCategoryName,
              //   label: "Sub category",
              //   type:"SubCategory_PopUpCall",
              //   value:  widget.subCategoryName.text,
              //   onchange: (vale){
              //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
              //   },
              //   enable: true,
              //   onSelection: (BrandListModel? va) {
              //     setState(() {
              //
              //       widget.subCategory.text=va?.code??"";
              //       widget.subCategoryName.text=va?.name??"";
              //       setState(() {
              //
              //       });
              //
              //
              //       // onChange = true;
              //       // orderType.text = va!;
              //     });
              //   },
              //   onAddNew: () {
              //
              //     showDailogPopUp(
              //       context,
              //       ConfigurePopup(
              //         type: "Subcategory_group",
              //       ),
              //
              //
              //     );
              //   },
              // ),

              SizedBox(
                height: height * .030,
              ),
              SizedBox(
                height: height * .030,
              ),
            ],
          )),
          Expanded(
              child: Column(
            children: [
              NewInputCard(
                controller: widget.categoryName,
                icondrop: true,
                title: "Category",
                readOnly: true,
                ontap: () {
                  if(widget.categoryName.text.isNotEmpty){
                    setState(() {
                      widget.categoryName.text="";
                      widget.category.text="";
                      widget.subCategory.clear();
                      widget.subCategoryName.clear();
                      widget.group.clear();
                      widget.groupName.clear();
                      widget.subCategoryId=0;

                    });
                  }
                  else{
                    showDailogPopUp(
                      context,
                      TableConfigurePopup(
                        id: widget.divisionId,
                        type: "category-TablePopup",
                        valueSelect: (BrandListModel va) {
                          setState(() {
                            widget.category.text = va?.code ?? "";
                            widget.categoryName.text = va?.name ?? "";
                            widget.categoryid = va?.id;
                            widget.subCategory.clear();
                            widget.subCategoryName.clear();
                            widget.group.clear();
                            widget.groupName.clear();
                            widget.subCategoryId=0;
                            setState(() {});

                            // onChange = true;
                            // orderType.text = va!;
                          });
                        },
                      ),
                    );
                  }

                },
              ),
              //   SelectableDropDownpopUp(
              //
              //   controller:widget.groupName,
              //   label: "Group",
              //   type:"Group_PopUpCall",
              //   value:  widget.groupName.text,
              //   onchange: (vale){
              //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
              //   },
              //   enable: true,
              //   onSelection: (BrandListModel? va) {
              //     setState(() {
              //
              //       widget.group.text=va?.code??"";
              //       widget.groupName.text=va?.name??"";
              //
              //       setState(() {
              //
              //       });
              //
              //
              //       // onChange = true;
              //       // orderType.text = va!;
              //     });
              //   },
              //   onAddNew: () {
              //
              //     showDailogPopUp(
              //       context,
              //       ConfigurePopup(
              //         type: "Group_PopUp",
              //       ),
              //
              //
              //     );
              //   },
              // ),



              SizedBox(
                height: height * .030,
              ),

              NewInputCard(
                controller: widget.materialName,
                icondrop: true,
                readOnly: true,
                title: "Material",
                ontap: () {
                  if(widget.materialName.text.isNotEmpty){
                    setState(() {
                      widget.materialName.text="";
                      widget.material.text="";


                    });
                  }
                  else{
                    showDailogPopUp(
                      context,
                      TableConfigurePopup(
                        type: "MaterialTabalePopup",
                        valueSelect: (BrandListModel va) {
                          setState(() {
                            widget.material.text = va?.code ?? "";
                            widget.materialName.text = va?.name ?? "";
                            setState(() {});

                            // onChange = true;
                            // orderType.text = va!;
                          });
                        },
                      ),
                    );
                  }

                },
              ),
              // SelectableDropDownpopUp(
              //   controller:widget.materialName,
              //   label: "Material",
              //   type:"MaterialPopUpCall",
              //   value:  widget.materialName.text,
              //   onchange: (vale){
              //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
              //   },
              //   enable: true,
              //   onSelection: (BrandListModel? va) {
              //     setState(() {
              //
              //       widget.material.text=va?.code??"";
              //       widget.materialName.text=va?.name??"";
              //       setState(() {
              //
              //       });
              //
              //
              //       // onChange = true;
              //       // orderType.text = va!;
              //     });
              //   },
              //   onAddNew: () {
              //
              //     showDailogPopUp(
              //       context,
              //       ConfigurePopup(
              //         type: "uom-group",
              //       ),
              //
              //
              //     );
              //   },
              // ),

              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                controller: widget.brandName,
                icondrop: true,
                readOnly: true,
                title: "Brand",
                ontap: () {
                  if(widget.brandName.text.isNotEmpty){
                    setState(() {
                      widget.brandName.text="";
                      widget.brand.text="";


                    });
                  }
                  else{
                    showDailogPopUp(
                      context,
                      TableConfigurePopup(
                        type: "BrandTabalePopup",
                        valueSelect: (BrandListModel va) {
                          setState(() {
                            widget.brand.text = va?.code ?? "";
                            widget.brandName.text = va?.name ?? "";
                            setState(() {});

                            // onChange = true;
                            // orderType.text = va!;
                          });
                        },
                      ),
                    );
                  }

                },
              ),


              // SelectableDropDownpopUp(
              //
              //   controller:widget.variantFrameworkName,
              //   label: "Variant Framework",
              //   type:"FrameWorkPopUpCall",
              //   value:  widget.variantFrameworkName.text,
              //   onchange: (vale){
              //     setState(() {
              //       costingTypeMethodeCheck = true;
              //     });
              //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
              //   },
              //   enable: true,
              //   onSelection: (FrameWorkListModel? va) {
              //     setState(() {
              //
              //       widget.variantFramework.text=va?.code??"";
              //       widget.variantFrameworkName.text=va?.name??"";
              //       setState(() {
              //
              //       });
              //
              //
              //       // onChange = true;
              //       // orderType.text = va!;
              //     });
              //   },
              //   onAddNew: () {
              //     setState(() {
              //       costingTypeMethodeCheck = true;
              //     });
              //
              //     showDailogPopUp(
              //       context,
              //       ConfigurePopup(
              //         type: "create_framework",
              //       ),
              //
              //
              //     );
              //   },
              // ),
              SizedBox(
                height: height * .030,
              ),
            ],
          )),
          Expanded(
              child: Column(
            children: [
              NewInputCard(
                controller: widget.subCategoryName,
                icondrop: true,
                readOnly: true,
                title: "Sub Category",
                ontap: () {
                  if(widget.subCategoryName.text.isNotEmpty){
                    setState(() {
                      widget.subCategoryName.text="";
                      widget.subCategory.text="";
                      widget.group.clear();
                      widget.groupName.clear();


                    });
                  }
                  else{
                    showDailogPopUp(
                      context,
                      TableConfigurePopup(
                        id:widget.categoryid,
                        type: "SubcategoryTabalePopup",
                        valueSelect: (BrandListModel va) {
                          setState(() {
                            widget.subCategory.text = va?.code ?? "";
                            widget.subCategoryName.text = va?.name ?? "";
                            widget.subCategoryId = va?.id;
                            widget.group.clear();
                            widget.groupName.clear();
                            setState(() {});

                            // onChange = true;
                            // orderType.text = va!;
                          });
                        },
                      ),
                    );
                  }

                },
              ),

              // SelectableDropDownpopUp(
              //   bindType: "static",
              //   controller:widget.staticName,
              //   label: "Static Group",
              //   type:"StaticListPopUpCall",
              //   value:  widget.staticName.text,
              //   onchange: (vale){
              //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
              //   },
              //   enable: true,
              //   onSelection: (BrandListModel? va) {
              //     setState(() {
              //
              //       widget.static.text=va?.code??"";
              //       widget.staticName.text=va?.name??"";
              //       setState(() {
              //
              //       });
              //
              //
              //       // onChange = true;
              //       // orderType.text = va!;
              //     });
              //   },
              //   onAddNew: () {
              //
              //     showDailogPopUp(
              //       context,
              //       ConfigurePopup(
              //         type: "Static-group",
              //       ),
              //
              //
              //     );
              //   },
              // ),
              SizedBox(
                height: height * .030,
              ),
              NewInputCard(
                controller: widget.variantFrameworkName,
                icondrop: true,
                readOnly: true,
                title: "Variant Framework",
                ontap: () {
                  if(widget.variantFrameworkName.text.isNotEmpty){
                    widget.variantFramework.text = "";
                    widget.variantFrameworkName.text =  "";

                  }
                  else{
                    showDailogPopUp(
                      context,
                      TableConfigurePopup(
                        type: "FrameWorkTabalePopup",
                        valueSelect: (FrameWorkListModel va) {
                          setState(() {
                            widget.variantFramework.text = va?.code ?? "";
                            widget.variantFrameworkName.text = va?.name ?? "";
                            setState(() {});

                            // onChange = true;
                            // orderType.text = va!;
                          });
                        },
                      ),
                    );}
                },
              ),
              // GestureDetector(
              //   onTap: (){
              //     showDailogPopUp(
              //       context,
              //       BlockPageIdTable(
              //         onApply: (int? a,String? b){},
              //       ),);
              //
              //   },
              //   child: NewInputCard(
              //       controller: controller, title: "Brand"),
              // ),


              // SelectableDropDownpopUp(
              //   controller:widget.brandName,
              //   label: "Brand",
              //   type:"BrandPopUpCall",
              //   value:  widget.brandName.text,
              //   onchange: (vale){
              //     // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
              //   },
              //   enable: true,
              //   onSelection: (BrandListModel? va) {
              //     setState(() {
              //
              //       widget.brand.text=va?.code??"";
              //       widget.brandName.text=va?.name??"";
              //       setState(() {
              //
              //       });
              //
              //
              //       // onChange = true;
              //       // orderType.text = va!;
              //     });
              //   },
              //   onAddNew: () {
              //
              //     showDailogPopUp(
              //         context,
              //         // ConfigurePopup(
              //         //   type: "uom-group",
              //         // )
              //         ConfigurePopup(
              //           type: "brand-group",
              //         ),
              //
              //
              //
              //
              //
              //
              //
              //
              //         );
              //
              //   },
              // ),
              SizedBox(
                height: height * .156,
              ),
            ],
          )),
        ],
      ),
    );
  }
}

// class CreateBrandPopUp extends StatefulWidget {
//   TextEditingController codeController;
//   TextEditingController nameController;
//   TextEditingController imageController;
//   TextEditingController parentIdController;
//   TextEditingController descriptionController;
//   TextEditingController brandIdentifierUrl;
//   final Function onTap;
//   // final TextEditingController country;
//   // final TextEditingController gender;
//   // final TextEditingController accesssite;
//   // final TextEditingController buisnessuser;
//   // final TextEditingController taxid;
//   // final TextEditingController buisnessmode;
//   // final TextEditingController buisnessname;
//   // final TextEditingController designation;
//   // final Function ontap;
//
//   CreateBrandPopUp({
//     Key? key,
//     required this.onTap,
//     required this.codeController,
//     required this.nameController,
//     required this.imageController,
//     required this.parentIdController,
//     required this.descriptionController,
//     required this.brandIdentifierUrl,
//
//
//   }) : super(key: key);
//
//   @override
//   _CreateBrandPopUpState createState() => _CreateBrandPopUpState();
// }
//
// class _CreateBrandPopUpState extends State<CreateBrandPopUp> {
//   bool active = false;
//   bool additionalWarranty = false;
//   bool extendedWarranty = false;
//   bool onChange = false;
//   bool onChangeWarranty = false;
//   bool onChangeExtWarranty = false;
//   String imageName="";
//   String imageEncode="";
//   int selectedVertical=0;
//   BrandReadModel? group;
//   int? veritiaclid=0;
//   List<BrandListModel> result = [];
//   TextEditingController itemsearch = TextEditingController();
//   String parentName="";
//
//   TextEditingController controller=TextEditingController();
//   bool addNew = false;
//   void changeAddNew(bool va) => addNew = va;
//   clear(){
//     imageName='';
//     imageEncode="";
//     parentName="";
//     widget.codeController.text="";
//     widget.nameController.text="";
//     widget.imageController.text="";
//     widget.parentIdController.text="";
//     widget.descriptionController.text="";
//     widget.brandIdentifierUrl.text="";
//     setState(() {
//     });
//   }
//   void initState() {
//     context
//         .read<Listbrand2Cubit>()
//         .getSlotSectionPage();
//
//
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     // descriptionController = TextEditingController(
//     //     text: widget.warranty?[widget.indexValue!].description == null
//     //         ? ""
//     //         : widget.warranty?[widget.indexValue!].description);
//     // durationController = TextEditingController(
//     //     text: widget.warranty?[widget.indexValue!].duration == null
//     //         ? ""
//     //         : widget.warranty?[widget.indexValue!].duration.toString());
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => BrandreadCubit(),
//         ),
//         BlocProvider(
//           create: (context) => BranddeleteCubit(),
//         ),
//         BlocProvider(
//           create: (context) => CreatebrandCubit(),
//         ),
//
//       ],
//       child: Builder(
//           builder: (context) {
//             return MultiBlocListener(
//               listeners: [
//                 BlocListener<CreatebrandCubit, CreatebrandState>(
//                   listener: (context, state) {
//                     print("postssssssss" + state.toString());
//                     state.maybeWhen(orElse: () {
//                       // context.
//                       context.showSnackBarError("Loadingggg");
//                     }, error: () {
//                       context.showSnackBarError(Variable.errorMessege);
//                     }, success: (data) {
//                       if (data.data1) {
//                         context.showSnackBarSuccess(data.data2);
//
//                       }
//                       else {
//                         context.showSnackBarError(data.data2);
//                         print(data.data1);
//                       }
//                       ;
//                     });
//                   },
//                 ),
//                 BlocListener<BrandreadCubit, BrandreadState>(
//                   listener: (context, state) {
//                     print("nnnnop"+state.toString());
//                     state.maybeWhen(
//                         orElse: () {},
//                         error: () {
//                           print("error");
//                         },
//                         success: (data) {
//                           setState(() {
//                             group=data;
//                             widget.codeController.text=data.code??"";
//                             widget.nameController.text=data.name??"";
//                             widget.nameController.text=data.name??"";
//                             widget.imageController.text=data.image??"";
//                             widget.parentIdController.text=data.parentCode??"";
//                             widget.descriptionController.text=data.description??"";
//                             widget.brandIdentifierUrl.text=data.brandIdentifierUrl??"";
//                             parentName=data.parentCode??"";
//                             active=data.isActive??false;
//
//                           });
//                         });
//
//
//
//                   },
//                 ),
//                 BlocListener<BranddeleteCubit, BranddeleteState>(
//                   listener: (context, state) {
//
//                     state.maybeWhen(orElse: () {
//                       // context.
//                       context.showSnackBarError("Loadingggg");
//                     }, error: () {
//                       context.showSnackBarError(Variable.errorMessege);
//                     }, success: (data) {
//                       print("checkingdata"+data.data1.toString());
//                       if (data.data1) {
//                         context.showSnackBarSuccess(data.data2);
//                         context
//                             .read<Listbrand2Cubit>()
//                             .getSlotSectionPage();
//                         clear();
//
//                         // select = true;
//                       }
//
//                       else {
//                         context.showSnackBarError(data.data2);
//                         print(data.data1);
//                       }
//                       ;
//                     });
//                   },
//                 ),
//                 BlocListener<ImagepostCubit, ImagepostState>(
//                   listener: (context, state) {
//                     print("postssssssss" + state.toString());
//                     state.maybeWhen(orElse: () {
//                       // context.
//                       context.showSnackBarError("Loadingggg");
//                     }, error: () {
//                       context.showSnackBarError(Variable.errorMessege);
//                     }, success: (data) {
//                       if (data.data1) {
//                         print("dataAkshay"+data.data2.toString());
//                         widget.imageController.text=data.data2.toString();
//                         // context.showSnackBarSuccess(data.data2);
//
//                       }
//                       else {
//                         // context.showSnackBarError(data.data2);
//                         // print(data.data1.toString());
//                       }
//                       ;
//                     });
//                   },
//                 ),
//
//               ],
//               child: BlocConsumer<Listbrand2Cubit, Listbrand2State>(
//                 listener: (context, state) {
//                   print("state"+state.toString());
//                   state.maybeWhen(
//                       orElse: () {},
//                       error: () {
//                         print("error");
//                       },
//                       success: (list) {
//                         print("aaaaayyyiram"+list.data.toString());
//
//                         result = list.data;
//                         setState(() {
//                           if(result.isNotEmpty){
//                             veritiaclid=result[0].id;
//                             Variable.verticalid=result[0].id;
//                             print("Variable.ak"+Variable.verticalid.toString());
//                             context.read<BrandreadCubit>().getBrandRead(veritiaclid!);
//                           }
//                           else{
//                             print("common");
//                             // select=true;
//                             setState(() {
//                             });
//
//                           }
//
//
//                           setState(() {});
//
//                         });
//                       });
//                 },
//                 builder: (context, state) {
//                   return Builder(builder: (context) {
//
//                     if (!onChange) {
//
//                       widget.nameController =
//                           TextEditingController(text: addNew ? "" : group?.name);
//                       widget.codeController = TextEditingController(
//                           text: addNew ? "" : group?.id.toString());
//                       widget.descriptionController =
//                           TextEditingController(text: addNew ? "" : group?.description);
//                       widget.imageController = TextEditingController(text: addNew ? "" : group?.image);
//                       widget.brandIdentifierUrl = TextEditingController(text: addNew ? "" : group?.brandIdentifierUrl);
//                       // alterContrlr=TextEditingController(text:addNew?"": group?.displayName);
//                       // shortContrlr =
//                       //     TextEditingController(text: addNew ? "" : group?.shortName);
//                     }
//                     onChange = false;
//                     return AlertDialog(
//                       content: PopUpHeader(
//                         addNew: true,
//                         buttonCheck: true,
//                         onTap: () { addNew=!addNew;
//                         setState(() {
//
//                         });},
//                         label: "Create Brand",
//                         onApply: () {
//                           widget.onTap();
//                           setState(() {
//
//                           });
//                         },
//                         onEdit: () {
//                           BrandCreationtModel model=BrandCreationtModel(
//                             parentCode: widget.parentIdController?.text??"",
//                             name: widget.nameController.text??"",
//                             brandIdentifierUrl: widget.brandIdentifierUrl.text??"",
//                             image:int.tryParse( widget.imageController.text),
//                             description: widget.descriptionController.text,
//                             isActive: active,
//
//
//                           );
//                           print(model);
//                           context.read<CreatebrandCubit>().postBrandPatch(veritiaclid!,model);
//
//
//                         },
//                         onCancel: (){
//                           context
//                               .read<BranddeleteCubit>()
//                               .brandDelete(veritiaclid);
//
//                         },
//
//                         onAddNew: (v) {
//                           print("Akshay"+v.toString());
//                           changeAddNew(v);
//                           setState(() {});
//
//                           setState(() {});
//                         },
//                         dataField: Expanded(
//                           // height: MediaQuery.of(context).size.height * .6,
//                           child: IntrinsicHeight(
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 BrandVerticalList(
//
//                                   selectedVertical: selectedVertical,
//                                   itemsearch: itemsearch,ontap: (int index){
//                                   setState(() {
//                                     selectedVertical=index;
//                                     // select=false;
//                                     // updateCheck=false;
//
//
//                                     veritiaclid = result[index].id;
//                                     context.read<BrandreadCubit>().getBrandRead(veritiaclid!);
//
//
//                                     setState(() {
//
//                                     });
//                                   });
//                                 },result: result,
//                                 ),
//                                 Expanded(child: Column(
//                                   children: [
//                                     NewInputCard(
//                                         controller: widget.codeController, title: "Code"),
//                                     gapWidthColumn(),
//                                     NewInputCard(
//                                       controller:widget.nameController ,
//                                       title: "Name",
//                                     ),
//                                     SizedBox(height: 10,),
//                                     FileUploadField(
//
//                                         fileName: imageName,
//                                         fileUrl:imageName,
//                                         onChangeTap: (p0) {
//                                           // loading = true;
//                                           setState(() {});
//                                         },
//                                         onChange: (myFile) {
//                                           // Variable.mobileBannerImage = myFile.toUint8List();
//
//                                           imageEncode =
//                                               myFile.toBase64();
//                                           // widget.fileMobileNameCtrl.text =
//                                           //     myFile.fileName ?? "";
//                                           // if (Variable.bannerimage!.length <= 240000)
//                                           context
//                                               .read<ImagepostCubit>().postImage(imageName,  imageEncode);
//                                           // else
//                                           //   context.showSnackBarError(
//                                           //       "Please upload Banner of size Lesser than 230kb");
//                                         },
//                                         onImageChange: (newFile) async {
//                                           // Variable.popUp = false;
//
//                                           if (newFile.length <= 240000) {
//                                             // loading
//                                             //     ? showDailogPopUp(context, DialoguePopUp())
//                                             //     : Navigator.pop(context);
//                                             // context
//                                             //     .read<CreateWebImageCubit>()
//                                             //     .createMobImage();
//                                           } else
//                                             context.showSnackBarError(
//                                                 "Please upload Banner of size Lesser than 230kb");
//                                           setState(() {});
//                                         },
//                                         onCreate: true,
//                                         label: "Image"),
//
//
//
//                                   ],
//                                 )),
//
//                                 Expanded(child:   Column(
//                                   children: [
//
//                                     SelectableDropDownpopUp(
//                                       label: "Parent Id",
//                                       // row: true,
//
//                                       type:"BrandPopUpCall",
//                                       value:parentName,
//                                       enable: true,
//                                       onSelection: (BrandListModel? va) {
//                                         setState(() {
//                                           parentName=va?.name??"";
//                                           widget.parentIdController.text=va?.code??"";
//
//
//
//
//                                           // onChange = true;
//                                           // orderType.text = va!;
//                                         });
//                                       },
//                                     ),
//                                     SizedBox(height: 10,),
//                                     NewInputCard(
//                                       controller:widget.descriptionController,
//                                       title: "Description",
//                                     ),
//                                     SizedBox(height: 10,),
//                                     NewInputCard(
//                                       controller:widget.brandIdentifierUrl ,
//                                       title: "Brand identifier URL",
//                                     ),
//
//
//                                   ],
//                                 )),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     );
//                   });
//                 },
//               ),
//             );
//           }
//       ),
//     );
//   }
// }

class BlockPageIdTable extends StatefulWidget {
  final Function(int?, String?) onApply;
  const BlockPageIdTable({Key? key, required this.onApply}) : super(key: key);

  @override
  State<BlockPageIdTable> createState() => _BlockPageIdTableState();
}

class _BlockPageIdTableState extends State<BlockPageIdTable> {
  final search = TextEditingController();

  int? list;
  String? name;
  bool addNew = false;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: PopUpHeader(
            onTap: () {
              addNew = !addNew;
              setState(() {});
            },
            onApply: () {
              widget.onApply(list, name);
            },
            label: "Contents",
            dataField: BlocProvider<Listbrand2Cubit>(
                create: (context) => Listbrand2Cubit()..getSlotSectionPage(),
                child: Builder(builder: (context) {
                  return BlocBuilder<Listbrand2Cubit, Listbrand2State>(
                      builder: (context, state) {
                    return Column(children: [
                      state.maybeWhen(
                          orElse: () =>
                              Center(child: CircularProgressIndicator()),
                          error: () => Center(child: Text("No data Found")),
                          success: (data) {
                            return SizedBox(
                              height: MediaQuery.of(context).size.height * .5,
                              child: ListView(shrinkWrap: true, children: [
                                SearchTextfiled(
                                  color: Color(0xffFAFAFA),
                                  hintText: "Search...",
                                  ctrlr: search,
                                  onChanged: (va) {
                                    print("searching case" + va.toString());
                                    context
                                        .read<Listbrand2Cubit>()
                                        .searchSlotSectionPageList(search.text);
                                  },
                                ),
                                customTable(
                                  tableWidth: .5,
                                  childrens: [
                                    TableRow(children: [
                                      tableHeadtext('id',
                                          size: 10, color: null),
                                      tableHeadtext('Content name',
                                          size: 10, color: null),
                                      tableHeadtext('select',
                                          size: 10, color: null),
                                    ]),
                                    if (data.data != null &&
                                        data.data.isNotEmpty) ...[
                                      for (var i = 0; i < data.data.length; i++)
                                        TableRow(children: [
                                          textPadding(
                                              data.data[i].id.toString()),
                                          textPadding(data.data[i].name ?? ""),

                                          CustomCheckBox(
                                            //  value:      siblingId == data.data[i].id,
                                            onChange: (p0) {
                                              widget.onApply(data.data[i].id,
                                                  data.data[i].name);
                                              // Navigator.pop(context);

                                              // if (p0)
                                              //   siblingId = data.data[i].id;
                                              // else
                                              //   siblingId = "";
                                            },
                                          ),
                                          // Icon(Icons.add)
                                        ]),
                                    ],
                                  ],
                                  widths: {
                                    0: FractionColumnWidth(.20),
                                    1: FractionColumnWidth(.50),
                                    2: FractionColumnWidth(.30),
                                  },
                                ),
                                tablePagination(
                                  () =>
                                      context.read<Listbrand2Cubit>().refresh(),
                                  back: data.previousUrl == null
                                      ? null
                                      : () {
                                          context
                                              .read<Listbrand2Cubit>()
                                              .previuosslotSectionPageList();
                                        },
                                  next: data.nextPageUrl == null
                                      ? null
                                      : () {
                                          // print(data.nextPageUrl);
                                          context
                                              .read<Listbrand2Cubit>()
                                              .nextslotSectionPageList();
                                        },
                                )
                              ]),
                            );
                          })
                    ]);
                  });
                }))));
  }
}

Widget tablePagination(VoidCallback reset,
        {VoidCallback? next, VoidCallback? back}) =>
    Container(
      // width: 30000,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          TextButton.icon(
              onPressed: back,
              icon: Icon(
                Icons.arrow_back_ios,
                size: 16,
              ),
              label: Text("Back",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
          TextButton.icon(
              onPressed: next,
              label: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              icon: Text("Next",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
        ],
      ),
    );
