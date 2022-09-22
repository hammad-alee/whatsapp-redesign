class User {
  int id;
  String name, lastMessage, date, image;

  User(
      {required this.id,
      required this.name,
      required this.lastMessage,
      required this.image,
      required this.date});
      factory User.fromJson(Map<String, dynamic> json) {
    return User(
     id: int.parse(json['id']),
     name: json["name"],
     lastMessage: json["lastMessage"],
     image: json["image"],
     date: json["date"]
     
    );
  }
}
