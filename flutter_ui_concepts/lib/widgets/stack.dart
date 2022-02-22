import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget'),
      ),
      body: Stack(
        children: [
          Positioned(
            // top: 100,
            // left: 100,
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  image: DecorationImage(
                      image: AssetImage('assests/myImage.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            left: 20,
            top: 20,
            child: Container(
              height: 50,
              width: 50,
              color: Colors.yellowAccent,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              width: 50,
              color: Colors.greenAccent,
            ),
          )
        ],
      ),
    );
  }
}
