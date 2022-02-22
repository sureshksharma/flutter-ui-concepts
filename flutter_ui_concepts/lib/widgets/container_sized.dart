import 'package:flutter/material.dart';

class Container_Size extends StatelessWidget {
  const Container_Size({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Container and SizedBox"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(8.0),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
            // shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(20.0),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                blurRadius: 50.0,
                spreadRadius: 5,
                // color: Colors.green,
              ),
            ],
          ),
          child: Center(
            child: Container(
              margin: EdgeInsets.all(5.0),
              color: Colors.redAccent,
            ),
          ),
        ),
      ),
      // SizedBox(
      //   height: 100,
      //   width: 50,
      //   child: Text('Hello'),
      // ),
    );
  }
}
