
import 'package:flutter/material.dart';
import 'package:movieapp/Test.dart';
import 'package:movieapp/View/Information.dart';
import 'package:movieapp/View/VideoPlayer.dart';
import 'package:movieapp/Model/Template.dart';

class HomeTabhome extends StatefulWidget{
  HomeTabhome({Key key}) : super(key: key);

  @override
  _HomeTabhomeState createState() => _HomeTabhomeState();
}

class _HomeTabhomeState extends State<HomeTabhome>{
  Test t = new Test();
  Template template = new Template();

  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;
    String genres = "";
    for(var genre in t.s1.genre) genres += genre + "  ";
    
    return Scaffold(
      backgroundColor: Color.fromRGBO(73, 73, 76, 1),
      body: new LayoutBuilder(
        builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
              child: new Stack(
                children: <Widget>[
                  Container(
                    child: Column(children: <Widget>[
                      ShaderMask(
                        shaderCallback: (rect) {
                          return LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.white, Colors.transparent],
                          ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                        },
                        blendMode: BlendMode.dstIn,
                        child: Image.network(
                          t.s1.background,
                          height: scrHeight * .7,
                          fit: BoxFit.fitHeight,
                        ),
                      ),

                      //Trending
                      new Container(
                        child: new Row(
                          children: <Widget>[
                            new Icon(Icons.trending_up, color: Color.fromRGBO(231, 231, 231, 1), size: scrWidth * .05,),
                            new Text(" Thịnh hành", 
                              style: TextStyle(
                                color: Color.fromRGBO(231, 231, 231, 1),
                                fontSize: scrWidth * .05
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                      new SizedBox(
                        height: 5.0,
                      ),
                      new Container(
                        height: scrHeight * .21,
                        child: new ListView(
                          scrollDirection: Axis.horizontal,    
                          children: template.createTrending(scrHeight, scrWidth, context),
                        ),
                      ),
                    ],) 
                    
                  ),

                  //Spotlight
                  new Container(
                  alignment: Alignment.topCenter,
                  padding: new EdgeInsets.only(
                      top: scrHeight * .5,
                      right: 20.0,
                      left: 20.0),
                  child: new Container(
                    height: scrHeight * 0.2,
                    width: scrWidth ,
                    child: Column(
                      children: <Widget>[
                        Text(t.s1.name, style: TextStyle(color: Color.fromRGBO(231, 231, 231, 1), fontSize: scrWidth * .1),),
                        SizedBox(
                          height: scrHeight * .03,
                        ),
                        SizedBox(
                          height: scrHeight * .05,
                          child: new Text(genres, style: TextStyle(color: Color.fromRGBO(231, 231, 231, 1), fontSize: scrWidth * .035)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            FlatButton(
                              child: Column(children: <Widget>[
                                Icon(Icons.add, color: Color.fromRGBO(231, 231, 231, 1)),
                                Text("Xem sau", style: TextStyle(color: Color.fromRGBO(231, 231, 231, 1)),)
                              ],),
                              onPressed: (){

                              },
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: new BorderRadius.all(
                                  const Radius.circular(50),
                                ),
                              ),
                              alignment: Alignment.center,
                              height: scrHeight * 0.05,
                              width: scrWidth * 0.23,
                              child: FlatButton(                                
                                color: Color.fromRGBO(18, 113, 194, 1),
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.play_arrow, color: Color.fromRGBO(231, 231, 231, 1),),
                                    Text(" Xem", style: TextStyle(color: Color.fromRGBO(231, 231, 231, 1), fontSize: scrWidth * .033),),
                                  ],
                                ),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => VideoPlayerScreen()),
                                  );
                                },
                              )
                            ),
                            new FlatButton(
                              onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => InformationScreen()),
                                  );
                              }, 
                              child: Icon(Icons.info, color: Color.fromRGBO(231, 231, 231, 1))
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                ],
              ),
            ),
          );
        },
      )
      
    );
  }
  
}
