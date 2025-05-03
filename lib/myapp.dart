import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%207/move%20to%20another%20screen/move%20to%20screen%202.dart';
import 'package:flutter_framework_practice/section%207/move%20to%20another%20screen/move_to_another_screen.dart';
import 'package:flutter_framework_practice/section%207/move%20to%20another%20screen/named_routes.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/profile' : (context) => ProfileScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: NamedRoutes(),
    );
  }
}
