import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldExample extends StatelessWidget {
  const TextFormFieldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Form Field Flutter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter your name',
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'Please enter your email';
                }
                return null;
              },
            ),
            const SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter your address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
            const SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.check_circle),
              ),
            ),
            const SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter your address',
              ),
              maxLength: 10,
            ),
            const SizedBox(height: 20,),
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
    );
  }
}
