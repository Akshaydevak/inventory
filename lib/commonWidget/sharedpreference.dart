
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
    prefs.setString('email', user?.email??"");
    prefs.setString('empcode', user?.employeeCode??"");
    prefs.setString('mobile', user?.mobile??"");
    prefs.setBool("isLoggedIn", true);

    return prefs.commit();
  }  Future<bool> SaveInventoryList(InventoryListModel user) async {
    print("prefs.getString(username) in Saving :");
print(user);
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(
        "inventory",
        user.businessUnitCode.toString());
    prefs.setString("inventory_name", user.name.toString());

    return prefs.commit();
  }







  Future<RegisterModel> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    print("############################");

    String?  username = prefs.getString("username");
    bool?  isLoggedIn = prefs.getBool("isLoggedIn");
    String?  token = prefs.getString("token");
    String?  legalEntiry = prefs.getString("legalEntiry");
    String?  emplCode = prefs.getString("empcode");
    String?  email = prefs.getString("email");
    String?  phoneNumber = prefs.getString("mobile");
    return RegisterModel(
      fname: username,
      isLoggedIn: isLoggedIn,
      token: token,
      legalEntiry: legalEntiry,
      employeeCode: emplCode,
      email: email,
      mobile:phoneNumber ,

      // password: password,
      //   msg:msg,
      //   address:address,
      //   mobile:mobile

    );

  }



  Future<bool> saveInventoryList(InventoryListModel model) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    print("############################");

    prefs.setString('contact', model?.contact?.primary??"");
    prefs.setString('addressOne', model?.addressOne??"");
    prefs.setString('addressTwo', model?.addressTwo??"");
    prefs.setString('landmark', model?.landMark??"");
    prefs.setString('name', model?.name??"");
    prefs.setString('inventoryEmail', model?.email??"");
    prefs.setBool("isInventoryListExist", true);


    return prefs.commit();

  }
  Future<InventoryListModel> getInventoryList() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    print("############################");

    String?  contact = prefs.getString("contact");

    String?  addressOne = prefs.getString("addressOne");
    String?  addressTwo = prefs.getString("addressTwo");
    String?  landMark = prefs.getString("landmark");
    String?  name = prefs.getString("name");
    String?  inventoryEmail = prefs.getString("inventoryEmail");
    bool?  inventoryExist = prefs.getBool("isInventoryListExist");

    return InventoryListModel(

      addressOne: addressOne,
      addressTwo: addressTwo,
      landMark: landMark,
      email: inventoryEmail,
      isInventoryExist:inventoryExist,
      name: name



    );

  }

}


