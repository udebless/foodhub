class Datamodel {
  String name;
  String img;
  String price;
  String people;
  int stars;
  String description;
  String location;

  Datamodel(
      {required this.description,
      required this.img,
      required this.location,
      required this.name,
      required this.people,
      required this.price,
      required this.stars});

  factory Datamodel.fromJson(Map<String, dynamic> json) {
    return Datamodel(
        description: json[' description'],
        img: json[' img'],
        location: json[' location'],
        name: json[' name'],
        people: json[' people'],
        price: json[' price'],
        stars: json[' stars']);
  }
}
