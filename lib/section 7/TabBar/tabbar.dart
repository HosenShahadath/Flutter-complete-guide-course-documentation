import 'package:flutter/material.dart';

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Courier Tracking'),
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.directions_bike), text: 'In Transit',),
            Tab(icon: Icon(Icons.check), text: 'Delivered',),
            Tab(icon: Icon(Icons.access_time), text: 'Pending',)
          ]),
        ),
        body: TabBarView(children: [
          // In Transit Parcels
          Center(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.local_shipping),
                  title: Text('Parcel 21'),
                  subtitle: Text('Expected Delivery: Tomorrow'),
                  trailing: Icon(Icons.more_vert),
                ),
                ListTile(
                  leading: Icon(Icons.local_shipping),
                  title: Text('Parcel 22'),
                  subtitle: Text('Expected Delivery: In 2 days'),
                  trailing: Icon(Icons.more_vert),
                ),
              ],
            ),
          ),
          Center(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.local_shipping),
                  title: Text('Parcel 23'),
                  subtitle: Text('Expected Delivery: Tomorrow'),
                  trailing: Icon(Icons.more_vert),
                ),
                ListTile(
                  leading: Icon(Icons.local_shipping),
                  title: Text('Parcel 24'),
                  subtitle: Text('Expected Delivery: In 2 days'),
                  trailing: Icon(Icons.more_vert),
                ),
              ],
            ),
          ),
          Center(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.local_shipping),
                  title: Text('Parcel 25'),
                  subtitle: Text('Expected Delivery: Tomorrow'),
                  trailing: Icon(Icons.more_vert),
                ),
                ListTile(
                  leading: Icon(Icons.local_shipping),
                  title: Text('Parcel 26'),
                  subtitle: Text('Expected Delivery: In 2 days'),
                  trailing: Icon(Icons.more_vert),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
