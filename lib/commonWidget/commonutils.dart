import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Invetory/inventorysearch_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/baseuom_creation/baseuomcreation_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/baseuomlist/baseuomlist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/baseuomread/readbaseuom_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/branddelete/branddelete_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/brandread/brandread_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/categorylist/categorylist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/createbrand/createbrand_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/createcategory/createcategory_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/devision_list/devision_list_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/divisioncreate/divisioncreate_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/divisionread/divisionread_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/groupcreation/groupcreation_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/grouplist/grouplist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/groupread/groupread_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/listStatic/liststatic_cubit.dart';

import 'package:inventory/Screens/heirarchy/general/cubits/material/material_list_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/materialRead/materialread_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/materialcreation/materialcraetion_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/uomgrouplist/uomgruoplist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/uomgroupread/uomgroupread_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/model/baseuomcreation.dart';
import 'package:inventory/Screens/heirarchy/general/model/brandcreation.dart';
import 'package:inventory/Screens/heirarchy/general/model/categorymodel.dart';
import 'package:inventory/Screens/heirarchy/general/model/categoryread.dart';
import 'package:inventory/Screens/heirarchy/general/model/creatematerial.dart';
import 'package:inventory/Screens/heirarchy/general/model/divisionread.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/heirarchy/general/model/materialread.dart';
import 'package:inventory/Screens/purcahseRecieving.dart';
import 'package:inventory/commonWidget/popupinputfield.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/commonWidget/verticalList.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/cubit/cubit/cubit/purchaseorderdelete_cubit.dart';
import 'package:inventory/cubits/cubit/cubit/cubit/cubit/vendor_details_cubit/vendordetails_cubit.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:inventory/widgets/custom_inputdecoration.dart';
import 'package:inventory/widgets/dropdownbutton.dart';

import '../Screens/heirarchy/general/cubits/categoryread/categoryread_cubit.dart';
import '../Screens/heirarchy/general/cubits/devision_list/materialdelete_cubit.dart';
import '../Screens/heirarchy/general/cubits/imagepost/imagepost_cubit.dart';
import '../Screens/heirarchy/general/cubits/listbrand2/listbrand2_cubit.dart';
import '../Screens/heirarchy/general/cubits/uomGroupcreation/uomgroup_creation_cubit.dart';
import '../Screens/heirarchy/general/model/brandreadmodel.dart';

void showDailogPopUp(BuildContext context, Widget child) {
  showDialog(
    context: context,
    builder: (context) => child,
  );
}
Widget gapWidthColumn({double width = 20}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: width),
    child: Column(
      children: [],
    ),
  );
}
class OpenSettings extends StatefulWidget {
  const OpenSettings({Key? key}) : super(key: key);

  @override
  State<OpenSettings> createState() => _OpenSettingsState();
}

class _OpenSettingsState extends State<OpenSettings> {
  List<String>? inventoryList = [
    "test",
    "test1",
    "test2",
    "test3"
  ];
  bool _value = false;
  int selected = 0;
  int grpValue = 0;



  // List inventoryIdList = ["BSNU1000", "BSNU1007"];
  @override
  Widget build(BuildContext context) {
    Variable.inventory_ID=inventoryList![0];
    return
      AlertDialog(
      content:SizedBox(
        height: 200,
                          width: 300,
                          child: Container(
                            child:ListView.builder(
                                shrinkWrap: true,
                                                        physics: NeverScrollableScrollPhysics(),
                                itemBuilder:  (context, index) =>Container(
                                  child: ListTile(
                                    title:Text(inventoryList?[index]??"") ,
                                    leading:  Radio(
                                    value: index,
                                    groupValue: grpValue,
                                    onChanged: (int? value) {
                                      setState(() {
                                        grpValue = value!;
                                        print("inventory"+Variable.inventory_ID.toString());
                                        // print(inventoryList?[index]
                                        //     .inventoryCode);
                                        Variable.inventory_ID =
                                        inventoryList![index];
                                        setState(() {

                                        });

                                        // print("Value");
                                        // print(value);
                                        // print("grpvalue");
                                        // print(grpValue);
                                        // Navigator.of(context)
                                        //     .push(MaterialPageRoute(
                                        //   builder: (context) =>
                                        //       ModulePage(),
                                        // )
                                        // );
                                      });

                                      // print(Variable.inventory_ID);
                                      // modulePageState.setState(() {});
                                    },
                                    // value: selected == index,
                                    activeColor: Colors.green),
                              ),

                                  ),
                                )) ,

                          )



      // BlocConsumer<InventoryIdListCubit, InventoryIdListState>(
      //   listener: (context, state) {
      //     state.maybeWhen(
      //         orElse: () {},
      //         success: (data) {
      //           print("inventory list");
      //           print(data.data1);
      //           inventoryList = data.data1;
      //           print(Variable.inventory_ID);
      //         });
      //   },
      //   builder: (context, state) {
      //     return SingleChildScrollView(
      //         child: Column(
      //           children: [
      //             state.maybeWhen(orElse: () {
      //               return Column(
      //                 children: [
      //                   CircularProgressIndicator(),
      //                 ],
      //               );
      //             }, success: (d) {
      //               print("length");
      //               if (d.data1.length != null)
      //                 for (var i = 0; i < d.data1.length; i++) {
      //                   print(d.data1.length);
      //
      //                   //   if (inventoryList?[i].inventoryCode ==
      //                   //       Variable.inventory_ID) grpValue = i;
      //                   //   // setState(() {});
      //                   // }
      //
      //                   if (inventoryList?[i] == Variable.inventory_ID)
      //                     grpValue = i;
      //                   // setState(() {});
      //                 }
      //               // if (Variable.inventory_ID.isEmpty && d.data1.isNotEmpty) {
      //               //   // Variable.inventory_ID = inventoryList?[0].inventoryCode ?? "";
      //               //   Variable.inventory_ID = inventoryIdList[0];
      //
      //               // }
      //               return SizedBox(
      //                   height: 200,
      //                   width: 300,
      //                   child: Container(
      //                     child:
      //                     // List.generate(d.data1.length, (index) => Container()).toList();
      //                     ListView.builder(
      //                         shrinkWrap: true,
      //                         physics: NeverScrollableScrollPhysics(),
      //                         itemCount: d.data1.length,
      //                         // inventoryList?.length,
      //                         itemBuilder: (context, index) => Container(
      //                           child:
      //                           // Text("rtytgbhb"),
      //                           ListTile(
      //                             title:
      //                             // Text(inventoryIdList[index]),
      //                             Text(inventoryList?[index]
      //                                 .inventoryName ??
      //                                 ""),
      //                             // Text(inventoryIdList[index]),
      //                             dense: true,
      //                             leading: Radio(
      //                                 value: index,
      //                                 groupValue: grpValue,
      //                                 onChanged: (int? value) {
      //                                   setState(() {
      //                                     grpValue = value!;
      //                                     print("inventory");
      //                                     // print(inventoryList?[index]
      //                                     //     .inventoryCode);
      //                                     Variable.inventory_ID =
      //                                     // inventoryIdList[index];
      //                                     inventoryList?[index]
      //                                         .inventoryCode ??
      //                                         "";
      //                                     print("Value");
      //                                     print(value);
      //                                     print("grpvalue");
      //                                     print(grpValue);
      //                                     Navigator.of(context)
      //                                         .push(MaterialPageRoute(
      //                                       builder: (context) =>
      //                                           ModulePage(),
      //                                     ));
      //                                   });
      //
      //                                   print(Variable.inventory_ID);
      //                                   modulePageState.setState(() {});
      //                                 },
      //                                 // value: selected == index,
      //                                 activeColor: Colors.green),
      //                           ),
      //                         )),
      //                   ));
      //             }),
      //           ],
      //         ));
      //   },
      // ),
    );
  }
}

class VendorPopup extends StatefulWidget {
 final Function? assign;
 VendorPopup({this.assign});


  @override
  State<VendorPopup> createState() => _VendorPopupState();
}

class _VendorPopupState extends State<VendorPopup> {
  List<PartnerOrganizationData>? inventoryList = [];
  VariantDetailsModel? wholeList ;
  bool _value = false;
  int selected = 0;
  int? grpValue ;
  // List inventoryIdList = ["BSNU1000", "BSNU1007"];
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return AlertDialog(
          actions: [
        TextButton(
        child: Text("OK"),
        onPressed: () {
          Navigator.pop(context);
        },
        )
          ],
          content: BlocConsumer<VendordetailsCubit, VendordetailsState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  success: (data) {
                    print("inventory list"+data.toString());
                    print(data.partnerOrganizationdata);
                    wholeList=data;
                    inventoryList = data.partnerOrganizationdata;
                    if(inventoryList!=null){
                      widget.assign!(wholeList?.partnerAddressdata?[0].addressType??"",inventoryList?[0].trnNumber??"");
                      Variable.vendorAddress=wholeList?.partnerAddressdata?[0].addressType??"";
                      Variable.email=wholeList?.partnerOrganizationdata?[0].email??"";


                    }

                  });
            },
            builder: (context, state) {
              return SingleChildScrollView(
                  child: Column(
                    children: [
                      state.maybeWhen(orElse: () {
                        return Column(
                          children: [
                            CircularProgressIndicator(),
                          ],
                        );
                      }, success: (d) {
                        print("length");
                        if (d.partnerOrganizationdata?.length != null)
                          for (var i = 0; i < d.partnerOrganizationdata!.length; i++) {
                            print(d.partnerOrganizationdata?.length);

                            //   if (inventoryList?[i].inventoryCode ==
                            //       Variable.inventory_ID) grpValue = i;
                            //   // setState(() {});
                            // }

                            // if (inventoryList?[i] == Variable.inventory_ID)
                            //   grpValue = i;
                            // setState(() {});
                          }
                        // if (Variable.inventory_ID.isEmpty && d.data1.isNotEmpty) {
                        //   // Variable.inventory_ID = inventoryList?[0].inventoryCode ?? "";
                        //   Variable.inventory_ID = inventoryIdList[0];

                        // }
                        return SizedBox(
                            height: 200,
                            width: 300,
                            child: Container(
                              child:
                              // List.generate(d.data1.length, (index) => Container()).toList();
                              ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: d.partnerOrganizationdata?.length,
                                  // inventoryList?.length,
                                  itemBuilder: (context, index) => Container(
                                    child:
                                    // Text("rtytgbhb"),
                                    ListTile(
                                      title:
                                      // Text(inventoryIdList[index]),
                                      Text(inventoryList?[index]
                                          .displayName ??
                                          ""),
                                      // Text(inventoryIdList[index]),
                                      dense: true,
                                      leading: Radio(
                                          value: index,
                                          groupValue: grpValue,
                                          onChanged: (int? value) {
                                            setState(() {

                                              grpValue = value!;
                                              print("inventory"+grpValue.toString());

                                              Variable.trn=inventoryList?[index].trnNumber??"";
                                              Variable.email=inventoryList?[index].email??"";
                                              Variable.vendorAddress=wholeList?.partnerAddressdata?[index].addressType??"";
                                              widget.assign!(wholeList?.partnerAddressdata?[index].addressType??"",inventoryList?[index].trnNumber??"");


                                              // Variable.inventory_ID =
                                              // // inventoryIdList[index];
                                              // inventoryList?[index]
                                              //     .inventoryCode ??
                                                  "";
                                              print("Value");
                                              print(value);
                                              print("grpvalue");
                                              print(grpValue);
                                              // Navigator.of(context)
                                              //     .push(MaterialPageRoute(
                                              //   builder: (context) =>
                                              //       ModulePage(),
                                              // ));
                                            });

                                            // print(Variable.inventory_ID);
                                            // modulePageState.setState(() {});
                                          },
                                          // value: selected == index,
                                          activeColor: Colors.green),
                                    ),
                                  )),
                            ));
                      }),
                    ],
                  ));
            },
          ),
        );
      }
    );
  }
}

class ConfirmationPopup extends StatefulWidget {

  final Function? clear;
  final Function? onPressed;
 final List<OrderLines>? table;
  final int? verticalId;
  ConfirmationPopup({this.verticalId,this.table,this.clear,required this.onPressed});


  @override
  State<ConfirmationPopup> createState() => _ConfirmationPopupState();
}

class _ConfirmationPopupState extends State<ConfirmationPopup> {
  List<PartnerOrganizationData>? inventoryList = [];
  VariantDetailsModel? wholeList ;
  bool _value = false;
  int selected = 0;
  int? grpValue ;
  // List inventoryIdList = ["BSNU1000", "BSNU1007"];
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
  providers: [
    BlocProvider(
  create: (context) => PurchaseorderdeleteCubit(),
),
BlocProvider(
create: (context) => InventorysearchCubit(),)
  ],
  child: Builder(
        builder: (context) {
          return AlertDialog(
                    actions: [
                      TextButton(
                        child: Text("OK"),
                        onPressed: (){
                          widget.onPressed!();
                        }
                          // context.read<PurchaseorderdeleteCubit>().generalPurchaseDelet(widget.verticalId);

                      ),
                      TextButton(
                        child: Text("Cancel"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                    content: Text("Do you want to delete the order?")

                  );
        }
    ),
);
  }
}


class CommonIcon extends StatelessWidget {
  final double size;
  final VoidCallback? onTap;
  final IconData? iconData;
  final String? toolTip;
  final Color? color;
  const CommonIcon({
    Key? key,
    required this.size,
    this.onTap,
    this.iconData,
    this.toolTip,
    this.color = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return toolTip==null? Container(
      margin: EdgeInsets.only(top:  MediaQuery.of(context).size.height*.034,),
      child: InkWell(
        onTap: onTap,
        child: Icon(
          iconData,
          color: color,
          size: size,
        ),
      ),
    ):Container(
      margin: EdgeInsets.only(top:  MediaQuery.of(context).size.height*.034,),
      child: Tooltip(message: toolTip??"",
        child: InkWell(
          onTap: onTap,
          child: Icon(
            iconData,
            color: color,
            size: size,
          ),
        ),
      ),
    );
  }
}





// ignore: must_be_immutable
class ConfigurePopup extends StatelessWidget {
  final String type;

  final bool onAddNew;
  final VoidCallback? onBack;
  ConfigurePopup({Key? key, required this.type, this.onBack,this.onAddNew=false}) : super(key: key);
  late Widget data;
  @override
  Widget build(BuildContext context) {
    // data = BrandConfigurePopUp(
    //   type: type,
    // );
    switch (type) {

      case "uom-group":
        {
          data = CreateMaterialPopUp(
            type: type,
          );
        }
        break;
      case "brand-group":
        {
          data = CreateBrandPopUp(
            type: type,
          );
        }
        break;
      case "patchbrand-group":
        {
          data = PatchBrandPopUp(
            type: type,
          );
        }
        break;


      case "patchUom-group":
        {
          data = PatchMaterialPopUp(
            type: type,
          );
        }
        break;


    case "devision-group":
    {
    data = CreateDevisionPopUp(
    type: type,
    );
    }
    break;

    case "Static-group":
    {
    data = CreateStaticPopUp(
    type: type,
    );
    }
    break;
      case "StaticPatch-group":
        {
          data = PatchStaticPopUp(
            type: type,
          );
        }
        break;



      case "uomgroup":
        {
          data = UomGroupCreatePopUp(
            type: type,
          );
        }
        break;
      case "category_group":
        {
          data = CategoryCreatePopUp(
            type: type,
          );
        }
        break;

      case "categoryPatch_group":
        {
          data = CategoryPopUp(
            type: type,
          );
        }
        break;


      case "Group_PopUp":
        {
          data = GroupPopUp(
            type: type,
          );
        }
        break;
      case "GroupPatch_PopUp":
        {
          data = GroupPatchPopUp
            (
            type: type,
          );
        }
        break;
      case "base_uom":
        {
          data = UomCreatePopUp(
            type: type,
          );
        }
        break;
      case "uomGroup_patch":
        {
          data = UomGroupPopUp(
            type: type,
          );
        }
        break;

      case "uom_patch":
        {
          data =UomPopUp
            (
            type: type,
          );
        }
        break;
      case "division_patch":
        {
          data =PatchDevisionPopUp
            (
            type: type,
          );
        }
        break;



  }


    return data;
  }
}


//create brand
class CreateBrandPopUp extends StatefulWidget {
  final String type;
  // final Function onTap;
  // final TextEditingController country;
  // final TextEditingController gender;
  // final TextEditingController accesssite;
  // final TextEditingController buisnessuser;
  // final TextEditingController taxid;
  // final TextEditingController buisnessmode;
  // final TextEditingController buisnessname;
  // final TextEditingController designation;
  // final Function ontap;

  CreateBrandPopUp({
    Key? key,
    required this.type
    // required this.onTap,



  }) : super(key: key);

  @override
  _CreateBrandPopUpState createState() => _CreateBrandPopUpState();
}

class _CreateBrandPopUpState extends State<CreateBrandPopUp> {
  bool active = false;
  bool additionalWarranty = false;
  bool extendedWarranty = false;
  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName="";
  String imageEncode="";
  int selectedVertical=0;
  BrandReadModel? group;
  int? veritiaclid=0;
  TextEditingController codeController=TextEditingController();
  TextEditingController nameController=  TextEditingController();

  TextEditingController imageController=TextEditingController();
  TextEditingController parentIdController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();
  TextEditingController brandIdentifierUrl=TextEditingController();
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName="";

  TextEditingController controller=TextEditingController();
  bool addNew = false;
  void changeAddNew(bool va) => addNew = va;

  void initState() {
    context
        .read<Listbrand2Cubit>()
        .getSlotSectionPage();


    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());
    return MultiBlocProvider(
      providers: [

        BlocProvider(
          create: (context) => CreatebrandCubit(),
        ),

      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [
                BlocListener<CreatebrandCubit, CreatebrandState>(
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

                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),


                BlocListener<ImagepostCubit, ImagepostState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.

                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      if (data.data1) {
                        print("dataAkshay"+data.data2.toString());
                        imageController.text=data.data2.toString();
                        // context.showSnackBarSuccess(data.data2);

                      }
                      else {
                        // context.showSnackBarError(data.data2);
                        // print(data.data1.toString());
                      }
                      ;
                    });
                  },
                ),

              ],
              child: BlocConsumer<Listbrand2Cubit, Listbrand2State>(
                listener: (context, state) {
                  print("state"+state.toString());
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (list) {
                        print("aaaaayyyiram"+list.data.toString());

                        result = list.data;
                        setState(() {
                          if(result.isNotEmpty){
                            veritiaclid=result[0].id;
                            Variable.verticalid=result[0].id;
                            print("Variable.ak"+Variable.verticalid.toString());
                            context.read<BrandreadCubit>().getBrandRead(veritiaclid!);
                          }
                          else{
                            print("common");
                            // select=true;
                            setState(() {
                            });

                          }


                          setState(() {});

                        });
                      });
                },
                builder: (context, state) {
                  return Builder(builder: (context) {


                    return AlertDialog(
                      content: PopUpHeader(
                        addNew: false,
                        buttonCheck: true,
                        isDirectCreate: true,

                        // buttonCheck: true,
                        onTap: () { addNew=!addNew;
                        setState(() {

                        });},
                        label: "Create Brand",
                        onApply: () {
                          BrandCreationtModel model=BrandCreationtModel(
                            name: nameController?.text??"",
                            description: descriptionController?.text??"",
                            image:int.tryParse( imageController.text),
                            brandIdentifierUrl: brandIdentifierUrl?.text??"",
                            parentCode: parentIdController.text??"",
                          );

                          context
                              .read<CreatebrandCubit>()
                              .postCreateBrand(model);
                          setState(() {

                          });
                        },
                        onEdit: () {


                        },
                        onCancel: (){


                        },

                        onAddNew: (v) {

                        },
                        dataField: Expanded(
                          // height: MediaQuery.of(context).size.height * .6,
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Expanded(child: Column(
                                  children: [
                                    NewInputCard(
                                        readOnly: true,
                                        controller: codeController, title: "Code"),
                                  SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:nameController ,
                                      title: "Name",
                                    ),
                                    SizedBox(height: 10,),
                                    FileUploadField(

                                        fileName: imageName,
                                        fileUrl:imageName,
                                        onChangeTap: (p0) {
                                          // loading = true;
                                          setState(() {});
                                        },
                                        onChange: (myFile) {

                                          // Variable.mobileBannerImage = myFile.toUint8List();

                                          imageEncode =
                                              myFile.toBase64();
                                          // widget.fileMobileNameCtrl.text =
                                          //     myFile.fileName ?? "";
                                          // if (Variable.bannerimage!.length <= 240000)
                                          context
                                              .read<ImagepostCubit>().postImage(imageName,  imageEncode);
                                          // else
                                          //   context.showSnackBarError(
                                          //       "Please upload Banner of size Lesser than 230kb");
                                        },
                                        onImageChange: (newFile) async {
                                          onChange=true;
                                          // Variable.popUp = false;

                                          if (newFile.length <= 240000) {
                                            // loading
                                            //     ? showDailogPopUp(context, DialoguePopUp())
                                            //     : Navigator.pop(context);
                                            // context
                                            //     .read<CreateWebImageCubit>()
                                            //     .createMobImage();
                                          } else
                                            context.showSnackBarError(
                                                "Please upload Banner of size Lesser than 230kb");
                                          setState(() {});
                                        },
                                        onCreate: true,
                                        label: "Image"),



                                  ],
                                )),

                                Expanded(child:   Column(
                                  children: [

                                    SelectableDropDownpopUp(
                                      label: "Parent Id",
                                      // row: true,

                                      type:"BrandPopUpCall",
                                      value:parentName,
                                      enable: true,
                                      onSelection: (BrandListModel? va) {
                                        setState(() {
                                          onChange=true;
                                          parentName=va?.name??"";
                                          parentIdController.text=va?.code??"";




                                          // onChange = true;
                                          // orderType.text = va!;
                                        });
                                      },
                                    ),
                                    SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:descriptionController,
                                      title: "Description",
                                    ),
                                    SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:brandIdentifierUrl ,
                                      title: "Brand identifier URL",
                                    ),


                                  ],
                                )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
                },
              ),
            );
          }
      ),
    );
  }
}


//patch brand

class PatchBrandPopUp extends StatefulWidget {
  final String type;
  // final Function onTap;
  // final TextEditingController country;
  // final TextEditingController gender;
  // final TextEditingController accesssite;
  // final TextEditingController buisnessuser;
  // final TextEditingController taxid;
  // final TextEditingController buisnessmode;
  // final TextEditingController buisnessname;
  // final TextEditingController designation;
  // final Function ontap;

  PatchBrandPopUp({
    Key? key,
    required this.type
    // required this.onTap,



  }) : super(key: key);

  @override
  _PatchBrandPopUpState createState() => _PatchBrandPopUpState();
}

class _PatchBrandPopUpState extends State<PatchBrandPopUp> {
  bool active = false;
  bool additionalWarranty = false;
  bool extendedWarranty = false;
  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName="";
  String imageEncode="";
  int selectedVertical=0;
  BrandReadModel? group;
  int? veritiaclid=0;
  TextEditingController codeController=TextEditingController();
  TextEditingController nameController=  TextEditingController();

  TextEditingController imageController=TextEditingController();
  TextEditingController parentIdController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();
  TextEditingController brandIdentifierUrl=TextEditingController();
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName="";

  TextEditingController controller=TextEditingController();
  bool addNew = false;
  void changeAddNew(bool va) => addNew = va;

