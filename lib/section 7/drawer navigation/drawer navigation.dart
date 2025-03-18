import 'package:flutter/material.dart';

// HomePage Widget
class HomePage5 extends StatelessWidget {
  const HomePage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(child: Text('Home Page Content')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Text('My App'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Contact'),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ContactPage())
                );
              },
            ),
            ListTile(
              title: const Text('About'),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AboutPage())
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Page'),
      ),
      body: const Center(
        child: Text('Contact Page'),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
      ),
      body: const Center(
        child: Text('About Page'),
      ),
    );
  }
}
