import 'package:flutter/material.dart';
import 'package:movieapp/Model/Template.dart';
import 'package:movieapp/Test.dart';

class CastScreen extends StatefulWidget{
  CastScreen({Key key}) : super(key: key);

  @override
  _CastScreenState createState() => _CastScreenState();
}

class _CastScreenState extends State<CastScreen>{
  Test test = new Test();
  Template template = new Template();

  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: new Stack(
        children: <Widget>[
          new Container(
            margin: new EdgeInsets.only(
              top: scrHeight * .6,
              
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            height: scrHeight * .4,
            width: scrWidth,
            child: new ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                new Container(
                child: Center(child: Text(test.c1.name, style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: scrWidth * .07,
                  ),),),
                ),                
                new Container(
                  margin: EdgeInsets.only(
                    left: scrWidth * .05,
                    top: scrHeight * .015,
                  ),
                  child: Text("Tiểu sử", style: TextStyle(fontSize: scrWidth * .05, fontWeight: FontWeight.w400),),
                ),
                new Container(
                  margin: EdgeInsets.only(
                    top: scrHeight * .01,
                    left: scrWidth * .08,
                    right: scrWidth * .08
                  ),
                  child: Text(test.c1.info, style: TextStyle(fontSize: scrWidth * .035, fontWeight: FontWeight.w300,)),
                ),
                new Container(
                  margin: EdgeInsets.only(
                    left: scrWidth * .05,
                    top: scrHeight * .015,
                  ),
                  child: Text("Các phim tham gia", style: TextStyle(fontSize: scrWidth * .05, fontWeight: FontWeight.w400),),
                ),
                /*
                new Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: null,
                    ),
                  ),
                )*/
              ],
            ),
          ),
          new Container(
            width: scrWidth,
            child: ClipRRect(              
              borderRadius: new BorderRadius.only(
                bottomLeft: const Radius.circular(50),
                bottomRight: const Radius.circular(50),
              ),
              child: Image.network(test.c1.image,
            fit: BoxFit.cover,
            height: scrHeight * .6,),
            ), 
          ),
          new Container(
            padding: new EdgeInsets.only(
              top: scrHeight * .03,
              left: scrWidth * (1 - 0.2),
            ),
            child: new FlatButton(              
              child: Icon(Icons.cancel, color: Colors.white, size: scrWidth * .05,),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}