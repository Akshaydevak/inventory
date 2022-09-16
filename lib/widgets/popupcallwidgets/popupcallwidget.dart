import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/baseuom_creation/baseuomcreation_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/baseuomlist/baseuomlist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/categorylist/categorylist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/devision_list/devision_list_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/grouplist/grouplist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/listStatic/liststatic_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/listbrand/listbrand_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/material/material_list_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/cubits/uomgrouplist/uomgruoplist_cubit.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';

import 'package:inventory/Screens/purchasreturn/cubits/cubit/purchaseinvoice_cubit.dart';
import 'package:inventory/Screens/sales/general/cubit/customeridlist/customeridlist_cubit.dart';
import 'package:inventory/Screens/sales/general/model/customeridlistmodel.dart';
import 'package:inventory/Screens/salesreturn/cubit/salesinvoicecode/salesinvoicecode_cubit.dart';
import 'package:inventory/Screens/variant/general/cubits/variant_selection/variantselection_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/listvraiant/listvraiant_cubit.dart';
import 'package:inventory/Screens/variant/variantdetails/cubits/salesList/sales_list_cubit.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/cubits/cubit/cubit/cubit/cubit/vendorcodecubit_cubit.dart';

import 'package:inventory/cubits/cubit/cubit/purchase_order_type_cubit_dart_cubit.dart';
import 'package:inventory/cubits/cubit/table_details_cubit_dart_cubit.dart';
import 'package:inventory/cubits/cubit/variant_id_cubit_dart_cubit.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/models/purchaseordertype/purchaseordertype.dart';
import 'package:inventory/purchaserecievingmodel/generatemissing.dart';
import 'package:inventory/requestformcubit/cubit/orderedperson_cubit.dart';
import 'package:inventory/requestformcubit/cubit/ordertype_cubit.dart';

import '../../Screens/heirarchy/general/cubits/listbrand2/listbrand2_cubit.dart';
import '../../Screens/heirarchy/general/cubits/subcategorylist/subcategory_cubit.dart';
import '../../Screens/sales/general/cubit/salesordertype/sales_cubit.dart';
import '../../Screens/sales/general/cubit/shippingaddress/shippingadrees_cubit.dart';
import '../../Screens/sales/general/model/shippinfaddressmodel.dart';

class PopUpCall extends StatefulWidget {
  final String? value;
  final String? apiType;
  final int? id;
  final String? bindType;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final String? inventory;
  final String? vendorId;
  final Function(String)? onchange;

  final bool enable;
  final List<String>? list;
  const PopUpCall(
      {Key? key,
        this.onchange,
        this.apiType,
        this.id,
         this.bindType,
        this.value,
        this.vendorId,
        this.enable = false,
        this.onAddNew,
        this.inventory="",
        required this.onSelection,
        required this.type,
        this.list})
      : super(key: key);

  @override
  _PopUpCallState createState() => _PopUpCallState();
}

