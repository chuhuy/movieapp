import 'package:flutter/material.dart';

class HomeScreen1 extends StatefulWidget{
  HomeScreen1({Key key}) : super(key: key);

  @override
  _HomeScreenState1 createState() => _HomeScreenState1();
}

class _HomeScreenState1 extends State<HomeScreen1> with SingleTickerProviderStateMixin{
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
    return Scaffold(
      backgroundColor: Color.fromRGBO(73, 73, 76, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: TabBar(
          tabs: <Widget>[
            //Image(image: AssetImage('lib/Model/Assets/logo.png'), height: 5.0, width: 5.0,),
            Icon(Icons.local_movies, color: Color.fromRGBO(18, 113, 194, 1),),
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
          new Text("Home"),
          new Text("movie"),
          new Text("film"),
          new Text("genre")
        ],
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(231, 231, 231, 1),
        selectedItemColor: Color.fromRGBO(18, 113, 194, 1),
      currentIndex: 0, // this will be set when a new tab is tapped
      items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text('Trang chủ'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.search),
          title: new Text('Tìm kiếm'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_downward),
          title: Text('Tải xuống')
        )
      ],
     ),
    );
 }
}

