import 'package:movieapp/Model/Object/Movie.dart';
import 'package:movieapp/Model/Object/Person.dart';

class Test{
  static List<String> genre = ["Crime", "Thriller", "Action", "Nude"];
  Series s1 = new Series(
    120,
    8.8,
    "You", 
    "https://akns-images.eonline.com/eol_images/Entire_Site/20191011/rs_600x600-191111091422-600-you-season-2-ch-111119.jpg?fit=around|1200:1200&crop=1200:1200;center,top&output-quality=90", 
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec interdum, magna quis tincidunt lobortis, orci nunc lacinia tortor, non rhoncus lacus risus ac odio. Suspendisse lectus tellus, fermentum a auctor in, posuere non lorem. Maecenas in ultricies tortor. Praesent suscipit massa aliquet condimentum mollis. Vivamus eget diam felis. Proin maximus eget lorem nec bibendum. Pellentesque feugiat mi et augue faucibus luctus. Nam egestas bibendum luctus.",
    genre
    );

  Cast c1 = new Cast(
    "Huy Chu",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec interdum, magna quis tincidunt lobortis, orci nunc lacinia tortor, non rhoncus lacus risus ac odio. Suspendisse lectus tellus, fermentum a auctor in, posuere non lorem. Maecenas in ultricies tortor.",
    "https://akns-images.eonline.com/eol_images/Entire_Site/20191011/rs_600x600-191111091422-600-you-season-2-ch-111119.jpg?fit=around|1200:1200&crop=1200:1200;center,top&output-quality=90",
    
  );
  
}