class _PopUpCallState extends State<PopUpCall> {
  @override
  Widget build(BuildContext context) {

    Widget data = SellingPriceBasedPopUpCall(
        onSelection: widget.onSelection,
        onAddNew: widget.onAddNew,
        value: widget.value,
        enable: widget.enable,
        type: widget.type);
    // Widget data = BrandPopUpCall(
    //     onSelection: widget.onSelection,
    //     onAddNew: widget.onAddNew,
    //     value: widget.value,
    //     enable: widget.enable,
    //     type: widget.type);
    switch (widget.type) {
      case "sellingngPrice-basedOn":
        {
          data = SellingPriceBasedPopUpCall(
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;
      case "RequestFormType":
        {
          data = RequestFoemOrder(
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;
      case "cost-method-list":
        {
          data = CostMethodPopUpCall(
              vendorId:widget.vendorId,

              inventory: widget.inventory,
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;
      case "RequestFormOrderPerson":
        {
          data = OrderedPersonRequest(

              inventory: widget.inventory,
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;
      case "VendorCodeGeneral":
        {
          data = VendorCodesSelection(

              inventory: widget.inventory,
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;
      case "PurchaseInvoices":
        {
          data =   PurchaseInvoices(

              inventory: widget.inventory,
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;
      case "SalesOrder_TypePopUpCall":
        {
          data = SalesOrderTypePopUpCall(
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;
      case "PriceTypePopUpCall":
        {
          data = PriceTypePopUpCall(
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;
      case "SalesOrderMode":
        {
          data = SalesOrderModePopUpCall(
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;
      case "ShippingAddressPopUpCall":
        {
          data = WarrantyTypePopUpCall(
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;
      case "CustomerId_ListPopUpCall":
        {
          data =  customeridlistPopupcall2(
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;
      case "InvoiceCode-PopUpCall":
        {
          data =   InvoiceCodePopUpCall(
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              type: widget.type);
        }
        break;
      case "BrandPopUpCall":
        {
          data = BrandListPopUpCall(
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              onchange:widget.onchange,
              type: widget.type);
        }
        break;
      case "BrandPopUpCall":
        {
          data = BrandListPopUpCall(
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              onchange:widget.onchange,
              type: widget.type);
        }
        break;
      case "MaterialPopUpCall":
        {
          data = MaterialListPopUpCall(
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              onchange:widget.onchange,
              type: widget.type);
        }
        break;
      case "Division_ListPopUpCall":
        {
          data = DivisionListPopUpCall(
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              onchange:widget.onchange,
              type: widget.type);
        }
        break;
      case "Sebling_ListPopUpCall":
        {
          data =   SeblingUomPopUpCall(
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              onchange:widget.onchange,
              type: widget.type);
        }
        break;

      case "StaticListPopUpCall":
        {
          data = StaticListPopUpCall(
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              onchange:widget.onchange,
              type: widget.type);
        }
        break;

      case "Uomgroup_PopUpCall":
        {
          data = UomgroupPopUpCall(
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              onchange:widget.onchange,
              type: widget.type);
        }
        break;

      case "Category_PopUpCall":
        {
          data = CategoryListPopUpCall(
            id:widget.id,
              apiType:widget.apiType,
              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              onchange:widget.onchange,
              type: widget.type);
        }
        break;
      case "SubCategory_PopUpCall":
        {
          data = SubcategoryPopUpCall(

              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              onchange:widget.onchange,
              type: widget.type);
        }
        break;

      case "Group_PopUpCall":
        {
          data = GroupPopUpCall(

              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              onchange:widget.onchange,
              type: widget.type);
        }
        break;

      case "Uom_PopUpCall":
        {
          data = UomPopUpCall(

              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              value: widget.value,
              enable: widget.enable,
              onchange:widget.onchange,
              type: widget.type);
        }
        break;

      case "SalesUom_PopUpCall":

        {
          data =  SalesUomPopUpCall(

              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              id: widget.id,
              value: widget.value,
              enable: widget.enable,
              onchange:widget.onchange,
              type: widget.type);
        }
        break;
      case "VariantSelection_PopUpCall":

        {
          data =  VariantSerachPopUpCall(

              onSelection: widget.onSelection,
              onAddNew: widget.onAddNew,
              // id: widget.id,
              value: widget.value,
              enable: widget.enable,
              onchange:widget.onchange,
              type: widget.type);
        }
        break;








      default:
    }
    return data;
  }
}

class SellingPriceBasedPopUpCall extends StatefulWidget {
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final bool enable;
  final List<String>? list;
  const SellingPriceBasedPopUpCall(
      {Key? key,
        this.value,
        this.onAddNew,
        required this.onSelection,
        required this.type,
        required this.enable,
        this.list})
      : super(key: key);

  @override
  _SellingPriceBasedPopUpCallState createState() =>
      _SellingPriceBasedPopUpCallState();
}

class _SellingPriceBasedPopUpCallState
    extends State<SellingPriceBasedPopUpCall> {
  String? label;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    label = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;
    return BlocProvider<PurchaseOrderTypeCubit>(
        create: (context) => PurchaseOrderTypeCubit(),
        child: Builder(
          builder: (context) {
            context.read<PurchaseOrderTypeCubit>().getPurchaseOrdertype();
            return BlocBuilder<PurchaseOrderTypeCubit,
                PurchaseOrderTypeCubitDartState>(builder: (context, state) {
              print(state);
              return state.maybeWhen(
                orElse: () => Center(
                  child: CircularProgressIndicator(),
                ),
                // error: () => {errorLoader(widget.onAddNew)},
                success: (data) {
                  print("data===" + data.toString());
                  List<String> list = [];
                  // list=data.orderTypes;
                  int? length = data?.orderTypes?.length;
                  for (var i = 0; i < length!; i++) {
                    list.add(data!.orderTypes![i]);
                  }
                  String? onSellingBasedSelect(var value, List<String> list) {
                    print("value" + value.toString());
                    // print("value"+list.toString());

                    PurchaseOrdertype? newData;
                    list.forEach((element) {
                      newData?.orderTypes?.add(element);
                    });
                    return value;
                  } // });

                  if (widget.onAddNew != null) list.add("");
                  _controller = TextEditingController(text: label);
                  return TypeAheadFormField(
                    enabled: widget.enable,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "required";
                      }
                    },
                    textFieldConfiguration: TextFieldConfiguration(
                        controller: _controller,
                        decoration: InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.arrow_downward_outlined))),
                    onSuggestionSelected: (suggestion) {
                      if (suggestion == "Add new")
                        widget.onAddNew!();
                      else {
                        widget.onSelection(onSellingBasedSelect(
                            suggestion.toString(), data!.orderTypes!));
                        // data.sellingPercntageBasedOn?.forEach((element) {
                        //   if (element == suggestion)
                        //     Variable.methodId = element.id;
                        // });
                      }
                    },
                    itemBuilder: (context, suggestion) {
                      // if (suggestion == "Add new")
                      //   return ListTile(
                      //     leading: Icon(Icons.add_circle_outline_outlined),
                      //     title: Text(suggestion.toString()),
                      //   );
                      return ListTile(
                        ////leading: Icon(Icons.shopping_cart_outlined),
                        title: Text(suggestion.toString()),
                      );
                    },
                    suggestionsCallback: (String? value) async {
                      return value == null || value.isEmpty
                          ? list
                          : search(value, list, widget.onAddNew);
                    },
                  );
                },
              );
            });
          },
        ));
  }

  List<String> search(String value, List<String> list, VoidCallback? onAddNew) {
    List<String> newList = [];
    list.forEach((element) {
      if (element.toLowerCase().contains(value.toLowerCase()))
        newList.add(element);
    });
    onAddNew != null ? newList.add("Add new") : null;
    return newList;
  }
}


class CostMethodPopUpCall extends StatefulWidget {
  final String? inventory;
  final String? vendorId;
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final bool enable;
  final List<String>? list;
  const CostMethodPopUpCall(
      {Key? key,
        this.value,
        this.onAddNew,
        this.inventory="",
        this.vendorId,
        required this.onSelection,
        required this.type,
        required this.enable,
        this.list})
      : super(key: key);

  @override
  _CostMethodPopUpCallState createState() => _CostMethodPopUpCallState();
}

class _CostMethodPopUpCallState extends State<CostMethodPopUpCall> {
  String? label;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    label = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;
    return BlocProvider(
      create: (context) => VariantIdCubitDartCubit(),
      child: Builder(
        builder: (context) {
          print("widget.inventory"+widget.inventory.toString());
          widget.inventory==""?  context.read<VariantIdCubitDartCubit>().getVariantId(vendorId: widget.vendorId): context.read<VariantIdCubitDartCubit>().getVariantId(inventory:widget.inventory);
          return BlocBuilder<VariantIdCubitDartCubit,
              VariantIdCubitDartState>(builder: (context, state) {
            print(state);
            return state.maybeWhen(
              orElse: () => Center(
                child: CircularProgressIndicator(),
              ),
              // error: () => {errorLoader(widget.onAddNew)},
              success: (data) {
                print("data===" + data.toString());
                List<String?> list = [];
                int? length=data.length;
                // list=data.orderTypes;
                for(var i=0;i<length;i++){
                  list.add(data[i].code);

                }

                VariantId? onSellingBasedSelect(var value, List<VariantId> list) {
                  VariantId ? newData;
                  list.forEach((element) {
                    if (element.code != null &&
                        element.code?.toLowerCase() == (value.toLowerCase())) newData = element;
                    if (element.id != null &&
                        element.id == (value.toLowerCase())) newData = element;


                  });
                  print("value" + value.toString());
                  // print("value"+list.toString());

                  // PurchaseOrdertype? newData;
                  // list.forEach((element) {
                  //   newData?.orderTypes?.add(element);
                  // });
                  return newData;
                } // });

                if (widget.onAddNew != null) list.add("");
                _controller = TextEditingController(text: label);
                return Container(
                  margin: EdgeInsets.only(top: 9,left: 9),
                  child: TypeAheadFormField(
                    // hideKeyboard: true,
                    enabled: widget.enable,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "required";
                      }
                    },
                    textFieldConfiguration: TextFieldConfiguration(

                        style: TextStyle(fontSize: 13, ),
                        controller: _controller,
                        decoration: InputDecoration(

                            border: InputBorder.none,
                            isDense: true,
                            // border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.arrow_downward_outlined)
                        )),
                    onSuggestionSelected: (suggestion) {
                      print("suggestion"+suggestion.toString());
                      if (suggestion == "Add new")
                        widget.onAddNew!();
                      else {
                        widget.onSelection(onSellingBasedSelect(
                            suggestion.toString(), data));
                        // data.sellingPercntageBasedOn?.forEach((element) {
                        //   if (element == suggestion)
                        //     Variable.methodId = element.id;
                        // });
                      }
                    },
                    itemBuilder: (context, suggestion) {
                      // if (suggestion == "Add new")
                      //   return ListTile(
                      //     leading: Icon(Icons.add_circle_outline_outlined),
                      //     title: Text(suggestion.toString()),
                      //   );
                      return ListTile(
                        ////leading: Icon(Icons.shopping_cart_outlined),
                        title: Text(suggestion.toString()),
                      );
                    },
                    suggestionsCallback: (String value) async {
                      return value == null || value.isEmpty
                          ? list
                          : search(value, list, widget.onAddNew);
                    },
                  ),
                );
              },
            );
          });
        },
      ),
    );
  }

  List<String> search(String value, List<String?> list, VoidCallback? onAddNew) {
    print("value"+value.toString());
    List<String> newList = [];
    // list.forEach((element) {
    //   if (element.toLowerCase().contains(value.toLowerCase()))
    //     newList.add(element);
    // });
    // onAddNew != null ? newList.add("Add new") : null;
    return newList;
  }
}
class RequestFoemOrder extends StatefulWidget {
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final bool enable;
  final List<String>? list;
  const RequestFoemOrder(
      {Key? key,
        this.value,
        this.onAddNew,
        required this.onSelection,
        required this.type,
        required this.enable,
        this.list})
      : super(key: key);

  @override
  _RequestFoemOrderState createState() =>
      _RequestFoemOrderState();
}

class _RequestFoemOrderState
    extends State<RequestFoemOrder> {
  String? label;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    label = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;
    return BlocProvider<OrdertypeCubit>(
        create: (context) => OrdertypeCubit(),
        child: Builder(
          builder: (context) {
            context.read<OrdertypeCubit>().getRequestFormOrdertype();
            return BlocBuilder<OrdertypeCubit,
                OrdertypeState>(builder: (context, state) {
              print(state);
              return state.maybeWhen(
                orElse: () => Center(
                  child: CircularProgressIndicator(),
                ),
                // error: () => {errorLoader(widget.onAddNew)},
                success: (data) {
                  print("data===" + data.toString());
                  List<String> list = [];
                  // list=data.orderTypes;
                  int? length = data?.orderTypes?.length;
                  for (var i = 0; i < length!; i++) {
                    list.add(data!.orderTypes![i]);
                  }
                  String? onSellingBasedSelect(var value, List<String> list) {
                    print("value" + value.toString());
                    // print("value"+list.toString());

                    PurchaseOrdertype? newData;
                    list.forEach((element) {
                      newData?.orderTypes?.add(element);
                    });
                    return value;
                  } // });

                  if (widget.onAddNew != null) list.add("");
                  _controller = TextEditingController(text: label);
                  return TypeAheadFormField(
                    enabled: widget.enable,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "required";
                      }
                    },
                    textFieldConfiguration: TextFieldConfiguration(
                        controller: _controller,
                        decoration: InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.arrow_downward_outlined))),
                    onSuggestionSelected: (suggestion) {
                      if (suggestion == "Add new")
                        widget.onAddNew!();
                      else {
                        widget.onSelection(onSellingBasedSelect(
                            suggestion.toString(), data!.orderTypes!));
                        // data.sellingPercntageBasedOn?.forEach((element) {
                        //   if (element == suggestion)
                        //     Variable.methodId = element.id;
                        // });
                      }
                    },
                    itemBuilder: (context, suggestion) {
                      // if (suggestion == "Add new")
                      //   return ListTile(
                      //     leading: Icon(Icons.add_circle_outline_outlined),
                      //     title: Text(suggestion.toString()),
                      //   );
                      return ListTile(
                        ////leading: Icon(Icons.shopping_cart_outlined),
                        title: Text(suggestion.toString()),
                      );
                    },
                    suggestionsCallback: (String? value) async {
                      return value == null || value.isEmpty
                          ? list
                          : search(value, list, widget.onAddNew);
                    },
                  );
                },
              );
            });
          },
        ));
  }

  List<String> search(String value, List<String> list, VoidCallback? onAddNew) {
    List<String> newList = [];
    list.forEach((element) {
      if (element.toLowerCase().contains(value.toLowerCase()))
        newList.add(element);
    });
    onAddNew != null ? newList.add("Add new") : null;
    return newList;
  }
}
class OrderedPersonRequest extends StatefulWidget {
  final String? inventory;
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final bool enable;
  final List<String>? list;
  const OrderedPersonRequest(
      {Key? key,
        this.value,
        this.onAddNew,
        this.inventory="",
        required this.onSelection,
        required this.type,
        required this.enable,
        this.list})
      : super(key: key);

  @override
  _OrderedPersonRequestState createState() => _OrderedPersonRequestState();
}

class _OrderedPersonRequestState extends State<OrderedPersonRequest> {
  String? label;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    label = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;
    return BlocProvider(
      create: (context) => OrderedpersonCubit(),
      child: Builder(
        builder: (context) {
          print("widget.inventory"+widget.inventory.toString());
          context.read<OrderedpersonCubit>().getOrderedPerson();
          return BlocBuilder<OrderedpersonCubit,
              OrderedpersonState>(builder: (context, state) {
            print(state);
            return state.maybeWhen(
              orElse: () => Center(
                child: CircularProgressIndicator(),
              ),
              // error: () => {errorLoader(widget.onAddNew)},
              success: (data) {
                print("data===" + data.toString());
                List<String?> list = [];
                int? length=data.length;
                // list=data.orderTypes;
                for(var i=0;i<length;i++){
                  list.add(data[i].organisationCode);

                }

                OrderedPersonModel? onSellingBasedSelect(var value, List<OrderedPersonModel> list) {
                  OrderedPersonModel ? newData;
                  list.forEach((element) {
                    if (element.organisationCode != null &&
                        element.organisationCode?.toLowerCase() == (value.toLowerCase())) newData = element;
                    if (element.id != null &&
                        element.id == (value.toLowerCase())) newData = element;


                  });
                  print("value" + value.toString());
                  // print("value"+list.toString());

                  // PurchaseOrdertype? newData;
                  // list.forEach((element) {
                  //   newData?.orderTypes?.add(element);
                  // });
                  return newData;
                } // });

                if (widget.onAddNew != null) list.add("");
                _controller = TextEditingController(text: label);
                return TypeAheadFormField(
                  enabled: widget.enable,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "required";
                    }
                  },
                  textFieldConfiguration: TextFieldConfiguration(
                      controller: _controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        isDense: true,
                        // border: OutlineInputBorder(),
                        // suffixIcon: Icon(Icons.arrow_downward_outlined)
                      )),
                  onSuggestionSelected: (suggestion) {
                    print("suggestion"+suggestion.toString());
                    if (suggestion == "Add new")
                      widget.onAddNew!();
                    else {
                      widget.onSelection(onSellingBasedSelect(
                          suggestion.toString(), data));
                      // data.sellingPercntageBasedOn?.forEach((element) {
                      //   if (element == suggestion)
                      //     Variable.methodId = element.id;
                      // });
                    }
                  },
                  itemBuilder: (context, suggestion) {
                    // if (suggestion == "Add new")
                    //   return ListTile(
                    //     leading: Icon(Icons.add_circle_outline_outlined),
                    //     title: Text(suggestion.toString()),
                    //   );
                    return ListTile(
                      ////leading: Icon(Icons.shopping_cart_outlined),
                      title: Text(suggestion.toString()),
                    );
                  },
                  suggestionsCallback: (String value) async {
                    return value == null || value.isEmpty
                        ? list
                        : search(value, list, widget.onAddNew);
                  },
                );
              },
            );
          });
        },
      ),
    );
  }

  List<String> search(String value, List<String?> list, VoidCallback? onAddNew) {
    print("value"+value.toString());
    List<String> newList = [];
    // list.forEach((element) {
    //   if (element.toLowerCase().contains(value.toLowerCase()))
    //     newList.add(element);
    // });
    // onAddNew != null ? newList.add("Add new") : null;
    return newList;
  }
}



class VendorCodesSelection extends StatefulWidget {
  final String? inventory;
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final bool enable;
  final List<String>? list;
  const VendorCodesSelection(
      {Key? key,
        this.value,
        this.onAddNew,
        this.inventory="",
        required this.onSelection,
        required this.type,
        required this.enable,
        this.list})
      : super(key: key);

  @override
  _VendorCodesSelectionState createState() => _VendorCodesSelectionState();
}

class _VendorCodesSelectionState extends State<VendorCodesSelection> {
  String? label;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    label = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;
    return BlocProvider(
      create: (context) => VendorcodecubitCubit(),
      child: Builder(
        builder: (context) {

          context.read<VendorcodecubitCubit>().getVariantCode();
          return BlocBuilder<VendorcodecubitCubit,
              VendorcodecubitState>(builder: (context, state) {
            print(state);
            return state.maybeWhen(
              orElse: () => Center(
                child: CircularProgressIndicator(),
              ),
              // error: () => {errorLoader(widget.onAddNew)},
              success: (data) {
                print("data===" + data.toString());
                List<String?> list = [];
                int length=data.length;
                // list=data.orderTypes;
                for(var i=0;i<length;i++){
                  list.add(data[i].partnerCode);

                }

                Result? onSellingBasedSelect(var value, List<Result> list) {
                  Result ? newData;
                  list.forEach((element) {
                    if (element.partnerCode != null &&
                        element.partnerCode?.toLowerCase() == (value.toLowerCase())) newData = element;
                    if (element.id != null &&
                        element.id == (value.toLowerCase())) newData = element;


                  });
                  print("value" + value.toString());
                  // print("value"+list.toString());

                  // PurchaseOrdertype? newData;
                  // list.forEach((element) {
                  //   newData?.orderTypes?.add(element);
                  // });
                  return newData;
                } // });

                if (widget.onAddNew != null) list.add("");
                _controller = TextEditingController(text: label);
                return TypeAheadFormField(
                  enabled: widget.enable,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "required";
                    }
                  },
                  textFieldConfiguration: TextFieldConfiguration(
                      style: TextStyle(fontSize: 13, ),
                      controller: _controller,
                      decoration: InputDecoration(

                          border: InputBorder.none,
                          isDense: true,
                          // border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.arrow_downward_outlined)
                      )),
                  onSuggestionSelected: (suggestion) {
                    print("suggestion"+suggestion.toString());
                    if (suggestion == "Add new")
                      widget.onAddNew!();
                    else {
                      widget.onSelection(onSellingBasedSelect(
                          suggestion.toString(), data));
                      // data.sellingPercntageBasedOn?.forEach((element) {
                      //   if (element == suggestion)
                      //     Variable.methodId = element.id;
                      // });
                    }
                  },
                  itemBuilder: (context, suggestion) {
                    // if (suggestion == "Add new")
                    //   return ListTile(
                    //     leading: Icon(Icons.add_circle_outline_outlined),
                    //     title: Text(suggestion.toString()),
                    //   );
                    return ListTile(
                      ////leading: Icon(Icons.shopping_cart_outlined),
                      title: Text(suggestion.toString()),
                    );
                  },
                  suggestionsCallback: (String value) async {
                    return value == null || value.isEmpty
                        ? list
                        : search(value, list, widget.onAddNew);
                  },
                );
              },
            );
          });
        },
      ),
    );
  }

  List<String> search(String value, List<String?> list, VoidCallback? onAddNew) {
    print("value"+value.toString());
    List<String> newList = [];
    // list.forEach((element) {
    //   if (element.toLowerCase().contains(value.toLowerCase()))
    //     newList.add(element);
    // });
    // onAddNew != null ? newList.add("Add new") : null;
    return newList;
  }
}
class PurchaseInvoices extends StatefulWidget {
  final String? inventory;
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final bool enable;
  final List<String>? list;
  const PurchaseInvoices(
      {Key? key,
        this.value,
        this.onAddNew,
        this.inventory="",
        required this.onSelection,
        required this.type,
        required this.enable,
        this.list})
      : super(key: key);

  @override
  _PurchaseInvoiceState createState() => _PurchaseInvoiceState();
}

class _PurchaseInvoiceState extends State<PurchaseInvoices> {
  String? label;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    label = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;
    return BlocProvider(
      create: (context) => PurchaseinvoiceCubit(),
      child: Builder(
        builder: (context) {

          context.read<PurchaseinvoiceCubit>().getPurchaseInvoice();
          return BlocBuilder<PurchaseinvoiceCubit,
              PurchaseinvoiceState>(builder: (context, state) {
            print(state);
            return state.maybeWhen(
              orElse: () => Center(
                child: CircularProgressIndicator(),
              ),
              // error: () => {errorLoader(widget.onAddNew)},
              success: (data) {
                print("data===sssssssss" + data.toString());
                List<String?> list = [];
                int length=data.length;
                // list=data.orderTypes;

                for(var i=0;i<length;i++){
                  list.add(data[i].invoiceCode);

                }

                PurchaseInvoice? onSellingBasedSelect(var value, List<PurchaseInvoice> list) {
                  PurchaseInvoice ? newData;
                  list.forEach((element) {
                    if (element.invoiceCode != null &&
                        element.invoiceCode?.toLowerCase() == (value.toLowerCase())) newData = element;



                  });
                  print("value" + value.toString());
                  // print("value"+list.toString());

                  // PurchaseOrdertype? newData;
                  // list.forEach((element) {
                  //   newData?.orderTypes?.add(element);
                  // });
                  return newData;
                } // });

                if (widget.onAddNew != null) list.add("");
                _controller = TextEditingController(text: label);
                return TypeAheadFormField(
                  enabled: widget.enable,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "required";
                    }
                  },
                  textFieldConfiguration: TextFieldConfiguration(
                      style: TextStyle(fontSize: 13, ),
                      controller: _controller,
                      decoration: InputDecoration(

                          border: InputBorder.none,
                          isDense: true,
                          // border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.arrow_downward_outlined)
                      )),
                  onSuggestionSelected: (suggestion) {
                    print("suggestion"+suggestion.toString());
                    if (suggestion == "Add new")
                      widget.onAddNew!();
                    else {
                      widget.onSelection(onSellingBasedSelect(
                          suggestion.toString(), data));
                      // data.sellingPercntageBasedOn?.forEach((element) {
                      //   if (element == suggestion)
                      //     Variable.methodId = element.id;
                      // });
                    }
                  },
                  itemBuilder: (context, suggestion) {
                    // if (suggestion == "Add new")
                    //   return ListTile(
                    //     leading: Icon(Icons.add_circle_outline_outlined),
                    //     title: Text(suggestion.toString()),
                    //   );
                    return ListTile(
                      ////leading: Icon(Icons.shopping_cart_outlined),
                      title: Text(suggestion.toString()),
                    );
                  },
                  suggestionsCallback: (String value) async {
                    return value == null || value.isEmpty
                        ? list
                        : search(value, list, widget.onAddNew);
                  },
                );
              },
            );
          });
        },
      ),
    );
  }

  List<String> search(String value, List<String?> list, VoidCallback? onAddNew) {
    print("value"+value.toString());
    List<String> newList = [];
    // list.forEach((element) {
    //   if (element.toLowerCase().contains(value.toLowerCase()))
    //     newList.add(element);
    // });
    // onAddNew != null ? newList.add("Add new") : null;
    return newList;
  }
}
class SalesOrderTypePopUpCall extends StatefulWidget {
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final bool enable;
  final List<String>? list;
  const SalesOrderTypePopUpCall(
      {Key? key,
        this.value,
        this.onAddNew,
        required this.onSelection,
        required this.type,
        required this.enable,
        this.list})
      : super(key: key);

