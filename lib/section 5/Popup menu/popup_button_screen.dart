import 'package:flutter/material.dart';

class PopupButtonScreen extends StatefulWidget {
  const PopupButtonScreen({super.key});

  @override
  State<PopupButtonScreen> createState() => _PopupButtonScreenState();
}

class _PopupButtonScreenState extends State<PopupButtonScreen> {
  int _selectedMenu = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            PopupMenuButton(
                onSelected: (int result){
                  setState(() {
                    _selectedMenu = result;
                  });
                },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
                const PopupMenuItem<int>(
                  value: 1,
                  child: Text('About Us'),
                ),
                const PopupMenuItem<int>(
                  value: 2,
                  child: Text('Contact Us'),
                ),
                const PopupMenuItem<int>(
                  value: 3,
                  child: Text('Privacy Policy'),
                ),
              ],
            ),
            Text('Selected menu : $_selectedMenu')
          ],
        ),
      ),
    );
  }
}
