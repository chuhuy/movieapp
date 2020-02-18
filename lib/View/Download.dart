import 'package:flutter/material.dart';

class DownloadScreen extends StatefulWidget{
  DownloadScreen({Key key}) : super(key: key);

  @override
  _DownloadScreenState createState() => _DownloadScreenState(); 
}

class _DownloadScreenState extends State<DownloadScreen>{
  
  
  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromRGBO(73, 73, 76, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(45, 45, 45, 1),
        title: Text("Tải xuống", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: scrWidth * .05),),
        centerTitle: true,
      ),
      body: null,
    );
  }
}