  @override
  _SalesOrderTypePopUpCallState createState() =>
      _SalesOrderTypePopUpCallState();
}

class _SalesOrderTypePopUpCallState
    extends State<SalesOrderTypePopUpCall> {
  String? label;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    label = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;
    return BlocProvider<SalesCubit>(
        create: (context) => SalesCubit(),
        child: Builder(
          builder: (context) {
            context.read<SalesCubit>().getSalesOrdertype();
            return BlocBuilder<SalesCubit,
                SalesState>(builder: (context, state) {
              print(state);
              return state.maybeWhen(
                orElse: () => Center(
                  child: CircularProgressIndicator(),
                ),
                // error: () => {errorLoader(widget.onAddNew)},
                success: (data) {
                  print("data===" + data.toString());
                  List<String> list = [];
                  // list=data.orderTypes;
                  int? length = data?.orderTypes?.length;
                  for (var i = 0; i < length!; i++) {
                    list.add(data!.orderTypes![i]);
                  }
                  String? onSellingBasedSelect(var value, List<String> list) {
                    print("value" + value.toString());
                    // print("value"+list.toString());

                    PurchaseOrdertype? newData;
                    list.forEach((element) {
                      newData?.orderTypes?.add(element);
                    });
                    return value;
                  } // });

                  if (widget.onAddNew != null) list.add("");
                  _controller = TextEditingController(text: label);
                  return TypeAheadFormField(
                    enabled: widget.enable,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "required";
                      }
                    },
                    textFieldConfiguration: TextFieldConfiguration(
                        controller: _controller,
                        decoration: InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.arrow_downward_outlined))),
                    onSuggestionSelected: (suggestion) {
                      if (suggestion == "Add new")
                        widget.onAddNew!();
                      else {
                        widget.onSelection(onSellingBasedSelect(
                            suggestion.toString(), data!.orderTypes!));
                        // data.sellingPercntageBasedOn?.forEach((element) {
                        //   if (element == suggestion)
                        //     Variable.methodId = element.id;
                        // });
                      }
                    },
                    itemBuilder: (context, suggestion) {
                      // if (suggestion == "Add new")
                      //   return ListTile(
                      //     leading: Icon(Icons.add_circle_outline_outlined),
                      //     title: Text(suggestion.toString()),
                      //   );
                      return ListTile(
                        ////leading: Icon(Icons.shopping_cart_outlined),
                        title: Text(suggestion.toString()),
                      );
                    },
                    suggestionsCallback: (String? value) async {
                      return value == null || value.isEmpty
                          ? list
                          : search(value, list, widget.onAddNew);
                    },
                  );
                },
              );
            });
          },
        ));
  }

  List<String> search(String value, List<String> list, VoidCallback? onAddNew) {
    List<String> newList = [];
    list.forEach((element) {
      if (element.toLowerCase().contains(value.toLowerCase()))
        newList.add(element);
    });
    onAddNew != null ? newList.add("Add new") : null;
    return newList;
  }
}
class SalesOrderModePopUpCall extends StatefulWidget {
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final bool enable;
  final List<String>? list;
  const SalesOrderModePopUpCall(
      {Key? key,
        this.value,
        this.onAddNew,
        required this.onSelection,
        required this.type,
        required this.enable,
        this.list})
      : super(key: key);

  @override
  _SalesOrderModePopUpCallState createState() =>
      _SalesOrderModePopUpCallState();
}

class _SalesOrderModePopUpCallState
    extends State<SalesOrderModePopUpCall> {
  String? label;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    label = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;
    return BlocProvider<SalesCubit>(
        create: (context) => SalesCubit(),
        child: Builder(
          builder: (context) {
            context.read<SalesCubit>().getSalesOrdertype();
            return BlocBuilder<SalesCubit,
                SalesState>(builder: (context, state) {
              print(state);
              return state.maybeWhen(
                orElse: () => Center(
                  child: CircularProgressIndicator(),
                ),
                // error: () => {errorLoader(widget.onAddNew)},
                success: (data) {
                  print("data===" + data.toString());
                  List<String> list = [];
                  // list=data.orderTypes;
                  int? length = data?.orderMode?.length;
                  for (var i = 0; i < length!; i++) {
                    list.add(data!.orderMode![i]);
                  }
                  String? onSellingBasedSelect(var value, List<String> list) {
                    print("value" + value.toString());
                    // print("value"+list.toString());

                    PurchaseOrdertype? newData;
                    list.forEach((element) {
                      newData?.orderMode?.add(element);
                    });
                    return value;
                  } // });

                  if (widget.onAddNew != null) list.add("");
                  _controller = TextEditingController(text: label);
                  return TypeAheadFormField(
                    enabled: widget.enable,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "required";
                      }
                    },
                    textFieldConfiguration: TextFieldConfiguration(
                        controller: _controller,
                        decoration: InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.arrow_downward_outlined))),
                    onSuggestionSelected: (suggestion) {
                      if (suggestion == "Add new")
                        widget.onAddNew!();
                      else {
                        widget.onSelection(onSellingBasedSelect(
                            suggestion.toString(), data!.orderTypes!));
                        // data.sellingPercntageBasedOn?.forEach((element) {
                        //   if (element == suggestion)
                        //     Variable.methodId = element.id;
                        // });
                      }
                    },
                    itemBuilder: (context, suggestion) {
                      // if (suggestion == "Add new")
                      //   return ListTile(
                      //     leading: Icon(Icons.add_circle_outline_outlined),
                      //     title: Text(suggestion.toString()),
                      //   );
                      return ListTile(
                        ////leading: Icon(Icons.shopping_cart_outlined),
                        title: Text(suggestion.toString()),
                      );
                    },
                    suggestionsCallback: (String? value) async {
                      return value == null || value.isEmpty
                          ? list
                          : search(value, list, widget.onAddNew);
                    },
                  );
                },
              );
            });
          },
        ));
  }

  List<String> search(String value, List<String> list, VoidCallback? onAddNew) {
    List<String> newList = [];
    list.forEach((element) {
      if (element.toLowerCase().contains(value.toLowerCase()))
        newList.add(element);
    });
    onAddNew != null ? newList.add("Add new") : null;
    return newList;
  }
}

class PriceTypePopUpCall extends StatefulWidget {
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final bool enable;
  final List<String>? list;
  const PriceTypePopUpCall(
      {Key? key,
        this.value,
        this.onAddNew,
        required this.onSelection,
        required this.type,
        required this.enable,
        this.list})
      : super(key: key);

  @override
  _PriceTypePopUpCallState createState() =>
      _PriceTypePopUpCallState();
}

class _PriceTypePopUpCallState
    extends State<PriceTypePopUpCall> {
  String? label;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    label = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;
    return BlocProvider<SalesCubit>(
        create: (context) => SalesCubit(),
        child: Builder(
          builder: (context) {
            context.read<SalesCubit>().getSalesOrdertype();
            return BlocBuilder<SalesCubit,
                SalesState>(builder: (context, state) {
              print(state);
              return state.maybeWhen(
                orElse: () => Center(
                  child: CircularProgressIndicator(),
                ),
                // error: () => {errorLoader(widget.onAddNew)},
                success: (data) {
                  print("data===" + data.toString());
                  List<String> list = [];
                  // list=data.orderTypes;
                  int? length = data?.discountType?.length;
                  for (var i = 0; i < length!; i++) {
                    list.add(data!.discountType![i]);
                  }
                  String? onSellingBasedSelect(var value, List<String> list) {
                    print("value" + value.toString());
                    // print("value"+list.toString());

                    PurchaseOrdertype? newData;
                    list.forEach((element) {
                      newData?.discountType?.add(element);
                    });
                    return value;
                  } // });

                  if (widget.onAddNew != null) list.add("");
                  _controller = TextEditingController(text: label);
                  return TypeAheadFormField(
                    enabled: widget.enable,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "required";
                      }
                    },
                    textFieldConfiguration: TextFieldConfiguration(
                        controller: _controller,
                        decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.arrow_downward_outlined))),
                    onSuggestionSelected: (suggestion) {
                      if (suggestion == "Add new")
                        widget.onAddNew!();
                      else {
                        widget.onSelection(onSellingBasedSelect(
                            suggestion.toString(), data!.discountType!));
                        // data.sellingPercntageBasedOn?.forEach((element) {
                        //   if (element == suggestion)
                        //     Variable.methodId = element.id;
                        // });
                      }
                    },
                    itemBuilder: (context, suggestion) {
                      // if (suggestion == "Add new")
                      //   return ListTile(
                      //     leading: Icon(Icons.add_circle_outline_outlined),
                      //     title: Text(suggestion.toString()),
                      //   );
                      return ListTile(
                        ////leading: Icon(Icons.shopping_cart_outlined),
                        title: Text(suggestion.toString()),
                      );
                    },
                    suggestionsCallback: (String? value) async {
                      return value == null || value.isEmpty
                          ? list
                          : search(value, list, widget.onAddNew);
                    },
                  );
                },
              );
            });
          },
        ));
  }

  List<String> search(String value, List<String> list, VoidCallback? onAddNew) {
    List<String> newList = [];
    list.forEach((element) {
      if (element.toLowerCase().contains(value.toLowerCase()))
        newList.add(element);
    });
    onAddNew != null ? newList.add("Add new") : null;
    return newList;
  }
}

class ShippingAddressPopUpCall extends StatefulWidget {
  final String? inventory;
  final String? vendorId;
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final bool enable;
  final List<String>? list;
  const ShippingAddressPopUpCall(
      {Key? key,
        this.value,
        this.onAddNew,
        this.inventory="",
        this.vendorId,
        required this.onSelection,
        required this.type,
        required this.enable,
        this.list})
      : super(key: key);

  @override
  _ShippingAddressPopUpCallState createState() => _ShippingAddressPopUpCallState();
}

