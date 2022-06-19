// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:project_akhir/Page/FilmPage/Create_Film.dart';
// import 'package:project_akhir/Page/FilmPage/MethodFilm.dart';
// import 'package:project_akhir/utils/AppContainer.dart';

// class FilmForm extends StatefulWidget {
//   const FilmForm({Key? key}) : super(key: key);

//   @override
//   State<FilmForm> createState() => _FilmFormState();
// }

// class _FilmFormState extends State<FilmForm> {
//   final controllerJudul = TextEditingController();
//   final controllerTahun = TextEditingController();
//   final controllerDesc = TextEditingController();

//   final docFilm = FirebaseFirestore.instance.collection('datafilm').doc();

//   Future createFilm(Film film) async {
//     final film = Film(
//       id: docFilm.id,
//       judul: controllerJudul.text,
//       tahun: controllerTahun.text,
//       deskripsi: controllerDesc.text,
//     );
//     final json = film.toJson();
//     await docFilm.set(json);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Tambah Film"),
//       ),
//       body: ListView(children: <Widget>[
//         SizedBox(
//           height: 50,
//         ),
//         Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: ContainerApp(
//                 child: Column(
//               children: <Widget>[
//                 TextFormField(
//                   controller: controllerJudul,
//                   decoration: InputDecoration(
//                       prefixIcon: Icon(Icons.text_snippet_outlined),
//                       hintText: "Judul"),
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 TextFormField(
//                   controller: controllerTahun,
//                   decoration: InputDecoration(
//                       prefixIcon: Icon(Icons.date_range_outlined),
//                       hintText: "Tahun Rilis"),
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 TextFormField(
//                   controller: controllerDesc,
//                   decoration: InputDecoration(
//                       prefixIcon: Icon(Icons.text_snippet_outlined),
//                       hintText: "Detail FIlm"),
//                 ),
//               ],
//             ))),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 130.0),
//           child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.grey,
//                 shadowColor: Color.fromARGB(255, 62, 62, 62),
//               ),
//               child: Text(
//                 "Buat",
//                 style: TextStyle(
//                   fontSize: 20,
//                 ),
//               ),
//               onPressed: () {
//                 final film = Film(
//                   id: docFilm.id,
//                   judul: controllerJudul.text,
//                   tahun: controllerTahun.text,
//                   deskripsi: controllerDesc.text,
//                 );
//                 createFilm(film);

//                 Navigator.pop(context);
//               }),
//         )
//       ]),
//     );
//   }
// }