  void initState() {
    context
        .read<Listbrand2Cubit>()
        .getSlotSectionPage();


    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BrandreadCubit(),
        ),
        BlocProvider(
          create: (context) => BranddeleteCubit(),
        ),
        BlocProvider(
          create: (context) => CreatebrandCubit(),
        ),

      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [
                BlocListener<CreatebrandCubit, CreatebrandState>(
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

                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),
                BlocListener<BrandreadCubit, BrandreadState>(
                  listener: (context, state) {
                    print("nnnnop"+state.toString());
                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          print("error");
                        },
                        success: (data) {
                          setState(() {
                            group=data;
                            codeController.text=data.code??"";
                            nameController.text=data.name??"";

                            imageController.text=data.image??"";
                            parentIdController.text=data.parentCode??"";
                            descriptionController.text=data.description??"";
                            brandIdentifierUrl.text=data.brandIdentifierUrl??"";
                            parentName=data.parentCode??"";
                            active=data.isActive??false;

                          });
                        });



                  },
                ),
                BlocListener<BranddeleteCubit, BranddeleteState>(
                  listener: (context, state) {

                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loadingggg");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      print("checkingdata"+data.data1.toString());
                      if (data.data1) {
                        context.showSnackBarSuccess(data.data2);
                        context
                            .read<Listbrand2Cubit>()
                            .getSlotSectionPage();


                        // select = true;
                      }

                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),
                BlocListener<ImagepostCubit, ImagepostState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loadingggg");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      if (data.data1) {
                        print("dataAkshay"+data.data2.toString());
                        imageController.text=data.data2.toString();
                        // context.showSnackBarSuccess(data.data2);

                      }
                      else {
                        // context.showSnackBarError(data.data2);
                        // print(data.data1.toString());
                      }
                      ;
                    });
                  },
                ),

              ],
              child: BlocConsumer<Listbrand2Cubit, Listbrand2State>(
                listener: (context, state) {
                  print("state"+state.toString());
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (list) {
                        print("aaaaayyyiram"+list.data.toString());

                        result = list.data;
                        setState(() {
                          if(result.isNotEmpty){
                            veritiaclid=result[0].id;
                            Variable.verticalid=result[0].id;
                            print("Variable.ak"+Variable.verticalid.toString());
                            context.read<BrandreadCubit>().getBrandRead(veritiaclid!);
                          }
                          else{
                            print("common");
                            // select=true;
                            setState(() {
                            });

                          }


                          setState(() {});

                        });
                      });
                },
                builder: (context, state) {
                  return Builder(builder: (context) {


                    return AlertDialog(
                      content: PopUpHeader(
                        addNew: false,

                        // buttonCheck: true,
                        onTap: () { addNew=!addNew;
                        setState(() {

                        });},
                        label: "Create Brand",
                        onApply: () {

                        },
                        onEdit: () {
                          BrandCreationtModel model=BrandCreationtModel(
                            parentCode: parentIdController?.text??"",
                            name: nameController.text??"",
                            brandIdentifierUrl: brandIdentifierUrl.text??"",
                            image:int.tryParse( imageController.text),
                            description: descriptionController.text,
                            isActive: active,


                          );
                          print(model);
                          context.read<CreatebrandCubit>().postBrandPatch(veritiaclid!,model);


                        },
                        onCancel: (){
                          context
                              .read<BranddeleteCubit>()
                              .brandDelete(veritiaclid);

                        },

                        onAddNew: (v) {
                          // print("Akshay"+v.toString());
                          // changeAddNew(v);
                          // setState(() {});
                          //
                          // setState(() {});
                        },
                        dataField: Expanded(
                          // height: MediaQuery.of(context).size.height * .6,
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BrandVerticalList(

                                  selectedVertical: selectedVertical,
                                  itemsearch: itemsearch,ontap: (int index){
                                  setState(() {
                                    selectedVertical=index;
                                    // select=false;
                                    // updateCheck=false;


                                    veritiaclid = result[index].id;
                                    context.read<BrandreadCubit>().getBrandRead(veritiaclid!);


                                    setState(() {

                                    });
                                  });
                                },result: result,
                                ),
                                Expanded(child: Column(
                                  children: [
                                    NewInputCard(
                                        readOnly: true,
                                        controller: codeController, title: "Code"),
                                    gapWidthColumn(),
                                    NewInputCard(
                                      controller:nameController ,
                                      title: "Name",
                                    ),
                                    SizedBox(height: 10,),
                                    FileUploadField(

                                        fileName: imageName,
                                        fileUrl:imageName,
                                        onChangeTap: (p0) {
                                          // loading = true;
                                          setState(() {});
                                        },
                                        onChange: (myFile) {
                                          onChange=true;
                                          // Variable.mobileBannerImage = myFile.toUint8List();

                                          imageEncode =
                                              myFile.toBase64();
                                          // widget.fileMobileNameCtrl.text =
                                          //     myFile.fileName ?? "";
                                          // if (Variable.bannerimage!.length <= 240000)
                                          context
                                              .read<ImagepostCubit>().postImage(imageName,  imageEncode);
                                          // else
                                          //   context.showSnackBarError(
                                          //       "Please upload Banner of size Lesser than 230kb");
                                        },
                                        onImageChange: (newFile) async {
                                          onChange=true;
                                          // Variable.popUp = false;

                                          if (newFile.length <= 240000) {
                                            // loading
                                            //     ? showDailogPopUp(context, DialoguePopUp())
                                            //     : Navigator.pop(context);
                                            // context
                                            //     .read<CreateWebImageCubit>()
                                            //     .createMobImage();
                                          } else
                                            context.showSnackBarError(
                                                "Please upload Banner of size Lesser than 230kb");
                                          setState(() {});
                                        },
                                        onCreate: true,
                                        label: "Image"),



                                  ],
                                )),

                                Expanded(child:   Column(
                                  children: [

                                    SelectableDropDownpopUp(
                                      label: "Parent Id",
                                      // row: true,

                                      type:"BrandPopUpCall",
                                      value:parentName,
                                      enable: true,
                                      onSelection: (BrandListModel? va) {
                                        setState(() {
                                          parentName=va?.name??"";
                                          parentIdController.text=va?.code??"";




                                          // onChange = true;
                                          // orderType.text = va!;
                                        });
                                      },
                                    ),
                                    SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:descriptionController,
                                      title: "Description",
                                    ),
                                    SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:brandIdentifierUrl ,
                                      title: "Brand identifier URL",
                                    ),


                                  ],
                                )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
                },
              ),
            );
          }
      ),
    );
  }
}

//create material

class CreateMaterialPopUp extends StatefulWidget {
  final String type;


  CreateMaterialPopUp({
    Key? key,
    required this.type,



  }) : super(key: key);

  @override
  _CreateMaterialPopUpState createState() => _CreateMaterialPopUpState();
}
class _CreateMaterialPopUpState extends State<CreateMaterialPopUp> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName="";
  String imageEncode="";
  int selectedVertical=0;
  MaterialReadModel? group;
  int? veritiaclid=0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName="";
  bool changer=false;

  TextEditingController codeController=TextEditingController();
  TextEditingController namecontroller=TextEditingController();
  TextEditingController searchNamecontroller=TextEditingController();
  TextEditingController imageContollercontroller=TextEditingController();
  TextEditingController descriptionContollercontroller=TextEditingController();
  bool addNew = false;


  void changeAddNew(bool va){addNew =va;
  onChange=false;}
  void initState() {
    // context
    //     .read<MaterialListCubit>()
    //     .getMaterialList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MaterialcraetionCubit(),
        ),    BlocProvider(
          create: (context) => MaterialreadCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialdeleteCubit(),
        ),

      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [

                BlocListener<ImagepostCubit, ImagepostState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // // context.
                      // context.showSnackBarError("Loadingggg");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      if (data.data1) {
                        print("dataAkshay"+data.data2.toString());
                        imageContollercontroller.text=data.data2.toString();

                        // context.showSnackBarSuccess(data.data2);

                      }
                      else {
                        // context.showSnackBarError(data.data2);
                        // print(data.data1.toString());
                      }
                      ;
                    });
                  },
                ),

                BlocListener<MaterialcraetionCubit, MaterialcraetionState>(
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
                        Navigator.pop(context);

                      }
                      else {
                        context.showSnackBarError(data.data2);
                        Navigator.pop(context);
                      }
                      ;
                    });
                  },
                ),


              ],
              child: BlocConsumer<MaterialListCubit, MaterialListState>(
                listener: (context, state) {
                  print("state"+state.toString());
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (list) {
                        print("aaaaayyyiram"+list.data.toString());

                        result = list.data;
                        setState(() {
                          if(result.isNotEmpty){
                            veritiaclid=result[0].id;
                            // Variable.verticalid=result[0].id;
                            print("Variable.ak"+Variable.verticalid.toString());
                            context.read<MaterialreadCubit>().getMaterialRead(veritiaclid!);
                          }
                          else{
                            print("common");
                            // select=true;
                            setState(() {
                            });

                          }


                          setState(() {});

                        });
                      });
                },
                builder: (context, state) {
                  return Builder(builder: (context) {

                    return AlertDialog(
                      content: PopUpHeader(

                        functionChane: true,
                        buttonCheck: true,
                        onTap: () { addNew=!addNew;
                        setState(() {

                        });},
                        isDirectCreate:true,
                        addNew: addNew,

                        label: "Create Material",
                        onApply: () {
                          MaterialCreationtModel model=MaterialCreationtModel(

                            description: descriptionContollercontroller?.text??"",
                            image:int.tryParse(imageContollercontroller.text),
                            searchNmae: searchNamecontroller?.text??"",
                            name: namecontroller?.text??"",
                          );
                          context.read<MaterialcraetionCubit>().postCreateMaterial(model);

                          // widget.onTap();
                          setState(() {

                          });
                        },
                        onEdit: () {
                          MaterialReadModel model=MaterialReadModel(

                            name: namecontroller?.text??"",

                            image:imageContollercontroller?.text??"",
                            description: descriptionContollercontroller?.text??"",
                            searchNmae: searchNamecontroller?.text??"",
                            isActive: active,


                          );
                          // print(model);
                          context.read<MaterialcraetionCubit>().postmaterialPatch(veritiaclid,model);


                        },
                        onCancel: (){
                          // context
                          //     .read<MaterialdeleteCubit>()
                          //     .materialDelete(veritiaclid,"material");

                        },

                        onAddNew: (v) {
                          print("Akshay"+v.toString());
                          // changeAddNew(v);
                          // setState(() {});
                          //
                          // setState(() {});
                        },
                        dataField: Expanded(
                          // height: MediaQuery.of(context).size.height * .6,
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [



                                Expanded(child: Column(
                                  children: [
                                    NewInputCard(
                                      readOnly: true,
                                        controller: codeController, title: "Code"),
                                    SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:namecontroller ,
                                      title: "Name",
                                    ),
                                    SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:searchNamecontroller ,
                                      title: "Search Name",
                                    ),




                                  ],
                                )),

                                Expanded(child:   Column(
                                  children: [
                                    FileUploadField(

                                        fileName: imageName,
                                        fileUrl:imageName,
                                        onChangeTap: (p0) {
                                          onChange=true;
                                          // loading = true;
                                          setState(() {});
                                        },
                                        onChange: (myFile) {
                                          onChange=true;

                                          // Variable.mobileBannerImage = myFile.toUint8List();

                                          imageEncode =
                                              myFile.toBase64();
                                          // widget.fileMobileNameCtrl.text =
                                          //     myFile.fileName ?? "";
                                          // if (Variable.bannerimage!.length <= 240000)
                                          context
                                              .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode);
                                          // else
                                          //   context.showSnackBarError(
                                          //       "Please upload Banner of size Lesser than 230kb");
                                        },
                                        onImageChange: (newFile) async {
                                          onChange=true;
                                          // Variable.popUp = false;

                                          if (newFile.length <= 240000) {
                                            // loading
                                            //     ? showDailogPopUp(context, DialoguePopUp())
                                            //     : Navigator.pop(context);
                                            // context
                                            //     .read<CreateWebImageCubit>()
                                            //     .createMobImage();
                                          } else
                                            context.showSnackBarError(
                                                "Please upload Banner of size Lesser than 230kb");
                                          setState(() {});
                                        },
                                        onCreate: true,
                                        label: "Image"),


                                    SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:descriptionContollercontroller,
                                      title: "Description",
                                    ),
                                    SizedBox(height: 10,),
                                    PopUpSwitchTile(
                                        value: active??false,
                                        title: "isActive",
                                        onClick: (gg) {
                                          onChange=true;
                                          // if(!addNew)
                                          //   active=!active!;

                                          // extendedWarranty = gg;
                                          // widget.changeExtendedWarranty(gg);
                                          // onChangeExtWarranty = gg;
                                          setState(() {});
                                        }),




                                  ],
                                )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
                },
              ),
            );
          }
      ),
    );
  }
}




// patch material
class PatchMaterialPopUp extends StatefulWidget {
  final String type;


  PatchMaterialPopUp({
    Key? key,
    required this.type,



  }) : super(key: key);

  @override
  _PatchMaterialPopUpState createState() => _PatchMaterialPopUpState();
}

class _PatchMaterialPopUpState extends State<PatchMaterialPopUp> {
  bool? active = false;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName="";
  String imageEncode="";
  int selectedVertical=0;
  MaterialReadModel? group;
  int? veritiaclid=0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName="";
  bool changer=false;

  TextEditingController codeController=TextEditingController();
  TextEditingController namecontroller=TextEditingController();
  TextEditingController searchNamecontroller=TextEditingController();
  TextEditingController imageContollercontroller=TextEditingController();
  TextEditingController descriptionContollercontroller=TextEditingController();
  bool addNew = false;


  void changeAddNew(bool va){addNew =va;
  onChange=false;}
  void initState() {
    context
        .read<MaterialListCubit>()
        .getMaterialList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MaterialcraetionCubit(),
        ),    BlocProvider(
          create: (context) => MaterialreadCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialdeleteCubit(),
        ),

      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [

                BlocListener<ImagepostCubit, ImagepostState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.

                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      if (data.data1) {
                        print("dataAkshay"+data.data2.toString());
                        imageContollercontroller.text=data.data2.toString();

                        // context.showSnackBarSuccess(data.data2);

                      }
                      else {
                        // context.showSnackBarError(data.data2);
                        // print(data.data1.toString());
                      }
                      ;
                    });
                  },
                ),
                BlocListener<MaterialreadCubit, MaterialreadState>(
                  listener: (context, state) {
                    print("nnnnop"+state.toString());
                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          print("error");
                        },
                        success: (data) {
                          setState(() {
                            group=data;
                            codeController.text=data.code??"";
                            namecontroller.text=data.name??"";
                            descriptionContollercontroller.text=data.description??"";
                            searchNamecontroller.text=data.searchNmae??"";

                            active=data.isActive??false;

                          });
                        });



                  },
                ),
                BlocListener<MaterialcraetionCubit, MaterialcraetionState>(
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

                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
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
                        context
                            .read<MaterialListCubit>()
                            .getMaterialList();

                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),

              ],
              child: BlocConsumer<MaterialListCubit, MaterialListState>(
                listener: (context, state) {
                  print("state"+state.toString());
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (list) {
                        print("aaaaayyyiram"+list.data.toString());

                        result = list.data;
                        setState(() {
                          if(result.isNotEmpty){
                            veritiaclid=result[0].id;
                            // Variable.verticalid=result[0].id;
                            print("Variable.ak"+Variable.verticalid.toString());
                            context.read<MaterialreadCubit>().getMaterialRead(veritiaclid!);
                          }
                          else{
                            print("common");
                            // select=true;
                            setState(() {
                            });

                          }


                          setState(() {});

                        });
                      });
                },
                builder: (context, state) {
                  return Builder(builder: (context) {


                    return AlertDialog(
                      content: PopUpHeader(

                        functionChane: true,
                        onTap: () { addNew=!addNew;
                        setState(() {

                        });},
                        buttonCheck: true,

                        addNew: addNew,

                        label: "Create Material",
                        onApply: () {

                        },
                        onEdit: () {
                          MaterialReadModel model=MaterialReadModel(

                            name: namecontroller?.text??"",

                            image:imageContollercontroller?.text??"",
                            description: descriptionContollercontroller?.text??"",
                            searchNmae: searchNamecontroller?.text??"",
                            isActive: active,


                          );
                          // print(model);
                          context.read<MaterialcraetionCubit>().postmaterialPatch(veritiaclid,model);


                        },
                        onCancel: (){
                          context
                              .read<MaterialdeleteCubit>()
                              .materialDelete(veritiaclid,"material");

                        },

                        onAddNew: (v) {

                        },
                        dataField: Expanded(
                          // height: MediaQuery.of(context).size.height * .6,
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                MaterialVerticalList(

                                  selectedVertical: selectedVertical,
                                  itemsearch: itemsearch,ontap: (int index){
                                  setState(() {
                                    selectedVertical=index;
                                    addNew=false;
                                    // select=false;
                                    // updateCheck=false;


                                    veritiaclid = result[index].id;
                                    changer=false;

                                    context.read<MaterialreadCubit>().getMaterialRead(veritiaclid!);


                                    setState(() {

                                    });
                                  });
                                },result: result,
                                ),

                                Expanded(child: Column(
                                  children: [
                                    NewInputCard(
                                      readOnly: true,
                                        controller: codeController, title: "Code"),
                                    gapWidthColumn(),
                                    NewInputCard(
                                      controller:namecontroller ,
                                      title: "Name",
                                    ),
                                    gapWidthColumn(),
                                    NewInputCard(
                                      controller:searchNamecontroller ,
                                      title: "Search Name",
                                    ),




                                  ],
                                )),

                                Expanded(child:   Column(
                                  children: [
                                    FileUploadField(

                                        fileName: imageName,
                                        fileUrl:imageName,
                                        onChangeTap: (p0) {
                                          onChange=true;
                                          // loading = true;
                                          setState(() {});
                                        },
                                        onChange: (myFile) {
                                          onChange=true;

                                          // Variable.mobileBannerImage = myFile.toUint8List();

                                          imageEncode =
                                              myFile.toBase64();
                                          // widget.fileMobileNameCtrl.text =
                                          //     myFile.fileName ?? "";
                                          // if (Variable.bannerimage!.length <= 240000)
                                          context
                                              .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode);
                                          // else
                                          //   context.showSnackBarError(
                                          //       "Please upload Banner of size Lesser than 230kb");
                                        },
                                        onImageChange: (newFile) async {
                                          onChange=true;
                                          // Variable.popUp = false;

                                          if (newFile.length <= 240000) {
                                            // loading
                                            //     ? showDailogPopUp(context, DialoguePopUp())
                                            //     : Navigator.pop(context);
                                            // context
                                            //     .read<CreateWebImageCubit>()
                                            //     .createMobImage();
                                          } else
                                            context.showSnackBarError(
                                                "Please upload Banner of size Lesser than 230kb");
                                          setState(() {});
                                        },
                                        onCreate: true,
                                        label: "Image"),


                                    SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:descriptionContollercontroller,
                                      title: "Description",
                                    ),
                                    SizedBox(height: 10,),
                                    PopUpSwitchTile(
                                        value: active??false,
                                        title: "isActive",
                                        onClick: (gg) {
                                          onChange=true;
                                          if(!addNew)
                                            active=!active!;

                                          // extendedWarranty = gg;
                                          // widget.changeExtendedWarranty(gg);
                                          // onChangeExtWarranty = gg;
                                          setState(() {});
                                        }),



                                  ],
                                )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
                },
              ),
            );
          }
      ),
    );
  }
}