class _ShippingAddressPopUpCallState extends State<ShippingAddressPopUpCall> {
  String? label;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    label = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;
    return BlocProvider(
      create: (context) => ShippingadreesCubit(),
      child: Builder(
        builder: (context) {
          print("widget.inventory"+widget.inventory.toString());
          context.read<ShippingadreesCubit>().getShippingId();
          return BlocBuilder<ShippingadreesCubit,
              ShippingadreesState>(builder: (context, state) {
            print(state);
            return state.maybeWhen(
              orElse: () => Center(
                child: CircularProgressIndicator(),
              ),
              // error: () => {errorLoader(widget.onAddNew)},
              success: (data) {
                print("data===" + data.toString());
                List<String?> list = [];
                int? length=data.length;
                // list=data.orderTypes;
                for(var i=0;i<length;i++){
                  list.add(data[i]?.streetName );

                }

                ShippingAddressModel? onSellingBasedSelect(var value, List<ShippingAddressModel> list) {
                  ShippingAddressModel ? newData;
                  list.forEach((element) {
                    if (element.streetName != null &&
                        element.streetName?.toLowerCase() == (value.toLowerCase())) newData = element;
                    if (element.id != null &&
                        element.id == (value.toLowerCase())) newData = element;


                  });
                  print("value" + value.toString());
                  // print("value"+list.toString());

                  // PurchaseOrdertype? newData;
                  // list.forEach((element) {
                  //   newData?.orderTypes?.add(element);
                  // });
                  return newData;
                } // });

                if (widget.onAddNew != null) list.add("");
                _controller = TextEditingController(text: label);
                return Container(
                  margin: EdgeInsets.only(top: 9,left: 9),
                  child: TypeAheadFormField(
                    hideKeyboard: true,
                    enabled: widget.enable,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "required";
                      }
                    },
                    textFieldConfiguration: TextFieldConfiguration(

                        style: TextStyle(fontSize: 13, ),
                        controller: _controller,
                        decoration: InputDecoration(

                            border: InputBorder.none,
                            isDense: true,
                            // border: OutlineInputBorder(),
                            enabledBorder:OutlineInputBorder(
                                borderRadius:BorderRadius.circular(2),

                                borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                            focusedBorder:   OutlineInputBorder(
                                borderRadius:BorderRadius.circular(2),

                                borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                            suffixIcon: Icon(Icons.arrow_downward_outlined)
                        )),
                    onSuggestionSelected: (suggestion) {
                      print("suggestion"+suggestion.toString());
                      if (suggestion == "Add new")

                        widget.onAddNew!();
                      else {
                        widget.onSelection(onSellingBasedSelect(
                            suggestion.toString(), data));
                        // data.sellingPercntageBasedOn?.forEach((element) {
                        //   if (element == suggestion)
                        //     Variable.methodId = element.id;
                        // });
                      }
                    },
                    itemBuilder: (context, suggestion) {
                      if (suggestion == "Add new")
                        return ListTile(
                          leading: Icon(Icons.add_circle_outline_outlined),
                          title: Text(suggestion.toString()),
                        );
                      return ListTile(
                        ////leading: Icon(Icons.shopping_cart_outlined),
                        title: Text(suggestion.toString()),
                      );
                    },
                    suggestionsCallback: (String value) async {
                      return value == null || value.isEmpty
                          ? list
                          : search(value, list, widget.onAddNew);
                    },
                  ),
                );
              },
            );
          });
        },
      ),
    );
  }

  List<String> search(String value, List<String?> list, VoidCallback? onAddNew) {
    print("value"+value.toString());
    List<String> newList = [];
    // list.forEach((element) {
    //   if (element.toLowerCase().contains(value.toLowerCase()))
    //     newList.add(element);
    // });
    // onAddNew != null ? newList.add("Add new") : null;
    return newList;
  }
}
class WarrantyTypePopUpCall extends StatefulWidget {
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final bool enable;

  final List<String>? list;
  const WarrantyTypePopUpCall({
    Key? key,
    this.value,
    required this.type,
    this.onAddNew,
    required this.enable,
    required this.onSelection,
    this.list,
  }) : super(key: key);

  @override
  _WarrantyTypePopUpCallState createState() => _WarrantyTypePopUpCallState();
}

class _WarrantyTypePopUpCallState extends State<WarrantyTypePopUpCall> {
  String? label;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;
    return BlocProvider<ShippingadreesCubit>(
      create: (context) => ShippingadreesCubit(),
      child: Builder(builder: (context) {
        context.read<ShippingadreesCubit>().getShippingId();

        return BlocBuilder<ShippingadreesCubit, ShippingadreesState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Center(
                  child: CircularProgressIndicator(),
                ),
                error: () => SizedBox(),
                // errorLoader(widget.onAddNew),
                success: (data) {
                  List<String> list = [];
                  int? length=data.length;
                  // list=data.orderTypes;
                  for(var i=0;i<length;i++){
                    list.add(data?[i]?.streetName??""+"_"+data[i].streetName!??"" );

                  }

                  ShippingAddressModel? onSellingBasedSelect(var value, List<ShippingAddressModel> list) {
                    ShippingAddressModel ? newData;
                    list.forEach((element) {
                      if (element.streetName != null &&
                          element.streetName?.toLowerCase() == (value.toLowerCase())) newData = element;
                      if (element.id != null &&
                          element.id == (value.toLowerCase())) newData = element;


                    });
                    print("value" + value.toString());
                    // print("value"+list.toString());

                    // PurchaseOrdertype? newData;
                    // list.forEach((element) {
                    //   newData?.orderTypes?.add(element);
                    // });
                    return newData;
                  } // });

                  if (widget.onAddNew != null) list.add("Add new");
                  _controller = TextEditingController(text: label);
                  return TypeAheadFormField(
                    enabled: widget.enable,
                    hideSuggestionsOnKeyboardHide: true,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "required";
                      }
                    },
                    textFieldConfiguration: TextFieldConfiguration(
                        controller: _controller,
                        decoration: InputDecoration(
                            isDense: true,
                            enabledBorder:OutlineInputBorder(
                                borderRadius:BorderRadius.circular(2),

                                borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                            focusedBorder:   OutlineInputBorder(
                                borderRadius:BorderRadius.circular(2),

                                borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                            suffixIcon: Icon(Icons.more_horiz_rounded))),
                    onSuggestionSelected: (suggestion) {
                      if (suggestion == "Add new")
                        widget.onAddNew!();
                      else{
                        widget.onSelection(onSellingBasedSelect(
                            suggestion.toString(), data));

                      }
                      // widget.onSelection(
                      //     onSelect(suggestion.toString(), data ?? []));
                    },
                    itemBuilder: (context, suggestion) {
                      if (suggestion == "Add new")
                        return ListTile(
                          leading: Icon(Icons.add_circle_outline_outlined),
                          title: Text(suggestion.toString()),
                        );
                      return ListTile(
                        ////leading: Icon(Icons.shopping_cart_outlined),
                        title: Text(suggestion.toString()),
                      );
                    },
                    suggestionsCallback: (String? value) async {
                      return value == null || value.isEmpty
                          ? list
                          : search(value, list, widget.onAddNew);
                    },
                  );
                },
              );
            });
      }),
    );
  }
}
class InvoiceCodePopUpCall extends StatefulWidget {
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final bool enable;

  final List<String>? list;
  const InvoiceCodePopUpCall({
    Key? key,
    this.value,
    required this.type,
    this.onAddNew,
    required this.enable,
    required this.onSelection,
    this.list,
  }) : super(key: key);

  @override
  _InvoiceCodePopUpCallState createState() => _InvoiceCodePopUpCallState();
}

class _InvoiceCodePopUpCallState extends State<InvoiceCodePopUpCall> {
  String? label;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;
    return BlocProvider<SalesinvoicecodeCubit>(
      create: (context) => SalesinvoicecodeCubit(),
      child: Builder(builder: (context) {
        context.read<SalesinvoicecodeCubit>().getInvoiceCode();

        return BlocBuilder<SalesinvoicecodeCubit, SalesinvoicecodeState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Center(
                  child: CircularProgressIndicator(),
                ),
                error: () => SizedBox(),
                // errorLoader(widget.onAddNew),
                success: (data) {
                  List<String> list = [];
                  int? length=data.length;
                  // list=data.orderTypes;
                  for(var i=0;i<length;i++){
                    list.add(data?[i]?.invoiceCode??"" );

                  }

                  SalesInvoiceCodeModel? onSellingBasedSelect(var value, List<SalesInvoiceCodeModel> list) {
                    SalesInvoiceCodeModel ? newData;
                    list.forEach((element) {
                      if (element.invoiceCode != null &&
                          element.invoiceCode?.toLowerCase() == (value.toLowerCase())) newData = element;
                      if (element.id != null &&
                          element.id == (value.toLowerCase())) newData = element;


                    });
                    print("value" + value.toString());
                    // print("value"+list.toString());

                    // PurchaseOrdertype? newData;
                    // list.forEach((element) {
                    //   newData?.orderTypes?.add(element);
                    // });
                    return newData;
                  } // });

                  if (widget.onAddNew != null) list.add("Add new");
                  _controller = TextEditingController(text: label);
                  return TypeAheadFormField(
                    enabled: widget.enable,
                    hideSuggestionsOnKeyboardHide: true,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "required";
                      }
                    },
                    textFieldConfiguration: TextFieldConfiguration(
                        controller: _controller,
                        decoration: InputDecoration(
                            isDense: true,
                            enabledBorder:OutlineInputBorder(
                                borderRadius:BorderRadius.circular(2),

                                borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                            focusedBorder:   OutlineInputBorder(
                                borderRadius:BorderRadius.circular(2),

                                borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                            suffixIcon: Icon(Icons.more_horiz_rounded))),
                    onSuggestionSelected: (suggestion) {
                      if (suggestion == "Add new")
                        widget.onAddNew!();
                      else{
                        widget.onSelection(onSellingBasedSelect(
                            suggestion.toString(), data));

                      }
                      // widget.onSelection(
                      //     onSelect(suggestion.toString(), data ?? []));
                    },
                    itemBuilder: (context, suggestion) {
                      if (suggestion == "Add new")
                        return ListTile(
                          leading: Icon(Icons.add_circle_outline_outlined),
                          title: Text(suggestion.toString()),
                        );
                      return ListTile(
                        ////leading: Icon(Icons.shopping_cart_outlined),
                        title: Text(suggestion.toString()),
                      );
                    },
                    suggestionsCallback: (String? value) async {
                      return value == null || value.isEmpty
                          ? list
                          : search(value, list, widget.onAddNew);
                    },
                  );
                },
              );
            });
      }),
    );
  }
}
class CustomerIdListPopUpCall extends StatefulWidget {
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final bool enable;

  final List<String>? list;
  const CustomerIdListPopUpCall({
    Key? key,
    this.value,
    required this.type,
    this.onAddNew,
    required this.enable,
    required this.onSelection,
    this.list,
  }) : super(key: key);

  @override
  _CustomerIdListPopUpCallState createState() => _CustomerIdListPopUpCallState();
}

class _CustomerIdListPopUpCallState extends State<CustomerIdListPopUpCall> {
  String? label;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;
    return BlocProvider<CustomeridlistCubit>(
      create: (context) => CustomeridlistCubit(),
      child: Builder(builder: (context) {
        context.read<CustomeridlistCubit>().getCustomerId();

        return BlocBuilder<CustomeridlistCubit, CustomeridlistState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Center(
                  child: CircularProgressIndicator(),
                ),
                error: () => SizedBox(),
                // errorLoader(widget.onAddNew),
                success: (data) {
                  List<String> list = [];
                  int? length=data.length;
                  // list=data.orderTypes;
                  for(var i=0;i<length;i++){
                    list.add(data?[i]?.customerUserCode??"" );

                  }

                  CustomerIdCreationModel? onSellingBasedSelect(var value, List<CustomerIdCreationModel> list) {
                    CustomerIdCreationModel ? newData;
                    list.forEach((element) {
                      if (element.customerUserCode != null &&
                          element.customerUserCode?.toLowerCase() == (value.toLowerCase())) newData = element;
                      if (element.id != null &&
                          element.id == (value.toLowerCase())) newData = element;


                    });
                    print("value" + value.toString());
                    // print("value"+list.toString());

                    // PurchaseOrdertype? newData;
                    // list.forEach((element) {
                    //   newData?.orderTypes?.add(element);
                    // });
                    return newData;
                  }

                  if (widget.onAddNew != null) list.add("Add new");
                  _controller = TextEditingController(text: label);
                  return TypeAheadFormField(
                    enabled: widget.enable,
                    hideSuggestionsOnKeyboardHide: true,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "required";
                      }
                    },
                    textFieldConfiguration: TextFieldConfiguration(
                        controller: _controller,
                        decoration: InputDecoration(
                            isDense: true,
                            enabledBorder:OutlineInputBorder(
                                borderRadius:BorderRadius.circular(2),

                                borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                            focusedBorder:   OutlineInputBorder(
                                borderRadius:BorderRadius.circular(2),

                                borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                            suffixIcon: Icon(Icons.more_horiz_rounded))),
                    onSuggestionSelected: (suggestion) {
                      if (suggestion == "Add new")
                        widget.onAddNew!();
                      else{
                        widget.onSelection(onSellingBasedSelect(
                            suggestion.toString(), data));


                      }
                      // widget.onSelection(
                      //     onSelect(suggestion.toString(), data ?? []));
                    },
                    itemBuilder: (context, suggestion) {
                      if (suggestion == "Add new")
                        return ListTile(
                          leading: Icon(Icons.add_circle_outline_outlined),
                          title: Text(suggestion.toString()),
                        );
                      return ListTile(
                        ////leading: Icon(Icons.shopping_cart_outlined),
                        title: Text(suggestion.toString()),
                      );
                    },
                    suggestionsCallback: (String? value) async {
                      return value == null || value.isEmpty
                          ? list
                          : search(value, list, widget.onAddNew);
                    },
                  );
                },
              );
            });
      }),
    );
  }
}


