import 'package:flutter/material.dart';

class ListGrid extends StatelessWidget {
  const ListGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> fruits = ['Orange', 'Apple', 'Mango', 'Banana'];
    Map fruits_person = {
      'fruits': ['Orange', 'Apple', 'Mango', 'Banana'],
      'names': ['Karan', 'Akshit', 'Suresh', 'Manish']
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('List & Grid View'),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: Container(
        // child: ListView.builder(
        //   itemCount: fruits_person['fruits'].length,
        //   itemBuilder: (context, index) {
        //     return Card(
        //       child: ListTile(
        //         onTap: (() => print(fruits_person['fruits'][index])),
        //         leading: Icon(Icons.person),
        //         title: Text(fruits_person['fruits'][index]),
        //         subtitle: Text(fruits_person['names'][index]),
        //       ),
        //     );
        //   },
        // ),
        // child: GridView(
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 3,
        //       crossAxisSpacing: 20.0,
        //       mainAxisSpacing: 20.0,
        //       childAspectRatio: 2 / 3),
        //   children: [
        //     Card(
        //       child: Center(child: Text('Orange')),
        //     ),
        //     Card(
        //       child: Center(child: Text('Orange')),
        //     ),
        //     Card(
        //       child: Center(child: Text('Orange')),
        //     ),
        //     Card(
        //       child: Center(child: Text('Orange')),
        //     ),
        //     Card(
        //       child: Center(child: Text('Orange')),
        //     ),
        //     Card(
        //       child: Center(child: Text('Orange')),
        //     ),
        //   ],
        // ),
        child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: fruits.length,
            itemBuilder: (context, index) {
              return Card(
                child: Center(child: Text(fruits[index])),
              );
            }),
      ),
    );
  }
}
