
import 'package:inventory/Screens/register/model/register.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  Future<bool> saveUser(RegisterModel user) async {
    print("prefs.getString(username) in Saving :");
print(user);
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    //prefs.setInt("userId", user.userId);
    prefs.setString('username', user?.fname??"");
    prefs.setString('token', user?.token??"");

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
  }
  Future<RegisterModel> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    print("############################");

    String?  username = prefs.getString("username");
    bool?  isLoggedIn = prefs.getBool("isLoggedIn");
    String?  token = prefs.getString("token");
    print("username"+username.toString());
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
      token: token
      // password: password,
      //   msg:msg,
      //   address:address,
      //   mobile:mobile

    );

  }

}