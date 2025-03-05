import 'package:flutter/material.dart';

class RowandColumn5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row and Column'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            children: [Text('Username : '), Expanded(child: TextField())],
          ),
          const Row(
            children: [
              Text('Password : '),
              Expanded(child: TextField(obscureText: true)),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  child: const Text('Login'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