List<String> search(String value, List<String> list, VoidCallback? onAddNew) {
  List<String> newList = [];
  list.forEach((element) {
    if (element.toLowerCase().contains(value.toLowerCase()))
      newList.add(element);
  });
  onAddNew != null ? newList.add("Add new") : null;
  return newList;
}
class customeridlistPopupcall2 extends StatefulWidget {
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final bool enable;

  final List<String>? list;
  const customeridlistPopupcall2({
    Key? key,
    this.value,
    required this.type,
    this.onAddNew,
    required this.enable,
    required this.onSelection,
    this.list,
  }) : super(key: key);

  @override
  _customeridlistPopupcall2State createState() => _customeridlistPopupcall2State();
}

class _customeridlistPopupcall2State extends State<customeridlistPopupcall2> {
  String? label;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    label = widget.value;
    return BlocProvider<CustomeridlistCubit>(
      create: (context) => CustomeridlistCubit(),
      child: Builder(builder: (context) {
        context.read<CustomeridlistCubit>().getCustomerId();

        return BlocBuilder<CustomeridlistCubit, CustomeridlistState>(
            builder: (context, state) {
              print("Statatatatat"+state.toString());
              return state.maybeWhen(
                orElse: () => Center(
                  child: CircularProgressIndicator(),
                ),
                error: () => SizedBox(),
                // errorLoader(widget.onAddNew),
                success: (data) {
                  List<String> list = [];
                  int? length=data.length;
                  // list=data.orderTypes;
                  for(var i=0;i<length;i++){
                    list.add(data?[i]?.customerUserCode??"" );

                  }

                  CustomerIdCreationModel? onSellingBasedSelect(var value, List<CustomerIdCreationModel> list) {
                    CustomerIdCreationModel ? newData;
                    list.forEach((element) {
                      if (element.customerUserCode != null &&
                          element.customerUserCode?.toLowerCase() == (value.toLowerCase())) newData = element;
                      if (element.id != null &&
                          element.id == (value.toLowerCase())) newData = element;


                    });
                    print("value" + value.toString());
                    // print("value"+list.toString());

                    // PurchaseOrdertype? newData;
                    // list.forEach((element) {
                    //   newData?.orderTypes?.add(element);
                    // });
                    return newData;
                  } // });

                  if (widget.onAddNew != null) list.add("Add new");
                  _controller = TextEditingController(text: label);
                  return TypeAheadFormField(
                    enabled: widget.enable,
                    hideSuggestionsOnKeyboardHide: true,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "required";
                      }
                    },
                    textFieldConfiguration: TextFieldConfiguration(
                        controller: _controller,
                        decoration: InputDecoration(
                            isDense: true,
                            enabledBorder:OutlineInputBorder(
                                borderRadius:BorderRadius.circular(2),

                                borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                            focusedBorder:   OutlineInputBorder(
                                borderRadius:BorderRadius.circular(2),

                                borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                            suffixIcon: Icon(Icons.more_horiz_rounded))),
                    onSuggestionSelected: (suggestion) {
                      if (suggestion == "Add new")
                        widget.onAddNew!();
                      else{
                        widget.onSelection(onSellingBasedSelect(
                            suggestion.toString(), data));

                      }
                      // widget.onSelection(
                      //     onSelect(suggestion.toString(), data ?? []));
                    },
                    itemBuilder: (context, suggestion) {
                      if (suggestion == "Add new")
                        return ListTile(
                          leading: Icon(Icons.add_circle_outline_outlined),
                          title: Text(suggestion.toString()),
                        );
                      return ListTile(
                        leading: Icon(Icons.shopping_cart_outlined),
                        title: Text(suggestion.toString()),
                      );
                    },
                    suggestionsCallback: (String? value) async {
                      return value == null || value.isEmpty
                          ? list
                          : search1(value, list, widget.onAddNew);
                    },
                  );
                },
              );
            });
      }),
    );
  }
}
List<String> search1(String value, List<String> list, VoidCallback? onAddNew) {
  List<String> newList = [];
  list.forEach((element) {
    if (element.toLowerCase().contains(value.toLowerCase()))
      newList.add(element);
  });
  onAddNew != null ? newList.add("Add new") : null;
  return newList;
}





class BrandListPopUpCall extends StatefulWidget {
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final Function? onchange;
  final String type;
  final bool enable;

  final List<String>? list;
  const BrandListPopUpCall({
    Key? key,
    this.value,
    this.onchange,
    required this.type,
    this.onAddNew,
    required this.enable,
    required this.onSelection,
    this.list,
  }) : super(key: key);

  @override
  _BrandListPopUpCallState createState() => _BrandListPopUpCallState();
}

class _BrandListPopUpCallState extends State<BrandListPopUpCall> {
  String? label;
  String? hintText;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    search3(BuildContext ctx,value){
      print("enterd"+value.toString());
      context.read<Listbrand2Cubit>().searchSlotSectionPageList(value);

    }
    label = widget.value;
    return BlocProvider<Listbrand2Cubit>(
      create: (context) => Listbrand2Cubit(),
      child: Builder(builder: (context) {
        context.read<Listbrand2Cubit>().getSlotSectionPage();

        return BlocBuilder<Listbrand2Cubit, Listbrand2State>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Center(
                  child: CircularProgressIndicator(),
                ),
                error: () => SizedBox(),
                // errorLoader(widget.onAddNew),
                success: (data) {
                  print("anagha"+data.toString());
                  List<String> list = [];
                  int length=data.data.length;
                  // list=data.orderTypes;
                  for(var i=0;i<length;i++){
                    list.add(data?.data[i].name??"" );

                  }

                  BrandListModel? onSellingBasedSelect(var value, List<BrandListModel> list) {
                    BrandListModel ? newData;
                    list.forEach((element) {
                      if (element.name != null &&
                          element.name?.toLowerCase() == (value.toLowerCase())) newData = element;
                      if (element.id != null &&
                          element.id == (value.toLowerCase())) newData = element;


                    });
                    print("value" + value.toString());
                    // print("value"+list.toString());

                    // PurchaseOrdertype? newData;
                    // list.forEach((element) {
                    //   newData?.orderTypes?.add(element);
                    // });
                    return newData;
                  } // });

                  if (widget.onAddNew != null) list.add("Add new");
                  _controller = TextEditingController(text: label);
                  // hintText = label;

                  return Container(

                    child: TypeAheadFormField(

                      enabled: widget.enable,
                      hideSuggestionsOnKeyboardHide: true,
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "required";
                        }
                      },
                      textFieldConfiguration: TextFieldConfiguration(
                          style: TextStyle(fontSize: 13),

                        onChanged: (va){
                        print(va);
                        search3(context, va);
                        // context.read<Listbrand2Cubit>().searchSlotSectionPageList(va);

                        },
                          controller: _controller,
                          decoration: InputDecoration(
                            // hintText: hintText,
                              isDense: true,
                              enabledBorder:OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(2),

                                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                              focusedBorder:   OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(2),

                                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                              suffixIcon: Icon(Icons.more_horiz_rounded))),

                      onSuggestionSelected: (suggestion) {
                        if (suggestion == "Add new")
                          widget.onAddNew!();
                        else{
                          widget.onSelection(onSellingBasedSelect(
                              suggestion.toString(), data.data));

                        }
                        // widget.onSelection(
                        //     onSelect(suggestion.toString(), data ?? []));
                      },
                      itemBuilder: (context, suggestion) {
                        if (suggestion == "Add new")
                          return Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.add_circle_outline_outlined),
                                title: Text(suggestion.toString()),
                              ),
                            ],
                          );
                        return ListTile(
                          ////leading: Icon(Icons.shopping_cart_outlined),
                          title: Text(suggestion.toString()),
                        );
                      },
                      suggestionsCallback: (String? value) async {
                        return value == null || value.isEmpty
                            ? list
                            : search(value, list, widget.onAddNew);
                      },
                    ),
                  );
                },
              );
            });
      }),
    );
  }
}


class MaterialListPopUpCall extends StatefulWidget {
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final Function? onchange;
  final String type;
  final bool enable;

  final List<String>? list;
  const MaterialListPopUpCall({
    Key? key,
    this.value,
    this.onchange,
    required this.type,
    this.onAddNew,
    required this.enable,
    required this.onSelection,
    this.list,
  }) : super(key: key);

  @override
  _MaterialListPopUpCall createState() => _MaterialListPopUpCall();
}

class _MaterialListPopUpCall extends State<MaterialListPopUpCall> {
  String? label;
  String? hintText;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    search3(BuildContext ctx,value){
      print("enterd"+value.toString());
      context.read<MaterialListCubit>().searchMaterialList(value);

    }
    label = widget.value;
    return Builder(builder: (context) {
      context.read<MaterialListCubit>().getMaterialList();

      return BlocBuilder<MaterialListCubit, MaterialListState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => Center(
                child: CircularProgressIndicator(),
              ),
              error: () => SizedBox(),
              // errorLoader(widget.onAddNew),
              success: (data) {
                print("anagha"+data.toString());
                List<String> list = [];
                int length=data.data.length;
                // list=data.orderTypes;
                for(var i=0;i<length;i++){
                  list.add(data?.data[i].name??"" );

                }

                BrandListModel? onSellingBasedSelect(var value, List<BrandListModel> list) {
                  BrandListModel ? newData;
                  list.forEach((element) {
                    if (element.name != null &&
                        element.name?.toLowerCase() == (value.toLowerCase())) newData = element;
                    if (element.id != null &&
                        element.id == (value.toLowerCase())) newData = element;


                  });
                  print("value" + value.toString());
                  // print("value"+list.toString());

                  // PurchaseOrdertype? newData;
                  // list.forEach((element) {
                  //   newData?.orderTypes?.add(element);
                  // });
                  return newData;
                } // });

                if (widget.onAddNew != null) list.add("Add new");
                _controller = TextEditingController(text: label);
                // hintText = label;

                return Container(

                  child: TypeAheadFormField(

                    enabled: widget.enable,
                    hideSuggestionsOnKeyboardHide: true,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "required";
                      }
                    },
                    textFieldConfiguration: TextFieldConfiguration(
                        style: TextStyle(fontSize: 13),

                        onChanged: (va){
                          print(va);
                          search3(context, va);
                          // context.read<MaterialListCubit>().searchMaterialList(va);

                        },
                        controller: _controller,
                        decoration: InputDecoration(
                          // hintText: hintText,
                            isDense: true,
                            enabledBorder:OutlineInputBorder(
                                borderRadius:BorderRadius.circular(2),

                                borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                            focusedBorder:   OutlineInputBorder(
                                borderRadius:BorderRadius.circular(2),

                                borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                            // border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.more_horiz_rounded))),

                    onSuggestionSelected: (suggestion) {
                      if (suggestion == "Add new")
                        widget.onAddNew!();
                      else{
                        widget.onSelection(onSellingBasedSelect(
                            suggestion.toString(), data.data));

                      }
                      // widget.onSelection(
                      //     onSelect(suggestion.toString(), data ?? []));
                    },
                    itemBuilder: (context, suggestion) {
                      if (suggestion == "Add new")
                        return Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.add_circle_outline_outlined),
                              title: Text(suggestion.toString()),
                            ),
                          ],
                        );
                      return ListTile(
                        ////leading: Icon(Icons.shopping_cart_outlined),
                        title: Text(suggestion.toString()),
                      );
                    },
                    suggestionsCallback: (String? value) async {
                      return value == null || value.isEmpty
                          ? list
                          : search(value, list, widget.onAddNew);
                    },
                  ),
                );
              },
            );
          });
    });
  }
}


class DivisionListPopUpCall extends StatefulWidget {
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final Function? onchange;
  final String type;
  final bool enable;

  final List<String>? list;
  const DivisionListPopUpCall({
    Key? key,
    this.value,
    this.onchange,
    required this.type,
    this.onAddNew,
    required this.enable,
    required this.onSelection,
    this.list,
  }) : super(key: key);

  @override
  _DivisionListPopUpCall createState() => _DivisionListPopUpCall();
}

