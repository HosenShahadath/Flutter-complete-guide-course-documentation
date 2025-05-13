import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetDataApp extends StatefulWidget {
  @override
  _GetDataState createState() => _GetDataState();
}

class _GetDataState extends State<GetDataApp> {
  List<dynamic> _postData = [];
  bool isLoading = false;

  Future<void> fetchData() async {

    setState(() {
      isLoading = true;
    });

    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );

    if (response.statusCode == 200) {
      setState(() {
        _postData = jsonDecode(response.body);
        isLoading = false;
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fetch Data Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: fetchData,
              child: const Text('Fetch App'),
            ),
            const SizedBox(height: 20),
            isLoading
                ? CircularProgressIndicator()
                : Expanded(
                  child: ListView.builder(
                    itemCount: _postData.length,
                    itemBuilder: (context, index) {
                      return ListTile(title: Text(_postData[index]['title']));
                    },
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
