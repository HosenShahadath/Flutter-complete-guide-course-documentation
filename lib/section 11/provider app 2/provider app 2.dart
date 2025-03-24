import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%2011/provider%20app%202/model%202.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Todo(),
      child: MaterialApp(home: TodoPage()),
    );
  }
}

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final todo = Provider.of<Todo>(context);
    TextEditingController todoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Provider Todo App')),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Type todo and hit enter',
              contentPadding: EdgeInsets.all(10),
            ),
            controller: todoController,
            onSubmitted: (value) {
              todo.add(value);
              todoController.clear();
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todo.todos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(todo.todos[index]),
                  trailing: IconButton(
                    onPressed: () {
                      todo.remove(todo.todos[index]);
                    },
                    icon: const Icon(Icons.delete),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