// class CreateMaterialPopUp extends StatefulWidget {
//   final String type;
//
//
//   CreateMaterialPopUp({
//     Key? key,
//     required this.type,
//
//
//
//   }) : super(key: key);
//
//   @override
//   _CreateMaterialPopUpState createState() => _CreateMaterialPopUpState();
// }
//
// class _CreateMaterialPopUpState extends State<CreateMaterialPopUp> {
//   bool? active = false;
//
//   bool onChange = false;
//   bool onChangeWarranty = false;
//   bool onChangeExtWarranty = false;
//   String imageName="";
//   String imageEncode="";
//   int selectedVertical=0;
//   MaterialReadModel? group;
//   int? veritiaclid=0;
//   List<BrandListModel> result = [];
//   TextEditingController itemsearch = TextEditingController();
//   String parentName="";
//   bool changer=false;
//
//   TextEditingController codeController=TextEditingController();
//   TextEditingController namecontroller=TextEditingController();
//   TextEditingController searchNamecontroller=TextEditingController();
//   TextEditingController imageContollercontroller=TextEditingController();
//   TextEditingController descriptionContollercontroller=TextEditingController();
//   bool addNew = false;
//
//
//   void changeAddNew(bool va){addNew =va;
//   onChange=false;}
//   void initState() {
//     context
//         .read<MaterialListCubit>()
//         .getMaterialList();
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
//   providers: [
//     BlocProvider(
//   create: (context) => MaterialcraetionCubit(),
// ),    BlocProvider(
//       create: (context) => MaterialreadCubit(),
//     ),
//     BlocProvider(
//       create: (context) => MaterialdeleteCubit(),
//     ),
//
//   ],
//   child: Builder(
//         builder: (context) {
//           return MultiBlocListener(
//   listeners: [
//
//     BlocListener<ImagepostCubit, ImagepostState>(
//       listener: (context, state) {
//         print("postssssssss" + state.toString());
//         state.maybeWhen(orElse: () {
//           // context.
//           context.showSnackBarError("Loadingggg");
//         }, error: () {
//           context.showSnackBarError(Variable.errorMessege);
//         }, success: (data) {
//           if (data.data1) {
//             print("dataAkshay"+data.data2.toString());
//             imageContollercontroller.text=data.data2.toString();
//
//             // context.showSnackBarSuccess(data.data2);
//
//           }
//           else {
//             // context.showSnackBarError(data.data2);
//             // print(data.data1.toString());
//           }
//           ;
//         });
//       },
//     ),
//     BlocListener<MaterialreadCubit, MaterialreadState>(
//       listener: (context, state) {
//         print("nnnnop"+state.toString());
//         state.maybeWhen(
//             orElse: () {},
//             error: () {
//               print("error");
//             },
//             success: (data) {
//               setState(() {
//                 group=data;
//                 codeController.text=data.code??"";
//                 namecontroller.text=data.name??"";
//                 descriptionContollercontroller.text=data.description??"";
//                 searchNamecontroller.text=data.searchNmae??"";
//
//                 active=data.isActive??false;
//
//               });
//             });
//
//
//
//       },
//     ),
//     BlocListener<MaterialcraetionCubit, MaterialcraetionState>(
//   listener: (context, state) {
//     print("postssssssss" + state.toString());
//     state.maybeWhen(orElse: () {
//       // context.
//       context.showSnackBarError("Loading");
//     }, error: () {
//       context.showSnackBarError(Variable.errorMessege);
//     }, success: (data) {
//       if (data.data1) {
//         context.showSnackBarSuccess(data.data2);
//
//       }
//       else {
//         context.showSnackBarError(data.data2);
//         print(data.data1);
//       }
//       ;
//     });
//   },
// ),
//     BlocListener<MaterialdeleteCubit, MaterialdeleteState>(
//       listener: (context, state) {
//         print("delete" + state.toString());
//         state.maybeWhen(orElse: () {
//           // context.
//           context.showSnackBarError("Loading");
//         }, error: () {
//           context.showSnackBarError(Variable.errorMessege);
//         }, success: (data) {
//           if (data.data1) {
//             context.showSnackBarSuccess(data.data2);
//
//           }
//           else {
//             context.showSnackBarError(data.data2);
//             print(data.data1);
//           }
//           ;
//         });
//       },
//     ),
//
//   ],
//   child: BlocConsumer<MaterialListCubit, MaterialListState>(
//             listener: (context, state) {
//               print("state"+state.toString());
//               state.maybeWhen(
//                   orElse: () {},
//                   error: () {
//                     print("error");
//                   },
//                   success: (list) {
//                     print("aaaaayyyiram"+list.data.toString());
//
//                     result = list.data;
//                     setState(() {
//                       if(result.isNotEmpty){
//                         veritiaclid=result[0].id;
//                         // Variable.verticalid=result[0].id;
//                         print("Variable.ak"+Variable.verticalid.toString());
//                         context.read<MaterialreadCubit>().getMaterialRead(veritiaclid!);
//                       }
//                       else{
//                         print("common");
//                         // select=true;
//                         setState(() {
//                         });
//
//                       }
//
//
//                       setState(() {});
//
//                     });
//                   });
//             },
//             builder: (context, state) {
//               return Builder(builder: (context) {
//
//                 if (!onChange) {
//                   namecontroller = TextEditingController(text: addNew ? "" : group?.name);
//                   codeController = TextEditingController(text: addNew ? "" : group?.id.toString());
//                   descriptionContollercontroller = TextEditingController(text: addNew ? "" : group?.description);
//                   imageContollercontroller = TextEditingController(text: addNew ? "" : group?.image);
//                   searchNamecontroller = TextEditingController(text: addNew ? "" : group?.searchNmae);
//                   active=addNew?false:group?.isActive;
//                 }
//                 onChange = false;
//                 return AlertDialog(
//                   content: PopUpHeader(
//
//                     functionChane: true,
//                     onTap: () { addNew=!addNew;
//                     setState(() {
//
//                     });},
//                     isDirectCreate:true,
//                     addNew: addNew,
//
//                     label: "Create Material",
//                     onApply: () {
//                       MaterialCreationtModel model=MaterialCreationtModel(
//
//                         description: descriptionContollercontroller?.text??"",
//                         image:int.tryParse(imageContollercontroller.text),
//                         searchNmae: searchNamecontroller?.text??"",
//                         name: namecontroller?.text??"",
//                       );
//                       context.read<MaterialcraetionCubit>().postCreateMaterial(model);
//
//                       // widget.onTap();
//                       setState(() {
//
//                       });
//                     },
//                     onEdit: () {
//                       MaterialReadModel model=MaterialReadModel(
//
//                         name: namecontroller?.text??"",
//
//                         image:imageContollercontroller?.text??"",
//                         description: descriptionContollercontroller?.text??"",
//                         searchNmae: searchNamecontroller?.text??"",
//                         isActive: active,
//
//
//                       );
//                       // print(model);
//                       context.read<MaterialcraetionCubit>().postmaterialPatch(veritiaclid,model);
//
//
//                     },
//                     onCancel: (){
//                       context
//                           .read<MaterialdeleteCubit>()
//                           .materialDelete(veritiaclid,"material");
//
//                     },
//
//                     onAddNew: (v) {
//                       print("Akshay"+v.toString());
//                       changeAddNew(v);
//                       setState(() {});
//
//                       setState(() {});
//                     },
//                     dataField: Expanded(
//                       // height: MediaQuery.of(context).size.height * .6,
//                       child: IntrinsicHeight(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//
//                             MaterialVerticalList(
//
//                               selectedVertical: selectedVertical,
//                               itemsearch: itemsearch,ontap: (int index){
//                               setState(() {
//                                 selectedVertical=index;
//                                 addNew=false;
//                                 // select=false;
//                                 // updateCheck=false;
//
//
//                                 veritiaclid = result[index].id;
//                                 changer=false;
//
//                                 context.read<MaterialreadCubit>().getMaterialRead(veritiaclid!);
//
//
//                                 setState(() {
//
//                                 });
//                               });
//                             },result: result,
//                             ),
//
//                             Expanded(child: Column(
//                               children: [
//                                 NewInputCard(
//                                     controller: codeController, title: "Code"),
//                                 gapWidthColumn(),
//                                 NewInputCard(
//                                   controller:namecontroller ,
//                                   title: "Name",
//                                 ),
//                                 gapWidthColumn(),
//                                 NewInputCard(
//                                   controller:searchNamecontroller ,
//                                   title: "Search Name",
//                                 ),
//
//
//
//
//                               ],
//                             )),
//
//                             Expanded(child:   Column(
//                               children: [
//                                 FileUploadField(
//
//                                     fileName: imageName,
//                                     fileUrl:imageName,
//                                     onChangeTap: (p0) {
//                                       onChange=true;
//                                       // loading = true;
//                                       setState(() {});
//                                     },
//                                     onChange: (myFile) {
//                                       onChange=true;
//
//                                       // Variable.mobileBannerImage = myFile.toUint8List();
//
//                                       imageEncode =
//                                           myFile.toBase64();
//                                       // widget.fileMobileNameCtrl.text =
//                                       //     myFile.fileName ?? "";
//                                       // if (Variable.bannerimage!.length <= 240000)
//                                       context
//                                           .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode);
//                                       // else
//                                       //   context.showSnackBarError(
//                                       //       "Please upload Banner of size Lesser than 230kb");
//                                     },
//                                     onImageChange: (newFile) async {
//                                       onChange=true;
//                                       // Variable.popUp = false;
//
//                                       if (newFile.length <= 240000) {
//                                         // loading
//                                         //     ? showDailogPopUp(context, DialoguePopUp())
//                                         //     : Navigator.pop(context);
//                                         // context
//                                         //     .read<CreateWebImageCubit>()
//                                         //     .createMobImage();
//                                       } else
//                                         context.showSnackBarError(
//                                             "Please upload Banner of size Lesser than 230kb");
//                                       setState(() {});
//                                     },
//                                     onCreate: true,
//                                     label: "Image"),
//
//
//                                 SizedBox(height: 10,),
//                                 NewInputCard(
//                                   controller:descriptionContollercontroller,
//                                   title: "Description",
//                                 ),
//                                 SizedBox(height: 10,),
//
//
//
//                               ],
//                             )),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 );
//               });
//             },
//           ),
// );
//         }
//     ),
// );
//   }
// }









class UOMGroupConfigurePopUp extends StatefulWidget {
  final String type;

  UOMGroupConfigurePopUp({Key? key, required this.type}) : super(key: key);

  @override
  State<UOMGroupConfigurePopUp> createState() => _UOMGroupConfigurePopUpState();
}

class _UOMGroupConfigurePopUpState extends State<UOMGroupConfigurePopUp> {
  TextEditingController nameContrlr = TextEditingController();

  TextEditingController codeContrlr = TextEditingController();

  TextEditingController idContrlr = TextEditingController();

  TextEditingController descContrlr = TextEditingController();

  TextEditingController displayContrlr = TextEditingController();

  TextEditingController alterContrlr = TextEditingController();
  TextEditingController shortContrlr = TextEditingController();

  bool isActive = true;
  bool addNew = false;
  void changeAddNew(bool va) => addNew = va;
  int? groupId;
  int? first;
  int selectedIndex = 0;
  String? groupName;
  bool onChange = false;

  // UOMGroup? group;
  @override
  void initState() {
    // Variable.bannerimage = null;
    // Variable.divisionValue = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setState) {
      // if (!onChange) {
      //   nameContrlr =
      //       TextEditingController(text: addNew ? "" : group?.name);
      //   idContrlr = TextEditingController(
      //       text: addNew ? "" : group?.id.toString());
      //   codeContrlr =
      //       TextEditingController(text: addNew ? "" : group?.code);
      //   descContrlr =
      //       TextEditingController(text: addNew ? "" : group?.description);
      //   // alterContrlr=TextEditingController(text:addNew?"": group?.displayName);
      //   shortContrlr =
      //       TextEditingController(text: addNew ? "" : group?.shortName);
      // }
      onChange = false;
      // if (first != null && group == null) {
      //   selectedIndex = first!;
      //   context.read<ManageUomGroupCubit>()
      //     ..getUOMGroup(first.toString());
      // }

      return AlertDialog(
        content: PopUpHeader(
          onTap: () { addNew=!addNew;
          setState(() {

          });},
          onApply: () {
            // context.read<CreateUomGroupCubit>().createUOMGroup(UOMGroup(
            //     name: nameContrlr.text,
            //     description: descContrlr.text,
            //     image: null,
            //     isActive: true,
            //     shortName: shortContrlr.text));
          },
          onEdit: first == null
              ? null
              : () {
            // context.read<ManageUomGroupCubit>().updateUOMGroup(
            //     selectedIndex.toString(),
            //     UOMGroup(
            //       name: nameContrlr.text,
            //       description: descContrlr.text,
            //       id: int.tryParse(idContrlr.text),
            //       code: codeContrlr.text,
            //       image: null,
            //       shortName: shortContrlr.text,
            //       isActive: true,
            //     ));
          },
          onAddNew: (v) {
            changeAddNew(v);
            setState(() {});
          },
          label: "UOMGroup List ",
          dataField: Expanded(
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ConfigureVerticalList(
                    //   type: widget.type,
                    //   refresh: () {
                    //     // print("on refresh");
                    //     setState(() {});
                    //   },
                    //   onClick: (UOMGroup v) {
                    //     group = v;
                    //     if (group?.id != selectedIndex) {
                    //       selectedIndex = group!.id!;
                    //
                    //       context.read<ManageUomGroupCubit>()
                    //         ..getUOMGroup(selectedIndex.toString());
                    //     }
                    //
                    //     // print(v);
                    //   },
                    // ),
                    gapWidthColumn(),
                    IntrinsicWidth(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            PopUpInputField(
                              label: "ID",
                              controller: idContrlr,
                              restricted: true,
                              required: true,
                              enable: true,
                            ),
                            PopUpInputField(
                              label: "Code",
                              controller: codeContrlr,
                              restricted: true,
                              required: true,
                              enable: true,
                            ),
                            PopUpInputField(
                              label: "Name",
                              controller: nameContrlr,
                              required: true,
                              enable: true,
                            ),
                            PopUpInputField(
                              label: "Description",
                              controller: descContrlr,
                              required: true,
                              enable: true,
                            ),
                            PopUpInputField(
                              label: "Short Name",
                              controller: shortContrlr,
                              required: true,
                              enable: true,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}




//create division
class CreateDevisionPopUp extends StatefulWidget {
  final String type;


  CreateDevisionPopUp({
    Key? key,
    required this.type,



  }) : super(key: key);

  @override
  _CreateDevisionPopUpState createState() => _CreateDevisionPopUpState();
}

class _CreateDevisionPopUpState extends State<CreateDevisionPopUp> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName="";
  String imageEncode="";
  int selectedVertical=0;
  DevisionReadModel? group;
  int? veritiaclid=0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName="";
  bool changer=false;

  TextEditingController codeController=TextEditingController();
  TextEditingController namecontroller=TextEditingController();
  TextEditingController searchNamecontroller=TextEditingController();
  TextEditingController imageContollercontroller=TextEditingController();
  TextEditingController displayContollercontroller=TextEditingController();
  TextEditingController descriptionContollercontroller=TextEditingController();
  bool addNew = false;


  void changeAddNew(bool va) { addNew = va;
  onChange=false;
  }
  void initState() {
    // context
    //     .read<DevisionListCubit>()
    //     .getDevisionList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());
    return MultiBlocProvider(
      providers: [

        BlocProvider(
          create: (context) => DivisioncreateCubit(),
        ),

      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [

                BlocListener<ImagepostCubit, ImagepostState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loadingggg");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      if (data.data1) {
                        print("dataAkshay"+data.data2.toString());
                        imageContollercontroller.text=data.data2.toString();

                        // context.showSnackBarSuccess(data.data2);

                      }
                      else {
                        // context.showSnackBarError(data.data2);
                        // print(data.data1.toString());
                      }
                      ;
                    });
                  },
                ),

                BlocListener<DivisioncreateCubit, DivisioncreateState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      // context.showSnackBarError("Loading");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {

                      if (data.data1) {
                        context.showSnackBarSuccess(data.data2);
                        Navigator.pop(context);

                        setState(() {

                        });

                      }
                      else {
                        context.showSnackBarError(data.data2);
                        Navigator.pop(context);
                      }
                      ;
                    });
                  },
                ),


              ],
              child: BlocConsumer<DevisionListCubit, DevisionListState>(
                listener: (context, state) {
                  print("state"+state.toString());
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (list) {
                        print("aaaaayyyiram"+list.data.toString());

                        result = list.data;
                        setState(() {
                          if(result.isNotEmpty){
                            veritiaclid=result[0].id;
                            // Variable.verticalid=result[0].id;
                            print("Variable.ak"+Variable.verticalid.toString());
                            // context.read<DivisionreadCubit>().getDivisionRead(veritiaclid!,"division");
                          }
                          else{
                            print("common");
                            // select=true;
                            setState(() {
                            });

                          }


                          setState(() {});

                        });
                      });
                },
                builder: (context, state) {
                  return Builder(builder: (context) {

                    return AlertDialog(
                      content: PopUpHeader(
                        buttonCheck: true,
                        isDirectCreate: true,
                        functionChane: true,
                        addNew: addNew,
                        onTap: () { addNew=!addNew;
                        setState(() {

                        });},
                        // isDirectCreate:changer,

                        label: "Create division",
                        onApply: () {
                          print("save");
                          MaterialCreationtModel model=MaterialCreationtModel(

                            description: descriptionContollercontroller?.text??"",
                            image:int.tryParse(imageContollercontroller.text),
                            searchNmae: searchNamecontroller?.text??"",
                            name: namecontroller?.text??"",
                            displayName: displayContollercontroller.text??"",
                            status: "akskks"
                          );
                          print(model);
                          context.read<DivisioncreateCubit>().postCreateDevision(model,"division");

                          // widget.onTap();

                        },
                        onEdit: () {
                          // DevisionReadModel model=DevisionReadModel(
                          //   name: namecontroller?.text??"",
                          //   image:imageContollercontroller?.text??"",
                          //   displayName: displayContollercontroller.text??"",
                          //   description: descriptionContollercontroller?.text??"",
                          //   searchNmae: searchNamecontroller?.text??"",
                          //   isActive: active,
                          // );
                          // // print(model);
                          // context.read<DivisioncreateCubit>().postDivisionPatch(veritiaclid,model,"division");
                        },
                        onCancel: (){
                          // context
                          //     .read<MaterialdeleteCubit>()
                          //     .materialDelete(veritiaclid,"division");

                        },

                        onAddNew: (v) {
                          // print("Akshay"+v.toString());
                          // changeAddNew(v);
                          // setState(() {});
                          //
                          // setState(() {});
                        },
                        dataField: Expanded(
                          // height: MediaQuery.of(context).size.height * .6,
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [



                                Expanded(child: Column(
                                  children: [
                                    NewInputCard(
                                      readOnly: true,
                                        controller: codeController, title: "Code"),
                                    gapWidthColumn(),
                                    NewInputCard(
                                      controller:namecontroller ,
                                      title: "Name",
                                    ),
                                    gapWidthColumn(),
                                    NewInputCard(
                                      controller:searchNamecontroller ,
                                      title: "Search Name",
                                    ),
                                    NewInputCard(
                                      controller:displayContollercontroller ,
                                      title: "Dispaly Name",
                                    ),




                                  ],
                                )),

                                Expanded(child:   Column(
                                  children: [
                                    NewInputCard(
                                      controller:descriptionContollercontroller,
                                      title: "Description",
                                    ),
                                    SizedBox(height: 10,),
                                    FileUploadField(

                                        fileName: imageName,
                                        fileUrl:imageName,
                                        onChangeTap: (p0) {
                                          onChange=true;
                                          // loading = true;
                                          setState(() {});
                                        },
                                        onChange: (myFile) {
                                          onChange=true;
                                          // Variable.mobileBannerImage = myFile.toUint8List();

                                          imageEncode =
                                              myFile.toBase64();
                                          // widget.fileMobileNameCtrl.text =
                                          //     myFile.fileName ?? "";
                                          // if (Variable.bannerimage!.length <= 240000)
                                          print("imabbabba"+Variable.imageName.toString());
                                          context.read<ImagepostCubit>().postImage(Variable.imageName, imageEncode);
                                          // else
                                          //   context.showSnackBarError(
                                          //       "Please upload Banner of size Lesser than 230kb");
                                        },
                                        onImageChange: (newFile) async {
                                          onChange=true;
                                          // Variable.popUp = false;

                                          if (newFile.length <= 240000) {
                                            // loading
                                            //     ? showDailogPopUp(context, DialoguePopUp())
                                            //     : Navigator.pop(context);
                                            // context
                                            //     .read<CreateWebImageCubit>()
                                            //     .createMobImage();
                                          } else
                                            context.showSnackBarError(
                                                "Please upload Banner of size Lesser than 230kb");
                                          setState(() {});
                                        },
                                        onCreate: true,
                                        label: "Image"),


                                    SizedBox(height: 10,),
                                    PopUpSwitchTile(
                                        value: active??false,
                                        title: "isActive",
                                        onClick: (gg) {
                                          onChange=true;

                                          setState(() {});
                                        }),







                                  ],
                                )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
                },
              ),
            );
          }
      ),
    );
  }
}


//patch division

class PatchDevisionPopUp extends StatefulWidget {
  final String type;


  PatchDevisionPopUp({
    Key? key,
    required this.type,



  }) : super(key: key);

  @override
  _PatchDevisionPopUpState createState() => _PatchDevisionPopUpState();
}

class _PatchDevisionPopUpState extends State<PatchDevisionPopUp> {
  bool? active = false;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName="";
  String imageEncode="";
  int selectedVertical=0;
  DevisionReadModel? group;
  int? veritiaclid=0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName="";
  bool changer=false;

  TextEditingController codeController=TextEditingController();
  TextEditingController namecontroller=TextEditingController();
  TextEditingController searchNamecontroller=TextEditingController();
  TextEditingController imageContollercontroller=TextEditingController();
  TextEditingController displayContollercontroller=TextEditingController();
  TextEditingController descriptionContollercontroller=TextEditingController();
  bool addNew = false;


  void changeAddNew(bool va) { addNew = va;
  onChange=false;
  }
  void initState() {
    context
        .read<DevisionListCubit>()
        .getDevisionList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DivisionreadCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialdeleteCubit(),
        ),
        BlocProvider(
          create: (context) => DivisioncreateCubit(),
        ),

      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [

                BlocListener<ImagepostCubit, ImagepostState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.

                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      if (data.data1) {
                        print("dataAkshay"+data.data2.toString());
                        imageContollercontroller.text=data.data2.toString();

                        // context.showSnackBarSuccess(data.data2);

                      }
                      else {
                        // context.showSnackBarError(data.data2);
                        // print(data.data1.toString());
                      }
                      ;
                    });
                  },
                ),
                BlocListener<DivisionreadCubit, DivisionreadState>(
                  listener: (context, state) {
                    print("nnnnop"+state.toString());
                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          print("error");
                        },
                        success: (data) {
                          setState(() {
                            group=data;
                            codeController.text=data.code??"";
                            namecontroller.text=data.name??"";
                            imageContollercontroller.text=data.image??"";
                            descriptionContollercontroller.text=data.description??"";
                            searchNamecontroller.text=data.searchNmae??"";

                            active=data.isActive??false;

                          });
                        });



                  },
                ),
                BlocListener<DivisioncreateCubit, DivisioncreateState>(
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
                        context
                            .read<DevisionListCubit>()
                            .getDevisionList();
                        setState(() {

                        });

                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
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

                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),

              ],
              child: BlocConsumer<DevisionListCubit, DevisionListState>(
                listener: (context, state) {
                  print("state"+state.toString());
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (list) {
                        print("aaaaayyyiram"+list.data.toString());

                        result = list.data;
                        setState(() {
                          if(result.isNotEmpty){
                            veritiaclid=result[0].id;
                            // Variable.verticalid=result[0].id;
                            print("Variable.ak"+Variable.verticalid.toString());
                            context.read<DivisionreadCubit>().getDivisionRead(veritiaclid!,"division");
                          }
                          else{
                            print("common");
                            // select=true;
                            setState(() {
                            });

                          }


                          setState(() {});

                        });
                      });
                },
                builder: (context, state) {
                  return Builder(builder: (context) {

                    // if (!onChange) {
                    //   print("onchange"+onChange.toString());
                    //   namecontroller = TextEditingController(text: addNew ? "" : group?.name);
                    //   codeController = TextEditingController(text: addNew ? "" : group?.id.toString());
                    //   descriptionContollercontroller = TextEditingController(text: addNew ? "" : group?.description);
                    //   imageContollercontroller = TextEditingController(text: addNew ? "" : group?.image);
                    //   displayContollercontroller=TextEditingController(text: addNew ? "" : group?.displayName);
                    //   searchNamecontroller = TextEditingController(text: addNew ? "" : group?.searchNmae);
                    //   active=addNew?false:group?.isActive;
                    // }
                    // onChange = false;
                    return AlertDialog(
                      content: PopUpHeader(
                        buttonCheck: true,
                        functionChane: true,
                        addNew: addNew,
                        onTap: () { addNew=!addNew;
                        setState(() {

                        });},
                        // isDirectCreate:changer,

                        label: "Create division",
                        onApply: () {
                          // print("save");
                          // MaterialCreationtModel model=MaterialCreationtModel(
                          //
                          //     description: descriptionContollercontroller?.text??"",
                          //     image:int.tryParse(imageContollercontroller.text),
                          //     searchNmae: searchNamecontroller?.text??"",
                          //     name: namecontroller?.text??"",
                          //     displayName: displayContollercontroller.text??"",
                          //     status: "akskks"
                          // );
                          // print(model);
                          // context.read<DivisioncreateCubit>().postCreateDevision(model,"division");
                          //
                          // // widget.onTap();

                        },
                        onEdit: () {
                          DevisionReadModel model=DevisionReadModel(
                            name: namecontroller?.text??"",
                            image:imageContollercontroller?.text??"",
                            displayName: displayContollercontroller.text??"",
                            description: descriptionContollercontroller?.text??"",
                            searchNmae: searchNamecontroller?.text??"",
                            isActive: active,
                          );
                          print(model);
                          context.read<DivisioncreateCubit>().postDivisionPatch(veritiaclid,model,"division");
                        },
                        onCancel: (){
                          context
                              .read<MaterialdeleteCubit>()
                              .materialDelete(veritiaclid,"division");

                        },

                        onAddNew: (v) {
                          // print("Akshay"+v.toString());
                          // changeAddNew(v);
                          // setState(() {});
                          //
                          // setState(() {});
                        },
                        dataField: Expanded(
                          // height: MediaQuery.of(context).size.height * .6,
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                DebvisionVerticalList(

                                  selectedVertical: selectedVertical,
                                  itemsearch: itemsearch,ontap: (int index){
                                  setState(() {
                                    selectedVertical=index;
                                    addNew=false;
                                    // select=false;
                                    // updateCheck=false;


                                    veritiaclid = result[index].id;
                                    changer=true;

                                    context.read<DivisionreadCubit>().getDivisionRead(veritiaclid!,"division");


                                    setState(() {

                                    });
                                  });
                                },result: result,
                                ),

                                Expanded(child: Column(
                                  children: [
                                    NewInputCard(
                                        readOnly: true,
                                        controller: codeController, title: "Code"),
                                    gapWidthColumn(),
                                    NewInputCard(
                                      controller:namecontroller ,
                                      title: "Name",
                                    ),
                                    gapWidthColumn(),
                                    NewInputCard(
                                      controller:searchNamecontroller ,
                                      title: "Search Name",
                                    ),
                                    NewInputCard(
                                      controller:displayContollercontroller ,
                                      title: "Dispaly Name",
                                    ),




                                  ],
                                )),

                                Expanded(child:   Column(
                                  children: [
                                    NewInputCard(
                                      controller:descriptionContollercontroller,
                                      title: "Description",
                                    ),
                                    SizedBox(height: 10,),
                                    FileUploadField(

                                        fileName: imageName,
                                        fileUrl:imageName,
                                        onChangeTap: (p0) {
                                          onChange=true;
                                          // loading = true;
                                          setState(() {});
                                        },
                                        onChange: (myFile) {
                                          onChange=true;
                                          // Variable.mobileBannerImage = myFile.toUint8List();

                                          imageEncode = myFile.toBase64();
                                          // widget.fileMobileNameCtrl.text =
                                          //     myFile.fileName ?? "";
                                          // if (Variable.bannerimage!.length <= 240000)
                                          print("imabbabba"+Variable.imageName.toString());
                                          context.read<ImagepostCubit>().postImage(Variable.imageName, imageEncode);
                                          // else
                                          //   context.showSnackBarError(
                                          //       "Please upload Banner of size Lesser than 230kb");
                                        },
                                        onImageChange: (newFile) async {
                                          onChange=true;
                                          // Variable.popUp = false;

                                          if (newFile.length <= 240000) {
                                            // loading
                                            //     ? showDailogPopUp(context, DialoguePopUp())
                                            //     : Navigator.pop(context);
                                            // context
                                            //     .read<CreateWebImageCubit>()
                                            //     .createMobImage();
                                          } else
                                            context.showSnackBarError(
                                                "Please upload Banner of size Lesser than 230kb");
                                          setState(() {});
                                        },
                                        onCreate: true,
                                        label: "Image"),


                                    SizedBox(height: 10,),





                                  ],
                                )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
                },
              ),
            );
          }
      ),
    );
  }
}



