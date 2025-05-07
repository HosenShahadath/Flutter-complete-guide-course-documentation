import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DeleteDataScreen extends StatefulWidget {
  const DeleteDataScreen({super.key});

  @override
  State<DeleteDataScreen> createState() => _DeleteDataScreenState();
}

class _DeleteDataScreenState extends State<DeleteDataScreen> {
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
            content: Text('Post has been deleted successfully.'),
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
      throw Exception('Failed to delete psot');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Delete Data Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => deletePost(1),
          child: const Text('Delete Post'),
        ),
      ),
    );
  }
}
