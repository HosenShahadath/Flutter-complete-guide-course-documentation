import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FetchDataApp extends StatefulWidget{
  @override
  _FetchDataAppState createState() => _FetchDataAppState();
}

class _FetchDataAppState extends State<FetchDataApp>{
  List<dynamic> _postData = [];

  Future<void> fetchData() async{
    final response = await http.get(Uri.parse(
        'https://jsonplaceholder.typicode.com/posts'
    ));

    if(response.statusCode == 200){
      setState(() {
        _postData = jsonDecode(response.body);
      });
    }else{
      throw Exception('Failed to Load data');
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Data Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: fetchData, child: Text('Fetch Data')),
            const SizedBox(height: 20,),
            Expanded(
                child: ListView.builder(
                    itemCount: _postData.length,
                    itemBuilder: (context, index){
                  return ListTile(
                    title: Text(_postData[index]['title']),
                  );
                })
            ),
          ],
        ),
      ),
    );
  }

}