

import 'package:flutter/material.dart';
import 'package:movieapp/Model/Template.dart';

class HomeTabGenre extends StatefulWidget{
  HomeTabGenre({Key key}) : super(key: key);

  @override 
  _HomeTabGenreState createState() => _HomeTabGenreState();
}

class _HomeTabGenreState extends State<HomeTabGenre>{
  Template template = new Template();

  @override
  Widget build(BuildContext context) {
    String temp = template.getUrl() as String;
    return Scaffold(
      body: Text(temp),
    );
  }
  
}