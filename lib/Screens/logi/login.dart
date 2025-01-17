import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/Dashboard.dart';
import 'package:inventory/Screens/logi/inventorylist/inventorylist_cubit.dart';
import 'package:inventory/Screens/logi/logincubit/logincubit_cubit.dart';
import 'package:inventory/Screens/logi/model/inventorylistmodel.dart';
import 'package:inventory/Screens/register/model/register.dart';
import 'package:inventory/Screens/register/screens/registerscreen.dart';
import 'package:inventory/commonWidget/Colors.dart';

import 'package:inventory/commonWidget/buttons.dart';
import 'package:inventory/commonWidget/loading_widgets.dart';
import 'package:inventory/commonWidget/snackbar.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:inventory/widgets/NewinputScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../commonWidget/sharedpreference.dart';
import '../GeneralScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController empCode=TextEditingController();
List<  InventoryListModel> inventoryList=[];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
  providers: [
    BlocProvider(
  create: (context) => LogincubitCubit(),
),    BlocProvider(
  create: (context) => InventorylistCubit(),
),
 
  ],
  child: Builder(
    builder: (context) {
      return MultiBlocListener(
  listeners: [
    BlocListener<LogincubitCubit, LogincubitState>(
  listener: (context, state) {
    state.maybeWhen(
        orElse: () {},
        error: () {
          context.showSnackBarError("Login error !");
        },
        loading: () {
          context.showSnackBarNormal("Loading");
        },
        success: (data) async {
          print(data.data1);
          print(data.data2);
          //print(state);
          // context
          //     .read<InventoryIdListCubit>()
          //     .getInventoryIdList();

          if (data.data1) {
            print("DATAAAA OF LOGIN"+data.data2.toString());
            context.showSnackBarSuccess("Success");
            // final SharedPreferences sharedPreferences =
            //     await SharedPreferences.getInstance();
            // sharedPreferences.setString('token',
            //     data.data2["token"] ?? "");
            RegisterModel user = data.data2;
            Variable.loginLeage=user.legalEntiry.toString();
            Variable.username=user.fname.toString();
            Variable.created_by=user.employeeCode.toString();
            Variable.mobileNumber=user.mobile.toString();
            Variable.email=user.email.toString();
            // Variable.inventory_ID=user.fname.toString();




            UserPreferences().saveUser(user);
            context.read<InventorylistCubit>().getInventoryListRead(user.legalEntiry.toString());
            final SharedPreferences prefs =
            await SharedPreferences.getInstance();
            final List<String> strs = Variable.subIndex.map((e) => e.toString()).toList();
            prefs.setString('key', jsonEncode(strs));


            // Variable.isLoggedIn = true;
            // print(state);

          } else {
            // changeIndex(0);
            context.showSnackBarError(Variable.errorMessege);
          }
        });
  },
),
    BlocListener<InventorylistCubit, InventorylistState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            error: () {
              context.showSnackBarError("Login error !");
            },
            loading: () {
              context.showSnackBarNormal("Loading");
            },
            success: (data)  {
              print("welcome ther is something happening"+data.data.toString());
              inventoryList=data.data;

              if(inventoryList.isNotEmpty==true){
                setState(()   {
                  Variable.inventory_ID=inventoryList[0]?.businessUnitCode??"";
                  Variable.inventory_Name=inventoryList[0]?.name??"";

                  InventoryListModel model=InventoryListModel(
                    businessUnitCode: inventoryList[0]?.businessUnitCode??"",
                    name: inventoryList[0]?.name??""
                  );
                  UserPreferences().SaveInventoryList(model);
                  UserPreferences().saveInventoryList(inventoryList[0]);



                  print("Variable.inventory_Name"+Variable.inventory_Name.toString());

                  // final SharedPreferences prefs = await SharedPreferences.getInstance();
                  // prefs.setString("inventory", inventoryList![0].businessUnitCode.toString());
                  // prefs.setString("inventory_name", inventoryList![0].name.toString());
                });

              }

              print("invennnnn"+Variable.inventory_ID);



              UserPreferences().getUser().then((user) {
                Variable.token=user.token??"";
                if(user.isLoggedIn==true)
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>
                          DashBoard(),));

                // print("Session Password :" +user.lastname.toString());
              },);
              print(data);



              }
            );
      },
    ),

  ],
  child: Scaffold(
          backgroundColor: Color(0xff687892),
          body: Center(
            child:
            Container(
              height:height/1.5,
              width:height/1.5,

              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.circular(13)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height/17,),
                  Container(
                    margin: EdgeInsets.only(left: width*.03),
                      child: Text('Sign In',style: TextStyle(color: Colors.black,fontWeight:FontWeight.w600,fontSize: height*0.04),)),
                  SizedBox(height: height*.03,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: width*.012),

                      child: NewInputCard(controller: emailController, title: "EMAIL ID",height:height/16 ,)),
                  SizedBox(
                    height: height * .035,
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal:width*.012),
                      child: NewInputCard(controller: passwordController, title: "PASSWORD",password: true,height:height/16,)),

                  SizedBox(
                    height: height * .035,
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: width*.012),
                      child: NewInputCard(controller: empCode, title: "EMPLOYEE CODE",password: true,height: height/16,onChange: (va){
                        empCode.value =
                            empCode.value.copyWith(
                              text: va.toUpperCase(),
                              selection:
                              TextSelection.collapsed(offset: va.length),
                            );
                      },)),
                  SizedBox(
                    height: height * .075,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: width*.012),
                    child: LoginButton(
                      label: "SIGN IN",
                      onpress: (){
                        context.read<LogincubitCubit>().getLogin(emailController.text,passwordController.text,empCode.text);

                      },
                    ),
                  ),


                ],
              ),
            ),

          ),

        ),
);
    }
  ),
);
  }
}
class LoginButton extends StatefulWidget {
  final double height;
  final String label;
  final Color labelColor;
  final Function onpress;
  LoginButton({required this.label,this.height=40,required this.onpress,this.labelColor=Colors.white});


  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: (){
        widget.onpress();
      },
      child: Container(
        // width: double.infinity,
        margin:  EdgeInsets.symmetric(horizontal: width*.019),
        color: Pellet.tableBlueHeaderPrint,
        height: widget.height,
        child:
        // customCommonButtonProgressIndiactor(false,scale: .1)
        Center(child: Text(widget.label,style: TextStyle(color: widget.labelColor),)),

      ),
    );
  }
}
