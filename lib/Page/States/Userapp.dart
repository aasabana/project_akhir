import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:project_akhir/Page/LoginPage/Login_Page.dart';
import 'package:project_akhir/Page/States/Appdataactrl.dart';
import 'package:project_akhir/utils/TemaApp.dart';
import 'package:project_akhir/utils/Userdata.dart';

class Userapp extends ChangeNotifier {
  String _Userid = "";
  String _Email = "";
  String _Fullname = "";

  FirebaseAuth _auth = FirebaseAuth.instance;
  // late AuthResultStatus _authStatus;

//  FirebaseFirestore firestore = FirebaseFirestore.instance;
//     CollectionReference users = firestore.collection('users');

  Stream<User?> get authStateChanges => _auth.idTokenChanges();

  final AuthController getdata = Get.put(AuthController());

  void LogOut() async {
    String retVal = "error";
    await _auth.signOut();
    _Userid = "";
    _Email = "";
    Get.offAll(LoginPage());
  }

  Future<String> UserDaftarWithEmail(
      String Email, String Password, String fullname) async {
    String retVal = "error";

    try {
      await _auth
          .createUserWithEmailAndPassword(email: Email, password: Password)
          .then((value) async {
        User? user = FirebaseAuth.instance.currentUser;
        await FirebaseFirestore.instance
            .collection("users")
            .doc(user!.uid)
            .set({
          // 'uid': user.uid,
          'email': Email,
          'role': 'user',
          // 'password': Password,
          'fullname': fullname,
        });
      });
      retVal = "success";
    } catch (e) {
      print(e);
    }
    return retVal;
  }

  Future<String> UserMasukWithEmail(
      String Email, String Password, BuildContext context) async {
    // showDialog(
    //     context: context,
    //     barrierDismissible: false,
    //     builder: (context) => Center(
    //           child: CircularProgressIndicator(),
    //         ));
    String retVal = "error";

    try {
      UserCredential _authResult = await _auth.signInWithEmailAndPassword(
          email: Email, password: Password);
      _Userid = _authResult.user!.uid;
      _Email = _authResult.user!.email!;
      print(_authResult);
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      CollectionReference users = firestore.collection("users");
      DocumentSnapshot snapshot = await users.doc(_authResult.user!.uid).get();
      getdata.profnama.text = snapshot['fullname'];
      getdata.profemail.text = snapshot['email'];
      retVal = "success";
    } catch (e) {
      print(e);
    }
    return retVal;
  }
}
