import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({Key? key}) : super(key: key);

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> fruits = ['Orange', 'Apple', 'Mango', 'Grapes', 'Banana'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible Package'),
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, i) {
          return Dismissible(
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(fruits[i]),
                  backgroundColor: Colors.redAccent,
                ));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(fruits[i]),
                  backgroundColor: Colors.greenAccent,
                ));
              }
            },
            key: Key(fruits[i]),
            background: Container(
              color: Colors.redAccent,
            ),
            secondaryBackground: Container(
              color: Colors.greenAccent,
            ),
            child: Card(
              child: ListTile(
                title: Text(fruits[i]),
              ),
            ),
          );
        },
      ),
    );
  }
}
