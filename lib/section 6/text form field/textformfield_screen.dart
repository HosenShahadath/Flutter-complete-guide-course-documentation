import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextformfieldScreen extends StatelessWidget {
  const TextformfieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Enter your name'),
              ),
              const SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password'
                ),
                obscureText: true,
              ),
              const SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Enter your address'
                ),
              ),
              const SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.check_circle),
                ),
              ),
              const SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your address',
                ),
                maxLength: 10,
              ),
              const SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
