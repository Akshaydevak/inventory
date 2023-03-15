import 'package:flutter/material.dart';
import 'package:inventory/Screens/promotiontab/muttibuy/screens/multibuy_segment_screen.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/commonWidget/Colors.dart';

class PromotionMultibuyMainScreen extends StatefulWidget {
  const PromotionMultibuyMainScreen({Key? key}) : super(key: key);

  @override
  State<PromotionMultibuyMainScreen> createState() => _PromotionMultibuyMainScreenState();
}

class _PromotionMultibuyMainScreenState extends State<PromotionMultibuyMainScreen> {
  List<Segment> segmentTable = [];
  final GlobalKey<SegmentMultibuyGrowableTableState> _segmnetState = GlobalKey<SegmentMultibuyGrowableTableState>();
  tableAssign(List<Segment> table1) {
    print("ethito");
    setState(() {
      segmentTable = List.from(table1);
      // _myWidgetState.currentState?.clear();
      // variantTable.clear();
      // saleApplyingCodeController.clear();
      // saleApplyingIdController.clear();
      // saleApplyingNameController.clear();
      // if(select==false){
      //   print("patch case");
      //   if(variantTable2.isNotEmpty){
      //     print("is Not empty");
      //     for(var i=0;i<variantTable2.length;i++){
      //       variantTable2[i]=variantTable2[i].copyWith(isActive: false);
      //     }
      //
      //     isSegmentClear=true;
      //   }
      // }
    });
  }
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return  Scaffold(
      backgroundColor: Pellet.bagroundColor,
      body: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              color: Colors.red,
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: height*.06,),
                  SegmentMultibuyGrowableTable(
                      key: _segmnetState,
                      table: segmentTable,
                      updation: tableAssign),
                  SizedBox(height: height*.04,),

                ],
              ),
            ))


          ],
        ),

      ),
    );
  }
}
