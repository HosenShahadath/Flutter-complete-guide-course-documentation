import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PutDataApp extends StatefulWidget {
  const PutDataApp({super.key});

  @override
  State<PutDataApp> createState() => _PutDataAppState();
}

class _PutDataAppState extends State<PutDataApp> {
  Future<void> updatePost(int postId, String title, String body) async {
    final response = await http.put(
      Uri.parse('https://jsonplaceholder.typicode.com/posts/$postId'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{'title': title, 'body': body}),
    );

    if (response.statusCode == 200) {
      final responsebody = jsonDecode(response.body);
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Post Updated'),
            content: Text(
              'Post Id: ${responsebody['id']} updated successfully',
            ),
            actions: [
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      throw Exception('Failed to update post');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Put Data Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => updatePost(1, 'Update Title', 'Update body text'),
          child: const Text('Update Post'),
        ),
      ),
    );
  }
}
