import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PostDataApp extends StatefulWidget {
  const PostDataApp({super.key});

  @override
  State<PostDataApp> createState() => _PostDataAppState();
}

class _PostDataAppState extends State<PostDataApp> {
  Future<void> createPost(String title, String body) async {
    final response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': title,
        'body': body,
        'userId': '1',
      }),
    );

    if (response.statusCode == 201) {
      final responseBody = jsonDecode(response.body);
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Post Created'),
            content: Text('New Post Id: ${responseBody['id']}'),
            actions: [
              MaterialButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      throw Exception('Failed to crate post');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Post Data Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => createPost('Flutter', 'Posting to Api From Flutter'),
          child: const Text('Create Post'),
        ),
      ),
    );
  }
}
