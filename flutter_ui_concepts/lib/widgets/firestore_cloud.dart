import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_concepts/functions/database_functions.dart';

class DatabaseOptions extends StatefulWidget {
  const DatabaseOptions({Key? key}) : super(key: key);

  @override
  State<DatabaseOptions> createState() => _DatabaseOptionsState();
}

class _DatabaseOptionsState extends State<DatabaseOptions> {
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
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  create('pets', 'kitty', 'jerry', 'cat', 5);
                },
                child: Text('Create'),
              ),
              ElevatedButton(
                onPressed: () {
                  update('pets', 'tom', 'animal', 'tiger');
                },
                child: Text('Update'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Retrive'),
              ),
              ElevatedButton(
                onPressed: () {
                  delete('pets', 'tom');
                },
                child: Text('Delete'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
