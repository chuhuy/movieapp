import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget{
  AccountScreen({Key key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen>{
  
  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromRGBO(73, 73, 76, 1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(45, 45, 45, 1),
        title: Text("Tài khoản", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: scrWidth * .05),),
      ),
      body: null,
    );
  }
  
}