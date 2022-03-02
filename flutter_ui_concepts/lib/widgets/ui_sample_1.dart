import 'package:flutter/material.dart';

class UiSample1 extends StatefulWidget {
  const UiSample1({Key? key}) : super(key: key);

  @override
  State<UiSample1> createState() => _UiSample1State();
}

class _UiSample1State extends State<UiSample1> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                  height: 500,
                  // color: Colors.yellow,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          height: 450,
                          decoration: BoxDecoration(
                            // color: Colors.red,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://images.pexels.com/photos/9786969/pexels-photo-9786969.jpeg?auto=compress&cs=tinysrgb&h=650&w=940'),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 24,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&h=650&w=940'),
                          radius: 50,
                        ),
                      ),
                      Positioned(
                        top: 75,
                        right: 24,
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        top: 75,
                        left: 24,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            // color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Madrid City Tour for Designers',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'This is a random descrition of the topic',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade200,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                rowIconText('20', Icons.favorite_rounded),
                rowIconText('34', Icons.upload),
                rowIconText('82', Icons.message),
                rowIconText('295', Icons.face),
              ],
            ),
          ),
          Divider(),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.'),
          ),
        ],
      )),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 5),
        Icon(icon),
      ],
    );
  }
}
