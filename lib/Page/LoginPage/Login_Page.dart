import 'package:flutter/material.dart';
import 'package:project_akhir/Page/LoginPage/localwidget/LoginForm.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: ListView(
            padding: EdgeInsets.all(20.0),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(40.0),
                child: Image.asset("assets/images/Logo.png"),
              ),
              SizedBox(
                height: 20.0,
              ),
              LoginForm(),
            ],
          ))
        ],
      ),
    );
  }
}
