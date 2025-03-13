import 'package:flutter/material.dart';

class PopUpMenu extends StatefulWidget {
  const PopUpMenu({super.key});

  @override
  State<PopUpMenu> createState() => _PopUpMenuState();
}

class _PopUpMenuState extends State<PopUpMenu> {
  int _selectedMenu = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PopupMenuButton<int>(
          onSelected: (int result) {
            setState(() {
              _selectedMenu = result;
            });
          },
          itemBuilder:
              (BuildContext context) => [
                PopupMenuItem(value: 1, child: Text('About Us')),
                PopupMenuItem(value: 2, child: Text('Contact Us')),
                PopupMenuItem(value: 3, child: Text('Privacy Policy')),
              ],
        ),
      ),
    );
  }
}
