import 'package:flutter/material.dart';

class DataTableApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: DataTable(columns: [
       DataColumn(label: Text('Name')),
       DataColumn(label: Text('Subject')),
       DataColumn(label: Text('Grade')),
     ],
         rows: [
           DataRow(cells: [
             DataCell(Text('Alice')),
             DataCell(Text('Math')),
             DataCell(Text('A')),
           ])
         ]),
    );
  }
}
