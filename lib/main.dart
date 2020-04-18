import 'package:flutter/material.dart';
import 'package:movieapp/View/HomeScreen.dart';
import 'package:movieapp/View/HomeScreen1.dart';
import 'package:movieapp/View/LogInScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: LogInScreen(),
    );
  }
}