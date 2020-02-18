

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/View/AccountManagement.dart';
import 'package:movieapp/View/Download.dart';
import 'package:movieapp/View/HomeTab/HomeTab.dart';
import 'package:movieapp/View/Search.dart';
import 'package:movieapp/View/VideoPlayer.dart';

class HomeScreen extends StatefulWidget{
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeTab(),
    SearchScreen(),
    DownloadScreen(),
    AccountScreen(),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

 @override
 void dispose() {
   _tabController.dispose();
   super.dispose();
 }
  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromRGBO(141, 141, 141, 1),
      body: _children[_currentIndex],      
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(       
          canvasColor: Color.fromRGBO(30, 30, 30, 1.0),
          primaryColor: Color.fromRGBO(231, 231, 231, 1),
          textTheme: Theme
              .of(context)
              .textTheme
              .copyWith(caption: new TextStyle(color: Color.fromRGBO(231, 231, 231, 1)))),
      child: CupertinoTabBar(
        backgroundColor: Colors.black.withOpacity(1.0),
        activeColor: Colors.white,
        inactiveColor: Color.fromRGBO(141, 141, 141, 1),
      onTap: onTabTapped,
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.home, size: scrWidth * .06,),
          title: new Text('Trang chủ'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.search, size: scrWidth * .06,),
          title: new Text('Tìm kiếm'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.file_download, size: scrWidth * .06,),
          title: new Text('Tải xuống')
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.account_circle, size: scrWidth * .06,),
          title: new Text('Tài khoản')
        )
      ],
     ),
    ));
  }

  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
}

