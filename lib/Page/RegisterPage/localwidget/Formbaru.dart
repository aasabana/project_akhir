import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:project_akhir/Page/FilmPage/MethodFilm.dart';
import 'package:project_akhir/Page/LoginPage/Login_Page.dart';
import 'package:project_akhir/Page/States/Appdataactrl.dart';
import 'package:project_akhir/Page/States/Userapp.dart';
import 'package:project_akhir/utils/AppContainer.dart';
import 'package:provider/provider.dart';

class Frombaru extends GetView<AddWidgetController> {
  Frombaru({Key? key}) : super(key: key);

  final AuthController regis = Get.put(AuthController());
  final auth = Get.find<AuthController>();
  final _formKey = GlobalKey<FormState>();
  RegExp pass_valid = RegExp(r"(?=.*\d).{6,}$");

  bool validatePassword(String pass) {
    String _password = pass.trim();
    if (pass_valid.hasMatch(_password)) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ContainerApp(
        child: Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
            child: Text(
              "Buat Akun",
              style: TextStyle(
                color: Colors.black,
                // color: Theme.of(context).secondaryHeaderColor,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextFormField(
            controller: regis.ctrlfullname,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline),
                hintText: "Nama Lengkap"),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            controller: regis.ctrlemail,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.alternate_email), hintText: "Email"),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "Masukan Password";
              } else {
                //call function to check password
                bool result = validatePassword(value);
                if (result) {
                  // create account event
                  return null;
                } else {
                  return "Password Minimal Memiliki 6 Karakter";
                }
              }
            },
            controller: regis.ctrlpassword,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_outline), hintText: "Password"),
            obscureText: true,
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            child: Text(
              "Daftar",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ),
            onPressed: () {
              _formKey.currentState!.validate();
              // final String fullname = _Fullnamecontroller.text.trim();
              // final String password = _Passwordcontroller.text.trim();
              // final String email = _Emailcontroller.text.trim();

              // if (_Passwordcontroller.text == _ConfirmPasswordcontroller.text) {
              //   _UserDaftar(
              //     _Emailcontroller.text,
              //     _Passwordcontroller.text,
              //     context,
              //   );
              // } else {
              //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //     content: Text("Password Tidak Sama"),
              //     duration: Duration(seconds: 2),
              //   ));
              // }
              if (regis.ctrlemail.text.isEmpty) {
                print("Email TIdak Boleh Kosong");
              } else {
                if (regis.ctrlpassword.text.isEmpty) {
                  print("Password TIdak Boleh Kosong");
                } else {
                  auth.UserDaftar(regis.ctrlemail.text, regis.ctrlpassword.text,
                      regis.ctrlfullname.text, context);
                }
              }
            },
          ),
          TextButton(
            child: Text("Masuk"),
            onPressed: () {
              regis.ctrlemail.text = '';
              regis.ctrlpassword.text = '';
              regis.ctrlfullname.text = '';
              Get.to(LoginPage());
            },
          )
        ],
      ),
    ));
  }
}
