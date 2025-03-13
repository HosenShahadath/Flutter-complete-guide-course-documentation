import 'package:flutter/material.dart';

class FormApp extends StatelessWidget {
  FormApp({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form In Flutter')),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'First Name',
                hintText: 'Enter your first name',
              ),
              validator: (value) {
                if (value == "") {
                  return 'Please enter your first name';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Last Name',
                hintText: 'Enter your last name',
              ),
              validator: (value) {
                if (value == "") {
                  return 'Please enter your last name';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // perform submission logic
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
