import 'package:fluttertoast/fluttertoast.dart';

void showToast(String msg) {
  Fluttertoast.showToast(msg: msg);
}

void showToastLong(String msg) {
  Fluttertoast.showToast(msg: msg, toastLength: Toast.LENGTH_LONG);
}
