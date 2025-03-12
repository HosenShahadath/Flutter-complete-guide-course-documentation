import 'package:flutter/material.dart';

class TableApp extends StatelessWidget {
  const TableApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table in Flutter'),
      ),
      body: Table(
        border: TableBorder.all(),
        columnWidths: <int, TableColumnWidth>{
          0: FixedColumnWidth(100),
          1: FlexColumnWidth(),
          2: FixedColumnWidth(100),
        },
        children: [
          TableRow(
            children:[
             Text('Name'),
             Text('Subject'),
             Text('Grade')
            ]
          ),
          TableRow(
              children:[
                Text('Name'),
                Text('Subject'),
                Text('Grade')
              ]
          ),
          TableRow(
              children:[
                Text('Name'),
                Text('Subject'),
                Text('Grade')
              ]
          ),
        ],
      ),
    );
  }
}
