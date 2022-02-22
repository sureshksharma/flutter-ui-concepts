import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();

  trysubmit() {
    final isvalid = _formKey.currentState!.validate();
    if (isvalid) {
      _formKey.currentState!.save();
      submitform();
    } else {
      print('Error');
    }
  }

  submitform() {
    print(firstName);
    print(lastName);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Form Widget'),
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration:
                        const InputDecoration(hintText: 'Enter First Name'),
                    key: const ValueKey('firstName'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'First Name should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      firstName = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration:
                        const InputDecoration(hintText: 'Enter Last Name'),
                    key: const ValueKey('lastName'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'Last Name should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      lastName = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Enter Email'),
                    key: const ValueKey('email'),
                    validator: (value) {
                      if (!value.toString().contains('@')) {
                        return 'Email should be contain @';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      email = value.toString();
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration:
                        const InputDecoration(hintText: 'Enter Password'),
                    key: const ValueKey('password'),
                    validator: (value) {
                      if (value.toString().length <= 5) {
                        return 'Mininum length of password should be 6';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      password = value.toString();
                    },
                  ),
                  TextButton(onPressed: trysubmit, child: const Text('Submit'))
                ],
              ),
            ),
          ),
        ));
  }
}
