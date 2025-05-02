import 'package:flutter/material.dart';

class FormValidatorScreen extends StatefulWidget {
  const FormValidatorScreen({super.key});

  @override
  State<FormValidatorScreen> createState() => _FormValidatorScreenState();
}

class _FormValidatorScreenState extends State<FormValidatorScreen> {
  final _formKey = GlobalKey<FormState>();

  final _feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
        Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
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
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Feedback submitted successfully!')),
                    );
                    // Additional submission logic here
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
