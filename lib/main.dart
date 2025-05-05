import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%209/shared%20preferencs/shared_preferences_app.dart';
import 'myapp.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesHelper.init();
  runApp(MyApp());
}
