import 'package:flutter/material.dart';
import 'package:flutter_ui_concepts/widgets/alert_dialog.dart';
import 'package:flutter_ui_concepts/widgets/animated_text.dart';
import 'package:flutter_ui_concepts/widgets/dismissable_package.dart';
import 'package:flutter_ui_concepts/widgets/rows_columns.dart';
import 'package:flutter_ui_concepts/widgets/snackbar_widget.dart';

class BottomNavWidget extends StatefulWidget {
  const BottomNavWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  int selectedIndex = 0;

  PageController pageController = PageController();

  // List<Widget> widgets = [
  //   const Text('Home'),
  //   const Text('Search'),
  //   const Text('Add'),
  //   const Text('Profile'),
  // ];

  void onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Bottom Navigation'),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user), label: 'Profile'),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: onItemTap,
      ),
      // body: Center(child: widgets.elementAt(selectedIndex)),
      body: PageView(
        controller: pageController,
        children: [
          AlertWidget(),
          DismissibleWidget(),
          AnimatedTextWidget(),
          SnackBarWidget(),
        ],
      ),
    );
  }
}
