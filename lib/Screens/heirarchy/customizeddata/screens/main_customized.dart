import 'package:flutter/material.dart';
import 'package:inventory/Screens/heirarchy/customizeddata/screens/stabletable.dart';

class CustomisedMainScreen extends StatefulWidget {
  @override
  _CustomisedMainScreenState createState() => _CustomisedMainScreenState();
}

class _CustomisedMainScreenState extends State<CustomisedMainScreen> {
  TextEditingController groupController=TextEditingController();
  TextEditingController codeController=TextEditingController();
  TextEditingController minimumGpController=TextEditingController();
  TextEditingController averageGpController=TextEditingController();
  TextEditingController maximumGpController=TextEditingController();
  TextEditingController targetedGpController=TextEditingController();
  TextEditingController vatGpController=TextEditingController();
  TextEditingController excessTaxController=TextEditingController();
  TextEditingController returnTypeController=TextEditingController();
  TextEditingController returnTimeController=TextEditingController();
  TextEditingController weightUOMController=TextEditingController();
  TextEditingController heightController=TextEditingController();
  TextEditingController widthController=TextEditingController();
  TextEditingController lengthController=TextEditingController();
bool active=false;
  activeChange(bool active1) {

      active = active1;
      setState(() {});

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 50,
                color: Colors.red,
              ),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomizedStableTable(
                    width: widthController,
                    height: heightController,
                    weightUomId: weightUOMController,
                    length: lengthController,
                    returnTime: returnTimeController,
                    returnType: returnTypeController,
                    vat: vatGpController,
                    averageGp: averageGpController,maximumGp: maximumGpController,
                    minimumGp: minimumGpController,
                    active: active,
                    excessTax: excessTaxController,
                    activeChange:activeChange,
                    code: codeController,
                    group: groupController,
                    targetedGp: targetedGpController,

                  ),

                ],
              ))


            ],
          ),
        ),

      )
      ,
    );
  }
}
