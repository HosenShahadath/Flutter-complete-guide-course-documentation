import 'package:flutter/material.dart';

class ReturnDataScreen extends StatefulWidget {
  const ReturnDataScreen({super.key});

  @override
  State<ReturnDataScreen> createState() => _ReturnDataScreenState();
}

class _ReturnDataScreenState extends State<ReturnDataScreen> {
  String? _selectedPizza;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pizza Selection')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final selectedPizza = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PizzaSelectionScreen(),
                  ),
                );
                if(selectedPizza != null){
                  setState(() {
                    _selectedPizza = selectedPizza as String;
                  });
                }
              },
              child: Text('Select Pizza'),
            ),
            SizedBox(height: 20,),
            Text('Selected Pizza: $_selectedPizza'),
          ],
        ),
      ),
    );
  }
}

class PizzaSelectionScreen extends StatelessWidget {
  const PizzaSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Pizza')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Margherita'),
            onTap: () {
              Navigator.of(context).pop('Margherita');
            },
          ),
          ListTile(
            title: Text('Pepperoni'),
            onTap: () {
              Navigator.of(context).pop('Pepperoni');
            },
          ),
          ListTile(
            title: Text('Vegetarian'),
            onTap: () {
              Navigator.of(context).pop('Vegetarian');
            },
          ),
        ],
      ),
    );
  }
}
