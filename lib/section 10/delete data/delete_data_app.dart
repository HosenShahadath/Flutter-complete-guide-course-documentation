import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DeleteDataApp extends StatefulWidget {
  const DeleteDataApp({super.key});

  @override
  State<DeleteDataApp> createState() => _DeleteDataAppState();
}

class _DeleteDataAppState extends State<DeleteDataApp> {
  Future<void> deletePost(int postId) async {
    final response = await http.delete(
      Uri.parse('https://jsonplaceholder.typicode.com/posts/$postId'),
    );

    if (response.statusCode == 200) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Success'),
            content: Text('Post has been deleted succesfully.'),
            actions: [
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
    } else {
      throw Exception('Failed to delete post');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Delete Data Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => deletePost(1),
          child: Text('Delete post'),
        ),
      ),
    );
  }
}
