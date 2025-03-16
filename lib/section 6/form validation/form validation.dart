import 'package:flutter/material.dart';

class FormValidationApp extends StatefulWidget {
  const FormValidationApp({super.key});

  @override
  State<FormValidationApp> createState() => _FormValidationAppState();
}

class _FormValidationAppState extends State<FormValidationApp> {
  final _formKey = GlobalKey<FormState>();

  final _feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                maxLines: 5,
                controller: _feedbackController,
                decoration: const InputDecoration(
                  hintText: 'Enter your feedback',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your feedback';
                  } else if (value.length < 10) {
                    return 'Feedback must be at least 10 characters';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              if(_formKey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Feedback submitted successfully!'))
                );
              }
            }, child: const Text('Submit')),
          ],
        ),
      ),
    );
  }
}
