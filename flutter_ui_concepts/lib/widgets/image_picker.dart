import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({Key? key}) : super(key: key);

  @override
  _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  XFile? file;
  ImagePicker _picker = ImagePicker();
  List<XFile>? files;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              color: Colors.grey.shade200,
              child: Center(
                child: file == null
                    ? const Text('No Image picked!')
                    : Image.file(
                        File(file!.path),
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () async {
                final XFile? photo =
                    await _picker.pickImage(source: ImageSource.gallery);
                setState(() {
                  file = photo;
                });
                print('Image Picked');
                print(photo!.path);
              },
              child: const Text('Pick Image'),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () async {
                final List<XFile>? photos = await _picker.pickMultiImage();
                setState(() {
                  files = photos;
                });
                print('Images Picked');
                for (var i = 0; i < files!.length; i++) {
                  print(files![i].path);
                }
              },
              child: const Text('Pick Images'),
            ),
          ],
        ),
      ),
    );
  }
}
