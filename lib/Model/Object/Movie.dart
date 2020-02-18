import 'package:movieapp/Model/Object/Person.dart';

class Movie{
  String name;
  String background;
  List<Person> cast;
  String info;
  List<String> genre;
  double rating;
  int lasting;
}

class Film extends Movie{
  String url1;
  String url2;
  String trailer;
}

class Series extends Movie{
  String trailer;
  List<Episode> episodes;

  Series(int lasting, double rating, String name, String background, String info, List<String> genre){
    this.name = name;
    this.rating = rating;
    this.background = background;
    this.info = info;
    this.genre = genre;
    this.lasting = lasting;
  }
}

class Episode extends Movie{
  int season;
  String url1;
  String url2;
}