class _DivisionListPopUpCall extends State<DivisionListPopUpCall> {
  String? label;
  String? hintText;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    context.read<DevisionListCubit>().getDevisionList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    search3(BuildContext ctx,value){
      print("enterd"+value.toString());
      // context.read<DevisionListCubit>().searchDevisionList(value);

    }
    label = widget.value;
    return Builder(builder: (context) {
        // context.read<DevisionListCubit>().getDevisionList();

        return BlocBuilder<DevisionListCubit, DevisionListState>(
            builder: (context, state) {
              print("nishafd"+state.toString());
              return state.maybeWhen(
                orElse: () => Center(
                  child: CircularProgressIndicator(),
                ),
                error: () => SizedBox(),
                // errorLoader(widget.onAddNew),
                success: (data) {
                  print("appuram3"+data.toString());
                  List<String> list = [];
                  int length=data.data.length;
                  // list=data.orderTypes;
                  for(var i=0;i<length;i++){
                    list.add(data?.data[i].name??"" );

                  }

                  BrandListModel? onSellingBasedSelect(var value, List<BrandListModel> list) {
                    BrandListModel ? newData;
                    list.forEach((element) {
                      if (element.name != null &&
                          element.name?.toLowerCase() == (value.toLowerCase())) newData = element;
                      if (element.id != null &&
                          element.id == (value.toLowerCase())) newData = element;


                    });
                    print("value" + value.toString());
                    // print("value"+list.toString());

                    // PurchaseOrdertype? newData;
                    // list.forEach((element) {
                    //   newData?.orderTypes?.add(element);
                    // });
                    return newData;
                  } // });

                  if (widget.onAddNew != null) list.add("Add new");
                  _controller = TextEditingController(text: label);
                  // hintText = label;

                  return Container(

                    child: TypeAheadFormField(

                      enabled: widget.enable,
                      hideSuggestionsOnKeyboardHide: true,
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "required";
                        }
                      },
                      textFieldConfiguration: TextFieldConfiguration(
                          style: TextStyle(fontSize: 13),

                          onChanged: (va){
                            print(va);
                            search3(context, va);
                            // context.read<MaterialListCubit>().searchMaterialList(va);

                          },
                          controller: _controller,
                          decoration: InputDecoration(
                            // hintText: hintText,
                              isDense: true,
                              // border: OutlineInputBorder(),
                              enabledBorder:OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(2),

                                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                              focusedBorder:   OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(2),

                                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                              suffixIcon: Icon(Icons.more_horiz_rounded))),

                      onSuggestionSelected: (suggestion) {
                        if (suggestion == "Add new")
                          widget.onAddNew!();
                        else{
                          widget.onSelection(onSellingBasedSelect(
                              suggestion.toString(), data.data));

                        }
                        // widget.onSelection(
                        //     onSelect(suggestion.toString(), data ?? []));
                      },
                      itemBuilder: (context, suggestion) {
                        if (suggestion == "Add new")
                          return Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.add_circle_outline_outlined),
                                title: Text(suggestion.toString()),
                              ),
                            ],
                          );
                        return ListTile(
                          ////leading: Icon(Icons.shopping_cart_outlined),
                          title: Text(suggestion.toString()),
                        );
                      },
                      suggestionsCallback: (String? value) async {
                        return value == null || value.isEmpty
                            ? list
                            : search(value, list, widget.onAddNew);
                      },
                    ),
                  );
                },
              );
            });
      });
  }
}



class VariantSerachPopUpCall extends StatefulWidget {
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final Function? onchange;
  final String type;
  final bool enable;

  final List<String>? list;
  const VariantSerachPopUpCall({
    Key? key,
    this.value,
    this.onchange,
    required this.type,
    this.onAddNew,
    required this.enable,
    required this.onSelection,
    this.list,
  }) : super(key: key);

  @override
  _VariantSerachPopUpCall createState() => _VariantSerachPopUpCall();
}

class _VariantSerachPopUpCall extends State<VariantSerachPopUpCall> {
  String? label;
  String? hintText;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    search3(BuildContext ctx,value){
      print("enterd"+value.toString());
      context.read<DevisionListCubit>().searchDevisionList(value);

    }
    label = widget.value;
    return BlocProvider(
      create: (context) => VariantselectionCubit(),
      child: Builder(builder: (context) {
        context.read<VariantselectionCubit>().getVariantSelectionList(Variable.variantSearchId);

        return BlocBuilder<VariantselectionCubit, VariantselectionState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Center(
                  child: CircularProgressIndicator(),
                ),
                error: () => SizedBox(),
                // errorLoader(widget.onAddNew),
                success: (data) {
                  print("anagha"+data.toString());
                  List<String> list = [];
                  int length=data.data.length;
                  // list=data.orderTypes;
                  for(var i=0;i<length;i++){
                    list.add(data?.data[i].name??"" );

                  }

                  BrandListModel? onSellingBasedSelect(var value, List<BrandListModel> list) {
                    BrandListModel ? newData;
                    list.forEach((element) {
                      if (element.name != null &&
                          element.name?.toLowerCase() == (value.toLowerCase())) newData = element;
                      if (element.id != null &&
                          element.id == (value.toLowerCase())) newData = element;


                    });
                    print("value" + value.toString());
                    // print("value"+list.toString());

                    // PurchaseOrdertype? newData;
                    // list.forEach((element) {
                    //   newData?.orderTypes?.add(element);
                    // });
                    return newData;
                  } // });

                  if (widget.onAddNew != null) list.add("Add new");
                  _controller = TextEditingController(text: label);
                  // hintText = label;

                  return Container(

                    child: TypeAheadFormField(

                      enabled: widget.enable,
                      hideSuggestionsOnKeyboardHide: true,
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "required";
                        }
                      },
                      textFieldConfiguration: TextFieldConfiguration(
                          style: TextStyle(fontSize: 13),

                          onChanged: (va){
                            print(va);
                            search3(context, va);
                            // context.read<MaterialListCubit>().searchMaterialList(va);

                          },
                          controller: _controller,
                          decoration: InputDecoration(
                            // hintText: hintText,
                              isDense: true,
                              // border: OutlineInputBorder(),
                              enabledBorder:OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(2),

                                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                              focusedBorder:   OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(2),

                                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                              suffixIcon: Icon(Icons.more_horiz_rounded))),

                      onSuggestionSelected: (suggestion) {
                        if (suggestion == "Add new")
                          widget.onAddNew!();
                        else{
                          widget.onSelection(onSellingBasedSelect(
                              suggestion.toString(), data.data));

                        }
                        // widget.onSelection(
                        //     onSelect(suggestion.toString(), data ?? []));
                      },
                      itemBuilder: (context, suggestion) {
                        if (suggestion == "Add new")
                          return Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.add_circle_outline_outlined),
                                title: Text(suggestion.toString()),
                              ),
                            ],
                          );
                        return ListTile(
                          ////leading: Icon(Icons.shopping_cart_outlined),
                          title: Text(suggestion.toString()),
                        );
                      },
                      suggestionsCallback: (String? value) async {
                        return value == null || value.isEmpty
                            ? list
                            : search(value, list, widget.onAddNew);
                      },
                    ),
                  );
                },
              );
            });
      }),
    );
  }
}

class CategoryListPopUpCall extends StatefulWidget {
  final String? value;
  final String? apiType;
  final int? id;

  final VoidCallback? onAddNew;
  final Function onSelection;
  final Function? onchange;
  final String type;
  final bool enable;

  final List<String>? list;
  const CategoryListPopUpCall({
    Key? key,
    this.value,
    this.apiType,
    this.onchange,
    required this.type,
    this.onAddNew,
    this.id,
    required this.enable,
    required this.onSelection,
    this.list,
  }) : super(key: key);

  @override
  _CategoryListPopUpCall createState() => _CategoryListPopUpCall();
}

class _CategoryListPopUpCall extends State<CategoryListPopUpCall> {
  String? label;
  String? hintText;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    search3(BuildContext ctx,value){
      print("enterd"+value.toString());
      context.read<CategorylistCubit>().searchCategoryist(value,type:widget.apiType);

    }
    label = widget.value;
    return BlocProvider(
  create: (context) => CategorylistCubit(),
  child: Builder(builder: (context) {
      context.read<CategorylistCubit>().getCategoryist(type:widget.apiType??"");

      return BlocBuilder<CategorylistCubit, CategorylistState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => Center(
                child: CircularProgressIndicator(),
              ),
              error: () => SizedBox(),
              // errorLoader(widget.onAddNew),
              success: (data) {
                print("anagha"+data.toString());
                List<String> list = [];
                int length=data.data.length;
                // list=data.orderTypes;
                for(var i=0;i<length;i++){
                  list.add(data?.data[i].name??"" );

                }

                BrandListModel? onSellingBasedSelect(var value, List<BrandListModel> list) {
                  BrandListModel ? newData;
                  list.forEach((element) {
                    if (element.name != null &&
                        element.name?.toLowerCase() == (value.toLowerCase())) newData = element;
                    if (element.id != null &&
                        element.id == (value.toLowerCase())) newData = element;


                  });
                  print("value" + value.toString());
                  // print("value"+list.toString());

                  // PurchaseOrdertype? newData;
                  // list.forEach((element) {
                  //   newData?.orderTypes?.add(element);
                  // });
                  return newData;
                } // });

                if (widget.onAddNew != null) list.add("Add new");
                _controller = TextEditingController(text: label);
                // hintText = label;

                return Container(

                  child: TypeAheadFormField(

                    enabled: widget.enable,
                    hideSuggestionsOnKeyboardHide: true,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "required";
                      }
                    },
                    textFieldConfiguration: TextFieldConfiguration(
                        style: TextStyle(fontSize: 13),

                        onChanged: (va){
                          print("ui searching value"+va.toString());  widget!.onchange!(va);

                          // context.read<MaterialListCubit>().searchMaterialList(va);

                        },
                        controller: _controller,
                        decoration: InputDecoration(
                          // hintText: hintText,
                            isDense: true,
                            // border: OutlineInputBorder(),
                            enabledBorder:OutlineInputBorder(
                                borderRadius:BorderRadius.circular(2),

                                borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                            focusedBorder:   OutlineInputBorder(
                                borderRadius:BorderRadius.circular(2),

                                borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                            suffixIcon: Icon(Icons.more_horiz_rounded))),

                    onSuggestionSelected: (suggestion) {
                      if (suggestion == "Add new")
                        widget.onAddNew!();
                      else{
                        widget.onSelection(onSellingBasedSelect(
                            suggestion.toString(), data.data));

                      }
                      // widget.onSelection(
                      //     onSelect(suggestion.toString(), data ?? []));
                    },
                    itemBuilder: (context, suggestion) {
                      if (suggestion == "Add new")
                        return Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.add_circle_outline_outlined),
                              title: Text(suggestion.toString()),
                            ),
                          ],
                        );
                      return ListTile(
                        ////leading: Icon(Icons.shopping_cart_outlined),
                        title: Text(suggestion.toString()),
                      );
                    },
                    suggestionsCallback: (String? value) async {
                      return value == null || value.isEmpty
                          ? list
                          : search(value, list, widget.onAddNew);
                    },
                  ),
                );
              },
            );
          });
    }),
);
  }
}



class GroupPopUpCall extends StatefulWidget {
  final String? value;
  final int? id;

  final VoidCallback? onAddNew;
  final Function onSelection;
  final Function? onchange;
  final String type;
  final bool enable;

  final List<String>? list;
  const GroupPopUpCall({
    Key? key,
    this.value,
    this.onchange,
    required this.type,
    this.onAddNew,
    this.id,
    required this.enable,
    required this.onSelection,
    this.list,
  }) : super(key: key);

  @override
  _GroupPopUpCall createState() => _GroupPopUpCall();
}

