import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_concepts/functions/database_functions.dart';
import 'package:flutter_ui_concepts/functions/snackbar_function.dart';
import 'package:flutter_ui_concepts/pages/pets.dart';

class DatabaseOptions extends StatefulWidget {
  const DatabaseOptions({Key? key}) : super(key: key);

  @override
  State<DatabaseOptions> createState() => _DatabaseOptionsState();
}

class _DatabaseOptionsState extends State<DatabaseOptions> {
  String docName = '';
  String petName = '';
  String petType = '';
  int petAge = 0;
  var _formKey = GlobalKey<FormState>();
  TextEditingController docController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  TextEditingController typeController = new TextEditingController();
  TextEditingController ageController = new TextEditingController();

  Future<void> saveFormData() async {
    setState(() {
      docName = docController.text;
      petName = nameController.text;
      petType = typeController.text;
      petAge = int.parse(ageController.text);
      if (docName.isNotEmpty &&
          petName.isNotEmpty &&
          petType.isNotEmpty &&
          petAge != 0 &&
          _formKey.currentState != null) {
        _formKey.currentState?.save();
      } else {
        print('some error occurred!');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Database Options'),
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
            icon: Icon(Icons.login_outlined),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              height: 245,
              width: MediaQuery.of(context).size.width / 1.10,
              child: Column(
                children: [
                  const SizedBox(height: 5),
                  const Text(
                    '--Enter details below to create document--',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: docController,
                    decoration: InputDecoration(
                      label: const Text('Document Name:'),
                      hintText: ' Enter Document Name',
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 5.0),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      label: const Text('Pet Name:'),
                      hintText: ' Enter Pet Name',
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 5.0),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: typeController,
                    decoration: InputDecoration(
                      label: const Text('Animal Type:'),
                      hintText: ' Enter Animal Type',
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 5.0),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: ageController,
                    decoration: InputDecoration(
                      label: const Text('Pet Age:'),
                      hintText: ' Enter Pet Age',
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 5.0),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      saveFormData();
                      create('pets', docName, petName, petType, petAge);
                      showSnack(context, 'New Document Created!');
                    },
                    child: Text('Create'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      update('pets', 'tom', 'animal', 'tiger');
                      showSnack(context, 'Document Updated!');
                    },
                    child: Text('Update'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // showSnack(context, 'Data Retrived!');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PetsList(),
                        ),
                      );
                    },
                    child: Text('Retrive'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      delete('pets', 'tom');
                      showSnack(context, 'Document Deleted!');
                    },
                    child: Text('Delete'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