//static creation+++++++++++++++++++++++++++++++++++++

class CreateStaticPopUp extends StatefulWidget {
  final String type;


  CreateStaticPopUp({
    Key? key,
    required this.type,



  }) : super(key: key);

  @override
  _CreateStaticPopUpState createState() => _CreateStaticPopUpState();
}

class _CreateStaticPopUpState extends State<CreateStaticPopUp> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName="";
  String imageEncode="";
  int selectedVertical=0;
  DevisionReadModel? group;
  int? veritiaclid=0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName="";
  bool changer=false;

  TextEditingController codeController=TextEditingController();
  TextEditingController namecontroller=TextEditingController();
  TextEditingController searchNamecontroller=TextEditingController();
  TextEditingController imageContollercontroller=TextEditingController();
  TextEditingController displayContollercontroller=TextEditingController();
  TextEditingController descriptionContollercontroller=TextEditingController();
  bool addNew = false;

  final GlobalKey< _CreateStaticPopUpState> _myWidgetState = GlobalKey< _CreateStaticPopUpState>();
  void changeAddNew(bool va) { addNew = va;
  onChange=false;
  }
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());
    return MultiBlocProvider(
      providers: [


        BlocProvider(
          create: (context) => DivisioncreateCubit(),
        ),

      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [

                BlocListener<ImagepostCubit, ImagepostState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.

                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      if (data.data1) {
                        print("dataAkshay"+data.data2.toString());
                        imageContollercontroller.text=data.data2.toString();

                        // context.showSnackBarSuccess(data.data2);

                      }
                      else {
                        // context.showSnackBarError(data.data2);
                        // print(data.data1.toString());
                      }
                      ;
                    });
                  },
                ),

                BlocListener<DivisioncreateCubit, DivisioncreateState>(
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
                      Navigator.pop(context);
                        setState(() {

                        });

                      }
                      else {
                        context.showSnackBarError(data.data2);
                        Navigator.pop(context);
                      }
                      ;
                    });
                  },
                ),



              ],
              child: BlocConsumer<ListstaticCubit, ListstaticState>(
                listener: (context, state) {
                  print("state"+state.toString());
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (list) {
                        print("aaaaayyyiram"+list.data.toString());

                        result = list.data;
                        print("seee"+result.toString());
                        setState(() {
                          if(result.isNotEmpty){

                            veritiaclid=result[0].id;
                            // Variable.verticalid=result[0].id;
                            print("Variable.ak"+Variable.verticalid.toString());
                            // context.read<DivisionreadCubit>().getDivisionRead(veritiaclid!,"static");
                          }
                          else{
                            print("common");
                            // select=true;
                            setState(() {
                            });

                          }


                          setState(() {});

                        });
                      });
                },
                builder: (context, state) {
                  return Builder(builder: (context) {


                    return AlertDialog(
                      content: PopUpHeader(
                        functionChane: true,
                          buttonCheck: true,
                        isDirectCreate: true,
                        onTap: () { addNew=!addNew;
                        setState(() {

                        });},
                        key: _myWidgetState,
                        addNew: addNew,
                        // isDirectCreate:changer,

                        label: "Create Static Group",
                        onApply: () {
                          print("save");
                          MaterialCreationtModel model=MaterialCreationtModel(

                            description: descriptionContollercontroller?.text??"",
                            image:int.tryParse(imageContollercontroller.text),
                            searchNmae: searchNamecontroller?.text??"",
                            name: namecontroller?.text??"",
                          );

                          context.read<DivisioncreateCubit>().postCreateDevision(model,"static");

                          // widget.onTap();

                        },
                        onEdit: () {

                        },
                        onCancel: (){



                        },

                        onAddNew: (v) {

                        },
                        dataField: Expanded(
                          // height: MediaQuery.of(context).size.height * .6,
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [



                                Expanded(child: Column(
                                  children: [
                                    NewInputCard(
                                        readOnly: true,
                                        controller: codeController, title: "Code"),
                                    SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:namecontroller ,
                                      title: "Name",
                                    ),
                                    SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:searchNamecontroller ,
                                      title: "Search Name",
                                    ),
                                  ],
                                )),

                                Expanded(child:   Column(
                                  children: [
                                    NewInputCard(
                                      controller:descriptionContollercontroller,
                                      title: "Description",
                                    ),
                                    SizedBox(height: 10,),
                                    FileUploadField(

                                        fileName: imageName,
                                        fileUrl:imageName,
                                        onChangeTap: (p0) {
                                          onChange=true;
                                          // loading = true;
                                          setState(() {});
                                        },
                                        onChange: (myFile) {
                                          onChange=true;
                                          // Variable.mobileBannerImage = myFile.toUint8List();

                                          imageEncode =
                                              myFile.toBase64();
                                          // widget.fileMobileNameCtrl.text =
                                          //     myFile.fileName ?? "";
                                          // if (Variable.bannerimage!.length <= 240000)
                                          print("imabbabba"+Variable.imageName.toString());
                                          context.read<ImagepostCubit>().postImage(Variable.imageName, imageEncode);
                                          // else
                                          //   context.showSnackBarError(
                                          //       "Please upload Banner of size Lesser than 230kb");
                                        },
                                        onImageChange: (newFile) async {
                                          onChange=true;
                                          // Variable.popUp = false;

                                          if (newFile.length <= 240000) {
                                            // loading
                                            //     ? showDailogPopUp(context, DialoguePopUp())
                                            //     : Navigator.pop(context);
                                            // context
                                            //     .read<CreateWebImageCubit>()
                                            //     .createMobImage();
                                          } else
                                            context.showSnackBarError(
                                                "Please upload Banner of size Lesser than 230kb");
                                          setState(() {});
                                        },
                                        onCreate: true,
                                        label: "Image"),


                                    SizedBox(height: 10,),
                                    PopUpSwitchTile(
                                        value: active??false,
                                        title: "isActive",
                                        onClick: (gg) {
                                          onChange=true;
                                          if(!addNew)
                                            active=!active!;

                                          // extendedWarranty = gg;
                                          // widget.changeExtendedWarranty(gg);
                                          // onChangeExtWarranty = gg;
                                          setState(() {});
                                        }),






                                  ],
                                )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
                },
              ),
            );
          }
      ),
    );
  }
}


class PatchStaticPopUp extends StatefulWidget {
  final String type;


  PatchStaticPopUp({
    Key? key,
    required this.type,



  }) : super(key: key);

  @override
  _PatchStaticPopUpState createState() => _PatchStaticPopUpState();
}

class _PatchStaticPopUpState extends State<PatchStaticPopUp> {
  bool? active = false;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName="";
  String imageEncode="";
  int selectedVertical=0;
  DevisionReadModel? group;
  int? veritiaclid=0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName="";
  bool changer=false;

  TextEditingController codeController=TextEditingController();
  TextEditingController namecontroller=TextEditingController();
  TextEditingController searchNamecontroller=TextEditingController();
  TextEditingController imageContollercontroller=TextEditingController();
  TextEditingController displayContollercontroller=TextEditingController();
  TextEditingController descriptionContollercontroller=TextEditingController();
  bool addNew = false;

  final GlobalKey< _CreateStaticPopUpState> _myWidgetState = GlobalKey< _CreateStaticPopUpState>();
  void changeAddNew(bool va) { addNew = va;
  onChange=false;
  }
  void initState() {
    context.read<ListstaticCubit>().getStaticList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DivisionreadCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialdeleteCubit(),
        ),
        BlocProvider(
          create: (context) => DivisioncreateCubit(),
        ),

      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [

                BlocListener<ImagepostCubit, ImagepostState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.

                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      if (data.data1) {
                        print("dataAkshay"+data.data2.toString());
                        imageContollercontroller.text=data.data2.toString();

                        // context.showSnackBarSuccess(data.data2);

                      }
                      else {
                        // context.showSnackBarError(data.data2);
                        // print(data.data1.toString());
                      }
                      ;
                    });
                  },
                ),
                BlocListener<DivisionreadCubit, DivisionreadState>(
                  listener: (context, state) {
                    print("nnnnop"+state.toString());
                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          print("error");
                        },
                        success: (data) {
                          setState(() {
                            group=data;
                            codeController.text=data.code??"";
                            namecontroller.text=data.name??"";
                            imageContollercontroller.text=data.image??"";
                            descriptionContollercontroller.text=data.description??"";
                            searchNamecontroller.text=data.searchNmae??"";

                            active=data.isActive??false;

                          });
                        });



                  },
                ),
                BlocListener<DivisioncreateCubit, DivisioncreateState>(
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
                        context
                            .read<DevisionListCubit>()
                            .getDevisionList();
                        setState(() {

                        });

                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
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

                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),


              ],
              child: BlocConsumer<ListstaticCubit, ListstaticState>(
                listener: (context, state) {
                  print("state"+state.toString());
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (list) {
                        print("aaaaayyyiram"+list.data.toString());

                        result = list.data;
                        print("seee"+result.toString());
                        setState(() {
                          if(result.isNotEmpty){

                            veritiaclid=result[0].id;
                            // Variable.verticalid=result[0].id;
                            print("Variable.ak"+Variable.verticalid.toString());
                            context.read<DivisionreadCubit>().getDivisionRead(veritiaclid!,"static");
                          }
                          else{
                            print("common");
                            // select=true;
                            setState(() {
                            });

                          }


                          setState(() {});

                        });
                      });
                },
                builder: (context, state) {
                  return Builder(builder: (context) {


                    return AlertDialog(
                      content: PopUpHeader(
                        functionChane: true,
                        buttonCheck: true,

                        onTap: () { addNew=!addNew;
                        setState(() {

                        });},
                        key: _myWidgetState,
                        addNew: addNew,
                        // isDirectCreate:changer,

                        label: "Create Static Group",
                        onApply: () {


                        },
                        onEdit: () {
                          DevisionReadModel model=DevisionReadModel(
                            name: namecontroller?.text??"",
                            image:imageContollercontroller?.text??"",

                            description: descriptionContollercontroller?.text??"",
                            searchNmae: searchNamecontroller?.text??"",
                            isActive: active,
                          );
                          print("Rijina"+model.toString());
                          context.read<DivisioncreateCubit>().postDivisionPatch(veritiaclid,model,"static");
                        },
                        onCancel: (){
                          context
                              .read<MaterialdeleteCubit>()
                              .materialDelete(veritiaclid,"static");

                        },

                        onAddNew: (v) {

                        },
                        dataField: Expanded(
                          // height: MediaQuery.of(context).size.height * .6,
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                StaticVerticalList(
                                  type: "static",

                                  selectedVertical: selectedVertical,
                                  itemsearch: itemsearch,ontap: (int index){
                                  setState(() {
                                    selectedVertical=index;
                                    addNew=false;
                                    // select=false;
                                    // updateCheck=false;


                                    veritiaclid = result[index].id;
                                    changer=true;

                                    context.read<DivisionreadCubit>().getDivisionRead(veritiaclid!,"static");




                                    setState(() {

                                    });
                                  });
                                },result: result,
                                ),

                                Expanded(child: Column(
                                  children: [
                                    NewInputCard(
                                        readOnly: true,
                                        controller: codeController, title: "Code"),
                                    gapWidthColumn(),
                                    NewInputCard(
                                      controller:namecontroller ,
                                      title: "Name",
                                    ),
                                    gapWidthColumn(),
                                    NewInputCard(
                                      controller:searchNamecontroller ,
                                      title: "Search Name",
                                    ),
                                  ],
                                )),

                                Expanded(child:   Column(
                                  children: [
                                    NewInputCard(
                                      controller:descriptionContollercontroller,
                                      title: "Description",
                                    ),
                                    SizedBox(height: 10,),
                                    FileUploadField(

                                        fileName: imageName,
                                        fileUrl:imageName,
                                        onChangeTap: (p0) {
                                          onChange=true;
                                          // loading = true;
                                          setState(() {});
                                        },
                                        onChange: (myFile) {
                                          onChange=true;
                                          // Variable.mobileBannerImage = myFile.toUint8List();

                                          imageEncode =
                                              myFile.toBase64();
                                          // widget.fileMobileNameCtrl.text =
                                          //     myFile.fileName ?? "";
                                          // if (Variable.bannerimage!.length <= 240000)
                                          print("imabbabba"+Variable.imageName.toString());
                                          context.read<ImagepostCubit>().postImage(Variable.imageName, imageEncode);
                                          // else
                                          //   context.showSnackBarError(
                                          //       "Please upload Banner of size Lesser than 230kb");
                                        },
                                        onImageChange: (newFile) async {
                                          onChange=true;
                                          // Variable.popUp = false;

                                          if (newFile.length <= 240000) {
                                            // loading
                                            //     ? showDailogPopUp(context, DialoguePopUp())
                                            //     : Navigator.pop(context);
                                            // context
                                            //     .read<CreateWebImageCubit>()
                                            //     .createMobImage();
                                          } else
                                            context.showSnackBarError(
                                                "Please upload Banner of size Lesser than 230kb");
                                          setState(() {});
                                        },
                                        onCreate: true,
                                        label: "Image"),


                                    SizedBox(height: 10,),
                                    PopUpSwitchTile(
                                        value: active??false,
                                        title: "isActive",
                                        onClick: (gg) {
                                          onChange=true;
                                          if(!addNew)
                                            active=!active!;

                                          // extendedWarranty = gg;
                                          // widget.changeExtendedWarranty(gg);
                                          // onChangeExtWarranty = gg;
                                          setState(() {});
                                        }),





                                  ],
                                )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
                },
              ),
            );
          }
      ),
    );
  }
}

// class CreateStaticPopUp extends StatefulWidget {
//   final String type;
//
//
//   CreateStaticPopUp({
//     Key? key,
//     required this.type,
//
//
//
//   }) : super(key: key);
//
//   @override
//   _CreateStaticPopUpState createState() => _CreateStaticPopUpState();
// }
//
// class _CreateStaticPopUpState extends State<CreateStaticPopUp> {
//   bool? active = false;
//
//   bool onChange = false;
//   bool onChangeWarranty = false;
//   bool onChangeExtWarranty = false;
//   String imageName="";
//   String imageEncode="";
//   int selectedVertical=0;
//   DevisionReadModel? group;
//   int? veritiaclid=0;
//   List<BrandListModel> result = [];
//   TextEditingController itemsearch = TextEditingController();
//   String parentName="";
//   bool changer=false;
//
//   TextEditingController codeController=TextEditingController();
//   TextEditingController namecontroller=TextEditingController();
//   TextEditingController searchNamecontroller=TextEditingController();
//   TextEditingController imageContollercontroller=TextEditingController();
//   TextEditingController displayContollercontroller=TextEditingController();
//   TextEditingController descriptionContollercontroller=TextEditingController();
//   bool addNew = false;
//
//   final GlobalKey< _CreateStaticPopUpState> _myWidgetState = GlobalKey< _CreateStaticPopUpState>();
//   void changeAddNew(bool va) { addNew = va;
//   onChange=false;
//   }
//   void initState() {
//     context.read<ListstaticCubit>().getStaticList();
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
//           create: (context) => DivisionreadCubit(),
//         ),
//         BlocProvider(
//           create: (context) => MaterialdeleteCubit(),
//         ),
//         BlocProvider(
//           create: (context) => DivisioncreateCubit(),
//         ),
//
//       ],
//       child: Builder(
//           builder: (context) {
//             return MultiBlocListener(
//               listeners: [
//
//                 BlocListener<ImagepostCubit, ImagepostState>(
//                   listener: (context, state) {
//                     print("postssssssss" + state.toString());
//                     state.maybeWhen(orElse: () {
//                       // context.
//
//                     }, error: () {
//                       context.showSnackBarError(Variable.errorMessege);
//                     }, success: (data) {
//                       if (data.data1) {
//                         print("dataAkshay"+data.data2.toString());
//                         imageContollercontroller.text=data.data2.toString();
//
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
//                 BlocListener<DivisionreadCubit, DivisionreadState>(
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
//                             codeController.text=data.code??"";
//                             namecontroller.text=data.name??"";
//                             imageContollercontroller.text=data.image??"";
//                             descriptionContollercontroller.text=data.description??"";
//                             searchNamecontroller.text=data.searchNmae??"";
//
//                             active=data.isActive??false;
//
//                           });
//                         });
//
//
//
//                   },
//                 ),
//                 BlocListener<DivisioncreateCubit, DivisioncreateState>(
//                   listener: (context, state) {
//                     print("postssssssss" + state.toString());
//                     state.maybeWhen(orElse: () {
//                       // context.
//                       context.showSnackBarError("Loading");
//                     }, error: () {
//                       context.showSnackBarError(Variable.errorMessege);
//                     }, success: (data) {
//
//                       if (data.data1) {
//                         context.showSnackBarSuccess(data.data2);
//                         context
//                             .read<DevisionListCubit>()
//                             .getDevisionList();
//                         setState(() {
//
//                         });
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
//                 BlocListener<MaterialdeleteCubit, MaterialdeleteState>(
//                   listener: (context, state) {
//                     print("delete" + state.toString());
//                     state.maybeWhen(orElse: () {
//                       // context.
//                       context.showSnackBarError("Loading");
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
//
//
//               ],
//               child: BlocConsumer<ListstaticCubit, ListstaticState>(
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
//                         print("seee"+result.toString());
//                         setState(() {
//                           if(result.isNotEmpty){
//
//                             veritiaclid=result[0].id;
//                             // Variable.verticalid=result[0].id;
//                             print("Variable.ak"+Variable.verticalid.toString());
//                             context.read<DivisionreadCubit>().getDivisionRead(veritiaclid!,"static");
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
//
//                     return AlertDialog(
//                       content: PopUpHeader(
//                         functionChane: true,
//                         onTap: () { addNew=!addNew;
//                         setState(() {
//
//                         });},
//                         key: _myWidgetState,
//                         addNew: addNew,
//                         // isDirectCreate:changer,
//
//                         label: "Create Static Group",
//                         onApply: () {
//                           print("save");
//                           MaterialCreationtModel model=MaterialCreationtModel(
//
//                               description: descriptionContollercontroller?.text??"",
//                               image:int.tryParse(imageContollercontroller.text),
//                               searchNmae: searchNamecontroller?.text??"",
//                               name: namecontroller?.text??"",
//                           );
//
//                           context.read<DivisioncreateCubit>().postCreateDevision(model,"static");
//
//                           // widget.onTap();
//
//                         },
//                         onEdit: () {
//                           DevisionReadModel model=DevisionReadModel(
//                             name: namecontroller?.text??"",
//                             image:imageContollercontroller?.text??"",
//
//                             description: descriptionContollercontroller?.text??"",
//                             searchNmae: searchNamecontroller?.text??"",
//                             isActive: active,
//                           );
//                           print("Rijina"+model.toString());
//                           context.read<DivisioncreateCubit>().postDivisionPatch(veritiaclid,model,"static");
//                         },
//                         onCancel: (){
//                           context
//                               .read<MaterialdeleteCubit>()
//                               .materialDelete(veritiaclid,"static");
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
//
//                                 StaticVerticalList(
//                                   type: "static",
//
//                                   selectedVertical: selectedVertical,
//                                   itemsearch: itemsearch,ontap: (int index){
//                                   setState(() {
//                                     selectedVertical=index;
//                                     addNew=false;
//                                     // select=false;
//                                     // updateCheck=false;
//
//
//                                     veritiaclid = result[index].id;
//                                     changer=true;
//
//                                     context.read<DivisionreadCubit>().getDivisionRead(veritiaclid!,"static");
//
//
//
//
//                                     setState(() {
//
//                                     });
//                                   });
//                                 },result: result,
//                                 ),
//
//                                 Expanded(child: Column(
//                                   children: [
//                                     NewInputCard(
//                                         readOnly: true,
//                                         controller: codeController, title: "Code"),
//                                     gapWidthColumn(),
//                                     NewInputCard(
//                                       controller:namecontroller ,
//                                       title: "Name",
//                                     ),
//                                     gapWidthColumn(),
//                                     NewInputCard(
//                                       controller:searchNamecontroller ,
//                                       title: "Search Name",
//                                     ),
//                                   ],
//                                 )),
//
//                                 Expanded(child:   Column(
//                                   children: [
//                                     NewInputCard(
//                                       controller:descriptionContollercontroller,
//                                       title: "Description",
//                                     ),
//                                     SizedBox(height: 10,),
//                                     FileUploadField(
//
//                                         fileName: imageName,
//                                         fileUrl:imageName,
//                                         onChangeTap: (p0) {
//                                           onChange=true;
//                                           // loading = true;
//                                           setState(() {});
//                                         },
//                                         onChange: (myFile) {
//                                           onChange=true;
//                                           // Variable.mobileBannerImage = myFile.toUint8List();
//
//                                           imageEncode =
//                                               myFile.toBase64();
//                                           // widget.fileMobileNameCtrl.text =
//                                           //     myFile.fileName ?? "";
//                                           // if (Variable.bannerimage!.length <= 240000)
//                                           print("imabbabba"+Variable.imageName.toString());
//                                           context.read<ImagepostCubit>().postImage(Variable.imageName, imageEncode);
//                                           // else
//                                           //   context.showSnackBarError(
//                                           //       "Please upload Banner of size Lesser than 230kb");
//                                         },
//                                         onImageChange: (newFile) async {
//                                           onChange=true;
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
//                                     SizedBox(height: 10,),
//                                     PopUpSwitchTile(
//                                         value: active??false,
//                                         title: "isActive",
//                                         onClick: (gg) {
//                                           onChange=true;
//                                           if(!addNew)
//                                             active=!active!;
//
//                                           // extendedWarranty = gg;
//                                           // widget.changeExtendedWarranty(gg);
//                                           // onChangeExtWarranty = gg;
//                                           setState(() {});
//                                         }),
//
//
//
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






class UomGroupCreatePopUp extends StatefulWidget {
  final String type;


  UomGroupCreatePopUp({
    Key? key,
    required this.type,



  }) : super(key: key);

  @override
  _UomGroupCreatePopUpState createState() => _UomGroupCreatePopUpState();
}

