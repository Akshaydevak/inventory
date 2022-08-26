import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory/Screens/Dashboard.dart';
import 'package:inventory/Screens/logi/logincubit/logincubit_cubit.dart';
import 'package:inventory/Screens/register/model/register.dart';
import 'package:inventory/Screens/register/screens/registerscreen.dart';

import 'package:inventory/commonWidget/buttons.dart';
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

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
  providers: [
    BlocProvider(
  create: (context) => LogincubitCubit(),
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
            // final SharedPreferences sharedPreferences =
            //     await SharedPreferences.getInstance();
            // sharedPreferences.setString('token',
            //     data.data2["token"] ?? "");
            RegisterModel user = data.data2;
            UserPreferences().saveUser(user);
            UserPreferences().getUser().then((user) {
              Variable.token=user.token??"";
              if(user.isLoggedIn==true)
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>
                        DashBoard(),));

              // print("Session Password :" +user.lastname.toString());
            },);

            // Variable.isLoggedIn = true;
            // print(state);

          } else {
            // changeIndex(0);
            context.showSnackBarError(data.data2);
          }
        });
  },
),

  ],
  child: Scaffold(
          backgroundColor: Color(0xff687892),
          body: Center(
            child: Container(
              height:height/1.5,
              width:height/2,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height/10,),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                      child: Text('Sign in',style: TextStyle(color: Colors.black,fontWeight:FontWeight.w600,fontSize: height*0.03),)),
                  SizedBox(height: 9,),
                  NewInputCard(controller: emailController, title: "EMAIL ID"),
                  SizedBox(height: 9,),
                  NewInputCard(controller: passwordController, title: "PASSWORD",password: true),

                  SizedBox(height: 9,),
                  NewInputCard(controller: empCode, title: "EMP code",password: true),
                  LoginButton(
                    label: "sign in",
                    onpress: (){
                      context.read<LogincubitCubit>().getLogin(emailController.text,passwordController.text,empCode.text);

                    },
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
        width: 320,
        margin:  EdgeInsets.symmetric(horizontal: 13),
        color: Colors.black,
        height: widget.height,
        child: Center(child: Text(widget.label,style: TextStyle(color: widget.labelColor),)),

      ),
    );
  }
}
