import 'package:cloud_firestore/cloud_firestore.dart';

class UserData {
  String title;
  String email;
  String password;
  String username;
  String profileImg;
  String uid;
  List followers;
  List following;

  UserData(
      {required this.email,
      required this.password,
      required this.title,
      required this.username,
      required this.profileImg,
      required this.uid,
      required this.followers,
      required this.following});

  Map<String, dynamic> convert2Map() {
    return {
      "email": email,
      "password": password,
      "title": title,
      "username": username,
      "profileImg": profileImg,
      "uid": uid,
      "followers": [],
      "following": []
    };
  }

  // function that convert "DocumentSnapshot" to a User
// function that takes "DocumentSnapshot" and return a User

  static convertSnap2Model(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return UserData(
      email: snapshot["email"],
      password: snapshot["password"],
      title: snapshot["title"],
      username: snapshot["username"],
      profileImg: snapshot["profileImg"],
      uid: snapshot["uid"],
      followers: snapshot["followers"],
      following: snapshot["following"],
    );
  }
}
