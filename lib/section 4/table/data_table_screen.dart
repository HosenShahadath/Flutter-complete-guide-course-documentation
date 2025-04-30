import 'package:flutter/material.dart';

class DataTableScreen extends StatelessWidget {
  const DataTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DataTable(
        columns: [
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Subject')),
          DataColumn(label: Text('Grade')),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(Text('Alice')),
              DataCell(Text('Math')),
              DataCell(Text('A')),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Alice')),
              DataCell(Text('Math')),
              DataCell(Text('A')),
            ],
          ),
        ],
      ),
    );
  }
}
