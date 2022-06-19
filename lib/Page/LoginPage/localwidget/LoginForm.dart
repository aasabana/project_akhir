import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_akhir/Page/FilmPage/MethodFilm.dart';
import 'package:project_akhir/Page/RegisterPage/Register_Page.dart';
import 'package:project_akhir/Page/States/Appdataactrl.dart';
import 'package:project_akhir/utils/AppContainer.dart';
import 'package:project_akhir/Page/States/Appdataactrl.dart';

class LoginForm extends GetView<AddWidgetController> {
  LoginForm({Key? key}) : super(key: key);

  final AuthController login = Get.put(AuthController());
  final auth = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return ContainerApp(
        child: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
          child: Text(
            "Log In",
            style: TextStyle(
              color: Colors.black,
              // color: Theme.of(context).secondaryHeaderColor,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextFormField(
          controller: login.ctrlemail,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.alternate_email), hintText: "Email"),
        ),
        SizedBox(height: 20.0),
        TextFormField(
          controller: login.ctrlpassword,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock_outline), hintText: "Password"),
          obscureText: true,
        ),
        SizedBox(
          height: 20.0,
        ),
        ElevatedButton(
          child: Text(
            "Masuk",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15.0),
          ),
          onPressed: () {
            auth.UserMasuk(
                login.ctrlemail.text, login.ctrlpassword.text, context);
            // login.ctrlemail.text = '';
            // login.ctrlpassword.text = '';
            // login.ctrlfullname.text = '';
          },
        ),
        TextButton(
          child: Text("Tidak Punya Akun? Sign Up Here"),
          onPressed: () {
            login.ctrlemail.text = '';
            login.ctrlpassword.text = '';
            login.ctrlfullname.text = '';
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => RegisterPage(),
            ));
          },
        ),
      ],
    ));
  }
}
