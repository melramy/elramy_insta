import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:instagram_app/firebase_services/storage.dart';
import 'package:instagram_app/models/user.dart';
import 'package:instagram_app/shared/snackbar.dart';

class AuthMethods {
  register(
      {required emailll,
      required pasworddd,
      required context,
      required usernameee,
      required titleee,
      required imgPath,
      required imgName}) async {
    String message = "ERROR => Not string the code";

    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailll,
        password: pasworddd,
      );

      message = "ERROR => Registered only";
//----------------------------

      String urlll = await getImgURL(
          imgName: imgName, imgPath: imgPath, folderName: 'profileImg');

      CollectionReference users =
          FirebaseFirestore.instance.collection('userSSS');

      UserData userr = UserData(
          email: emailll,
          password: pasworddd,
          title: titleee,
          username: usernameee,
          profileImg: urlll,
          uid: credential.user!.uid,
          followers: [],
          following: []);

      users
          .doc(credential.user!.uid)
          .set(userr.convert2Map())
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));

      message = " Registered & User Added to DB 👆";
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, "ERROR :  ${e.code} ");
    } catch (e) {
      print(e);
    }

    showSnackBar(context, message);
  }

  signIn({required emailll, required passworddd, required context}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailll, password: passworddd);
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, "ERROR :  ${e.code} ");
    } catch (e) {
      print(e);
    }
  }

  // functoin to get user details from Firestore (Database)
  Future<UserData> getUserDetails() async {
    DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('userSSS')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    return UserData.convertSnap2Model(snap);
  }
}
