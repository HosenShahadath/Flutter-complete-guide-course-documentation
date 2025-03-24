import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%2011/provider%20app/logic%20part/model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ProviderApp());
}

class ProviderApp extends StatelessWidget {
  const ProviderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => Counter(),
      child: MaterialApp(
        home: CounterPage(),
      ),
    );
  }
}

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Counter App'),
      ),
      body: Center(
        child: Text(
          'Counter : ${counter.count}',
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: counter.increment,
      tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