class _GroupPopUpCall extends State<GroupPopUpCall> {
  String? label;
  String? hintText;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    search3(BuildContext ctx,value){
      print("enterd"+value.toString());
      context.read<GrouplistCubit>().searchGroupList(value);

    }
    label = widget.value;
    return BlocProvider(
      create: (context) => GrouplistCubit(),
      child: Builder(builder: (context) {
        context.read<GrouplistCubit>().getGroupListList();

        return BlocBuilder<GrouplistCubit, GrouplistState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Center(
                  child: CircularProgressIndicator(),
                ),
                error: () => SizedBox(),
                // errorLoader(widget.onAddNew),
                success: (data) {
                  print("anagha"+data.toString());
                  List<String> list = [];
                  int length=data.data.length;
                  // list=data.orderTypes;
                  for(var i=0;i<length;i++){
                    list.add(data?.data[i].name??"" );

                  }

                  BrandListModel? onSellingBasedSelect(var value, List<BrandListModel> list) {
                    BrandListModel ? newData;
                    list.forEach((element) {
                      if (element.name != null &&
                          element.name?.toLowerCase() == (value.toLowerCase())) newData = element;
                      if (element.id != null &&
                          element.id == (value.toLowerCase())) newData = element;


                    });
                    print("value" + value.toString());
                    // print("value"+list.toString());

                    // PurchaseOrdertype? newData;
                    // list.forEach((element) {
                    //   newData?.orderTypes?.add(element);
                    // });
                    return newData;
                  } // });

                  if (widget.onAddNew != null) list.add("Add new");
                  _controller = TextEditingController(text: label);
                  // hintText = label;

                  return Container(

                    child: TypeAheadFormField(

                      enabled: widget.enable,
                      hideSuggestionsOnKeyboardHide: true,
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "required";
                        }
                      },
                      textFieldConfiguration: TextFieldConfiguration(
                          style: TextStyle(fontSize: 13),

                          onChanged: (va){
                            print(va);
                            search3(context, va);
                            // context.read<MaterialListCubit>().searchMaterialList(va);

                          },
                          controller: _controller,
                          decoration: InputDecoration(
                            // hintText: hintText,
                              isDense: true,
                              enabledBorder:OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(2),

                                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                              focusedBorder:   OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(2),

                                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                              // border: OutlineInputBorder(),
                              suffixIcon: Icon(Icons.more_horiz_rounded))),

                      onSuggestionSelected: (suggestion) {
                        if (suggestion == "Add new")
                          widget.onAddNew!();
                        else{
                          widget.onSelection(onSellingBasedSelect(
                              suggestion.toString(), data.data));

                        }
                        // widget.onSelection(
                        //     onSelect(suggestion.toString(), data ?? []));
                      },
                      itemBuilder: (context, suggestion) {
                        if (suggestion == "Add new")
                          return Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.add_circle_outline_outlined),
                                title: Text(suggestion.toString()),
                              ),
                            ],
                          );
                        return ListTile(
                          ////leading: Icon(Icons.shopping_cart_outlined),
                          title: Text(suggestion.toString()),
                        );
                      },
                      suggestionsCallback: (String? value) async {
                        return value == null || value.isEmpty
                            ? list
                            : search(value, list, widget.onAddNew);
                      },
                    ),
                  );
                },
              );
            });
      }),
    );
  }
}






class StaticListPopUpCall extends StatefulWidget {
  final String? value;

  final VoidCallback? onAddNew;
  final Function onSelection;
  final Function? onchange;
  final String type;
  final bool enable;

  final List<String>? list;
  const StaticListPopUpCall({
    Key? key,
    this.value,
    this.onchange,
    required this.type,
    this.onAddNew,
    required this.enable,
    required this.onSelection,
    this.list,
  }) : super(key: key);

  @override
  _StaticListPopUpCall createState() => _StaticListPopUpCall();
}

class _StaticListPopUpCall extends State<StaticListPopUpCall> {
  String? label;
  String? hintText;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    search3(BuildContext ctx,value){
      print("enterd"+value.toString());
      context.read<ListstaticCubit>().searchStaticPageList(value);

    }
    label = widget.value;
    return BlocProvider(
      create: (context) => ListstaticCubit(),
      child: Builder(builder: (context) {
        context.read<ListstaticCubit>().getStaticList();

        return BlocBuilder<ListstaticCubit, ListstaticState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Center(
                  child: CircularProgressIndicator(),
                ),
                error: () => SizedBox(),
                // errorLoader(widget.onAddNew),
                success: (data) {
                  print("anagha"+data.toString());
                  List<String> list = [];
                  int length=data.data.length;
                  // list=data.orderTypes;
                  for(var i=0;i<length;i++){
                    list.add(data?.data[i].name??"" );

                  }

                  BrandListModel? onSellingBasedSelect(var value, List<BrandListModel> list) {
                    BrandListModel ? newData;
                    list.forEach((element) {
                      if (element.name != null &&
                          element.name?.toLowerCase() == (value.toLowerCase())) newData = element;
                      if (element.id != null &&
                          element.id == (value.toLowerCase())) newData = element;


                    });
                    print("value" + value.toString());
                    // print("value"+list.toString());

                    // PurchaseOrdertype? newData;
                    // list.forEach((element) {
                    //   newData?.orderTypes?.add(element);
                    // });
                    return newData;
                  } // });

                  if (widget.onAddNew != null) list.add("Add new");
                  _controller = TextEditingController(text: label);
                  // hintText = label;

                  return Container(

                    child: TypeAheadFormField(


                      enabled: widget.enable,
                      hideSuggestionsOnKeyboardHide: true,
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "required";
                        }
                      },
                      textFieldConfiguration: TextFieldConfiguration(
                          style: TextStyle(fontSize: 13),

                          onChanged: (va){
                            print(va);
                            search3(context, va);
                            // context.read<MaterialListCubit>().searchMaterialList(va);

                          },
                          controller: _controller,
                          decoration: InputDecoration(
                            // hintText: hintText,
                              isDense: true,
                              // border: OutlineInputBorder(),
                              enabledBorder:OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(2),

                                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                              focusedBorder:   OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(2),

                                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                              suffixIcon: Icon(Icons.more_horiz_rounded))),

                      onSuggestionSelected: (suggestion) {
                        if (suggestion == "Add new")
                          widget.onAddNew!();
                        else{
                          widget.onSelection(onSellingBasedSelect(
                              suggestion.toString(), data.data));

                        }
                        // widget.onSelection(
                        //     onSelect(suggestion.toString(), data ?? []));
                      },
                      itemBuilder: (context, suggestion) {
                        if (suggestion == "Add new")
                          return Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.add_circle_outline_outlined),
                                title: Text(suggestion.toString()),
                              ),
                            ],
                          );
                        return ListTile(
                          ////leading: Icon(Icons.shopping_cart_outlined),
                          title: Text(suggestion.toString()),
                        );
                      },
                      suggestionsCallback: (String? value) async {
                        return value == null || value.isEmpty
                            ? list
                            : search(value, list, widget.onAddNew);
                      },
                    ),
                  );
                },
              );
            });
      }),
    );
  }
}



class UomgroupPopUpCall extends StatefulWidget {
  final String? value;

  final VoidCallback? onAddNew;
  final Function onSelection;
  final Function(String)? onchange;
  final String type;
  final bool enable;

  final List<String>? list;
  const UomgroupPopUpCall({
    Key? key,
    this.value,
    this.onchange,
    required this.type,
    this.onAddNew,
    required this.enable,
    required this.onSelection,
    this.list,
  }) : super(key: key);

  @override
  _UomgroupPopUpCall createState() => _UomgroupPopUpCall();
}

class _UomgroupPopUpCall extends State<UomgroupPopUpCall> {
  String? label;
  String? hintText;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    context.read<UomgruoplistCubit>().getUomGroupist();
    setState(() {

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    search3(BuildContext ctx,value){
      print("enterd"+value.toString());
      context.read<UomgruoplistCubit>().searchUomgroupList(value);

    }
    label = widget.value;
    return BlocProvider(
      create: (context) => UomgruoplistCubit(),
      child: Builder(builder: (context) {
        context.read<UomgruoplistCubit>().getUomGroupist();

        return BlocBuilder<UomgruoplistCubit, UomgruoplistState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Center(
                  child: CircularProgressIndicator(),
                ),
                error: () => SizedBox(),
                // errorLoader(widget.onAddNew),
                success: (data) {
                  print("anagha"+data.toString());
                  List<String> list = [];
                  int length=data.data.length;
                  // list=data.orderTypes;
                  for(var i=0;i<length;i++){
                    list.add(data?.data[i].name??"" );

                  }

                  BrandListModel? onSellingBasedSelect(var value, List<BrandListModel> list) {
                    BrandListModel ? newData;
                    list.forEach((element) {
                      if (element.name != null &&
                          element.name?.toLowerCase() == (value.toLowerCase())) newData = element;
                      if (element.id != null &&
                          element.id == (value.toLowerCase())) newData = element;


                    });
                    print("value" + value.toString());
                    // print("value"+list.toString());

                    // PurchaseOrdertype? newData;
                    // list.forEach((element) {
                    //   newData?.orderTypes?.add(element);
                    // });
                    return newData;
                  } // });

                  if (widget.onAddNew != null) list.add("Add new");
                  _controller = TextEditingController(text: label);
                  // hintText = label;

                  return Container(

                    child: TypeAheadFormField(

                      enabled: widget.enable,
                      hideSuggestionsOnKeyboardHide: true,
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "required";
                        }
                      },
                      textFieldConfiguration: TextFieldConfiguration(
                          style: TextStyle(fontSize: 13),

                          onChanged: (va){
                            print(va);
                          if(widget.onchange!=null)  widget.onchange!(va);
                            // search3(context, va);
                            // context.read<MaterialListCubit>().searchMaterialList(va);

                          },
                          controller: _controller,
                          decoration: InputDecoration(
                            // hintText: hintText,
                              isDense: true,
                                       enabledBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(2),

                          borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                        focusedBorder:   OutlineInputBorder(
                            borderRadius:BorderRadius.circular(2),

                            borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                              suffixIcon: Icon(Icons.more_horiz_rounded))),

                      onSuggestionSelected: (suggestion) {
                        if (suggestion == "Add new")
                          widget.onAddNew!();
                        else{
                          widget.onSelection(onSellingBasedSelect(
                              suggestion.toString(), data.data));

                        }
                        // widget.onSelection(
                        //     onSelect(suggestion.toString(), data ?? []));
                      },
                      itemBuilder: (context, suggestion) {
                        if (suggestion == "Add new")
                          return Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.add_circle_outline_outlined),
                                title: Text(suggestion.toString()),
                              ),
                            ],
                          );
                        return ListTile(
                          ////leading: Icon(Icons.shopping_cart_outlined),
                          title: Text(suggestion.toString()),
                        );
                      },
                      suggestionsCallback: (String? value) async {
                        return value == null || value.isEmpty
                            ? list
                            : search(value, list, widget.onAddNew);
                      },
                    ),
                  );
                },
              );
            });
      }),
    );
  }
}


class UomPopUpCall extends StatefulWidget {
  final String? value;

  final VoidCallback? onAddNew;
  final Function onSelection;
  final Function? onchange;
  final String type;
  final bool enable;

  final List<String>? list;
  const UomPopUpCall({
    Key? key,
    this.value,
    this.onchange,
    required this.type,
    this.onAddNew,
    required this.enable,
    required this.onSelection,
    this.list,
  }) : super(key: key);

  @override
  _UomPopUpCall createState() => _UomPopUpCall();
}

class _UomPopUpCall extends State<UomPopUpCall> {
  String? label;
  String? hintText;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {

    setState(() {

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    search3(BuildContext ctx,value){
      print("enterd"+value.toString());
      context.read<BaseuomlistCubit>().searchUomList(value);

    }
    label = widget.value;
    return BlocProvider(
      create: (context) => BaseuomlistCubit(),
      child: Builder(builder: (context) {
        context.read<BaseuomlistCubit>().getUomist();

        return BlocBuilder<BaseuomlistCubit, BaseuomlistState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Center(
                  child: CircularProgressIndicator(),
                ),
                error: () => SizedBox(),
                // errorLoader(widget.onAddNew),
                success: (data) {
                  print("anagha"+data.toString());
                  List<String> list = [];
                  int length=data.data.length;
                  // list=data.orderTypes;
                  for(var i=0;i<length;i++){
                    list.add(data?.data[i].name??"" );

                  }

                  BrandListModel? onSellingBasedSelect(var value, List<BrandListModel> list) {
                    BrandListModel ? newData;
                    list.forEach((element) {
                      if (element.name != null &&
                          element.name?.toLowerCase() == (value.toLowerCase())) newData = element;
                      if (element.id != null &&
                          element.id == (value.toLowerCase())) newData = element;


                    });
                    print("value" + value.toString());
                    // print("value"+list.toString());

                    // PurchaseOrdertype? newData;
                    // list.forEach((element) {
                    //   newData?.orderTypes?.add(element);
                    // });
                    return newData;
                  } // });

                  if (widget.onAddNew != null) list.add("Add new");
                  _controller = TextEditingController(text: label);
                  // hintText = label;

                  return Container(

                    child: TypeAheadFormField(

                      enabled: widget.enable,
                      hideSuggestionsOnKeyboardHide: true,
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "required";
                        }
                      },
                      textFieldConfiguration: TextFieldConfiguration(
                          style: TextStyle(fontSize: 13),

                          onChanged: (va){
                            print(va);
                            search3(context, va);
                            // context.read<MaterialListCubit>().searchMaterialList(va);

                          },
                          controller: _controller,
                          decoration: InputDecoration(
                            // hintText: hintText,
                              isDense: true,
                              enabledBorder:OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(2),

                                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                              focusedBorder:   OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(2),

                                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                              suffixIcon: Icon(Icons.more_horiz_rounded))),

                      onSuggestionSelected: (suggestion) {
                        if (suggestion == "Add new")
                          widget.onAddNew!();
                        else{
                          widget.onSelection(onSellingBasedSelect(
                              suggestion.toString(), data.data));

                        }
                        // widget.onSelection(
                        //     onSelect(suggestion.toString(), data ?? []));
                      },
                      itemBuilder: (context, suggestion) {
                        if (suggestion == "Add new")
                          return Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.add_circle_outline_outlined),
                                title: Text(suggestion.toString()),
                              ),
                            ],
                          );
                        return ListTile(
                          ////leading: Icon(Icons.shopping_cart_outlined),
                          title: Text(suggestion.toString()),
                        );
                      },
                      suggestionsCallback: (String? value) async {
                        return value == null || value.isEmpty
                            ? list
                            : search(value, list, widget.onAddNew);
                      },
                    ),
                  );
                },
              );
            });
      }),
    );
  }
}




