import 'package:flutter/material.dart';

class SimpleDrawerNavigation extends StatelessWidget {
  const SimpleDrawerNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Navigation'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: const Text('MyApp'),
            ),
            ListTile(
              title: Text('Home'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Contact'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContactPage()));
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}

// Contact Page
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact Page')),
      body: Center(child: Text('Contact Page')),
    );
  }
}

// About Page
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Page')),
      body: Center(child: Text('About Page')),
    );
  }
}
