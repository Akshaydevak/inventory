import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Invetory/inventorysearch_cubit.dart';
import 'package:inventory/Screens/Dashboard.dart';
import 'package:inventory/cubits/cubit/cubit/general_purchase_read_cubit.dart';
import 'package:inventory/widgets/itemmenu.dart';
import 'package:inventory/widgets/searchTextfield.dart';
import 'package:provider/src/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:inventory/model/purchaseorder.dart';

class VerticalList extends StatefulWidget {
  final TextEditingController itemsearch;
  final   List<PurchaseOrder> result ;
   int selectedVertical;
   final Function(int) ontap;
  VerticalList({ required this.itemsearch,required this.result, required this.selectedVertical,required this.ontap});
  @override
  _VerticalListState createState() => _VerticalListState();
}

class _VerticalListState extends State<VerticalList> {
  late AutoScrollController controller;
  int? veritiaclid=0;
  List<PurchaseOrder>result=[];
  bool select=false;
  int selectedVertical=0;
  TextEditingController itemsearch=TextEditingController();
  @override
  void initState() {

    int verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
    // context.read<InventorysearchCubit>().getSearch("code").then((value) {
    //   print("ak test"+value.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
  //     child: BlocProvider(
  // create: (context) => InventorysearchCubit()..getInventorySearch("code"),
  child: Builder(
    builder: (context) {
      return BlocConsumer<InventorysearchCubit, InventorysearchState>(
  listener: (context, state) {
    state.maybeWhen(orElse:(){},
        error: (){
          print("error");
        },
        success: (list){
          print("listtt"+list.toString());
          result=list.data;setState(() {
            print("Here is the result");
            print(result);
            print(result[0].id);
          });

        }
    );
  },
  builder: (context, state) {
    return Container(
      height: double.infinity,
            margin: EdgeInsets.all(10),
            child:
            Visibility(
              visible: true,
              child: Container(
                height: height,
                // height: double.minPositive,
                width: width * .172,
                //width: 232,
                color: Color(0xffEDF1F2),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.all(5),
                        child: SearchTextfiled(
                          color: Color(0xffFAFAFA),
                          hintText: "Search...",
                          ctrlr:widget. itemsearch,
                          onChanged: (va) {
                            print("searching case"+va.toString());
                            context
                                .read<InventorysearchCubit>()
                                .getSearch(widget.itemsearch.text);
                            if(va==""){
                              context
                                  .read<InventorysearchCubit>()
                                  .getInventorySearch("code");

                            }

                          },
                        )),
                    SizedBox(
                      height:
                      MediaQuery.of(context).size.height * .008,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: width * 0.009,
                        right: width * 0.007,
                      ),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RectangleContainer(
                              "asset/rect1.png", context),
                          SizedBox(
                            width: width * .003,
                          ),
                          Container(
                            color: Color(0xffFFFFFF),

                            height: width * .0197,
                            width: width * .111,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: width * .001,
                                ),
                                Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: width * .007,
                                ),
                                Container(
                                  child: Text(
                                    "Add a Varient",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: width * .010,
                                        overflow:
                                        TextOverflow.ellipsis),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width * .003,
                          ),
                          RectangleContainer(
                              "asset/rect2.png", context),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * .015,
                    ),

                    Expanded(
                        child: Container(
                            height: 0,
                            child: ListView.separated(
                              separatorBuilder: (context, index) {
                                return Divider(
                                  height: 0,
                                  color: Color(0xff2B3944)
                                      .withOpacity(0.3),
                                  // thickness: 1,
                                );
                              },
                              physics: ScrollPhysics(),
                              controller: controller,
                              itemBuilder: (context, index) {
                                return AutoScrollTag(
                                    highlightColor: Colors.red,
                                    controller: controller,
                                    key: ValueKey(index),
                                    index: index,
                                    child: ItemCard(
                                      index: index,
                                      selectedVertical:widget. selectedVertical,
                                      item: widget.result[index].orderCode,
                                      id:widget. result[index]
                                          .id
                                          .toString(),
                                      onClick: () {
                                        widget.ontap( index);

                                      },
                                    ));
                              },
                              itemCount: result.length,
                            )


                        ))
                  ],
                ),
              ),
            ),
          );
  },
);
    }
  ),

    );

  }
}
