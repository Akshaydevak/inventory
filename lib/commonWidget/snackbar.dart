import 'package:flutter/material.dart'
    show
    // BorderRadius,
    BuildContext,
    Colors,
    // EdgeInsets,
    // Icon,
    // Icons,
    ScaffoldMessenger,
    SnackBar,
    SnackBarBehavior,
    Text,
    TextAlign,
    // TextStyle,
    VoidCallback;


extension ViewUtils on BuildContext {
  void showSnackBarError(
      String message, {
        Duration duration = const Duration(seconds: 3),
        VoidCallback? onVisible,
      }) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      width: 400,
      content: Text(message, textAlign: TextAlign.center),
      backgroundColor: Colors.red,
      duration: duration,
      behavior: SnackBarBehavior.floating,
      onVisible: onVisible,
    ));
  }

  void showSnackBarSuccess(String message, [VoidCallback? onVisible]) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      backgroundColor: Colors.green,
      width: 400,
      content: Text(message, textAlign: TextAlign.center),
      duration: Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      onVisible: onVisible,
    ));
  }

  void showSnackBarNormal(String message, [VoidCallback? onVisible]) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      width: 400,
      content: Text(message, textAlign: TextAlign.center),
      duration: Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      onVisible: onVisible,
    ));
  }

  // void showToastError(String message) {
  //   Fluttertoast.showToast(
  //     msg: message,
  //     toastLength: Toast.LENGTH_LONG,
  //     gravity: ToastGravity.BOTTOM,
  //     timeInSecForIosWeb: 3,
  //     webShowClose: true,
  //     webPosition: "center",
  //     webBgColor: "#FF0000",
  //     backgroundColor: Colors.red,
  //     textColor: Colors.white,
  //     fontSize: 16.0,
  //   );
  // }

  // void showToast(String message) {
  //   Fluttertoast.showToast(
  //     msg: message,
  //     toastLength: Toast.LENGTH_LONG,
  //     gravity: ToastGravity.BOTTOM,
  //     timeInSecForIosWeb: 1,
  //     backgroundColor: Colors.green,
  //     textColor: Colors.white,
  //     fontSize: 16.0,
  //   );
  // }
// void showFlushBarError(String message, [String? title]) {
//   Flushbar(
//     margin: EdgeInsets.all(10),
//     borderRadius: BorderRadius.circular(8),
//     title: title,
//     icon: Icon(Icons.error),
//     backgroundColor: ColorsRes.lightRed,
//     barBlur: 10,
//     messageText: Text(
//       message,
//       style: TextStyle(color: Colors.white),
//     ),
//     duration: Duration(seconds: 3),
//     isDismissible: false,
//   )..show(this);
// }

// void showFlushBarSuccess(String message, [String? title]) {
//   Flushbar(
//     margin: EdgeInsets.all(10),
//     borderRadius: BorderRadius.circular(8),
//     title: title,
//     icon: Icon(Icons.check_circle_outline_rounded),
//     backgroundColor: ColorsRes.accentColor,
//     barBlur: 8,
//     messageText: Text(
//       message,
//       style: TextStyle(color: Colors.white),
//     ),
//     duration: Duration(seconds: 3),
//     isDismissible: false,
//   )..show(this);
// }
}
//
// void launchUrl(String url) {
//   urlLauncher.canLaunch(url).then((value) {
//     if (value) urlLauncher.launch(url);
//   });
// }
