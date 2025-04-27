import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section2/Gridview%20Builder/simple_gridview_builder.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SimpleGridviewBuilder(),
    );
  }
}
