// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:project_akhir/Page/FilmPage/CreateFilmForm.dart';
// import 'package:project_akhir/Page/FilmPage/ListFilm.dart';
// import 'package:project_akhir/Page/HomePage/Home_Page.dart';
// import 'package:project_akhir/Page/RegisterPage/Register_Page.dart';
// import 'package:project_akhir/Page/States/Userapp.dart';
// import 'package:project_akhir/utils/AppContainer.dart';
// import 'package:project_akhir/utils/TemaApp.dart';
// import 'package:provider/provider.dart';
// import 'dart:io'; // for File
// import 'package:file_picker/file_picker.dart'; // for FilePickerResult

// enum LoginType {
//   email,
//   google,
// }

// class LoginForm extends StatefulWidget {
//   @override
//   State<LoginForm> createState() => _LoginFormState();
// }

// class _LoginFormState extends State<LoginForm> {
//   TextEditingController _Emailcontroller = TextEditingController();
//   TextEditingController _Passwordcontroller = TextEditingController();

//   void _LoginUser(
//       {required LoginType type,
//       String? Email,
//       String? Password,
//       BuildContext? context}) async {
//     Userapp _currentUser = Provider.of<Userapp>(context!, listen: false);

//     try {
//       String _returnString;
//       switch (type) {
//         case LoginType.email:
//           _returnString =
//               await _currentUser.UserMasukWithEmail(Email!, Password!, context);
//           if (_returnString == "success") {
//             Navigator.of(context)
//                 .push(MaterialPageRoute(builder: (context) => ListFilmUser()));
//           } else {
//             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//               content: Text("error"),
//               duration: Duration(seconds: 2),
//             ));
//           }
//           break;
//         case LoginType.google:
//           _returnString = await _currentUser.UserMasukWithGoogle();
//           if (_returnString == "success") {
//             Navigator.of(context)
//                 .push(MaterialPageRoute(builder: (context) => HomePage()));
//           } else {
//             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//               content: Text("error"),
//               duration: Duration(seconds: 2),
//             ));
//           }
//           break;
//         default:
//       }
//     } catch (e) {
//       print(e);
//     }
//   }

//   Widget _googleButton() {
//     return OutlinedButton.icon(
//       label: Text(
//         "Masuk Dengan Google",
//         style: TextStyle(
//           color: Colors.black,
//           fontSize: 20,
//         ),
//       ),
//       style: OutlinedButton.styleFrom(
//         elevation: 0,
//         side: BorderSide(color: Colors.grey, width: 2),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(40),
//         ),
//         primary: Colors.white,
//       ),
//       onPressed: () {
//         _LoginUser(type: LoginType.google, context: context);
//       },
//       icon: Image.asset('assets/icon/logo-google.png'),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ContainerApp(
//         child: Column(
//       children: <Widget>[
//         Padding(
//           padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
//           child: Text(
//             "Log In",
//             style: TextStyle(
//               color: Colors.black,
//               // color: Theme.of(context).secondaryHeaderColor,
//               fontSize: 25.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         TextFormField(
//           controller: _Emailcontroller,
//           decoration: InputDecoration(
//               prefixIcon: Icon(Icons.alternate_email), hintText: "Email"),
//         ),
//         SizedBox(height: 20.0),
//         TextFormField(
//           controller: _Passwordcontroller,
//           decoration: InputDecoration(
//               prefixIcon: Icon(Icons.lock_outline), hintText: "Password"),
//           obscureText: true,
//         ),
//         SizedBox(
//           height: 20.0,
//         ),
//         ElevatedButton(
//           child: Text(
//             "Masuk",
//             style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 15.0),
//           ),
//           onPressed: () {
//             _LoginUser(
//                 type: LoginType.email,
//                 Email: _Emailcontroller.text,
//                 Password: _Passwordcontroller.text);
//           },
//         ),
//         TextButton(
//           child: Text("Tidak Punya Akun? Sign Up Here"),
//           onPressed: () {
//             Navigator.of(context).push(MaterialPageRoute(
//               builder: (context) => RegisterPage(),
//             ));
//           },
//         ),
//       ],
//     ));
//   }
// }
