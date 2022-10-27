
import 'package:inventory/Screens/logi/model/inventorylistmodel.dart';
import 'package:inventory/Screens/register/model/register.dart';
import 'package:inventory/core/uttils/variable.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  Future<bool> saveUser(RegisterModel user) async {
    print("prefs.getString(username) in Saving :");
print(user);
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    //prefs.setInt("userId", user.userId);
    prefs.setString('username', user?.fname??"");
    prefs.setString('token', user?.token??"");
    prefs.setString('organizationCode', user?.organizationCode??"");
    prefs.setString('legalEntiry', user?.legalEntiry??"");
    prefs.setString('username', user?.fname??"");
    prefs.setString('empcode', user?.employeeCode??"");


    prefs.setBool("isLoggedIn", true);
    // prefs.setString("token", user.t);
    // prefs.setString("role", user.role);
    // prefs.setString("firstname", user.firstname);
    // prefs.setString("lastname", user.lastname);
    // prefs.setString(" email", user. email);
    // prefs.setString("password", user.password);
    // prefs.setString("msg", user.msg);
    // prefs.setString("address", user.address);
    //
    // prefs.setString("mobile", user.mobile);
    return prefs.commit();
  }  Future<bool> SaveInventoryList(InventoryListModel user) async {
    print("prefs.getString(username) in Saving :");
print(user);
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(
        "inventory",
        user.businessUnitCode.toString());
    prefs.setString("inventory_name",
        user.name.toString());

    // prefs.setString("token", user.t);
    // prefs.setString("role", user.role);
    // prefs.setString("firstname", user.firstname);
    // prefs.setString("lastname", user.lastname);
    // prefs.setString(" email", user. email);
    // prefs.setString("password", user.password);
    // prefs.setString("msg", user.msg);
    // prefs.setString("address", user.address);
    //
    // prefs.setString("mobile", user.mobile);
    return prefs.commit();
  }

  // Future<bool> saveInventry(List<InventoryListModel> buisness) async {
  //   print("prefs.getString(username) in Saving :");
  //
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //
  //   //prefs.setInt("userId", user.userId);
  //   prefs.setStringList('inventory', user?.fname??"");
  //
  //
  //
  //
  //   prefs.setBool("isLoggedIn", true);
  //   // prefs.setString("token", user.t);
  //   // prefs.setString("role", user.role);
  //   // prefs.setString("firstname", user.firstname);
  //   // prefs.setString("lastname", user.lastname);
  //   // prefs.setString(" email", user. email);
  //   // prefs.setString("password", user.password);
  //   // prefs.setString("msg", user.msg);
  //   // prefs.setString("address", user.address);
  //   //
  //   // prefs.setString("mobile", user.mobile);
  //   return prefs.commit();
  // }





  Future<RegisterModel> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    print("############################");

    String?  username = prefs.getString("username");
    bool?  isLoggedIn = prefs.getBool("isLoggedIn");
    String?  token = prefs.getString("token");
    String?  legalEntiry = prefs.getString("legalEntiry");
    String?  emplCode = prefs.getString("empcode");

    print("username"+token.toString());
    // String password = prefs.getString("password");
    // print("password"+password.toString());
    // String msg = prefs.getString("msg");
    // print("password"+msg.toString());


    // String address = prefs.getString("address");
    // print("password"+address.toString());
    // String mobile = prefs.getString("mobile");
    // print("password"+mobile.toString());
    return RegisterModel(
      fname: username,
      isLoggedIn: isLoggedIn,
      token: token,
      legalEntiry: legalEntiry,
      employeeCode: emplCode

      // password: password,
      //   msg:msg,
      //   address:address,
      //   mobile:mobile

    );

  }

}