class SalesUomPopUpCall extends StatefulWidget {
  final String? value;
  final int ? id;

  final VoidCallback? onAddNew;
  final Function onSelection;
  final Function? onchange;
  final String type;
  final bool enable;

  final List<String>? list;
  const SalesUomPopUpCall({
    Key? key,
    this.value,
    this.onchange,
    this.id,
    required this.type,
    this.onAddNew,
    required this.enable,
    required this.onSelection,
    this.list,
  }) : super(key: key);

  @override
  _SalesUomPopUpCall createState() => _SalesUomPopUpCall();
}

class _SalesUomPopUpCall extends State<SalesUomPopUpCall> {
  String? label;
  String? hintText;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {

    setState(() {

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    search3(BuildContext ctx,value){
      print("enterd"+value.toString());
      context.read<BaseuomlistCubit>().searchUomList(value);

    }
    label = widget.value;
    return BlocProvider(
      create: (context) => SalesListCubit(),
      child: Builder(builder: (context) {
        context.read<SalesListCubit>().getSalesList(id: widget.id);

        return BlocBuilder<SalesListCubit, SalesListState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Center(
                  child: CircularProgressIndicator(),
                ),
                error: () =>    TextFormField (




                        controller:
                        TextEditingController(text: widget.value),
                        onTap: () {},
                        decoration: InputDecoration(
                            enabledBorder:OutlineInputBorder(
                                borderRadius:BorderRadius.circular(2),


                                borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                            focusedBorder:   OutlineInputBorder(
                                borderRadius:BorderRadius.circular(2),

                                borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                            isDense: true,
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.more_horiz_rounded)),),
                // errorLoader(widget.onAddNew),
                success: (data) {
                  print("anagha"+data.toString());
                  List<String> list = [];
                  int length=data.data.length;
                  // list=data.orderTypes;
                  for(var i=0;i<length;i++){
                    list.add(data?.data[i].name??"" );

                  }

                  BrandListModel? onSellingBasedSelect(var value, List<BrandListModel> list) {
                    BrandListModel ? newData;
                    list.forEach((element) {
                      if (element.name != null &&
                          element.name?.toLowerCase() == (value.toLowerCase())) newData = element;
                      if (element.id != null &&
                          element.id == (value.toLowerCase())) newData = element;


                    });
                    print("value" + value.toString());
                    // print("value"+list.toString());

                    // PurchaseOrdertype? newData;
                    // list.forEach((element) {
                    //   newData?.orderTypes?.add(element);
                    // });
                    return newData;
                  } // });

                  if (widget.onAddNew != null) list.add("Add new");
                  _controller = TextEditingController(text: label);
                  // hintText = label;

                  return Container(

                    child: TypeAheadFormField(

                      enabled: widget.enable,
                      hideSuggestionsOnKeyboardHide: true,
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "required";
                        }
                      },
                      textFieldConfiguration: TextFieldConfiguration(
                          style: TextStyle(fontSize: 13),

                          onChanged: (va){
                            print(va);
                            search3(context, va);
                            // context.read<MaterialListCubit>().searchMaterialList(va);

                          },
                          controller: _controller,
                          decoration: InputDecoration(
                            // hintText: hintText,
                              isDense: true,
                              enabledBorder:OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(2),

                                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                              focusedBorder:   OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(2),

                                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                              suffixIcon: Icon(Icons.more_horiz_rounded))),

                      onSuggestionSelected: (suggestion) {
                        if (suggestion == "Add new")
                          widget.onAddNew!();
                        else{
                          widget.onSelection(onSellingBasedSelect(
                              suggestion.toString(), data.data));

                        }
                        // widget.onSelection(
                        //     onSelect(suggestion.toString(), data ?? []));
                      },
                      itemBuilder: (context, suggestion) {
                        if (suggestion == "Add new")
                          return Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.add_circle_outline_outlined),
                                title: Text(suggestion.toString()),
                              ),
                            ],
                          );
                        return ListTile(
                          ////leading: Icon(Icons.shopping_cart_outlined),
                          title: Text(suggestion.toString()),
                        );
                      },
                      suggestionsCallback: (String? value) async {
                        return value == null || value.isEmpty
                            ? list
                            : search(value, list, widget.onAddNew);
                      },
                    ),
                  );
                },
              );
            });
      }),
    );
  }
}







class SeblingUomPopUpCall extends StatefulWidget {
  final String? value;
  final int ? id;

  final VoidCallback? onAddNew;
  final Function onSelection;
  final Function? onchange;
  final String type;
  final bool enable;

  final List<String>? list;
  const SeblingUomPopUpCall({
    Key? key,
    this.value,
    this.onchange,
    this.id,
    required this.type,
    this.onAddNew,
    required this.enable,
    required this.onSelection,
    this.list,
  }) : super(key: key);

  @override
  _SeblingUomPopUpCall createState() => _SeblingUomPopUpCall();
}

class _SeblingUomPopUpCall extends State<SeblingUomPopUpCall> {
  String? label;
  String? hintText;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {

    setState(() {

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    search3(BuildContext ctx,value){
      print("enterd"+value.toString());
      context.read<BaseuomlistCubit>().searchUomList(value);

    }
    label = widget.value;
    return BlocProvider(
  create: (context) => ListvraiantCubit(),
  child: Builder(builder: (context) {
      context.read<ListvraiantCubit>().getVariantList();

      return BlocBuilder<ListvraiantCubit, ListvraiantState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => Center(
                child: CircularProgressIndicator(),
              ),
              error: () =>    TextFormField (




                controller:
                TextEditingController(text: widget.value),
                onTap: () {},
                decoration: InputDecoration(
                    enabledBorder:OutlineInputBorder(
                        borderRadius:BorderRadius.circular(2),


                        borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                    focusedBorder:   OutlineInputBorder(
                        borderRadius:BorderRadius.circular(2),

                        borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.06))),
                    isDense: true,
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.more_horiz_rounded)),),
              // errorLoader(widget.onAddNew),
              success: (data) {
                print("anagha"+data.toString());
                List<String> list = [];
                int length=data.data.length;
                // list=data.orderTypes;
                for(var i=0;i<length;i++){
                  list.add(data?.data[i].name??"" );

                }

                BrandListModel? onSellingBasedSelect(var value, List<BrandListModel> list) {
                  BrandListModel ? newData;
                  list.forEach((element) {
                    if (element.name != null &&
                        element.name?.toLowerCase() == (value.toLowerCase())) newData = element;
                    if (element.id != null &&
                        element.id == (value.toLowerCase())) newData = element;


                  });
                  print("value" + value.toString());
                  // print("value"+list.toString());

                  // PurchaseOrdertype? newData;
                  // list.forEach((element) {
                  //   newData?.orderTypes?.add(element);
                  // });
                  return newData;
                } // });

                if (widget.onAddNew != null) list.add("Add new");
                _controller = TextEditingController(text: label);
                // hintText = label;

                return Container(

                  child: TypeAheadFormField(

                    enabled: widget.enable,
                    hideSuggestionsOnKeyboardHide: true,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "required";
                      }
                    },
                    textFieldConfiguration: TextFieldConfiguration(
                        style: TextStyle(fontSize: 13),

                        onChanged: (va){
                          print(va);
                          search3(context, va);
                          // context.read<MaterialListCubit>().searchMaterialList(va);

                        },
                        controller: _controller,
                        decoration: InputDecoration(
                          // hintText: hintText,
                            isDense: true,
                            enabledBorder:OutlineInputBorder(
                                borderRadius:BorderRadius.circular(2),

                                borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                            focusedBorder:   OutlineInputBorder(
                                borderRadius:BorderRadius.circular(2),

                                borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                            suffixIcon: Icon(Icons.more_horiz_rounded))),

                    onSuggestionSelected: (suggestion) {
                      if (suggestion == "Add new")
                        widget.onAddNew!();
                      else{
                        widget.onSelection(onSellingBasedSelect(
                            suggestion.toString(), data.data));

                      }
                      // widget.onSelection(
                      //     onSelect(suggestion.toString(), data ?? []));
                    },
                    itemBuilder: (context, suggestion) {
                      if (suggestion == "Add new")
                        return Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.add_circle_outline_outlined),
                              title: Text(suggestion.toString()),
                            ),
                          ],
                        );
                      return ListTile(
                        ////leading: Icon(Icons.shopping_cart_outlined),
                        title: Text(suggestion.toString()),
                      );
                    },
                    suggestionsCallback: (String? value) async {
                      return value == null || value.isEmpty
                          ? list
                          : search(value, list, widget.onAddNew);
                    },
                  ),
                );
              },
            );
          });
    }),
);
  }
}






class SubcategoryPopUpCall extends StatefulWidget {
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final Function? onchange;
  final String type;
  final bool enable;

  final List<String>? list;
  const SubcategoryPopUpCall({
    Key? key,
    this.value,
    this.onchange,
    required this.type,
    this.onAddNew,
    required this.enable,
    required this.onSelection,
    this.list,
  }) : super(key: key);

  @override
  _SubcategoryPopUpCall createState() => _SubcategoryPopUpCall();
}

class _SubcategoryPopUpCall extends State<SubcategoryPopUpCall> {
  String? label;
  String? hintText;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    search3(BuildContext ctx,value){
      print("enterd"+value.toString());
      context.read<SubcategoryCubit>().searchSubCategoryList(value);

    }
    label = widget.value;
    return BlocProvider(
      create: (context) => SubcategoryCubit(),
      child: Builder(builder: (context) {
        context.read<SubcategoryCubit>().getSubCategoryList();

        return BlocBuilder<SubcategoryCubit, SubcategoryState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Center(
                  child: CircularProgressIndicator(),
                ),
                error: () => SizedBox(),
                // errorLoader(widget.onAddNew),
                success: (data) {
                  print("anagha"+data.toString());
                  List<String> list = [];
                  int length=data.data.length;
                  // list=data.orderTypes;
                  for(var i=0;i<length;i++){
                    list.add(data?.data[i].name??"" );

                  }

                  BrandListModel? onSellingBasedSelect(var value, List<BrandListModel> list) {
                    BrandListModel ? newData;
                    list.forEach((element) {
                      if (element.name != null &&
                          element.name?.toLowerCase() == (value.toLowerCase())) newData = element;
                      if (element.id != null &&
                          element.id == (value.toLowerCase())) newData = element;


                    });
                    print("value" + value.toString());
                    // print("value"+list.toString());

                    // PurchaseOrdertype? newData;
                    // list.forEach((element) {
                    //   newData?.orderTypes?.add(element);
                    // });
                    return newData;
                  } // });

                  if (widget.onAddNew != null) list.add("Add new");
                  _controller = TextEditingController(text: label);
                  // hintText = label;

                  return Container(

                    child: TypeAheadFormField(

                      enabled: widget.enable,
                      hideSuggestionsOnKeyboardHide: true,
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "required";
                        }
                      },
                      textFieldConfiguration: TextFieldConfiguration(
                          style: TextStyle(fontSize: 13),

                          onChanged: (va){
                            print(va);
                            search3(context, va);
                            // context.read<MaterialListCubit>().searchMaterialList(va);

                          },
                          controller: _controller,
                          decoration: InputDecoration(
                            // hintText: hintText,
                              isDense: true,
                              // border: OutlineInputBorder(),
                              enabledBorder:OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(2),

                                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                              focusedBorder:   OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(2),

                                  borderSide: BorderSide(color: Color(0xff3E4F5B).withOpacity(.1))),
                              suffixIcon: Icon(Icons.more_horiz_rounded))),

                      onSuggestionSelected: (suggestion) {
                        if (suggestion == "Add new")
                          widget.onAddNew!();
                        else{
                          widget.onSelection(onSellingBasedSelect(
                              suggestion.toString(), data.data));

                        }
                        // widget.onSelection(
                        //     onSelect(suggestion.toString(), data ?? []));
                      },
                      itemBuilder: (context, suggestion) {
                        if (suggestion == "Add new")
                          return Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.add_circle_outline_outlined),
                                title: Text(suggestion.toString()),
                              ),
                            ],
                          );
                        return ListTile(
                          ////leading: Icon(Icons.shopping_cart_outlined),
                          title: Text(suggestion.toString()),
                        );
                      },
                      suggestionsCallback: (String? value) async {
                        return value == null || value.isEmpty
                            ? list
                            : search(value, list, widget.onAddNew);
                      },
                    ),
                  );
                },
              );
            });
      }),
    );
  }
}