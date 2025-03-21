import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesHelper.init();
  runApp(SharedPreferencesApp());
}

class SharedPreferencesApp extends StatefulWidget {
  const SharedPreferencesApp({super.key});

  @override
  State<SharedPreferencesApp> createState() => _SharedPreferencesAppState();
}

class _SharedPreferencesAppState extends State<SharedPreferencesApp> {
  bool _isDarkTheme = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isDarkTheme = SharedPreferencesHelper.getBool('isDarkTheme') ?? false;
  }

  void _toggleTheme(){
    setState(() {
      _isDarkTheme = !_isDarkTheme;
      SharedPreferencesHelper.setBool('isDarkTheme', _isDarkTheme);
    });
  }

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Flutter Theme Switcher Demo',
     theme: _isDarkTheme? ThemeData.dark() : ThemeData.light(),
     home: Scaffold(
       appBar: AppBar(
         title: Text('Theme Switcher with SharedPreferences'),
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text('Click thr button  below to toggle theme'),
             SizedBox(height: 20,),
             ElevatedButton(onPressed: _toggleTheme, child: Text('Toggle Theme'))
           ],
         ),
       ),
     ),
   );
  }
}

class SharedPreferencesHelper{
  static SharedPreferences? _sharedPreferences;

  static Future<void> init() async{
    if(_sharedPreferences == null){
      _sharedPreferences = await SharedPreferences.getInstance();
    }
  }

  static Future<bool> setBool (String key, bool value){
    return _sharedPreferences!.setBool(key, value);
  }

  static bool? getBool (String key){
    return _sharedPreferences!.getBool(key);
  }
}
