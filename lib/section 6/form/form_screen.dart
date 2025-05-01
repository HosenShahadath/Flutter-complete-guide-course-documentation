import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  FormScreen({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'First Name',
                  hintText: 'Enter your first Name',
                ),
                validator: (value){
                  if(value == ''){
                    return 'Please enter your first name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  hintText: 'Enter your last Name',
                ),
                validator: (value){
                  if(value == ''){
                    return 'Please enter your last name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16,),
              ElevatedButton(onPressed: (){
                if(_formKey.currentState!.validate()){
                  // Perform submission logic
                }
              }, child: const Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}
