import 'package:flutter/material.dart';
import 'package:movieapp/Test.dart';
import 'package:movieapp/View/Information.dart';

class SearchScreen extends StatefulWidget{
  SearchScreen({Key key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>{
  TextEditingController searchBarController = new TextEditingController();
  bool typing = false;
  Test test = new Test();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromRGBO(75, 75, 75, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 100, 104, 1),
        title: new Container(
          decoration: new BoxDecoration(
          color: Color.fromRGBO(141, 141, 141, 1),
          borderRadius: new BorderRadius.all(
            const Radius.circular(32.0))),
          child: TextField(
            cursorWidth: 0.8,
            decoration: new InputDecoration.collapsed(
              hintText: '   Tìm kiếm phim theo tên, thể loại',
              hintStyle: TextStyle(
                color: Color.fromRGBO(231, 231, 231, 1),
                fontSize: scrWidth * .04
              ),
            ),
            onChanged: (keyword){

            },
            controller: searchBarController,
            cursorColor: Colors.white,
            style: TextStyle(color: Color.fromRGBO(231, 231, 231, 1), fontSize: scrWidth * .04),
          ),
        ),
      ),
      body: new ListView(
        children: createSearchResult(scrHeight, scrWidth),
      )
    );
  }
  List<Widget> createSearchResult(double scrHeight, double scrWidth){
    List<Widget> result = [];

    result.add(
      new Container(
        //color: Color.fromRGBO(45, 45, 45, 1),
        margin: EdgeInsets.only(
          top: scrHeight * .02,
          left: scrWidth * .05,
          bottom: scrHeight * .02
        ),
        child: new Text("Kết quả tìm kiếm", style: TextStyle(
          fontSize: scrWidth * .05,
          fontWeight: FontWeight.w400,
          color: Color.fromRGBO(231, 231, 231, 1)
        ),),
      )
    );
    for(int i = 0; i < 10; i++){
      result.add(
        InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InformationScreen()),
            );
          },
          child: Container(
            color: Color.fromRGBO(45, 45, 45, 1),
            height: scrHeight * .1,
            width: scrWidth,
            child: Row(
              children: <Widget>[
                new Image.network(
                  test.s1.background,
                  height: scrHeight * .1,
                  width: scrWidth * .35,
                  fit: BoxFit.cover,
                ),
                new Container(
                  alignment: AlignmentDirectional.centerStart,
                  margin: EdgeInsets.only(
                    left: scrWidth * .03,
                  ),
                  child: new Text(test.s1.name, style: TextStyle(
                    fontSize: scrWidth * .04,
                    fontWeight: FontWeight.w400,
                    color: Colors.white
                ),),),
              ],
            ),
          )
        )
      );
      result.add(
        SizedBox(
          height: scrHeight * .003,
        )
      );
    }
    return result;
  }
}