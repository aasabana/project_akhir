import 'package:flutter/material.dart';
import 'package:project_akhir/Page/RegisterPage/localwidget/Formbaru.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BackButton(),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Frombaru(),
            ],
          ))
        ],
      ),
    );
  }
}
