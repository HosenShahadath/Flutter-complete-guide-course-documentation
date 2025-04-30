import 'package:flutter/material.dart';

class TableAppModel extends StatelessWidget {
  const TableAppModel({super.key});

  @override
  Widget build(BuildContext context) {
    List<Contact> contacts = [
      Contact(name: 'Alice', email: 'alice@domain.com', phone: '1234567890'),
      Contact(name: 'Bob', email: 'bob@domain.com', phone: '1234567890'),
      Contact(name: 'Charlie', email: 'charl@domain.com', phone: '1234567890'),
      // Add more contacts here
    ];
    return Scaffold(
      body: DataTable(columns: [
        DataColumn(label: Text('Name')),
        DataColumn(label: Text('Email')),
        DataColumn(label: Text('Phone')),
      ], rows: contacts.map((contact) {
        return DataRow(cells: [
          DataCell(Text(contact.name)),
          DataCell(Text(contact.email)),
          DataCell(Text(contact.phone)),
        ]);
      }).toList(),
      ),
    );
  }
}


class Contact {
  final String name;
  final String email;
  final String phone;

  Contact({required this.name,required this.email,required this.phone});
}
