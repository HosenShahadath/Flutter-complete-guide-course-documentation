import 'package:flutter/material.dart';

class ColumnAndRow2 extends StatelessWidget {
  const ColumnAndRow2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column and Row'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            children: [
              Text('Username: '),
              Expanded(child: TextField()),
            ],
          ),
          const Row(
            children: [
              Text('Password'),
              Expanded(
                child: TextField(
                  obscureText: true,
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                child: MaterialButton(onPressed: (){},
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text('Login'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
