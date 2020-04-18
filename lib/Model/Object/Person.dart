class Person{
  String name;
  List<String> awards;
  String info;
}

class Cast extends Person{
  String image;

  Cast(String name, String info, String image){
    this.name = name;
    this.info = info;
    this.image = image;
  }
}

class Staff extends Person{

}