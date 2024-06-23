import 'package:evxplorer/screens/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:evxplorer/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff009E63),
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xff009E63),
          secondary: Colors.greenAccent,
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: Color(0xff009E63),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: Color(0xff009E63),
            ),
          ),
          labelStyle: TextStyle(
            color: Color(0xff009E63),
          ),
          suffixStyle: TextStyle(
            color: Color(0xff009E63),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Color(0xff009E63)),
            foregroundColor: WidgetStateProperty.all(Colors.white),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: WidgetStateProperty.all(Color(0xff009E63)),
          ),
        ),
      ),
      home: FirstScreen(),
    );
  }
}
