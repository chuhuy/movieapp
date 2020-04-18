import 'package:flutter/material.dart';
import 'package:movieapp/View/HomeTab/HomeTab1.dart';
import 'package:movieapp/View/HomeTab/HomeTab2.dart';
import 'package:movieapp/View/VideoPlayer.dart';

class HomeTab extends StatefulWidget{
  HomeTab({Key key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> with SingleTickerProviderStateMixin{
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
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromRGBO(73, 73, 76, 1),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: TabBar(
          tabs: <Widget>[
            Image(image: AssetImage('lib/Model/Assets/logo.png'), height: scrHeight * .05, width: scrHeight * .05,),
            Text("Phim bộ", style: TextStyle(color: Color.fromRGBO(231, 231, 231, 1)),),
            Text("Phim lẻ", style: TextStyle(color: Color.fromRGBO(231, 231, 231, 1)),),
            Text("Thể loại", style: TextStyle(color: Color.fromRGBO(231, 231, 231, 1)),)
          ],
          controller: _tabController,
        ),
        centerTitle: true,
      ),
      
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          HomeTabhome(),
          new Text("movie"),
          new Text("film"),
          new Text(""),//HomeTabGenre()
        ],
      ),
    );
    
  }
}

