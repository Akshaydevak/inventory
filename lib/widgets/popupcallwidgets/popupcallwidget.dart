import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:inventory/Screens/purchasreturn/cubits/cubit/purchaseinvoice_cubit.dart';
import 'package:inventory/cubits/cubit/cubit/cubit/cubit/vendorcodecubit_cubit.dart';

import 'package:inventory/cubits/cubit/cubit/purchase_order_type_cubit_dart_cubit.dart';
import 'package:inventory/cubits/cubit/table_details_cubit_dart_cubit.dart';
import 'package:inventory/cubits/cubit/variant_id_cubit_dart_cubit.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/models/purchaseordertype/purchaseordertype.dart';
import 'package:inventory/purchaserecievingmodel/generatemissing.dart';
import 'package:inventory/requestformcubit/cubit/orderedperson_cubit.dart';
import 'package:inventory/requestformcubit/cubit/ordertype_cubit.dart';

class PopUpCall extends StatefulWidget {
  final String? value;
  final VoidCallback? onAddNew;
  final Function onSelection;
  final String type;
  final String? inventory;
  final String? vendorId;

  final bool enable;
  final List<String>? list;
  const PopUpCall(
      {Key? key,
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