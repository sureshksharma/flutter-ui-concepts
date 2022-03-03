import 'package:flutter/material.dart';
import 'package:flutter_ui_concepts/widgets/geolocation.dart';
import 'package:flutter_ui_concepts/widgets/image_picker.dart';
import 'package:flutter_ui_concepts/widgets/image_widget.dart';
import 'package:flutter_ui_concepts/widgets/alert_dialog.dart';
import 'package:flutter_ui_concepts/widgets/animated_text.dart';
import 'package:flutter_ui_concepts/widgets/bottom_navigation.dart';
import 'package:flutter_ui_concepts/widgets/bottom_sheet.dart';
import 'package:flutter_ui_concepts/widgets/container_sized.dart';
import 'package:flutter_ui_concepts/widgets/dismissable_package.dart';
import 'package:flutter_ui_concepts/widgets/drawer_widget.dart';
import 'package:flutter_ui_concepts/widgets/drop_down_list.dart';
import 'package:flutter_ui_concepts/widgets/form_widget.dart';
import 'package:flutter_ui_concepts/widgets/insta_profile_ui.dart';
import 'package:flutter_ui_concepts/widgets/list_grid_view.dart';
import 'package:flutter_ui_concepts/widgets/rows_columns.dart';
import 'package:flutter_ui_concepts/widgets/snackbar_widget.dart';
import 'package:flutter_ui_concepts/widgets/stack.dart';
import 'package:flutter_ui_concepts/widgets/tabbar.dart';
import 'package:flutter_ui_concepts/widgets/text_elevated_button.dart';
import 'package:flutter_ui_concepts/widgets/ui_sample_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepPurple,
      ),
      home: const InstaProfileUi(),
    );
  }
}
