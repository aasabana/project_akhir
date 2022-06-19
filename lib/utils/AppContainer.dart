import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContainerApp extends StatelessWidget {
  final Widget child;

  const ContainerApp({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 43, 43, 43),
                blurRadius: 7.0,
                spreadRadius: 0.5,
                offset: Offset(
                  4.0,
                  4.0,
                ))
          ]),
      child: child,
    );
  }
}
