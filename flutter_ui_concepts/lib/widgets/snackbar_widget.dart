import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar Widget'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                    action: SnackBarAction(
                      label: 'Undo',
                      textColor: Colors.blue,
                      onPressed: () {},
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    behavior: SnackBarBehavior.floating,
                    // padding: const EdgeInsets.all(20.0),
                    duration: const Duration(milliseconds: 3000),
                    // backgroundColor: Colors.redAccent,
                    content: Text('This is an error'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text('Show SnackBar')),
        ),
      ),
    );
  }
}
