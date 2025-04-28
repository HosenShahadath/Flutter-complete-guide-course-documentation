import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontApp extends StatelessWidget {
  const GoogleFontApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Fonts in Flutter'),
      ),
      body: Center(
        child: Text(
          'Hello I am John Doe',
          style: GoogleFonts.roboto(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue
          ),
        ),
      ),
    );
  }
}
