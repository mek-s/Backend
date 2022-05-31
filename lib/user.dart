// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  
//  Future<List<User>> fetch (BuildContext context) async {
//     final jsonstring = await DefaultAssetBundle.of(context).loadString('users.json');
//     return userFromJson(jsonstring);
//   }
    String id;
    String nom;
    int age;
    String email;
    String password;
    String avatar;

    User({
       required this.id,
      required this.nom,
      required this.age,
      required  this.email,
      required this.password,
      required  this.avatar,
    });

  

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        nom: json["nom"],
        age: json["age"],
        email: json["email"],
        password: json["password"],
        avatar: json["avatar"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nom": nom,
        "age": age,
        "email": email,
        "password": password,
        "avatar": avatar,
    };
}
