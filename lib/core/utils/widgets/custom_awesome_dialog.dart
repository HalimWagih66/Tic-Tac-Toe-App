import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

Future customAwesomeDialog(
    {required BuildContext context,
    String title = "Winner",
    required String desc,
      String btnCancelText = "Reset Game",
    void Function()? btnOkOnPress,
      String btnOkText = "Continuation",
    void Function()? btnCancelOnPress,
      DialogType dialogType = DialogType.success
    }) {
    return AwesomeDialog(
      context: context,
      animType: AnimType.topSlide,
      title: title,
      desc: desc,
      dialogType: dialogType,
      dialogBackgroundColor: const Color(0xff075d8f),
      showCloseIcon: false,
      dismissOnTouchOutside: false,
      btnCancelOnPress: btnCancelOnPress,
      btnCancelText: btnCancelText,
      btnCancelColor: Colors.red,
      btnOkColor: Colors.green,
      titleTextStyle:const TextStyle(color: Colors.white,fontSize: 22),
      descTextStyle: const TextStyle(color: Colors.white),
      btnOkOnPress: btnOkOnPress,
      btnOkText: btnOkText,
    ).show();
}