class _UomGroupCreatePopUpState extends State<UomGroupCreatePopUp> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName="";
  String imageEncode="";
  int selectedVertical=0;
  DevisionReadModel? group;
  int? veritiaclid=0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName="";
  bool changer=false;

  TextEditingController codeController=TextEditingController();
  TextEditingController namecontroller=TextEditingController();
  TextEditingController shortNamecontroller=TextEditingController();

  TextEditingController descriptionContollercontroller=TextEditingController();
  bool addNew = false;

  final GlobalKey< _CreateStaticPopUpState> _myWidgetState = GlobalKey< _CreateStaticPopUpState>();
  void changeAddNew(bool va) { addNew = va;
  onChange=false;
  }
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UomgroupreadCubit(),
        ),

        BlocProvider(
          create: (context) => UomgroupCreationCubit(),
        ),
        BlocProvider(
          create: (context) => DivisioncreateCubit(),
        ),

      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [


                BlocListener<UomgroupreadCubit, UomgroupreadState>(
                  listener: (context, state) {
                    print("nnnnop"+state.toString());
                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          print("error");
                        },
                        success: (data) {
                          setState(() {

                            group=data;
                            codeController.text=data.code??"";
                            namecontroller.text=data.name??"";
                            shortNamecontroller.text=data.shortName??"";

                            descriptionContollercontroller.text=data.description??"";


                            active=data.isActive??false;

                          });
                        });



                  },
                ),
                BlocListener<DivisioncreateCubit, DivisioncreateState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loading");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      print(data.data1);

                      if (data.data1) {
                        context.showSnackBarSuccess(data.data2);


                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),
                BlocListener<UomgroupCreationCubit, UomgroupCreationState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loading");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      print(data.data1);

                      if (data.data1) {
                        context.showSnackBarSuccess(data.data2);
                        Navigator.pop(context);



                      }
                      else {
                        context.showSnackBarError(data.data2);
                        Navigator.pop(context);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),



              ],
              child: BlocConsumer<UomgruoplistCubit, UomgruoplistState>(
                listener: (context, state) {
                  print("state"+state.toString());
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (list) {
                        print("aaaaayyyiram"+list.data.toString());

                        result = list.data;
                        print("seee"+result.toString());
                        setState(() {
                          if(result.isNotEmpty){

                            veritiaclid=result[0].id;
                            // Variable.verticalid=result[0].id;
                            print("Variable.ak"+Variable.verticalid.toString());
                            context.read<UomgroupreadCubit>().getUomGroupRead(veritiaclid!);
                          }
                          else{
                            print("common");
                            // select=true;
                            setState(() {
                            });

                          }


                          setState(() {});

                        });
                      });
                },
                builder: (context, state) {
                  return Builder(builder: (context) {



                    return AlertDialog(
                      content: PopUpHeader(
                        buttonCheck: true,
                        functionChane: true,
                        isDirectCreate: true,
                        addNew: addNew,
                        onTap: () { addNew=!addNew;
                        setState(() {

                        });},
                        key: _myWidgetState,
                        // isDirectCreate:changer,

                        label: "Create UOM Group",
                        onApply: () {
                          print("save");

                          context.read<UomgroupCreationCubit>().postCreateUomGroup(descriptionContollercontroller.text??"",namecontroller.text??"",shortNamecontroller.text??"");


                          // widget.onTap();

                        },
                        onEdit: () {
                          // DevisionReadModel model=DevisionReadModel(
                          //   name: namecontroller?.text??"",
                          //   shortName: shortNamecontroller.text??'',
                          //
                          //
                          //   description: descriptionContollercontroller?.text??"",
                          //
                          //   isActive: active,
                          // );
                          // print("Rijina"+model.toString());
                          // context.read<DivisioncreateCubit>().postDivisionPatch(veritiaclid,model,"Uom_goup");
                        },
                        onCancel: (){
                          // context
                          //     .read<MaterialdeleteCubit>()
                          //     .materialDelete(veritiaclid,"Uom_group");

                        },

                        onAddNew: (v) {
                          print("Akshay"+v.toString());
                          changeAddNew(v);
                          setState(() {});

                          // setState(() {});
                        },
                        dataField: Expanded(
                          // height: MediaQuery.of(context).size.height * .6,
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [


                                Expanded(child: Column(
                                  children: [
                                    NewInputCard(
                                        readOnly: true,
                                        controller: codeController, title: "Code"),
                                    gapWidthColumn(),
                                    NewInputCard(
                                      controller:namecontroller ,
                                      title: "Name",
                                    ),
                                    gapWidthColumn(),
                                    NewInputCard(
                                      controller:shortNamecontroller ,
                                      title: "Short Name",
                                    ),
                                  ],
                                )),

                                Expanded(child:   Column(
                                  children: [
                                    NewInputCard(
                                      controller:descriptionContollercontroller,
                                      title: "Description",
                                    ),
                                    SizedBox(height: 10,),

                                    PopUpSwitchTile(
                                        value: active??false,
                                        title: "isActive",
                                        onClick: (gg) {
                                          onChange=true;

                                          setState(() {});
                                        }),





                                  ],
                                )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
                },
              ),
            );
          }
      ),
    );
  }
}

class UomGroupPopUp extends StatefulWidget {
  final String type;


     UomGroupPopUp({
    Key? key,
    required this.type,



  }) : super(key: key);

  @override
  _UomGroupPopUpState createState() => _UomGroupPopUpState();
}


//create uom group

class _UomGroupPopUpState extends State<UomGroupPopUp> {
  bool? active = false;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName="";
  String imageEncode="";
  int selectedVertical=0;
  DevisionReadModel? group;
  int? veritiaclid=0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName="";
  bool changer=false;
  bool buttonCheck=false;

  TextEditingController codeController=TextEditingController();
  TextEditingController namecontroller=TextEditingController();
  TextEditingController shortNamecontroller=TextEditingController();

  TextEditingController descriptionContollercontroller=TextEditingController();
  bool addNew = false;

  final GlobalKey< _CreateStaticPopUpState> _myWidgetState = GlobalKey< _CreateStaticPopUpState>();
  void changeAddNew(bool va) { addNew = va;
  onChange=false;
  }
  void initState() {
    context.read<UomgruoplistCubit>().getUomGroupist();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UomgroupreadCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialdeleteCubit(),
        ),
        BlocProvider(
          create: (context) => UomgroupCreationCubit(),
        ),
        BlocProvider(
          create: (context) => DivisioncreateCubit(),
        ),

      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [


                BlocListener<UomgroupreadCubit, UomgroupreadState>(
                  listener: (context, state) {
                    print("nnnnop"+state.toString());
                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          print("error");
                        },
                        success: (data) {
                          setState(() {

                            group=data;
                            codeController.text=data.code??"";
                            namecontroller.text=data.name??"";
                            shortNamecontroller.text=data.shortName??"";

                            descriptionContollercontroller.text=data.description??"";


                            active=data.isActive??false;

                          });
                        });



                  },
                ),
                BlocListener<DivisioncreateCubit, DivisioncreateState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loading");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      print(data.data1);

                      if (data.data1) {
                        context.showSnackBarSuccess(data.data2);


                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),
                BlocListener<UomgroupCreationCubit, UomgroupCreationState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loading");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      print(data.data1);

                      if (data.data1) {
                        context.showSnackBarSuccess(data.data2);
                        context.read<UomgruoplistCubit>().getUomGroupist();
                        setState(() {

                        });


                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
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
                        context.read<UomgruoplistCubit>().getUomGroupist();
                        setState(() {

                        });

                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),


              ],
              child: BlocConsumer<UomgruoplistCubit, UomgruoplistState>(
                listener: (context, state) {
                  print("state"+state.toString());
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (list) {
                        print("aaaaayyyiram"+list.data.toString());

                        result = list.data;
                        print("seee"+result.toString());
                        setState(() {
                          if(result.isNotEmpty){

                            veritiaclid=result[0].id;
                            // Variable.verticalid=result[0].id;
                            print("Variable.ak"+Variable.verticalid.toString());
                            context.read<UomgroupreadCubit>().getUomGroupRead(veritiaclid!);
                          }
                          else{
                            print("common");
                            // select=true;
                            setState(() {
                            });

                          }


                          setState(() {});

                        });
                      });
                },
                builder: (context, state) {
                  return Builder(builder: (context) {

                    // if (!onChange) {
                    //   print("onchange"+onChange.toString());
                    //   namecontroller = TextEditingController(text: addNew ? "" : group?.name);
                    //   codeController = TextEditingController(text: addNew ? "" : group?.id.toString());
                    //   descriptionContollercontroller = TextEditingController(text: addNew ? "" : group?.description);
                    //   shortNamecontroller = TextEditingController(text: addNew ? "" : group?.description);
                    //   //
                    //   active=addNew?true:group?.isActive;
                    // }
                    // onChange = false;
                    return AlertDialog(
                      content: PopUpHeader(
                        buttonCheck:true,
                        functionChane: true,
                       addNew: addNew,
                        onTap: () { addNew=!addNew;
                        setState(() {

                        });},
                        key: _myWidgetState,
                        // isDirectCreate:changer,

                        label: "Create UOM Group",
                        onApply: () {
                          print("save");

                          // context.read<UomgroupCreationCubit>().postCreateUomGroup(descriptionContollercontroller.text??"",namecontroller.text??"",shortNamecontroller.text??"");
                          // setState(() {

                          // });

                          // widget.onTap();

                        },
                        onEdit: () {
                          DevisionReadModel model=DevisionReadModel(
                            name: namecontroller?.text??"",
                            shortName: shortNamecontroller.text??'',


                            description: descriptionContollercontroller?.text??"",

                            isActive: active,
                          );
                          print("Rijina"+model.toString());
                          context.read<DivisioncreateCubit>().postDivisionPatch(veritiaclid,model,"Uom_goup");
                        },
                        onCancel: (){
                          context
                              .read<MaterialdeleteCubit>()
                              .materialDelete(veritiaclid,"Uom_group");

                        },

                        onAddNew: (v) {
                          // print("Akshay"+v.toString());
                          // changeAddNew(v);
                          // setState(() {});

                          // setState(() {});
                        },
                        dataField: Expanded(
                          // height: MediaQuery.of(context).size.height * .6,
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                UomGroupVerticalList(



                                  selectedVertical: selectedVertical,
                                  itemsearch: itemsearch,
                                  ontap: (int index){
                                  setState(() {
                                    selectedVertical=index;
                                    addNew=false;
                                    // select=false;
                                    // updateCheck=false;


                                    veritiaclid = result[index].id;
                                    changer=true;

                                    context.read<UomgroupreadCubit>().getUomGroupRead(veritiaclid!);




                                    setState(() {

                                    });
                                  });
                                },result: result,
                                ),

                                Expanded(child: Column(
                                  children: [
                                    NewInputCard(
                                        readOnly: true,
                                        controller: codeController, title: "Code"),
                                    gapWidthColumn(),
                                    NewInputCard(
                                      controller:namecontroller ,
                                      title: "Name",
                                    ),
                                    gapWidthColumn(),
                                    NewInputCard(
                                      controller:shortNamecontroller ,
                                      title: "Short Name",
                                    ),
                                  ],
                                )),

                                Expanded(child:   Column(
                                  children: [
                                    NewInputCard(
                                      controller:descriptionContollercontroller,
                                      title: "Description",
                                    ),
                                    SizedBox(height: 10,),

                                    PopUpSwitchTile(
                                        value: active??false,
                                        title: "isActive",
                                        onClick: (gg) {
                                          onChange=true;
                                          if(!addNew)
                                            active=!active!;

                                          // extendedWarranty = gg;
                                          // widget.changeExtendedWarranty(gg);
                                          // onChangeExtWarranty = gg;
                                          setState(() {});
                                        }),





                                  ],
                                )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
                },
              ),
            );
          }
      ),
    );
  }
}



//create baseuom


class UomCreatePopUp extends StatefulWidget {
  final String type;


  UomCreatePopUp({
    Key? key,
    required this.type,



  }) : super(key: key);

  @override
  _UomCreatePopUpState createState() => _UomCreatePopUpState();
}

class _UomCreatePopUpState extends State<UomCreatePopUp> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName="";
  String imageEncode="";
  int selectedVertical=0;
  BaseUomCreationtModel? group;
  int? veritiaclid=0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName="";
  bool changer=false;
  var list;

  TextEditingController codeController=TextEditingController();
  TextEditingController uomGroupController=TextEditingController();
  TextEditingController namecontroller=TextEditingController();
  TextEditingController shortNamecontroller=TextEditingController();
  TextEditingController standardCodecontroller=TextEditingController();
  TextEditingController conversionfactorcontroller=TextEditingController();
  TextEditingController baseEquivalentcontroller=TextEditingController();


  bool addNew = false;

  final GlobalKey< _CreateStaticPopUpState> _myWidgetState = GlobalKey< _CreateStaticPopUpState>();
  void changeAddNew(bool va) { addNew = va;
  onChange=false;
  }
  void initState() {
    // context.read<BaseuomlistCubit>().getUomist();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());
    return MultiBlocProvider(
      providers: [


        BlocProvider(
          create: (context) => BaseuomcreationCubit(),
        ),


      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [



                BlocListener<BaseuomcreationCubit, BaseuomcreationState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loading");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      print(data.data1);

                      if (data.data1) {
                        context.showSnackBarSuccess(data.data2);
                        Navigator.pop(context);



                      }
                      else {
                        context.showSnackBarError(data.data2);
                        Navigator.pop(context);
                      }
                      ;
                    });
                  },
                ),




              ],
              child: BlocConsumer<BaseuomlistCubit, BaseuomlistState>(
                listener: (context, state) {
                  print("state"+state.toString());
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (list) {
                        print("aaaaayyyiram"+list.data.toString());
                        list=list;

                        result = list.data;
                        print("seee"+result.toString());
                        setState(() {
                          if(result.isNotEmpty){

                            veritiaclid=result[0].id;
                            // Variable.verticalid=result[0].id;
                            print("Variable.ak"+Variable.verticalid.toString());
                            context.read<ReadbaseuomCubit>().getBaseUomRead(veritiaclid!);
                          }
                          else{
                            print("common");
                            // select=true;
                            setState(() {
                            });

                          }


                          setState(() {});

                        });
                      });
                },
                builder: (context, state) {
                  return Builder(builder: (context) {

                    return AlertDialog(
                      content: PopUpHeader(
                        buttonCheck: true,
                        isDirectCreate: true,
                        functionChane: true,
                        key: _myWidgetState,
                        onTap: () { addNew=!addNew;
                        setState(() {

                        });},
                        addNew: addNew,
                        // isDirectCreate:changer,

                        label: "Create UOM Group",
                        onApply: () {
                          print("save");
                          BaseUomCreationtModel model=BaseUomCreationtModel(
                            name: namecontroller?.text??"",
                            shortName: shortNamecontroller.text??'',
                            baseEquivalent: baseEquivalentcontroller.text??"",uomGroupCode: uomGroupController.text??"",standardCode: standardCodecontroller.text??"",
                            conversionFactor:int.tryParse(conversionfactorcontroller.text),

                          );
                          print("model"+model.toString());
                          context.read<BaseuomcreationCubit>().postCreateBaseUom(model);


                        },
                        onEdit: () {
                          // BaseUomCreationtModel model=BaseUomCreationtModel(
                          //     name: namecontroller?.text??"",
                          //     shortName: shortNamecontroller.text??'',
                          //     baseEquivalent: baseEquivalentcontroller.text??"",uomGroupCode: uomGroupController.text??"",
                          //     standardCode: standardCodecontroller.text??"",
                          //     conversionFactor:int.tryParse(conversionfactorcontroller.text),
                          //     isActive: active
                          //
                          // );
                          // print("model"+model.toString());
                          // context.read<BaseuomcreationCubit>().postUomPatch(veritiaclid,model);
                        },
                        onCancel: (){
                          // context
                          //     .read<MaterialdeleteCubit>()
                          //     .materialDelete(veritiaclid,"Uom");

                        },

                        onAddNew: (v) {
                          // print("Akshay"+v.toString());
                          // changeAddNew(v);
                          // setState(() {});
                          //
                          // setState(() {});
                        },
                        dataField: Expanded(
                          // height: MediaQuery.of(context).size.height * .6,
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [



                                Expanded(child: Column(
                                  children: [
                                    NewInputCard(
                                        readOnly: true,
                                        controller: codeController, title: " Uom Code"),
                                    SizedBox(height: 10,),
                                    SelectableDropDownpopUp(


                                      controller:uomGroupController,
                                      label: "Uom Group Code",
                                      type:"Uomgroup_PopUpCall",
                                      value: uomGroupController.text,
                                      onchange: (vale){
                                        // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                      },
                                      enable: true,
                                      onSelection: (BrandListModel? va) {
                                        setState(() {
                                          onChange=true;

                                          uomGroupController.text=va?.code??"";
                                          setState(() {

                                          });


                                          // onChange = true;
                                          // orderType.text = va!;
                                        });
                                      },
                                    ),
                                    SizedBox(height: 10,),



                                    NewInputCard(
                                      controller:namecontroller ,
                                      title: "Name",
                                    ),
                                    SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:shortNamecontroller ,
                                      title: "Short Name",
                                    ),
                                  ],
                                )),

                                Expanded(child:   Column(
                                  children: [
                                    NewInputCard(
                                      controller:standardCodecontroller,
                                      title: "Standard code",
                                    ),
                                    SizedBox(height: 10,),

                                    NewInputCard(
                                      keyboardType: "int",
                                      controller:conversionfactorcontroller,
                                      title: "Conversion Factor",
                                    ),
                                    SizedBox(height: 10,),
                                    NewInputCard(

                                      controller:baseEquivalentcontroller,
                                      title: "Base Equivalent",
                                    ),
                                    SizedBox(height: 10,),

                                    PopUpSwitchTile(
                                        value: active??false,
                                        title: "isActive",
                                        onClick: (gg) {
                                          onChange=true;
                                          if(!addNew)


                                          // extendedWarranty = gg;
                                          // widget.changeExtendedWarranty(gg);
                                          // onChangeExtWarranty = gg;
                                          setState(() {});
                                        }),





                                  ],
                                )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
                },
              ),
            );
          }
      ),
    );
  }
}

//patch base uom
class UomPopUp extends StatefulWidget {
  final String type;


  UomPopUp({
    Key? key,
    required this.type,



  }) : super(key: key);

  @override
  _UomPopUpState createState() => _UomPopUpState();
}

class _UomPopUpState extends State<UomPopUp> {
  bool? active = false;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName="";
  String imageEncode="";
  int selectedVertical=0;
  BaseUomCreationtModel? group;
  int? veritiaclid=0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName="";
  bool changer=false;
  var list;

  TextEditingController codeController=TextEditingController();
  TextEditingController uomGroupController=TextEditingController();
  TextEditingController namecontroller=TextEditingController();
  TextEditingController shortNamecontroller=TextEditingController();
  TextEditingController standardCodecontroller=TextEditingController();
  TextEditingController conversionfactorcontroller=TextEditingController();
  TextEditingController baseEquivalentcontroller=TextEditingController();


  bool addNew = false;

  final GlobalKey< _CreateStaticPopUpState> _myWidgetState = GlobalKey< _CreateStaticPopUpState>();
  void changeAddNew(bool va) { addNew = va;
  onChange=false;
  }
  void initState() {
    context.read<BaseuomlistCubit>().getUomist(type: "all");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ReadbaseuomCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialdeleteCubit(),
        ),
        BlocProvider(
          create: (context) => BaseuomcreationCubit(),
        ),


      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [


                BlocListener<ReadbaseuomCubit, ReadbaseuomState>(
                  listener: (context, state) {
                    print("nnnnop"+state.toString());
                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          print("error");
                        },
                        success: (data) {
                          setState(() {
                            group=data;
                            codeController.text=data.uomCode??"";
                            namecontroller.text=data.name??"";
                            uomGroupController.text=data.uomGroupCode??"";
                            shortNamecontroller.text=data.shortName??"";
                            conversionfactorcontroller.text=data.conversionFactor.toString()??"";
                            baseEquivalentcontroller.text=data.baseEquivalent.toString()??"";
                            standardCodecontroller.text=data.standardCode.toString()??"";
                            active=data.isActive??false;






                            active=data.isActive??false;

                          });
                        });



                  },
                ),
                BlocListener<BaseuomcreationCubit, BaseuomcreationState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loading");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      print(data.data1);

                      if (data.data1) {
                        context.showSnackBarSuccess(data.data2);
                        context.read<BaseuomlistCubit>().getUomist();


                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
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

                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),


              ],
              child: BlocConsumer<BaseuomlistCubit, BaseuomlistState>(
                listener: (context, state) {
                  print("state"+state.toString());
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (list) {
                        print("aaaaayyyiram"+list.data.toString());
                        list=list;

                        result = list.data;
                        print("seee"+result.toString());
                        setState(() {
                          if(result.isNotEmpty){

                            veritiaclid=result[0].id;
                            // Variable.verticalid=result[0].id;
                            print("Variable.ak"+Variable.verticalid.toString());
                            context.read<ReadbaseuomCubit>().getBaseUomRead(veritiaclid!);
                          }
                          else{
                            print("common");
                            // select=true;
                            setState(() {
                            });

                          }


                          setState(() {});

                        });
                      });
                },
                builder: (context, state) {
                  return Builder(builder: (context) {

                    return AlertDialog(
                      content: PopUpHeader(
                        functionChane: true,
                        buttonCheck: true,
                        key: _myWidgetState,
                        onTap: () { addNew=!addNew;
                        setState(() {

                        });},
                        addNew: addNew,
                        // isDirectCreate:changer,

                        label: "Create UOM Group",
                        onApply: () {
                          print("save");
                          BaseUomCreationtModel model=BaseUomCreationtModel(
                            name: namecontroller?.text??"",
                            shortName: shortNamecontroller.text??'',
                            baseEquivalent: baseEquivalentcontroller.text??"",uomGroupCode: uomGroupController.text??"",standardCode: standardCodecontroller.text??"",
                              conversionFactor:int.tryParse(conversionfactorcontroller.text),

                          );
                          print("model"+model.toString());
                          context.read<BaseuomcreationCubit>().postCreateBaseUom(model);


                        },
                        onEdit: () {
                          BaseUomCreationtModel model=BaseUomCreationtModel(
                            name: namecontroller?.text??"",
                            shortName: shortNamecontroller.text??'',
                            baseEquivalent: baseEquivalentcontroller.text??"",uomGroupCode: uomGroupController.text??"",
                            standardCode: standardCodecontroller.text??"",
                            conversionFactor:int.tryParse(conversionfactorcontroller.text),
                            isActive: active

                          );
                          print("model"+model.toString());
                          context.read<BaseuomcreationCubit>().postUomPatch(veritiaclid,model);
                        },
                        onCancel: (){
                          context
                              .read<MaterialdeleteCubit>()
                              .materialDelete(veritiaclid,"Uom");

                        },

                        onAddNew: (v) {
                          print("Akshay"+v.toString());
                          changeAddNew(v);
                          setState(() {});

                          setState(() {});
                        },
                        dataField: Expanded(
                          // height: MediaQuery.of(context).size.height * .6,
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                BaseUomVerticalList(
                                  list: list,



                                  selectedVertical: selectedVertical,
                                  itemsearch: itemsearch,ontap: (int index){
                                  setState(() {
                                    selectedVertical=index;
                                    addNew=false;
                                    // select=false;
                                    // updateCheck=false;


                                    veritiaclid = result[index].id;
                                    changer=true;

                                    context.read<ReadbaseuomCubit>().getBaseUomRead(veritiaclid!);




                                    setState(() {

                                    });
                                  });
                                },result: result,
                                ),

                                Expanded(child: Column(
                                  children: [
                                    NewInputCard(
                                        readOnly: true,
                                        controller: codeController, title: " Uom Code"),
                                    SizedBox(height: 10,),
                                    SelectableDropDownpopUp(


                                      controller:uomGroupController,
                                      label: "Uom Group Code",
                                      type:"Uomgroup_PopUpCall",
                                      value: uomGroupController.text,
                                      onchange: (vale){
                                        // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                      },
                                      enable: true,
                                      onSelection: (BrandListModel? va) {
                                        setState(() {
                                          onChange=true;

                                          uomGroupController.text=va?.code??"";
                                          setState(() {

                                          });


                                          // onChange = true;
                                          // orderType.text = va!;
                                        });
                                      },
                                    ),



                                    NewInputCard(
                                      controller:namecontroller ,
                                      title: "Name",
                                    ),
                                    SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:shortNamecontroller ,
                                      title: "Short Name",
                                    ),
                                  ],
                                )),

                                Expanded(child:   Column(
                                  children: [
                                    NewInputCard(
                                      controller:standardCodecontroller,
                                      title: "Standard code",
                                    ),
                                    SizedBox(height: 10,),

                                    NewInputCard(
                                      keyboardType: "int",
                                      controller:conversionfactorcontroller,
                                      title: "Conversion Factor",
                                    ),
                                    SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:baseEquivalentcontroller,
                                      title: "Base Equivalent",
                                    ),
                                    SizedBox(height: 10,),

                                    PopUpSwitchTile(
                                        value: active??false,
                                        title: "isActive",
                                        onClick: (gg) {
                                          onChange=true;
                                          if(!addNew)
                                            active=!active!;

                                          // extendedWarranty = gg;
                                          // widget.changeExtendedWarranty(gg);
                                          // onChangeExtWarranty = gg;
                                          setState(() {});
                                        }),





                                  ],
                                )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
                },
              ),
            );
          }
      ),
    );
  }
}


