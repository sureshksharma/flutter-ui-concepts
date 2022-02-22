import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({Key? key}) : super(key: key);

  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String selectedValue = 'Orange';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drop Down List'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 70,
            width: MediaQuery.of(context).size.width,
            child: DropdownButton<String>(
              dropdownColor: Colors.grey.shade200,
              isExpanded: true,
              value: selectedValue,
              icon: const Icon(Icons.arrow_drop_down_circle_outlined),
              onChanged: ((String? newValue) {
                setState(() {
                  selectedValue = newValue!;
                });
              }),
              items: <String>['Orange', 'Apple', 'Mango', 'Banana', 'Grapes']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
