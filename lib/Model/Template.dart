import 'package:flutter/material.dart';
import 'package:movieapp/Test.dart';
import 'package:movieapp/View/CastInformation.dart';
import 'package:movieapp/View/Information.dart';
import 'package:movieapp/View/VideoPlayer.dart';
import 'package:http/http.dart' as http;

class Template {
  Test test = new Test();

  Future<String> getUrl() async {
    var res = await http.get('https://graph.facebook.com/v6.0/108328157443665?fields=source&access_token=EAAfXTrTmcsYBAMHm2yk9Ln0iB5cJZAH6rFTVgPZBh5OqIf7WLBe40ZAppp7Y9LlPeZBOJaEZBVKyF1POMArSZBdCHtNIdDsTjRqsZABKrGGi6ge5p7cZCDvJaqW0HA3C7miZAaykjh2FZB2INAII4MAGgL11g7AuPnsPQJSPC1Njybk2JFKJIIlqvfhyRRZC1Kq08XQ0jFRchnsKphSiPpvp52SVK8mfMR5bfm4HuOLjZCfj2h66x3pZBvcCN5WHp6AvqA48ZD');
    if (res.statusCode != 200) throw Exception('get error: statusCode= ${res.statusCode}');
    return res.body;
  }
  

  //_____________________________________________________________________________________
  //____________________________________Search Screen____________________________________
  //_____________________________________________________________________________________
  
  


  //_____________________________________________________________________________________
  //__________________________________Movie Information__________________________________
  //_____________________________________________________________________________________
  List<Widget> createCast(double scrWidth, BuildContext context){
    List<Widget> result = [];

    for(int i = 0; i < 5; i++){
      result.add(
        SizedBox(
          width: scrWidth * .02,
        )
      );
      result.add(
        new Column(
          children: <Widget>[
            new Container(
              height: scrWidth * .25,
              width: scrWidth * .25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: Image.network(test.s1.background).image),
              ),
              child: FlatButton(
                child: null,
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CastScreen()),
                  );
                },
              ),
            ),
            new Text(
              "Huy Chu",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: scrWidth * .04
              ),
            ),
          ],
        ),        
      );
    }
    return result;
  }

  List<Widget> createGenre(List<String> genres, int lasting, double scrWidth){
    List<Widget> result = [];
    result.add(
      Container(
        padding: EdgeInsets.all(scrWidth * .01),
        decoration: BoxDecoration(
          border: Border.all(width: 0.8, color: Color.fromRGBO(18, 113, 194, 1)),
        ),
        child: Text(test.s1.lasting.toString() + " min", style: TextStyle(fontSize: scrWidth * .03, fontWeight: FontWeight.w200),),
      )
    );
    for(var genre in genres){
      result.add(
        Container(
          padding: EdgeInsets.all(scrWidth * .01),
          margin: EdgeInsets.only(
            left: scrWidth * .02
          ),
          decoration: BoxDecoration(
            border: Border.all(width: 0.8, color: Color.fromRGBO(18, 113, 194, 1)),
          ),
          child: Text(genre, style: TextStyle(fontSize: scrWidth * .03, fontWeight: FontWeight.w200),),
        )
      );
    }

    return result;
  }

  List<Widget> createRating(double rating, double scrWidth){
    List<Widget> result = [];
    for(int i = 0; i < 5; i++){
      Icon icon;
      if(i < (rating.floor()/2)) icon = new Icon(Icons.star, color: Colors.yellow, size: scrWidth * .05,);
      else icon = new Icon(Icons.star_border, color: Colors.yellow, size: scrWidth * .05,);
      
      result.add(icon);
      result.add(
        new SizedBox(
          width: scrWidth * .01,
        )
      );
    }
    result.add(
      new SizedBox(
        width: scrWidth * .03
      )
    );
    result.add(
      Text(rating.toString(), style: TextStyle(color: Color.fromRGBO(18, 113, 194, 1), fontSize: scrWidth * .06),)
    );

    return result;
  }

  //_____________________________________________________________________________________
  //__________________________________HomeTab____________________________________________
  //_____________________________________________________________________________________

  List<Widget> createTrending(double scrHeight, double scrWidth, BuildContext context){
    List<Widget> result = [];
    for(int i = 0; i < 5; i++){
      result.add(
        new InkWell(
          child: new Container(
            width: scrWidth * .3,
            child: Image.network(
              test.s1.background,
              height: scrHeight * .7,
              fit: BoxFit.fitHeight,
            ),
          ),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => VideoPlayerScreen()),
            );
          },
        )
      );
      result.add(
        new SizedBox(
          width: scrWidth * .01,
        )
      );
    }

    return result;
  }
}