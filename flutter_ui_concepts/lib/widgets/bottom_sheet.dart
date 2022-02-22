import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Sheet')),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Bottom Sheet'),
          onPressed: () {
            showModalBottomSheet(
                // backgroundColor: Theme.of(context).primaryColor,
                elevation: 0,
                isDismissible: false,
                enableDrag: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0))),
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('Suresh K.'),
                      ),
                      ListTile(
                        title: Text('Apple'),
                        subtitle: Text('K.K.'),
                      ),
                      ListTile(
                        title: Text('Banana'),
                        subtitle: Text('Anonymous'),
                      )
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
