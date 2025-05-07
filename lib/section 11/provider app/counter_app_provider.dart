import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%2011/provider%20app/counter_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp5());
}

class MyApp5 extends StatelessWidget {
  const MyApp5({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: MaterialApp(home: CounterAppProvider()),
    );
  }
}

class CounterAppProvider extends StatelessWidget {
  const CounterAppProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterModel>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Provider Counter App')),
      body: Center(child: Text('Counter : ${counter.count}')),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
