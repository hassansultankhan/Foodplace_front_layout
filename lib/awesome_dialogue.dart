import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

void click(String data, String message, BuildContext c) {
  AwesomeDialog(
    context: c,
    dialogType: DialogType.INFO,
    animType: AnimType.SCALE,
    dialogBackgroundColor: Colors.white70,
    title: data,
    desc: message,
    descTextStyle: TextStyle(fontSize: 15),
    btnCancelOnPress: () {},
    btnOkOnPress: () {},
  ).show();
}
