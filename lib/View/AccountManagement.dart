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
      backgroundColor: Color.fromRGBO(144, 144, 144, 1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(100, 100, 104, 1),
        title: Text("Tài khoản", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: scrWidth * .05),),
      ),
      body: new Column(
          children: <Widget>[
            new SizedBox(
              height: scrHeight * .015,
            ),
            new Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(const Radius.circular(32.0)),
                color: Colors.white,
              ),
              width: scrWidth * .9,
              height: scrHeight * .1,
              
              padding: new EdgeInsets.only(
                right: scrWidth * .03,
                left: scrWidth * .03
              ),
              child: Row(
                children: <Widget>[
                  new Container(
                    height: scrWidth * .12,
                    width: scrWidth * .12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('lib/Model/Assets/avatar.png')),
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.only(
                      left: scrWidth * .03
                    ),
                    child: new Text("Chu Thai Huy", style: TextStyle(fontSize: scrWidth * .06, fontWeight: FontWeight.w300),),
                  ),
                ],
              ),
            ),
            new SizedBox(
              height: scrHeight * .05,
            ),

            //List Menu
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(const Radius.circular(28.0)),
                  color: Colors.white,
                  gradient: LinearGradient(
                    colors: [Color.fromRGBO(0, 120, 185, 1), Color.fromRGBO(0, 145, 230, 1)],
                    begin: const FractionalOffset(0.0, 0.5),
                    end: const FractionalOffset(0.5, 1.0),
                    stops: [0.0, 1.0],

                  )
                ),
                  height: scrHeight * .12,
                  width: scrWidth * .42,
                  child: new Center(
                    child: new Text("Cài đặt", style: TextStyle(fontSize: scrWidth * .04, color: Colors.white),)
                  ),
                ),
                new Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(const Radius.circular(28.0)),
                  color: Colors.white,
                  gradient: LinearGradient(
                    colors: [Color.fromRGBO(0, 120, 185, 1), Color.fromRGBO(0, 145, 230, 1)],
                    begin: const FractionalOffset(0.0, 0.5),
                    end: const FractionalOffset(0.5, 1.0),
                    stops: [0.0, 1.0],

                  )
                ),
                  height: scrHeight * .12,
                  width: scrWidth * .42,
                  child: new Center(
                    child: new Text("Danh sách xem sau", style: TextStyle(fontSize: scrWidth * .04, color: Colors.white),)
                  ),
                )
              ],
            ),
            new SizedBox(
              height: scrHeight * .02,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(const Radius.circular(28.0)),
                  color: Colors.white,
                  gradient: LinearGradient(
                    colors: [Color.fromRGBO(0, 120, 185, 1), Color.fromRGBO(0, 145, 230, 1)],
                    begin: const FractionalOffset(0.0, 0.5),
                    end: const FractionalOffset(0.5, 1.0),
                    stops: [0.0, 1.0],

                  )
                ),
                  height: scrHeight * .12,
                  width: scrWidth * .42,
                  child: new Center(
                    child: new Text("Nhận lượt xem", style: TextStyle(fontSize: scrWidth * .04, color: Colors.white),)
                  ),
                ),
                new Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(const Radius.circular(28.0)),
                  color: Colors.white,
                  gradient: LinearGradient(
                    colors: [Color.fromRGBO(190, 166, 0, 1), Color.fromRGBO(235, 200, 0, 1)],
                    begin: const FractionalOffset(0.0, 0.5),
                    end: const FractionalOffset(0.5, 1.0),
                    stops: [0.0, 1.0],

                  )
                ),
                  height: scrHeight * .12,
                  width: scrWidth * .42,
                  child: new Center(
                    child: new Text("Nâng cấp Premium", style: TextStyle(fontSize: scrWidth * .04,color: Colors.white),),
                  ),
                )
              ],
            ),
            new SizedBox(
              height: scrHeight * .02,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(const Radius.circular(28.0)),
                  color: Colors.white,
                ),
                  height: scrHeight * .12,
                  width: scrWidth * .42,
                  child: new Center(
                    child: new Text("Tính năng sắp ra mắt", style: TextStyle(fontSize: scrWidth * .04),)
                  ),
                ),
                new Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(const Radius.circular(28.0)),
                  color: Colors.white,
                ),
                  height: scrHeight * .12,
                  width: scrWidth * .42,
                  child: new Center(
                    child: new Text("Tính năng sắp ra mắt", style: TextStyle(fontSize: scrWidth * .04),)
                  ),
                )
              ],
            ),
            new SizedBox(
              height: scrHeight * .05,
            ),
            new Container(
              height: scrHeight * .06,
              width: scrWidth * .5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  const Radius.circular(32.0)
                ),
                color: Colors.red[400],
              ),
              child: new FlatButton(
                child: Center(
                  child: new Text("Đăng xuất", style: TextStyle(color: Colors.white, fontSize: scrWidth * .04, fontWeight: FontWeight.w400),)
                ),
                onPressed: (){

                },
              ) 
            )
          ],
        ),
    );
  }
  
}