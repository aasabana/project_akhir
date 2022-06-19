// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:project_akhir/Page/LoginPage/Login_Page.dart';
// import 'package:project_akhir/Page/RegisterPage/Register_Page.dart';
// import 'package:project_akhir/Page/States/Userapp.dart';
// import 'package:project_akhir/utils/AppContainer.dart';
// import 'package:provider/provider.dart';
// import 'package:project_akhir/utils/TemaApp.dart';
// import 'package:firebase_core/firebase_core.dart';

// class RegisterForm extends StatefulWidget {
//   @override
//   State<RegisterForm> createState() => _RegisterFormState();
// }

// class _RegisterFormState extends State<RegisterForm> {
//   TextEditingController _Fullnamecontroller = TextEditingController();
//   TextEditingController _Emailcontroller = TextEditingController();
//   TextEditingController _Passwordcontroller = TextEditingController();
//   TextEditingController _ConfirmPasswordcontroller = TextEditingController();

//   void _UserDaftar(String Email, String Password, BuildContext context) async {
//     Userapp _currentUser = Provider.of<Userapp>(context, listen: false);

//     try {
//       String _retunString =
//           await _currentUser.UserDaftarWithEmail(Email, Password);
//       if (_retunString == "success") {
//         Navigator.pop(context);
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           content: Text(_retunString),
//           duration: Duration(seconds: 2),
//         ));
//       }
//     } catch (e) {
//       print(e);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ContainerApp(
//         child: Column(
//       children: <Widget>[
//         Padding(
//           padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
//           child: Text(
//             "Buat Akun",
//             style: TextStyle(
//               color: Colors.black,
//               // color: Theme.of(context).secondaryHeaderColor,
//               fontSize: 25.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         TextFormField(
//           controller: _Fullnamecontroller,
//           decoration: InputDecoration(
//               prefixIcon: Icon(Icons.person_outline), hintText: "Nama Lengkap"),
//         ),
//         SizedBox(height: 20.0),
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
//         TextFormField(
//           controller: _ConfirmPasswordcontroller,
//           decoration: InputDecoration(
//               prefixIcon: Icon(Icons.lock_outline),
//               hintText: "Confirm Password"),
//           obscureText: true,
//         ),
//         SizedBox(
//           height: 20.0,
//         ),
//         ElevatedButton(
//           child: Text(
//             "Daftar",
//             style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 15.0),
//           ),
//           onPressed: () {
//             final String fullname = _Fullnamecontroller.text.trim();
//             final String password = _Passwordcontroller.text.trim();
//             final String email = _Emailcontroller.text.trim();

//             // if (_Passwordcontroller.text == _ConfirmPasswordcontroller.text) {
//             //   _UserDaftar(
//             //     _Emailcontroller.text,
//             //     _Passwordcontroller.text,
//             //     context,
//             //   );
//             // } else {
//             //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//             //     content: Text("Password Tidak Sama"),
//             //     duration: Duration(seconds: 2),
//             //   ));
//             // }
//             if (email.isEmpty) {
//               print("Email is Empty");
//             } else {
//               if (password.isEmpty) {
//                 print("Password is Empty");
//               } else {
//                 context
//                     .read<Userapp>()
//                     .UserDaftarWithEmail(
//                       email,
//                       password,
//                     )
//                     .then((value) async {
//                   User? user = FirebaseAuth.instance.currentUser;

//                   await FirebaseFirestore.instance
//                       .collection("users")
//                       .doc(user!.uid)
//                       .set({
//                     'uid': user.uid,
//                     'email': email,
//                     'password': password,
//                     'fullname': fullname,
//                   });
//                 });
//               }
//             }
//           },
//         ),
//         TextButton(
//           child: Text("Masuk"),
//           onPressed: () {
//             Navigator.of(context).push(MaterialPageRoute(
//               builder: (context) => LoginPage(),
//             ));
//           },
//         )
//       ],
//     ));
//   }
// }
