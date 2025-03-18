import 'package:flutter/material.dart';

class TabBarApp2 extends StatelessWidget {
  const TabBarApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(appBar: AppBar(
          title: const Text('Todo App'),
        bottom: TabBar(tabs: [
          Tab(text: 'Active',),
          Tab(text: 'Completed',),
        ]),
      ),
        body: TabBarView(children: [
          Center(
            child: ListView(
              children: [
                ListTile(title: Text('Task 1'),),
                ListTile(title: Text('Task 2'),),
                ListTile(title: Text('Task 3'),),
                ListTile(title: Text('Task 4'),),
              ],
            ),
          ),
          Center(
            child: ListView(
              children: [
                ListTile(title: Text('Task 5'),),
                ListTile(title: Text('Task 6'),),
                ListTile(title: Text('Task 7'),),
                ListTile(title: Text('Task 8'),),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
