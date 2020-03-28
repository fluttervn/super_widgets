import 'package:fluttertoast/fluttertoast.dart';

void showDefaultToast() {
  showToast('Action...');
}

void showToast(String msg) {
  Fluttertoast.showToast(msg: msg);
}

void showDefaultToastLong() {
  showToastLong('Action...');
}

void showToastLong(String msg) {
  Fluttertoast.showToast(msg: msg, toastLength: Toast.LENGTH_LONG);
}