//patch category

class CategoryPopUp extends StatefulWidget {
  final String type;


  CategoryPopUp({
    Key? key,
    required this.type,



  }) : super(key: key);

  @override
  _CategoryPopUpState createState() => _CategoryPopUpState();
}

class _CategoryPopUpState extends State<CategoryPopUp> {
  bool? active = false;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName="";
  String imageEncode="";
  int selectedVertical=0;
  CategoryReadModel? group;
  int? veritiaclid=0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName="";
  bool changer=false;

  TextEditingController codeController=TextEditingController();
  TextEditingController namecontroller=TextEditingController();
  TextEditingController parentCodeController=TextEditingController();
  TextEditingController divisionCodeController=TextEditingController();
  TextEditingController imageCodeController=TextEditingController();
  TextEditingController alternativeController=TextEditingController();
  TextEditingController descriptionContollercontroller=TextEditingController();
  bool addNew = false;
  var list;


  final GlobalKey< _CreateStaticPopUpState> _myWidgetState = GlobalKey< _CreateStaticPopUpState>();
  void changeAddNew(bool va) { addNew = va;
  onChange=false;
  }
  void initState() {
    context.read<CategorylistCubit>().getCategoryist(type:"all");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CategoryreadCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialdeleteCubit(),
        ),
        BlocProvider(
          create: (context) => UomgroupCreationCubit(),
        ),
        BlocProvider(
          create: (context) => CreatecategoryCubit(),
        ),

      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [
                BlocListener<ImagepostCubit, ImagepostState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loadingggg");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      if (data.data1) {
                        print("dataAkshay"+data.data2.toString());
                        imageCodeController.text=data.data2.toString();

                        // context.showSnackBarSuccess(data.data2);

                      }
                      else {
                        // context.showSnackBarError(data.data2);
                        // print(data.data1.toString());
                      }
                      ;
                    });
                  },
                ),


                BlocListener<CategoryreadCubit,CategoryreadState>(
                  listener: (context, state) {
                    print("nnnnop"+state.toString());
                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          print("error");
                        },
                        success: (data) {
                          setState(() {
                            group=data;
                            codeController.text=data.code??"";
                            namecontroller.text=data.name??"";
                            parentCodeController.text=data.parentCode??'';
                            divisionCodeController.text=data.divisionCode??'';
                            imageCodeController.text=data.image??'';
                            alternativeController.text=data.alternativename??"";
                            // shortNamecontroller.text=data.shortName??"";

                            descriptionContollercontroller.text=data.description??"";


                            active=data.isActive??false;

                          });
                        });



                  },
                ),

                BlocListener<CreatecategoryCubit, CreatecategoryState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loading");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      print(data.data1);

                      if (data.data1) {
                        context.showSnackBarSuccess(data.data2);
                        context.read<CategorylistCubit>().getCategoryist(type: "all");
                        setState(() {

                        });


                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
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

                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),


              ],
              child: BlocConsumer<CategorylistCubit, CategorylistState>(
                listener: (context, state) {
                  print("state"+state.toString());
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (list) {
                        print("aaaaayyyiram"+list.data.toString());

                        result = list.data;
                        list=list;
                        print("seee"+result.toString());
                        setState(() {
                          if(result.isNotEmpty){

                            veritiaclid=result[0].id;
                            Variable.divisionId=result[0].id;

                            // Variable.verticalid=result[0].id;
                            print("Variable.ak"+Variable.verticalid.toString());
                            context.read<CategoryreadCubit>().getCategoryRead(veritiaclid!);
                          }
                          else{
                            print("common");
                            // select=true;
                            setState(() {
                            });

                          }


                          setState(() {});

                        });
                      });
                },
                builder: (context, state) {
                  return Builder(builder: (context) {


                    return AlertDialog(
                      content: PopUpHeader(

                        buttonCheck: true,
                        functionChane: true,
                        key: _myWidgetState,
                        onTap: () { addNew=!addNew;
                        setState(() {

                        });},
                        addNew: addNew,
                        // isDirectCreate:changer,

                        label: "Create category",
                        onApply: () {
                          print("save");

                          //
                          // CategoryCreationtModel model=CategoryCreationtModel(
                          //   description: descriptionContollercontroller?.text??"",
                          //   alternativeName: alternativeController?.text??"",
                          //   parentCode: parentCodeController?.text??"",
                          //   divisionCode: divisionCodeController?.text??"",
                          //   name: namecontroller?.text??'',
                          //   image:int.tryParse( imageCodeController.text)
                          // );
                          // context.read<CreatecategoryCubit>().postCreateCategory(model!);



                        },
                        onEdit: () {
                          CategoryCreationtModel model=CategoryCreationtModel(
                            name: namecontroller?.text??"",
                            alternativeName: alternativeController?.text??"",
                            parentCode: parentCodeController?.text??"",
                            divisionCode: divisionCodeController?.text??"",
                            code: codeController?.text??"",
                            image:int.tryParse( imageCodeController.text),
                            isActive:active,
                            description: descriptionContollercontroller?.text??"",

                          );
                          print("Rijina"+model.toString());
                          context.read<CreatecategoryCubit>().postcategoryPatch(veritiaclid,model);
                        },
                        onCancel: (){
                          context
                              .read<MaterialdeleteCubit>()
                              .materialDelete(veritiaclid,"Category_Popup");

                        },

                        onAddNew: (v) {
                          // print("Akshay"+v.toString());
                          // changeAddNew(v);
                          // setState(() {});
                          //
                          // setState(() {});
                        },
                        dataField: Expanded(
                          // height: MediaQuery.of(context).size.height * .6,
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                CategoryVerticalList(
                                  list: list,
                                  selectedVertical: selectedVertical,
                                  itemsearch: itemsearch,ontap: (int index){
                                  setState(() {
                                    selectedVertical=index;
                                    addNew=false;
                                    // select=false;
                                    // updateCheck=false;


                                    veritiaclid = result[index].id;
                                    changer=true;
                                    Variable.divisionId=result[index].id;
                                    //
                                    context.read<CategoryreadCubit>().getCategoryRead(veritiaclid!);




                                    setState(() {

                                    });
                                  });
                                },result: result,
                                ),

                                Expanded(child: Column(
                                  children: [
                                    NewInputCard(
                                        readOnly: true,
                                        controller: codeController, title: "Code"),
                                    gapWidthColumn(),
                                    NewInputCard(
                                      controller:namecontroller ,
                                      title: "Name",
                                    ),
                                    gapWidthColumn(),
                                    SelectableDropDownpopUp(
                                      apiType:"all",

                                      controller:parentCodeController,
                                      label: "Parent Code",
                                      type:"Category_PopUpCall",
                                      value:  parentCodeController.text,
                                      onchange: (vale){
                                        // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                      },
                                      enable: true,
                                      onSelection: (BrandListModel? va) {
                                        setState(() {
                                          onChange=true;
                                          parentCodeController.text=va?.code??"";
                                          setState(() {

                                          });


                                          // onChange = true;
                                          // orderType.text = va!;
                                        });
                                      },

                                    ),

                                    SizedBox(height: 10,),
                                    SelectableDropDownpopUp(
                                      controller:divisionCodeController,
                                      label: "Division code",
                                      type:"DivisionListPopUpCall",
                                      value:  divisionCodeController.text,
                                      onchange: (vale){
                                        // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                      },
                                      enable: true,
                                      onSelection: (BrandListModel? va) {
                                        setState(() {
                                          onChange=true;


                                          print(va?.id??"");
                                          // divisionid=va?.id;
                                          Variable.divisionId=va?.id;

                                          divisionCodeController.text=va?.code??"";
                                          setState(() {

                                          });


                                          // onChange = true;
                                          // orderType.text = va!;
                                        });
                                      },

                                    ),
                                  ],
                                )),

                                Expanded(child:   Column(
                                  children: [

                                    FileUploadField(

                                        fileName: imageName,
                                        fileUrl:imageName,
                                        onChangeTap: (p0) {
                                          onChange=true;
                                          // loading = true;
                                          setState(() {});
                                        },
                                        onChange: (myFile) {
                                          onChange=true;

                                          // Variable.mobileBannerImage = myFile.toUint8List();

                                          imageEncode =
                                              myFile.toBase64();
                                          // widget.fileMobileNameCtrl.text =
                                          //     myFile.fileName ?? "";
                                          // if (Variable.bannerimage!.length <= 240000)
                                          context
                                              .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode);
                                          // else
                                          //   context.showSnackBarError(
                                          //       "Please upload Banner of size Lesser than 230kb");
                                        },
                                        onImageChange: (newFile) async {
                                          onChange=true;
                                          // Variable.popUp = false;

                                          if (newFile.length <= 240000) {
                                            // loading
                                            //     ? showDailogPopUp(context, DialoguePopUp())
                                            //     : Navigator.pop(context);
                                            // context
                                            //     .read<CreateWebImageCubit>()
                                            //     .createMobImage();
                                          } else
                                            context.showSnackBarError(
                                                "Please upload Banner of size Lesser than 230kb");
                                          setState(() {});
                                        },
                                        onCreate: true,
                                        label: "Image"),
                                    SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:descriptionContollercontroller,
                                      title: "Description",
                                    ),
                                    SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:alternativeController,
                                      title: "Alternative Name",
                                    ),


                                    PopUpSwitchTile(
                                        value: active??false,
                                        title: "isActive",
                                        onClick: (gg) {
                                          onChange=true;
                                          if(!addNew)
                                            active=!active!;

                                          // extendedWarranty = gg;
                                          // widget.changeExtendedWarranty(gg);
                                          // onChangeExtWarranty = gg;
                                          setState(() {});
                                        }),





                                  ],
                                )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
                },
              ),
            );
          }
      ),
    );
  }
}



//create category
class CategoryCreatePopUp extends StatefulWidget {
  final String type;


  CategoryCreatePopUp({
    Key? key,
    required this.type,



  }) : super(key: key);

  @override
  _CategoryCreatePopUpState createState() => _CategoryCreatePopUpState();
}

class _CategoryCreatePopUpState extends State<CategoryCreatePopUp> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName="";
  String imageEncode="";
  int selectedVertical=0;
  CategoryReadModel? group;
  int? veritiaclid=0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName="";
  bool changer=false;

  TextEditingController codeController=TextEditingController();
  TextEditingController namecontroller=TextEditingController();
  TextEditingController parentCodeController=TextEditingController();
  TextEditingController divisionCodeController=TextEditingController();
  TextEditingController imageCodeController=TextEditingController();
  TextEditingController alternativeController=TextEditingController();
  TextEditingController descriptionContollercontroller=TextEditingController();
  bool addNew = false;
  var list;


  final GlobalKey< _CreateStaticPopUpState> _myWidgetState = GlobalKey< _CreateStaticPopUpState>();
  void changeAddNew(bool va) { addNew = va;
  onChange=false;
  }
  void initState() {
    // context.read<CategorylistCubit>().getCategoryist(type: "all");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());
    return MultiBlocProvider(
      providers: [


        BlocProvider(
          create: (context) => UomgroupCreationCubit(),
        ),
        BlocProvider(
          create: (context) => CreatecategoryCubit(),
        ),

      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [
                BlocListener<ImagepostCubit, ImagepostState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.

                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      if (data.data1) {
                        print("dataAkshay"+data.data2.toString());
                        imageCodeController.text=data.data2.toString();

                        // context.showSnackBarSuccess(data.data2);

                      }
                      else {
                        // context.showSnackBarError(data.data2);
                        // print(data.data1.toString());
                      }
                      ;
                    });
                  },
                ),




                BlocListener<CreatecategoryCubit, CreatecategoryState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loading");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      print(data.data1);

                      if (data.data1) {
                        context.showSnackBarSuccess(data.data2);
                        Navigator.pop(context);

                        setState(() {

                        });


                      }
                      else {
                        context.showSnackBarError(data.data2);
                        Navigator.pop(context);
                      }
                      ;
                    });
                  },
                ),



              ],
              child: BlocConsumer<CategorylistCubit, CategorylistState>(
                listener: (context, state) {
                  print("state"+state.toString());
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (list) {
                        print("aaaaayyyiram"+list.data.toString());

                        result = list.data;
                        list=list;
                        print("seee"+result.toString());
                        setState(() {
                          if(result.isNotEmpty){

                            veritiaclid=result[0].id;
                            Variable.divisionId=result[0].id;

                            // Variable.verticalid=result[0].id;
                            print("Variable.ak"+Variable.verticalid.toString());
                            context.read<CategoryreadCubit>().getCategoryRead(veritiaclid!);
                          }
                          else{
                            print("common");
                            // select=true;
                            setState(() {
                            });

                          }


                          setState(() {});

                        });
                      });
                },
                builder: (context, state) {
                  return Builder(builder: (context) {

                    // if (!onChange) {
                    //   print("onchange"+onChange.toString());
                    //   namecontroller = TextEditingController(text: addNew ? "" : group?.name);
                    //   codeController = TextEditingController(text: addNew ? "" : group?.id.toString());
                    //   descriptionContollercontroller = TextEditingController(text: addNew ? "" : group?.description);
                    //
                    //   parentCodeController = TextEditingController(text: addNew ? "" : group?.parentCode);
                    //   divisionCodeController = TextEditingController(text: addNew ? "" : group?.divisionCode);
                    //   imageCodeController = TextEditingController(text: addNew ? "" : group?.image);
                    //   alternativeController = TextEditingController(text: addNew ? "" : group?.alternativename);
                    //   active=addNew?true:group?.isActive;
                    // }
                    // onChange = false;
                    return AlertDialog(
                      content: PopUpHeader(
                        buttonCheck: true,
                        isDirectCreate: true,
                        functionChane: true,
                        key: _myWidgetState,
                        onTap: () { addNew=!addNew;
                        setState(() {

                        });},
                        addNew: addNew,
                        // isDirectCreate:changer,

                        label: "Create category",
                        onApply: () {
                          print("save");


                          CategoryCreationtModel model=CategoryCreationtModel(
                              description: descriptionContollercontroller?.text??"",
                              alternativeName: alternativeController?.text??"",
                              parentCode: parentCodeController?.text??"",
                              divisionCode: divisionCodeController?.text??"",
                              name: namecontroller?.text??'',
                              image:int.tryParse( imageCodeController.text)
                          );
                          context.read<CreatecategoryCubit>().postCreateCategory(model!);



                        },
                        onEdit: () {
                          // CategoryCreationtModel model=CategoryCreationtModel(
                          //   name: namecontroller?.text??"",
                          //   alternativeName: alternativeController?.text??"",
                          //   parentCode: parentCodeController?.text??"",
                          //   divisionCode: divisionCodeController?.text??"",
                          //   code: codeController?.text??"",
                          //   image:int.tryParse( imageCodeController.text),
                          //   isActive:active,
                          //   description: descriptionContollercontroller?.text??"",
                          //
                          // );
                          // print("Rijina"+model.toString());
                          // context.read<CreatecategoryCubit>().postcategoryPatch(veritiaclid,model);
                        },
                        onCancel: (){
                          // context
                          //     .read<MaterialdeleteCubit>()
                          //     .materialDelete(veritiaclid,"Category_Popup");

                        },

                        onAddNew: (v) {
                          // print("Akshay"+v.toString());
                          // changeAddNew(v);
                          // setState(() {});
                          //
                          // setState(() {});
                        },
                        dataField: Expanded(
                          // height: MediaQuery.of(context).size.height * .6,
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [



                                Expanded(child: Column(
                                  children: [
                                    NewInputCard(
                                        readOnly: true,
                                        controller: codeController, title: "Code"),
                                    SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:namecontroller ,
                                      title: "Name",
                                    ),
                                    SizedBox(height: 10,),
                                    SelectableDropDownpopUp(

                                      controller:parentCodeController,
                                      label: "Parent Code",
                                      type:"Category_PopUpCall",
                                      value:  parentCodeController.text,
                                      onchange: (vale){
                                        // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                      },
                                      enable: true,
                                      onSelection: (BrandListModel? va) {
                                        setState(() {
                                          onChange=true;
                                          parentCodeController.text=va?.code??"";
                                          setState(() {

                                          });


                                          // onChange = true;
                                          // orderType.text = va!;
                                        });
                                      },

                                    ),

                              SizedBox(height: 10,),
                                    SelectableDropDownpopUp(
                                      controller:divisionCodeController,
                                      label: "Division code",
                                      type:"DivisionListPopUpCall",
                                      value:  divisionCodeController.text,
                                      onchange: (vale){
                                        // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                      },
                                      enable: true,
                                      onSelection: (BrandListModel? va) {
                                        setState(() {
                                          onChange=true;


                                          print(va?.id??"");
                                          // divisionid=va?.id;
                                          Variable.divisionId=va?.id;

                                          divisionCodeController.text=va?.code??"";
                                          setState(() {

                                          });


                                          // onChange = true;
                                          // orderType.text = va!;
                                        });
                                      },

                                    ),
                                  ],
                                )),

                                Expanded(child:   Column(
                                  children: [

                                    FileUploadField(

                                        fileName: imageName,
                                        fileUrl:imageName,
                                        onChangeTap: (p0) {
                                          onChange=true;
                                          // loading = true;
                                          setState(() {});
                                        },
                                        onChange: (myFile) {
                                          onChange=true;

                                          // Variable.mobileBannerImage = myFile.toUint8List();

                                          imageEncode =
                                              myFile.toBase64();
                                          // widget.fileMobileNameCtrl.text =
                                          //     myFile.fileName ?? "";
                                          // if (Variable.bannerimage!.length <= 240000)
                                          context
                                              .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode);
                                          // else
                                          //   context.showSnackBarError(
                                          //       "Please upload Banner of size Lesser than 230kb");
                                        },
                                        onImageChange: (newFile) async {
                                          onChange=true;
                                          // Variable.popUp = false;

                                          if (newFile.length <= 240000) {
                                            // loading
                                            //     ? showDailogPopUp(context, DialoguePopUp())
                                            //     : Navigator.pop(context);
                                            // context
                                            //     .read<CreateWebImageCubit>()
                                            //     .createMobImage();
                                          } else
                                            context.showSnackBarError(
                                                "Please upload Banner of size Lesser than 230kb");
                                          setState(() {});
                                        },
                                        onCreate: true,
                                        label: "Image"),
                                    SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:descriptionContollercontroller,
                                      title: "Description",
                                    ),
                                    SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:alternativeController,
                                      title: "Alternative Name",
                                    ),
                                    SizedBox(height: 10,),


                                    PopUpSwitchTile(
                                        value: active??false,
                                        title: "isActive",
                                        onClick: (gg) {
                                          onChange=true;
                                          // if(!addNew)
                                          //   active=!active!;

                                          // extendedWarranty = gg;
                                          // widget.changeExtendedWarranty(gg);
                                          // onChangeExtWarranty = gg;
                                          setState(() {});
                                        }),





                                  ],
                                )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
                },
              ),
            );
          }
      ),
    );
  }
}





//create group

class GroupPopUp extends StatefulWidget {
  final String type;


  GroupPopUp({
    Key? key,
    required this.type,



  }) : super(key: key);

  @override
  _GroupPopUpState createState() => _GroupPopUpState();
}

class _GroupPopUpState extends State<GroupPopUp> {
  bool? active = true;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName="";
  String imageEncode="";
  int selectedVertical=0;
  MaterialReadModel? group;
  int? veritiaclid=0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName="";
  bool changer=false;


  TextEditingController codeController=TextEditingController();
  TextEditingController namecontroller=TextEditingController();
  TextEditingController imageCodeController=TextEditingController();
  TextEditingController categoryCodeController=TextEditingController();
  TextEditingController descriptionContollercontroller=TextEditingController();
  TextEditingController searchNameContollercontroller=TextEditingController();
  TextEditingController displayNameContollercontroller=TextEditingController();
  bool addNew = false;
  var list;


  final GlobalKey< _CreateStaticPopUpState> _myWidgetState = GlobalKey< _CreateStaticPopUpState>();
  void changeAddNew(bool va) { addNew = va;
  onChange=false;
  }
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());
    return MultiBlocProvider(
      providers: [



        BlocProvider(
          create: (context) => GroupcreationCubit(),
        ),

      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [
                BlocListener<ImagepostCubit, ImagepostState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.

                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      if (data.data1) {
                        print("dataAkshay"+data.data2.toString());
                        imageCodeController.text=data.data2.toString();

                        // context.showSnackBarSuccess(data.data2);

                      }
                      else {
                        // context.showSnackBarError(data.data2);
                        // print(data.data1.toString());
                      }
                      ;
                    });
                  },
                ),




                BlocListener<GroupcreationCubit, GroupcreationState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loading");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      print(data.data1);

                      if (data.data1) {
                        context.showSnackBarSuccess(data.data2);
                        context.read<GrouplistCubit>().getGroupListList();
                        setState(() {

                        });


                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),



              ],
              child: BlocConsumer<GrouplistCubit, GrouplistState>(
                listener: (context, state) {
                  print("state"+state.toString());
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (list) {
                        print("aaaaayyyiram"+list.data.toString());

                        result = list.data;
                        list=list;
                        print("seee"+result.toString());
                        setState(() {
                          if(result.isNotEmpty){

                            veritiaclid=result[0].id;
                            Variable.divisionId=result[0].id;

                            // Variable.verticalid=result[0].id;
                            print("Variable.ak"+Variable.verticalid.toString());
                            context.read<GroupreadCubit>().getGroupRead(veritiaclid!);
                          }
                          else{
                            print("common");
                            // select=true;
                            setState(() {
                            });

                          }


                          setState(() {});

                        });
                      });
                },
                builder: (context, state) {
                  return Builder(builder: (context) {


                    return AlertDialog(
                      content: PopUpHeader(
                        functionChane: true,
                        onTap: () { addNew=!addNew;
                        setState(() {

                        });},
                        addNew: addNew,
                        key: _myWidgetState,
                        isDirectCreate: true,
                        changer:changer,
                        buttonCheck: true,
                        // isDirectCreate:changer,

                        label: "Create Group",
                        onApply: () {
                          print("save");


                          MaterialCreationtModel model=MaterialCreationtModel(
                              name: namecontroller?.text??"",
                              searchNmae: searchNameContollercontroller?.text??"",
                              description: descriptionContollercontroller?.text??"",
                              image: int.tryParse(imageCodeController.text),
                              displayName: displayNameContollercontroller?.text??"",
                              categoryCode: categoryCodeController.text??""
                          );
                          context.read<GroupcreationCubit>().postCreateGroup(model!);



                        },
                        onEdit: () {

                        },
                        onCancel: (){
                          // context.read<MaterialdeleteCubit>().materialDelete(veritiaclid,"Group_popup");

                        },

                        onAddNew: (v) {
                          // print("Akshay"+v.toString());
                          // changeAddNew(v);
                          // setState(() {});
                          //
                          // setState(() {});
                        },
                        dataField: Expanded(
                          // height: MediaQuery.of(context).size.height * .6,
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [



                                Expanded(child: Column(
                                  children: [
                                    NewInputCard(
                                        readOnly: true,
                                        controller: codeController, title: "Code"),
                                    SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:namecontroller ,
                                      title: "Name",
                                    ),
                                    SizedBox(height: 10,),

                                    FileUploadField(

                                        fileName: imageName,
                                        fileUrl:imageName,
                                        onChangeTap: (p0) {
                                          onChange=true;
                                          // loading = true;
                                          setState(() {});
                                        },
                                        onChange: (myFile) {
                                          onChange=true;

                                          // Variable.mobileBannerImage = myFile.toUint8List();

                                          imageEncode =
                                              myFile.toBase64();
                                          // widget.fileMobileNameCtrl.text =
                                          //     myFile.fileName ?? "";
                                          // if (Variable.bannerimage!.length <= 240000)
                                          context
                                              .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode);
                                          // else
                                          //   context.showSnackBarError(
                                          //       "Please upload Banner of size Lesser than 230kb");
                                        },
                                        onImageChange: (newFile) async {
                                          onChange=true;
                                          // Variable.popUp = false;

                                          if (newFile.length <= 240000) {
                                            // loading
                                            //     ? showDailogPopUp(context, DialoguePopUp())
                                            //     : Navigator.pop(context);
                                            // context
                                            //     .read<CreateWebImageCubit>()
                                            //     .createMobImage();
                                          } else
                                            context.showSnackBarError(
                                                "Please upload Banner of size Lesser than 230kb");
                                          setState(() {});
                                        },
                                        onCreate: true,
                                        label: "Image"),
                                    SizedBox(height: 10,),
                                    SelectableDropDownpopUp(

                                      controller:categoryCodeController,
                                      label: "Category Code",
                                      type:"Category_PopUpCall",
                                      value:  categoryCodeController.text,
                                      onchange: (vale){
                                        // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                      },
                                      enable: true,
                                      onSelection: (BrandListModel? va) {

                                          // onChange=true;
                                          categoryCodeController.text=va?.code??"";
                                          setState(() {

                                          });



                                          // onChange = true;
                                          // orderType.text = va!;

                                      },

                                    ),


                                  ],
                                )),

                                Expanded(child:   Column(
                                  children: [


                                    SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:descriptionContollercontroller,
                                      title: "Description",
                                    ),
                                    SizedBox(height: 10,),

                                    NewInputCard(
                                      controller:searchNameContollercontroller,
                                      title: "Search Name",
                                    ),
                                    SizedBox(height: 10,),

                                    NewInputCard(
                                      controller:displayNameContollercontroller,
                                      title: "Display Name",
                                    ),
                                    SizedBox(height: 10,),


                                    PopUpSwitchTile(
                                        value: active??false,
                                        title: "isActive",
                                        onClick: (gg) {
                                          onChange=true;

                                        }),





                                  ],
                                )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
                },
              ),
            );
          }
      ),
    );
  }
}

