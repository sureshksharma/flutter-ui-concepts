import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget'),
      ),
      body: Center(
        child: Container(
          child: CachedNetworkImage(
            imageUrl: 'https://image.pngaaa.com/199/3236199-middle.png',
            placeholder: (context, url) =>
                Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          // decoration: BoxDecoration(
          //   boxShadow: [
          //     BoxShadow(
          //         blurRadius: 10,
          //         color: Colors.blue.shade800,
          //         spreadRadius: 10.0)
          //   ],
          //   image: DecorationImage(
          //     image: AssetImage('assests/myImage.jpg'),
          // image: NetworkImage(
          //     'https://www.freepnglogos.com/uploads/doraemon-png/doraemon-keren-kumpulan-vector--5.png'),
          //     fit: BoxFit.cover,
          //   ),
          //   borderRadius: BorderRadius.circular(20),
          //   color: Colors.redAccent,
          // ),
          // height: 300,
          // width: 250,
          // color: Colors.redAccent,
          // child: Image.network(
          //   'https://www.freepnglogos.com/uploads/doraemon-png/doraemon-keren-kumpulan-vector--5.png',
          //   fit: BoxFit.cover,
          // ),
        ),
      ),
    );
  }
}
