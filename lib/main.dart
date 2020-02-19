import 'package:flutter/material.dart';
import 'package:movie_store/screens/homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: new ThemeData(
          primarySwatch: Colors.grey,
          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.black),
          ),
          primaryIconTheme: IconThemeData(color: Colors.red),
        ),
        home: HomeScreen());
  }
}
