import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section2/Gridview/dashboard_app.dart';
import 'package:flutter_framework_practice/section2/Gridview/photo_gallery_app.dart';
import 'package:flutter_framework_practice/section2/Listview%20Builder/simple_listview_builder.dart';
import 'package:flutter_framework_practice/section2/Listview%20Builder/social_media.dart';
import 'package:flutter_framework_practice/section2/Listview%20Builder/todo_app3.dart';
import 'package:flutter_framework_practice/section2/Listview%20Builder/todo_app_4.dart';
import 'package:flutter_framework_practice/section2/Listview/Image_gallary_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SocialMedia(),
    );
  }
}
