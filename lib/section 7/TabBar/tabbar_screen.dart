import 'package:flutter/material.dart';

class TabbarScreen extends StatelessWidget {
  const TabbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Courier Tracking'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car), text: 'In Transit'),
              Tab(icon: Icon(Icons.check), text: 'Delivered'),
              Tab(icon: Icon(Icons.access_time), text: 'Pending'),
            ],
          ),
        ),
        body: Center(
          child: TabBarView(
            children: [
              ListView(children: [Text('Parcel 21'), Text('Parcel 22')]),
              ListView(children: [Text('Parcel 21'), Text('Parcel 22')]),
              ListView(children: [Text('Parcel 21'), Text('Parcel 22')]),
            ],
          ),
        ),
      ),
    );
  }
}
