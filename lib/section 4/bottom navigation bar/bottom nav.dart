import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = const [
    Text('Home'),
    Text('Categories'),
    Text('Cart'),
    Text('Profile'),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: const Text('Ecomerce App', style: TextStyle(color: Colors.white),
       ),
       backgroundColor: Colors.indigo,
     ),
     body: Center(
       child: _widgetOptions.elementAt(_selectedIndex),
     ),
     bottomNavigationBar: BottomNavigationBar(
         type: BottomNavigationBarType.fixed,
         backgroundColor: Colors.indigo,
         selectedItemColor: Colors.amber,
         unselectedItemColor: Colors.white,
         items: const [
           BottomNavigationBarItem(
               icon: Icon(Icons.home),
             label: 'Home'
           ),
           BottomNavigationBarItem(icon: Icon(Icons.category),
           label: 'Categories',
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.shopping_cart),
             label: 'Cart',
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.person),
             label: 'Profile',
           ),
         ],
       currentIndex: _selectedIndex,
       onTap: _onItemTapped,
     ),
    );
  }
}
