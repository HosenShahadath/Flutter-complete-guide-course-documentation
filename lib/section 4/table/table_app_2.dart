import 'package:flutter/material.dart';

class TableApp2 extends StatelessWidget {
  const TableApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
          border: TableBorder.all(),
          columnWidths: <int, TableColumnWidth>{
            0: FixedColumnWidth(100),
            1: FlexColumnWidth(),
            2: FixedColumnWidth(100),
          },
          children: [
            TableRow(children: [Text('Name'), Text('Subject'), Text('Grade')]),
            TableRow(children: [Text('Alice'), Text('Math'), Text('A')]),
            TableRow(children: [Text('Bob'), Text('Science'), Text('B+')]),
          ],
        ),
      ),
    );
  }
}