class GroupPatchPopUp extends StatefulWidget {
  final String type;


  GroupPatchPopUp({
    Key? key,
    required this.type,



  }) : super(key: key);

  @override
  _GroupPatchPopUpState createState() => _GroupPatchPopUpState();
}

class _GroupPatchPopUpState extends State<GroupPatchPopUp> {
  bool? active = false;

  bool onChange = false;
  bool onChangeWarranty = false;
  bool onChangeExtWarranty = false;
  String imageName="";
  String imageEncode="";
  int selectedVertical=0;
  MaterialReadModel? group;
  int? veritiaclid=0;
  List<BrandListModel> result = [];
  TextEditingController itemsearch = TextEditingController();
  String parentName="";
  bool changer=false;


  TextEditingController codeController=TextEditingController();
  TextEditingController namecontroller=TextEditingController();
  TextEditingController imageCodeController=TextEditingController();
  TextEditingController categoryCodeController=TextEditingController();
  TextEditingController descriptionContollercontroller=TextEditingController();
  TextEditingController searchNameContollercontroller=TextEditingController();
  TextEditingController displayNameContollercontroller=TextEditingController();
  bool addNew = false;
  var list;


  final GlobalKey< _CreateStaticPopUpState> _myWidgetState = GlobalKey< _CreateStaticPopUpState>();
  void changeAddNew(bool va) { addNew = va;
  onChange=false;
  }
  void initState() {
    context.read<GrouplistCubit>().getGroupListList(type:"all");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    // descriptionController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].description == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].description);
    // durationController = TextEditingController(
    //     text: widget.warranty?[widget.indexValue!].duration == null
    //         ? ""
    //         : widget.warranty?[widget.indexValue!].duration.toString());
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GroupreadCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialdeleteCubit(),
        ),

        BlocProvider(
          create: (context) => GroupcreationCubit(),
        ),

      ],
      child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [
                BlocListener<ImagepostCubit, ImagepostState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loadingggg");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      if (data.data1) {
                        print("dataAkshay"+data.data2.toString());
                        imageCodeController.text=data.data2.toString();

                        // context.showSnackBarSuccess(data.data2);

                      }
                      else {
                        // context.showSnackBarError(data.data2);
                        // print(data.data1.toString());
                      }
                      ;
                    });
                  },
                ),


                BlocListener<GroupreadCubit,GroupreadState>(
                  listener: (context, state) {
                    print("nnnnop"+state.toString());
                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          print("error");
                        },
                        success: (data) {
                          setState(() {
                            group=data;
                            codeController.text=data.code??"";
                            namecontroller.text=data.name??"";
                            displayNameContollercontroller.text=data.displayName??"";
                            imageCodeController.text=data.image??'';
                            categoryCodeController.text=data.categoryCode??"";
                            // // shortNamecontroller.text=data.shortName??"";

                            descriptionContollercontroller.text=data.description??"";


                            active=data.isActive??false;

                          });
                        });



                  },
                ),

                BlocListener<GroupcreationCubit, GroupcreationState>(
                  listener: (context, state) {
                    print("postssssssss" + state.toString());
                    state.maybeWhen(orElse: () {
                      // context.
                      context.showSnackBarError("Loading");
                    }, error: () {
                      context.showSnackBarError(Variable.errorMessege);
                    }, success: (data) {
                      print(data.data1);

                      if (data.data1) {
                        context.showSnackBarSuccess(data.data2);
                        context.read<GrouplistCubit>().getGroupListList(type:"all");
                        setState(() {

                        });


                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
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

                      }
                      else {
                        context.showSnackBarError(data.data2);
                        print(data.data1);
                      }
                      ;
                    });
                  },
                ),


              ],
              child: BlocConsumer<GrouplistCubit, GrouplistState>(
                listener: (context, state) {
                  print("state"+state.toString());
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        print("error");
                      },
                      success: (list) {
                        print("aaaaayyyiram"+list.data.toString());

                        result = list.data;
                        list=list;
                        print("seee"+result.toString());
                        setState(() {
                          if(result.isNotEmpty){

                            veritiaclid=result[0].id;
                            Variable.divisionId=result[0].id;

                            // Variable.verticalid=result[0].id;
                            print("Variable.ak"+Variable.verticalid.toString());
                            context.read<GroupreadCubit>().getGroupRead(veritiaclid!);
                          }
                          else{
                            print("common");
                            // select=true;
                            setState(() {
                            });

                          }


                          setState(() {});

                        });
                      });
                },
                builder: (context, state) {
                  return Builder(builder: (context) {

                    return AlertDialog(
                      content: PopUpHeader(
                        functionChane: true,
                        onTap: () { addNew=!addNew;
                        setState(() {

                        });},
                        addNew: addNew,
                        buttonCheck: true,
                        key: _myWidgetState,
                        // isDirectCreate: changer,
                        changer:changer,
                        // isDirectCreate:changer,

                        label: "Create Group",
                        onApply: () {
                          print("save");





                        },
                        onEdit: () {
                          MaterialCreationtModel model=MaterialCreationtModel(
                            name: namecontroller?.text??"",
                            categoryCode: categoryCodeController?.text??"",
                            displayName: displayNameContollercontroller?.text??"",

                            searchNmae: searchNameContollercontroller?.text??"",
                            image:int.tryParse( imageCodeController.text),
                            isActive:active,
                            description: descriptionContollercontroller?.text??"",

                          );
                          print("Rijina"+model.toString());
                          context.read<GroupcreationCubit>().postGroupPatch(veritiaclid,model);
                        },
                        onCancel: (){
                          context.read<MaterialdeleteCubit>().materialDelete(veritiaclid,"Group_popup");

                        },

                        onAddNew: (v) {

                        },
                        dataField: Expanded(
                          // height: MediaQuery.of(context).size.height * .6,
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                GroupVerticalList(
                                  list: list,
                                  selectedVertical: selectedVertical,
                                  itemsearch: itemsearch,ontap: (int index){
                                  setState(() {
                                    selectedVertical=index;
                                    addNew=false;
                                    // select=false;
                                    // updateCheck=false;


                                    veritiaclid = result[index].id;
                                    setState(() {
                                      changer=false;
                                    });

                                    Variable.divisionId=result[index].id;
                                    //
                                    context.read<GroupreadCubit>().getGroupRead(veritiaclid!);




                                    setState(() {

                                    });
                                  });
                                },result: result,
                                ),

                                Expanded(child: Column(
                                  children: [
                                    NewInputCard(
                                        readOnly: true,
                                        controller: codeController, title: "Code"),
                                    SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:namecontroller ,
                                      title: "Name",
                                    ),
                                    SizedBox(height: 10,),
                                    FileUploadField(

                                        fileName: imageName,
                                        fileUrl:imageName,
                                        onChangeTap: (p0) {
                                          onChange=true;
                                          // loading = true;
                                          setState(() {});
                                        },
                                        onChange: (myFile) {
                                          onChange=true;

                                          // Variable.mobileBannerImage = myFile.toUint8List();

                                          imageEncode =
                                              myFile.toBase64();
                                          // widget.fileMobileNameCtrl.text =
                                          //     myFile.fileName ?? "";
                                          // if (Variable.bannerimage!.length <= 240000)
                                          context
                                              .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode);
                                          // else
                                          //   context.showSnackBarError(
                                          //       "Please upload Banner of size Lesser than 230kb");
                                        },
                                        onImageChange: (newFile) async {
                                          onChange=true;
                                          // Variable.popUp = false;

                                          if (newFile.length <= 240000) {
                                            // loading
                                            //     ? showDailogPopUp(context, DialoguePopUp())
                                            //     : Navigator.pop(context);
                                            // context
                                            //     .read<CreateWebImageCubit>()
                                            //     .createMobImage();
                                          } else
                                            context.showSnackBarError(
                                                "Please upload Banner of size Lesser than 230kb");
                                          setState(() {});
                                        },
                                        onCreate: true,
                                        label: "Image"),
                                    SizedBox(height: 10,),
                                    SelectableDropDownpopUp(

                                      controller:categoryCodeController,
                                      label: "Category Code",
                                      type:"Category_PopUpCall",
                                      value:  categoryCodeController.text,
                                      onchange: (vale){
                                        // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
                                      },
                                      enable: true,
                                      onSelection: (BrandListModel? va) {
                                        setState(() {
                                          onChange=true;
                                          categoryCodeController.text=va?.code??"";
                                          setState(() {

                                          });


                                          // onChange = true;
                                          // orderType.text = va!;
                                        });
                                      },

                                    ),


                                  ],
                                )),

                                Expanded(child:   Column(
                                  children: [


                                    SizedBox(height: 10,),
                                    NewInputCard(
                                      controller:descriptionContollercontroller,
                                      title: "Description",
                                    ),
                                    SizedBox(height: 10,),

                                    NewInputCard(
                                      controller:searchNameContollercontroller,
                                      title: "Search Name",
                                    ),
                                    SizedBox(height: 10,),

                                    NewInputCard(
                                      controller:displayNameContollercontroller,
                                      title: "Display Name",
                                    ),
                                    SizedBox(height: 10,),


                                    PopUpSwitchTile(
                                        value: active??false,
                                        title: "isActive",
                                        onClick: (gg) {
                                          onChange=true;
                                          if(!addNew)
                                            active=!active!;

                                          // extendedWarranty = gg;
                                          // widget.changeExtendedWarranty(gg);
                                          // onChangeExtWarranty = gg;
                                          setState(() {});
                                        }),





                                  ],
                                )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
                },
              ),
            );
          }
      ),
    );
  }
}




// class GroupPopUp extends StatefulWidget {
//   final String type;
//
//
//   GroupPopUp({
//     Key? key,
//     required this.type,
//
//
//
//   }) : super(key: key);
//
//   @override
//   _GroupPopUpState createState() => _GroupPopUpState();
// }
//
// class _GroupPopUpState extends State<GroupPopUp> {
//   bool? active = false;
//
//   bool onChange = false;
//   bool onChangeWarranty = false;
//   bool onChangeExtWarranty = false;
//   String imageName="";
//   String imageEncode="";
//   int selectedVertical=0;
//   MaterialReadModel? group;
//   int? veritiaclid=0;
//   List<BrandListModel> result = [];
//   TextEditingController itemsearch = TextEditingController();
//   String parentName="";
//   bool changer=false;
//
//
//   TextEditingController codeController=TextEditingController();
//   TextEditingController namecontroller=TextEditingController();
//   TextEditingController imageCodeController=TextEditingController();
//   TextEditingController categoryCodeController=TextEditingController();
//   TextEditingController descriptionContollercontroller=TextEditingController();
//   TextEditingController searchNameContollercontroller=TextEditingController();
//   TextEditingController displayNameContollercontroller=TextEditingController();
//   bool addNew = false;
//   var list;
//
//
//   final GlobalKey< _CreateStaticPopUpState> _myWidgetState = GlobalKey< _CreateStaticPopUpState>();
//   void changeAddNew(bool va) { addNew = va;
//   onChange=false;
//   }
//   void initState() {
//     context.read<GrouplistCubit>().getGroupListList();
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
//           create: (context) => GroupreadCubit(),
//         ),
//         BlocProvider(
//           create: (context) => MaterialdeleteCubit(),
//         ),
//
//         BlocProvider(
//           create: (context) => GroupcreationCubit(),
//         ),
//
//       ],
//       child: Builder(
//           builder: (context) {
//             return MultiBlocListener(
//               listeners: [
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
//                         imageCodeController.text=data.data2.toString();
//
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
//
//                 BlocListener<GroupreadCubit,GroupreadState>(
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
//                             codeController.text=data.code??"";
//                             namecontroller.text=data.name??"";
//                             displayNameContollercontroller.text=data.displayName??"";
//                             imageCodeController.text=data.image??'';
//                             categoryCodeController.text=data.categoryCode??"";
//                             // // shortNamecontroller.text=data.shortName??"";
//
//                             descriptionContollercontroller.text=data.description??"";
//
//
//                             active=data.isActive??false;
//
//                           });
//                         });
//
//
//
//                   },
//                 ),
//
//                 BlocListener<GroupcreationCubit, GroupcreationState>(
//                   listener: (context, state) {
//                     print("postssssssss" + state.toString());
//                     state.maybeWhen(orElse: () {
//                       // context.
//                       context.showSnackBarError("Loading");
//                     }, error: () {
//                       context.showSnackBarError(Variable.errorMessege);
//                     }, success: (data) {
//                       print(data.data1);
//
//                       if (data.data1) {
//                         context.showSnackBarSuccess(data.data2);
//                         context.read<GrouplistCubit>().getGroupListList();
//                         setState(() {
//
//                         });
//
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
//                 BlocListener<MaterialdeleteCubit, MaterialdeleteState>(
//                   listener: (context, state) {
//                     print("delete" + state.toString());
//                     state.maybeWhen(orElse: () {
//                       // context.
//                       context.showSnackBarError("Loading");
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
//
//
//               ],
//               child: BlocConsumer<GrouplistCubit, GrouplistState>(
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
//                         list=list;
//                         print("seee"+result.toString());
//                         setState(() {
//                           if(result.isNotEmpty){
//
//                             veritiaclid=result[0].id;
//                             Variable.divisionId=result[0].id;
//
//                             // Variable.verticalid=result[0].id;
//                             print("Variable.ak"+Variable.verticalid.toString());
//                             context.read<GroupreadCubit>().getGroupRead(veritiaclid!);
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
//                       print("onchange"+onChange.toString());
//                       namecontroller = TextEditingController(text: addNew ? "" : group?.name);
//                       codeController = TextEditingController(text: addNew ? "" : group?.id.toString());
//                       displayNameContollercontroller = TextEditingController(text: addNew ? "" : group?.displayName.toString());
//                       categoryCodeController = TextEditingController(text: addNew ? "" : group?.categoryCode.toString());
//                       descriptionContollercontroller = TextEditingController(text: addNew ? "" : group?.description);
//                       imageCodeController = TextEditingController(text: addNew ? "" : group?.image);
//
//                       active=addNew?true:group?.isActive;
//                     }
//                     onChange = false;
//                     return AlertDialog(
//                       content: PopUpHeader(
//                         functionChane: true,
//                         onTap: () { addNew=!addNew;
//                         setState(() {
//
//                         });},
//                         addNew: addNew,
//                         key: _myWidgetState,
//                         // isDirectCreate: changer,
//                         changer:changer,
//                         // isDirectCreate:changer,
//
//                         label: "Create Group",
//                         onApply: () {
//                           print("save");
//
//
//                           MaterialCreationtModel model=MaterialCreationtModel(
//                             name: namecontroller?.text??"",
//                             searchNmae: searchNameContollercontroller?.text??"",
//                             description: descriptionContollercontroller?.text??"",
//                             image: int.tryParse(imageCodeController.text),
//                             displayName: displayNameContollercontroller?.text??"",
//                             categoryCode: categoryCodeController.text??""
//                           );
//                           context.read<GroupcreationCubit>().postCreateGroup(model!);
//
//
//
//                         },
//                         onEdit: () {
//                           MaterialCreationtModel model=MaterialCreationtModel(
//                             name: namecontroller?.text??"",
//                             categoryCode: categoryCodeController?.text??"",
//                             displayName: displayNameContollercontroller?.text??"",
//
//                             searchNmae: searchNameContollercontroller?.text??"",
//                             image:int.tryParse( imageCodeController.text),
//                             isActive:active,
//                             description: descriptionContollercontroller?.text??"",
//
//                           );
//                           print("Rijina"+model.toString());
//                           context.read<GroupcreationCubit>().postGroupPatch(veritiaclid,model);
//                         },
//                         onCancel: (){
//                           context.read<MaterialdeleteCubit>().materialDelete(veritiaclid,"Group_popup");
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
//
//                                 GroupVerticalList(
//                                   list: list,
//                                   selectedVertical: selectedVertical,
//                                   itemsearch: itemsearch,ontap: (int index){
//                                   setState(() {
//                                     selectedVertical=index;
//                                     addNew=false;
//                                     // select=false;
//                                     // updateCheck=false;
//
//
//                                     veritiaclid = result[index].id;
//                                     setState(() {
//                                       changer=false;
//                                     });
//
//                                     Variable.divisionId=result[index].id;
//                                     //
//                                     context.read<GroupreadCubit>().getGroupRead(veritiaclid!);
//
//
//
//
//                                     setState(() {
//
//                                     });
//                                   });
//                                 },result: result,
//                                 ),
//
//                                 Expanded(child: Column(
//                                   children: [
//                                     NewInputCard(
//                                         readOnly: true,
//                                         controller: codeController, title: "Code"),
//                                     SizedBox(height: 10,),
//                                     NewInputCard(
//                                       controller:namecontroller ,
//                                       title: "Name",
//                                     ),
//                                     SizedBox(height: 10,),
//                                     FileUploadField(
//
//                                         fileName: imageName,
//                                         fileUrl:imageName,
//                                         onChangeTap: (p0) {
//                                           onChange=true;
//                                           // loading = true;
//                                           setState(() {});
//                                         },
//                                         onChange: (myFile) {
//                                           onChange=true;
//
//                                           // Variable.mobileBannerImage = myFile.toUint8List();
//
//                                           imageEncode =
//                                               myFile.toBase64();
//                                           // widget.fileMobileNameCtrl.text =
//                                           //     myFile.fileName ?? "";
//                                           // if (Variable.bannerimage!.length <= 240000)
//                                           context
//                                               .read<ImagepostCubit>().postImage(Variable.imageName,  imageEncode);
//                                           // else
//                                           //   context.showSnackBarError(
//                                           //       "Please upload Banner of size Lesser than 230kb");
//                                         },
//                                         onImageChange: (newFile) async {
//                                           onChange=true;
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
//                                     SizedBox(height: 10,),
//                                     SelectableDropDownpopUp(
//
//                                       controller:categoryCodeController,
//                                       label: "Category Code",
//                                       type:"Category_PopUpCall",
//                                       value:  categoryCodeController.text,
//                                       onchange: (vale){
//                                         // context.read<Listbrand2Cubit>().searchSlotSectionPageList(vale);
//                                       },
//                                       enable: true,
//                                       onSelection: (BrandListModel? va) {
//                                         setState(() {
//                                           onChange=true;
//                                           categoryCodeController.text=va?.code??"";
//                                           setState(() {
//
//                                           });
//
//
//                                           // onChange = true;
//                                           // orderType.text = va!;
//                                         });
//                                       },
//
//                                     ),
//
//
//                                   ],
//                                 )),
//
//                                 Expanded(child:   Column(
//                                   children: [
//
//
//                                     SizedBox(height: 10,),
//                                     NewInputCard(
//                                       controller:descriptionContollercontroller,
//                                       title: "Description",
//                                     ),
//                                     SizedBox(height: 10,),
//
//                                     NewInputCard(
//                                       controller:searchNameContollercontroller,
//                                       title: "Search Name",
//                                     ),
//                                     SizedBox(height: 10,),
//
//                                     NewInputCard(
//                                       controller:displayNameContollercontroller,
//                                       title: "Display Name",
//                                     ),
//                                     SizedBox(height: 10,),
//
//
//                                     PopUpSwitchTile(
//                                         value: active??false,
//                                         title: "isActive",
//                                         onClick: (gg) {
//                                           onChange=true;
//                                           if(!addNew)
//                                             active=!active!;
//
//                                           // extendedWarranty = gg;
//                                           // widget.changeExtendedWarranty(gg);
//                                           // onChangeExtWarranty = gg;
//                                           setState(() {});
//                                         }),
//
//
//
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




//Uom



//Uom

//uom group

