import 'package:flutter/material.dart';

showSnack(BuildContext context, String message) {
  final snackBar = SnackBar(
      // action: SnackBarAction(
      //   label: 'Undo',
      //   textColor: Colors.blue,
      //   onPressed: () {},
      // ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      behavior: SnackBarBehavior.floating,
      // padding: const EdgeInsets.all(20.0),
      duration: const Duration(milliseconds: 300),
      // backgroundColor: Colors.redAccent,
      content: Text(message));
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
