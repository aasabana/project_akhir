import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_akhir/Page/LoginPage/Login_Page.dart';
import 'package:project_akhir/utils/Splashscreen.dart';
import 'package:project_akhir/utils/TemaApp.dart';
import 'package:project_akhir/utils/Userdata.dart';
import 'package:provider/provider.dart';
import 'Page/States/Userapp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Userapp(),
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: Tema().buildTema(),
          home: Splash_screen(),
        ));
  }
}
