import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%2011/provider%20app%202/todo_model.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp6());
}

class MyApp6 extends StatelessWidget {
  const MyApp6({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => TodoModel(),
    child: MaterialApp(
      home: TodoProviderScreen(),
    ),
    );
  }
}

class TodoProviderScreen extends StatelessWidget {
  const TodoProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final todo = Provider.of<TodoModel>(context);
    TextEditingController controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Todo App'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              labelText: 'Type todo and hit enter',
              contentPadding: EdgeInsets.all(10),
            ),
            controller: controller,
            onSubmitted: (value){
              todo.add(value);
              controller.clear();
            },
          ),
          Expanded(child: ListView.builder(
              itemCount: todo.todos.length,
              itemBuilder: (context, index){
            return ListTile(
              title: Text(todo.todos[index]),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  todo.remove(todo.todos[index]);
                },
              ),
            );
          }))
        ],
      ),
    );
  }
}

