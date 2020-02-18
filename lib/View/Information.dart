import 'package:flutter/material.dart';
import 'package:movieapp/Model/Template.dart';
import 'package:movieapp/Test.dart';

class InformationScreen extends StatefulWidget{
  InformationScreen({Key key}) : super(key: key);

  @override
  _InformationScreenState createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen>{
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
            width: scrWidth,
            child: Image.network(test.s1.background,
            fit: BoxFit.fitHeight,
            height: scrHeight * .5,),
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
          new Container(
            margin: new EdgeInsets.only(
              top: scrHeight * .4,
              
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(50),
                topRight: const Radius.circular(50),
              )
            ),
            height: scrHeight * .6,
            width: scrWidth,
            child: new ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                new Container(
                child: new Text(test.s1.name, style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: scrWidth * .07,
                  ),),
                  padding: EdgeInsets.only(
                    //top: scrHeight * .015,
                    left: scrWidth * .1,

                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: scrWidth * .1,
                  ),
                  child: new Row(
                    children: template.createRating(test.s1.rating, scrWidth),                  
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(
                    left: scrWidth * .1,
                    top: scrHeight * .02,
                  ),
                  child: new Row(
                    children: template.createGenre(test.s1.genre, test.s1.lasting, scrWidth)
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(
                    left: scrWidth * .05,
                    top: scrHeight * .035,
                  ),
                  child: Text("Giới thiệu", style: TextStyle(fontSize: scrWidth * .05, fontWeight: FontWeight.w400),),
                ),
                new Container(
                  margin: EdgeInsets.only(
                    top: scrHeight * .01,
                    left: scrWidth * .08,
                    right: scrWidth * .08
                  ),
                  child: Text(test.s1.info, style: TextStyle(fontSize: scrWidth * .035, fontWeight: FontWeight.w300,)),
                ),
                new Container(
                  margin: EdgeInsets.only(
                    left: scrWidth * .05,
                    top: scrHeight * .025,
                  ),
                  child: Text("Diễn viên", style: TextStyle(fontSize: scrWidth * .05, fontWeight: FontWeight.w400),),
                ),
                new Container(
                  margin: EdgeInsets.only(
                    //left: scrWidth * .05,
                    top: scrHeight * .01,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: new Row(
                      children: template.createCast(scrWidth, context),
                    ),
                  )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  
}