//ignore: must_be_immutable
// class UOMConfigurePopUp extends StatefulWidget {
//   final String type;
//   UOMConfigurePopUp({Key? key, required this.type}) : super(key: key);
//
//   @override
//   State<UOMConfigurePopUp> createState() => _UOMConfigurePopUpState();
// }
//
// class _UOMConfigurePopUpState extends State<UOMConfigurePopUp> {
//   TextEditingController nameContrlr = TextEditingController();
//
//   TextEditingController codeContrlr = TextEditingController();
//
//   TextEditingController idContrlr = TextEditingController();
//
//   TextEditingController convContrlr = TextEditingController();
//
//   TextEditingController stdContrlr = TextEditingController();
//
//   TextEditingController baseContrlr = TextEditingController();
//   TextEditingController shortContrlr = TextEditingController();
//   TextEditingController uomGroupContrlr = TextEditingController();
//
//   bool isActive = true;
//   bool addNew = false;
//   void changeAddNew(bool va) => addNew = va;
//   int? groupId;
//   int? first;
//   int selectedIndex = 0;
//   String? groupName;
//   bool onChange = false;
//
//   UOM? group;
//   @override
//   void initState() {
//     Variable.bannerimage = null;
//     Variable.divisionValue = 0;
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => FDI.i<CreateUomCubit>(),
//         ),
//         BlocProvider(
//           create: (context) => FDI.i<GetUomListCubit>()..getUOMList(),
//         ),
//         BlocProvider(
//           create: (context) => FDI.i<ManageUomCubit>(),
//         ),
//       ],
//       child: MultiBlocListener(
//           listeners: [
//             BlocListener<GetUomListCubit, GetUomListState>(
//               listener: (context, state) {
//                 state.maybeWhen(
//                     orElse: () {},
//                     success: (data) {
//                       if (data.data1.isNotEmpty) first = data.data1?.first.id;
//                     });
//               },
//             ),
//             BlocListener<CreateUomCubit, CreateUomState>(
//                 listener: (context, state) {
//                   state.maybeWhen(
//                       orElse: () {},
//                       success: (data) {
//                         if (data.data1) {
//                           context.showToast(data.data2);
//
//                           Navigator.pop(context);
//                           setState(() {});
//                         } else {
//                           context.showToastError(data.data2);
//                         }
//                       },
//                       error: () {
//                         context.showToastError("Error try again");
//                       });
//                 })
//           ],
//           child: StatefulBuilder(builder: (context, setState) {
//             //  print("on rebuild");
//             if (!onChange) {
//               nameContrlr =
//                   TextEditingController(text: addNew ? "" : group?.name);
//               idContrlr = TextEditingController(
//                   text: addNew ? "" : group?.id.toString());
//               codeContrlr =
//                   TextEditingController(text: addNew ? "" : group?.code);
//               baseContrlr = TextEditingController(
//                   text: addNew ? "" : group?.baseEquivalent);
//               stdContrlr = TextEditingController(
//                   text: addNew ? "" : group?.standardCode);
//               convContrlr = TextEditingController(
//                   text: addNew ? "" : group?.conversionFactor.toString());
//               uomGroupContrlr = TextEditingController(
//                   text: addNew ? "" : group?.uomgroup_code);
//             }
//             onChange = false;
//             if (first != null && group == null) {
//               selectedIndex = first!;
//               context.read<ManageUomCubit>()..getUOM(first.toString());
//             }
//
//             return AlertDialog(
//               content: PopUpHeader(
//                 onApply: () {
//                   context.read<CreateUomCubit>().createUOM(UOM(
//                     name: nameContrlr.text,
//                     standardCode: stdContrlr.text,
//                     conversionFactor: int.tryParse(convContrlr.text),
//                     image: null,
//                     isActive: true,
//                     shortName: shortContrlr.text,
//                     baseEquivalent: baseContrlr.text,
//                     uomgroup_code: uomGroupContrlr.text,
//                   ));
//                 },
//                 onEdit: first == null
//                     ? null
//                     : () {
//                   context.read<ManageUomCubit>().updateUOM(
//                       selectedIndex.toString(),
//                       UOM(
//                         name: nameContrlr.text,
//                         conversionFactor: int.tryParse(convContrlr.text),
//                         image: null,
//                         isActive: true,
//                         shortName: shortContrlr.text,
//                         baseEquivalent: baseContrlr.text,
//                         uomgroup_code: uomGroupContrlr.text,
//                         id: int.tryParse(idContrlr.text),
//                         code: codeContrlr.text,
//                       ));
//                 },
//                 onAddNew: (v) {
//                   changeAddNew(v);
//                   setState(() {});
//                 },
//                 label: "UOM List ",
//                 dataField: Expanded(
//                   child: IntrinsicHeight(
//                     child: Padding(
//                       padding: const EdgeInsets.only(top: 16.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           ConfigureVerticalList(
//                             type: widget.type,
//                             refresh: () {
//                               // print("on refresh");
//                               setState(() {});
//                             },
//                             onClick: (UOM v) {
//                               group = v;
//                               if (group?.id != selectedIndex) {
//                                 selectedIndex = group!.id!;
//
//                                 context.read<ManageUomCubit>()
//                                   ..getUOM(selectedIndex.toString());
//                               }
//
//                               // print(v);
//                             },
//                           ),
//                           gapWidthColumn(),
//                           IntrinsicWidth(
//                             child: SingleChildScrollView(
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   PopUpSelectableDropDown(
//                                     label: "UOM Group",
//                                     onSelection: (UOMGroup va) {
//                                       //  print(va);
//                                       uomGroupContrlr.text = va.code!;
//                                       onChange = true;
//                                       Variable.uomGroupValue = va.id!;
//                                       context.read<GetUomListCubit>()
//                                         ..getUOMList();
//
//                                       //  setState((){});
//                                     },
//                                     type: "configure-uom-group",
//                                     value: "${Variable.uomGroupValue}",
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpInputField(
//                                     label: "UOM Group code",
//                                     controller: uomGroupContrlr,
//                                     restricted: true,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpInputField(
//                                     label: "ID",
//                                     controller: idContrlr,
//                                     restricted: true,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpInputField(
//                                     label: "Code",
//                                     controller: codeContrlr,
//                                     restricted: true,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpInputField(
//                                     label: "Name",
//                                     controller: nameContrlr,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpInputField(
//                                     label: "Short Name",
//                                     controller: shortContrlr,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpInputField(
//                                     label: "Standart Code",
//                                     controller: stdContrlr,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpInputField(
//                                     label: "Conversion factor",
//                                     controller: convContrlr,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           })),
//     );
//   }
// }
//
// //Static group
//
// //ignore: must_be_immutable
// class StaticGroupConfigurePopUp extends StatefulWidget {
//   final String type;
//   StaticGroupConfigurePopUp({Key? key, required this.type}) : super(key: key);
//
//   @override
//   State<StaticGroupConfigurePopUp> createState() =>
//       _StaticGroupConfigurePopUpState();
// }
//
// class _StaticGroupConfigurePopUpState extends State<StaticGroupConfigurePopUp> {
//   TextEditingController nameContrlr = TextEditingController();
//
//   TextEditingController codeContrlr = TextEditingController();
//
//   TextEditingController idContrlr = TextEditingController();
//
//   TextEditingController descContrlr = TextEditingController();
//
//   TextEditingController displayContrlr = TextEditingController();
//
//   TextEditingController alterContrlr = TextEditingController();
//   TextEditingController imageContrlr = TextEditingController();
//   TextEditingController searchContrlr = TextEditingController();
//
//   bool isActive = true;
//   bool addNew = false;
//   void changeAddNew(bool va) => addNew = va;
//   int? groupId;
//   int? first;
//   int selectedIndex = 0;
//   String? groupName;
//   bool onChange = false;
//
//   StaticGroup? group;
//   @override
//   void initState() {
//     Variable.bannerimage = null;
//     Variable.divisionValue = 0;
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => FDI.i<CreateStaticGroupCubit>(),
//         ),
//         BlocProvider(
//           create: (context) =>
//           FDI.i<GetStaticGroupListCubit>()..getStaticGroupList(),
//         ),
//         BlocProvider(
//           create: (context) => FDI.i<ManageStaticGroupCubit>(),
//         ),
//       ],
//       child: MultiBlocListener(
//           listeners: [
//             BlocListener<GetStaticGroupListCubit, GetStaticGroupListState>(
//               listener: (context, state) {
//                 state.maybeWhen(
//                     orElse: () {},
//                     success: (data) {
//                       if (data.data1.isNotEmpty) first = data.data1?.first.id;
//                     });
//               },
//             ),
//             BlocListener<CreateStaticGroupCubit, CreateStaticGroupState>(
//                 listener: (context, state) {
//                   state.maybeWhen(
//                       orElse: () {},
//                       success: (data) {
//                         if (data.data1) {
//                           context.showToast(data.data2);
//                           // onSuccess();
//                           Navigator.pop(context);
//                           setState(() {});
//                         } else {
//                           context.showToastError(data.data2);
//                         }
//                       },
//                       error: () {
//                         context.showToastError("Error try again");
//                       });
//                 })
//           ],
//           child: StatefulBuilder(builder: (context, setState) {
//             if (!onChange) {
//               nameContrlr =
//                   TextEditingController(text: addNew ? "" : group?.name);
//               idContrlr = TextEditingController(
//                   text: addNew ? "" : group?.id.toString());
//               codeContrlr =
//                   TextEditingController(text: addNew ? "" : group?.code);
//               descContrlr =
//                   TextEditingController(text: addNew ? "" : group?.description);
//               // alterContrlr=TextEditingController(text:addNew?"": group?.displayName);
//               searchContrlr =
//                   TextEditingController(text: addNew ? "" : group?.searchName);
//             }
//             onChange = false;
//             if (first != null && group == null) {
//               selectedIndex = first!;
//               context.read<ManageStaticGroupCubit>()
//                 ..getStaticGroup(first.toString());
//             }
//
//             return AlertDialog(
//               content: PopUpHeader(
//                 onApply: () {
//                   context.read<CreateStaticGroupCubit>().createStaticGroup(
//                       StaticGroup(
//                           name: nameContrlr.text,
//                           description: descContrlr.text,
//                           image: imageContrlr.text,
//                           isActive: true,
//                           searchName: searchContrlr.text));
//                 },
//                 onEdit: first == null
//                     ? null
//                     : () {
//                   context
//                       .read<ManageStaticGroupCubit>()
//                       .updateStaticGroup(
//                       selectedIndex.toString(),
//                       StaticGroup(
//                         name: nameContrlr.text,
//                         description: descContrlr.text,
//                         id: int.tryParse(idContrlr.text),
//                         code: codeContrlr.text,
//                         image: imageContrlr.text,
//                         searchName: searchContrlr.text,
//                         isActive: true,
//                       ));
//                 },
//                 onAddNew: (v) {
//                   changeAddNew(v);
//                   setState(() {});
//                 },
//                 label: "StaticGroup List ",
//                 dataField: Expanded(
//                   child: IntrinsicHeight(
//                     child: Padding(
//                       padding: const EdgeInsets.only(top: 16.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           ConfigureVerticalList(
//                             type: widget.type,
//                             refresh: () {
//                               // print("on refresh");
//                               setState(() {});
//                             },
//                             onClick: (StaticGroup v) {
//                               group = v;
//                               if (group?.id != selectedIndex) {
//                                 selectedIndex = group!.id!;
//
//                                 context.read<ManageStaticGroupCubit>()
//                                   ..getStaticGroup(selectedIndex.toString());
//                               }
//
//                               // print(v);
//                             },
//                           ),
//                           gapWidthColumn(),
//                           IntrinsicWidth(
//                             child: SingleChildScrollView(
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   PopUpInputField(
//                                     label: "ID",
//                                     controller: idContrlr,
//                                     restricted: true,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpInputField(
//                                     label: "Code",
//                                     controller: codeContrlr,
//                                     restricted: true,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpInputField(
//                                     label: "Name",
//                                     controller: nameContrlr,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpInputField(
//                                     label: "Description",
//                                     controller: descContrlr,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpInputField(
//                                     label: "Search Name",
//                                     controller: searchContrlr,
//                                     required: true,
//                                     enable: true,
//                                   ),
//                                   PopUpFileUploadField(
//                                       onCancel: () {
//                                         imageContrlr.text = "";
//                                       },
//                                       fileName: imageContrlr.text,
//                                       fileUrl: group?.image,
//                                       onChange: (myFile) {
//                                         Variable.brandImage =
//                                             myFile.toUint8List();
//                                         imageContrlr.text =
//                                             myFile.fileName ?? "";
//                                       },
//                                       label: "image")
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           })),
//     );
//   }
// }
//
// class SpecialOfferPopUpButton extends StatefulWidget {
//   final String? type;
//   final bool onAddNew;
//   SpecialOfferPopUpButton({Key? key, required this.onSuccess, this.type,this.onAddNew=false})
//       : super(key: key);
//   final VoidCallback onSuccess;
//
//   @override
//   State<SpecialOfferPopUpButton> createState() =>
//       _SpecialOfferPopUpButtonState();
// }
//
// class _SpecialOfferPopUpButtonState extends State<SpecialOfferPopUpButton> {
//   TextEditingController descriptionCtrlr = TextEditingController();
//
//   TextEditingController titleContrlr = TextEditingController();
//
//   // final TextEditingController quantityContrlr = TextEditingController();
//
//   TextEditingController notesController = TextEditingController();
//   TextEditingController fromContrlr = TextEditingController();
//
//   TextEditingController toController = TextEditingController();
//   TextEditingController fromDateContrlr = TextEditingController();
//
//   TextEditingController toDateController = TextEditingController();
//   ReadOfferPeriod? readOffer;
//   bool isActive = true;
//   String? fromDate;
//   String? toDate;
//   String? fromTime;
//   bool onChang=false;
//   String? toTime;
//   int id = 0;
//   void changeId(int val) {
//     id = val;
//     // setState(() {});
//     print("new id is $id");
//   }
//   bool addNew = false;
//
//   void changeAddNew(bool va) => addNew = va;
//
//   @override
//   Widget build(BuildContext context) {
//     print("+++Akkkk"+widget.onAddNew.toString());
//     if(addNew==true && onChang==false){
//       print("eeeee+++++");
//
//
//
//
//
//       titleContrlr.text="";
//       descriptionCtrlr.text="";
//       notesController.text="";
//       fromContrlr.text="";
//       toController.text="";
//       fromDateContrlr.text="";
//       toDateController.text="";
//       setState(() {
//
//       });
//
//
//
//
//
//
//     }
//     fromDate = readOffer?.fromDate ?? "";
//     print("date is$fromDate");
//     titleContrlr = TextEditingController(text:addNew? "":  readOffer?.title);
//     descriptionCtrlr = TextEditingController(text:addNew ?"": readOffer?.description);
//     notesController = TextEditingController(text:addNew ? "":  readOffer?.notes);
//     fromContrlr = TextEditingController(text:addNew? "":  readOffer?.fromTime);
//     toController = TextEditingController(text: addNew ? "": readOffer?.toTime);
//     fromDateContrlr = TextEditingController(text: readOffer?.fromDate);
//     toDateController = TextEditingController(text:addNew ? "": readOffer?.toDate);
//     print("from date from backend${fromDateContrlr.text}");
//     return BlocProvider(
//       create: (context) => FDI.i<ListofferperiodcubitCubit>(),
//       child: BlocProvider(
//         create: (context) => FDI.i<EditofferperiodcubitCubit>(),
//         child: BlocProvider(
//           create: (context) => FDI.i<ReadofferperiodcubitCubit>(),
//           child: BlocProvider(
//             create: (context) => FDI.i<CreateofferperiodcubitCubit>(),
//             child: MultiBlocListener(
//               listeners: [
//                 BlocListener<ReadofferperiodcubitCubit,
//                     ReadofferperiodcubitState>(
//                   listener: (context, state) {
//                     print("stateSSSSSSSS"+state.toString());
//                     print(state);
//                     state.maybeWhen(
//                         orElse: () {},
//                         success: (data) {
//                           print("dataAnvarrrr"+data.toString());
//                           readOffer = data;
//
//                           // print("date is//");
//                           setState(() {});
//                         });
//                   },
//                 ),
//                 BlocListener<ListofferperiodcubitCubit,
//                     ListofferperiodcubitState>(
//                   listener: (context, state) {
//                     state.maybeWhen(
//                       orElse: () {},
//                       success: (data) {
//                         if (data?.first.id != null) {
//                           context
//                               .read<ReadofferperiodcubitCubit>()
//                               .getOfferPeriod(data!.first.id!);
//                         }
//                       },
//                     );
//                   },
//                 ),
//               ],
//               child: BlocListener<EditofferperiodcubitCubit,
//                   EditofferperiodcubitState>(
//                 listener: (context, state) {
//                   state.maybeWhen(
//                       orElse: () {},
//                       success: (data) {
//                         if (data.data1) {
//                           context.showSnackBarSuccess(data.data2);
//                           widget.onSuccess();
//                           Navigator.pop(context);
//                         } else {
//                           context.showToastError(data.data2);
//                         }
//                       },
//                       error: () {
//                         context.showToastError("Error try again");
//                       });
//                 },
//                 child: BlocListener<CreateofferperiodcubitCubit,
//                     CreateofferperiodcubitState>(
//                   listener: (context, state) {
//                     state.maybeWhen(
//                         orElse: () {},
//                         success: (data) {
//                           if (data.data1) {
//                             context.showSnackBarSuccess(data.data2);
//                             widget.onSuccess();
//                             Navigator.pop(context);
//                           } else {
//                             context.showToastError(data.data2);
//                           }
//                         },
//                         error: () {
//                           context.showToastError("Error try again");
//                         });
//                   },
//                   child: StatefulBuilder(builder: (context, setStae) {
//                     return AlertDialog(
//                       content: PopUpHeader(
//
//                         widthPopup:70,
//                         // isDirectCreate: true,
//                         // onAddNew: (data) {},
//                         onEdit: () {
//                           fromTime = fromContrlr.text.isNotEmpty
//                               ? fromContrlr.text.split(" ")[0]
//                               : fromContrlr.text;
//                           toTime = toController.text.isNotEmpty
//                               ? toController.text.split(" ")[0]
//                               : toController.text;
//                           context.read<EditofferperiodcubitCubit>().editOfferPeriod(
//                               OfferPeriodCreation(
//                                   description: descriptionCtrlr.text,
//                                   fromDate: fromDateContrlr.text,
//                                   fromTime: fromContrlr.text,
//                                   isActive: isActive,
//                                   // maximumQty: int.tryParse(quantityContrlr.text),
//                                   title: titleContrlr.text,
//                                   notes: notesController.text,
//                                   toDate: toDateController.text,
//                                   toTime: toController.text),
//                               id);
//                         },
//                         onApply: () {
//                           fromTime = fromContrlr.text.isNotEmpty
//                               ? fromContrlr.text.split(" ")[0]
//                               : fromContrlr.text;
//                           toTime = toController.text.isNotEmpty
//                               ? toController.text.split(" ")[0]
//                               : toController.text;
//
//                           context
//                               .read<CreateofferperiodcubitCubit>()
//                               .createOfferPeriod(OfferPeriodCreation(
//                               description: descriptionCtrlr.text,
//                               fromDate: fromDate,
//                               fromTime: fromTime,
//                               isActive: isActive,
//                               // maximumQty: int.tryParse(quantityContrlr.text),
//                               title: titleContrlr.text,
//                               notes: notesController.text,
//                               toDate: toDate,
//                               toTime: toTime));
//                         },
//                         onAddNew: (v) {
//
//                           changeAddNew(v);
//
//                           setState(() {});
//
//                         },
//                         label: "Create OfferPeriod",
//                         dataField: Expanded(
//                           child: IntrinsicHeight(
//                             child: Padding(
//                               padding: const EdgeInsets.only(top: 16.0),
//                               child: Row(
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.spaceAround,
//                                 children: [
//                                   ConfigureVerticalList(
//                                     // changeId: changeId,
//                                     type: "offer-period",
//                                     refresh: () {
//                                       // setState(() {});
//                                     },
//                                     onClick: () {
//                                       // context
//                                       //     .read<ReadOfferPeriodCubit>()
//                                       //     .getOfferPeriod(2);
//                                     },
//                                   ),
//                                   IntrinsicWidth(
//                                     child: Column(
//                                       mainAxisSize: MainAxisSize.min,
//                                       crossAxisAlignment:
//                                       CrossAxisAlignment.start,
//                                       mainAxisAlignment:
//                                       MainAxisAlignment.start,
//                                       children: [
//                                         PopUpInputField(
//                                           label: "code",
//                                           restricted: true,
//                                           enable: true,
//                                         ),
//                                         PopUpInputField(
//                                             label: "title",
//                                             required: true,
//                                             enable: true,
//                                             controller: titleContrlr),
//                                         PopUpInputField(
//                                             label: "Description",
//                                             controller: descriptionCtrlr,
//                                             enable: true),
//                                         PopUpInputField(
//                                             label: "notes",
//                                             controller: notesController,
//                                             enable: true),
//                                         // PopUpInputField(
//                                         //   label: "maximum quantity",
//                                         //   required: true,
//                                         //   enable: true,
//                                         //   controller: quantityContrlr,
//                                         // ),
//                                         Spacer()
//                                       ],
//                                     ),
//                                   ),
//                                   gapWidthColumn(),
//                                   IntrinsicWidth(
//                                     child: Column(
//                                       mainAxisSize: MainAxisSize.min,
//                                       children: [
//                                         PopUpDateFormField(
//                                             format: DateFormat('yyyy-MM-dd'),
//                                             controller: fromDateContrlr,
//                                             // initialValue:
//                                             //     DateTime.parse(fromDate!),
//                                             label: "From date",
//                                             onSaved: (newValue) {
//                                               fromDate = newValue
//                                                   ?.toIso8601String()
//                                                   .split("T")[0] ??
//                                                   "";
//                                             },
//                                             enable: true),
//                                         PopUpDateFormField(
//                                             format: DateFormat('yyyy-MM-dd'),
//                                             controller: toDateController,
//                                             label: "To date",
//                                             onSaved: (newValue) {
//                                               print(toDate);
//                                               toDate = newValue
//                                                   ?.toIso8601String()
//                                                   .split("T")[0] ??
//                                                   "";
//                                             },
//                                             enable: true),
//                                         PopupTimePicker(
//                                           label: "from time",
//                                           onSubmit: (p0) {
//                                             print(p0);
//                                           },
//                                           controller: fromContrlr,
//                                         ),
//                                         PopupTimePicker(
//                                           label: "to time",
//                                           onSubmit: (p0) {},
//                                           controller: toController,
//                                         ),
//                                         PopUpSwitchTile(
//                                             value: isActive,
//                                             title: "is Active",
//                                             onClick: (b) {
//                                               isActive = b;
//                                               setStae(() {});
//                                             }),
//                                         Spacer()
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     );
//                   }),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
class PopUpHeader extends StatefulWidget {
  final bool? addNew;
  final bool buttonCheck;
  final bool functionChane;
  final VoidCallback? onTap;
  final String? label;
  final Widget? dataField;
  final double widthPopup;
  final VoidCallback? onApply;
  final VoidCallback? onEdit;
  final VoidCallback? onCancel;
  final Function(bool)? onAddNew;
  final bool isDirectCreate;
  final bool changer;
  const PopUpHeader({
    Key? key,
    this.buttonCheck=false,
    this.functionChane=false,
     this.label,this.onEdit,
    this.widthPopup=50,
    this.onCancel,
    this.changer=false,
    this.dataField,this.onAddNew,
     this.onApply,  this.isDirectCreate=false,  this.onTap, this.addNew,
  }) : super(key: key);

  @override
  _PopUpHeaderState createState() => _PopUpHeaderState();
}

class _PopUpHeaderState extends State<PopUpHeader> {

  @override
  Widget build(BuildContext context) {
    changer(){
      widget.isDirectCreate!=false;
    }
    return Container(
      // height:100,


      padding: EdgeInsets.all(10),
      width: 640,
      child: GeneralSavePage(onEdit: widget.onEdit,
        onPopUp: true,
  

        onApply: widget.onApply,
        onCreate:widget.isDirectCreate?true: widget.addNew!,
        onCancel: widget.onCancel,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                boldText(widget.label??"", fontSize: 18),
              widget.buttonCheck?Container():  Transform.scale(
                  scale: 0.8,
                  child:widget.functionChane? ClipOval(
                    child: Material(
                      color: Colors.grey.withOpacity(.5),
                      child:
                      GestureDetector(
                          onTap: widget.onTap,
                          child: Icon(widget.addNew!?Icons.close:Icons.add,color: Colors.black,)),
                    ),
                  )

                  : _toggleButtonList(widget.onAddNew??(v){}),
                ),
                Transform.scale(
                  scale: 0.7,
                  alignment: Alignment.topRight,
                  child: CloseButton(onPressed: () {
                    Navigator.pop(context);
                  }),
                ),
              ],
            ),
            greyDivider(),
            if (widget.dataField != null) widget.dataField!,
          ],
        ),
      ),
    );
  }

  List<bool> _selections = List.generate(3, (index) => false);
  _toggleButtonList(Function(bool) onAdNew) => ToggleButtons(
    children: [
      Icon(Icons.add_rounded, color: Colors.grey),
      Icon(Icons.cleaning_services_rounded, color: Colors.grey),
      Icon(Icons.history_rounded, color: Colors.grey),
    ],
    renderBorder: false,
    borderWidth: 0.1,
    // splashColor: Palette.SUCCESS,
    isSelected: _selections,
    onPressed: (int i) {

      setState(() {
        _selections[i] = !_selections[i];
        onAdNew(_selections[0]);
      });
    },
  );
}