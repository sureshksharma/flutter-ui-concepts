import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Rows & Columns'),
      ),
      body: Container(
        width: w,
        height: h,
        color: Colors.amber,
        child: Column(
            // direction: Axis.vertical, alignment: WrapAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 60,
                height: 60,
                color: Colors.red,
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.blue,
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.green,
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.purple,
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.black,
              ),
            ]),
      ),
    );
  }
}
