import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_akhir/Page/FilmPage/Create_Film.dart';
import 'package:project_akhir/Page/FilmPage/DetailPageAdmin.dart';
import 'package:project_akhir/Page/FilmPage/ListFilm.dart';
import 'package:project_akhir/Page/FilmPage/MethodFilm.dart';
import 'package:project_akhir/Page/HomePage/Home_Page.dart';
import 'package:project_akhir/Page/States/Userapp.dart';
import 'package:project_akhir/utils/Userdata.dart';
import 'package:provider/provider.dart';

class AuthController extends GetxController {
  // var namadepan = "".obs;
  // final namadepanctrl = TextEditingController();
  var email = "".obs;
  var fullname = "".obs;
  var password = "".obs;
  var judul = "".obs;
  var tahun = "".obs;
  var rating = "".obs;
  var deskripsi = "".obs;

  final profnama = TextEditingController();
  final profemail = TextEditingController();

  final ctrljudul = TextEditingController();
  final ctrltahun = TextEditingController();
  final ctrldeskripsi = TextEditingController();
  final ctrlemail = TextEditingController();
  final ctrlfullname = TextEditingController();
  final ctrlpassword = TextEditingController();
  final ctrlrating = TextEditingController();

  void UserDaftar(String Email, String Password, String fullname,
      BuildContext context) async {
    Userapp _currentUser = Provider.of<Userapp>(context, listen: false);
    try {
      String _retunString =
          await _currentUser.UserDaftarWithEmail(Email, Password, fullname);
      if (_retunString == "success") {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Email Dan Password Berhasil Didaftarkan"),
          duration: Duration(seconds: 2),
        ));
        Navigator.pop(context);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Email dan Password Gagal Terdaftar"),
          duration: Duration(seconds: 2),
        ));
      }
    } catch (e) {
      print(e);
    }
  }

  void UserMasuk(String Email, String Password, BuildContext context) async {
    Userapp _currentUser = Provider.of<Userapp>(context, listen: false);
    String _returnString = "error";
    try {
      String _returnString =
          await _currentUser.UserMasukWithEmail(Email, Password, context);
      print(_returnString);
      if (_returnString == "success") {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => HomePage()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Password Atau Email yang anda masukan Salah"),
          duration: Duration(seconds: 2),
        ));
      }
    } catch (e) {
      print(e);
    }
  }
}
