import 'package:flutter/material.dart';

class ProfileAppImage extends StatelessWidget {
  const ProfileAppImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/learn_flutter.jpg'),
              radius: 80,
            ),
            const SizedBox(height: 10,),
            const Text(
              'Flutter Tutorial',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 10,),
            const Text(
              'https://flutter-tutorial.net',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
