import 'package:flutter/material.dart';

class Container2App extends StatelessWidget {
  const Container2App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(child: Text('Hello World')),
              SizedBox(height: 10),
              Container(
                child: Text('Raj Sharma'),
                color: Colors.blue,
                padding: EdgeInsets.all(8),
              ),
              SizedBox(height: 10),
              Container(
                child: Text('Raj Sharma'),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Text('Raj Sharma'),
                color: Colors.blue,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
              ),
              Container(
                child: Text('Raj Sharma'),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Text('Raj Sharma'),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Text('Raj Sharma'),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.blue, Colors.green]),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                child: Image.network('https://avatars.githubusercontent.com/u/33576285?v=4'),
              ),
              SizedBox(height: 20,),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text('Hello World'),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
