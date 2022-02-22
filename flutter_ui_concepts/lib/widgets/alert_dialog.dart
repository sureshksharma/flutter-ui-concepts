import 'package:flutter/material.dart';

class AlertWidget extends StatefulWidget {
  const AlertWidget({Key? key}) : super(key: key);

  @override
  _AlertWidgetState createState() => _AlertWidgetState();
}

class _AlertWidgetState extends State<AlertWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alert Dialog')),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showDialog(context);
            },
            child: const Text('Show Alert')),
      ),
    );
  }
}

Future<void> _showDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          // backgroundColor: Colors.black,
          elevation: 0,
          scrollable: true,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: const Text('This is an alert'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('This is demo alert dialog'),
                Text('Created by Suresh K.')
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text('Approve'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            )
          ],
        );
      });
}
