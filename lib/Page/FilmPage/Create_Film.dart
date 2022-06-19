import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_akhir/Page/FilmPage/ListFilm.dart';
import 'package:project_akhir/Page/FilmPage/MethodFilm.dart';
import 'package:project_akhir/Page/States/Appdataactrl.dart';
import 'package:project_akhir/utils/AppContainer.dart';

class FilmForm extends StatelessWidget {
  FilmForm({Key? key}) : super(key: key);

  final AuthController filmControl = Get.put(AuthController());

  void createFilm(Film film) async {
    final docFilm = FirebaseFirestore.instance.collection('datafilm').doc();
    final film = Film(
      id: docFilm.id,
      judul: filmControl.ctrljudul.text,
      tahun: filmControl.ctrltahun.text,
      deskripsi: filmControl.ctrldeskripsi.text,
      rating: filmControl.ctrlrating.text,
    );
    final json = film.toJson();
    await docFilm.set(json);
  }

  final docFilm = FirebaseFirestore.instance.collection('datafilm').doc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Film'),
      ),
      body: ListView(children: [
        SizedBox(
          height: 40.0,
        ),
        ContainerApp(
            child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.symmetric(vertical: 50.0),
                child: Text(
                  "Tambah Data Film",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            TextFormField(
              controller: filmControl.ctrljudul,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.text_snippet_outlined),
                  hintText: "Judul"),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              controller: filmControl.ctrltahun,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.date_range_outlined),
                  hintText: "Tahun Rilis"),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              controller: filmControl.ctrldeskripsi,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.text_snippet_outlined),
                  hintText: "Detail FIlm"),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              controller: filmControl.ctrlrating,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.text_snippet_outlined),
                  hintText: "Rating Film"),
            ),
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 130.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  shadowColor: Color.fromARGB(255, 62, 62, 62),
                ),
                child: Text(
                  "Buat",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  final film = Film(
                    id: docFilm.id,
                    judul: filmControl.ctrljudul.text,
                    tahun: filmControl.ctrltahun.text,
                    deskripsi: filmControl.ctrldeskripsi.text,
                    rating: filmControl.ctrlrating.text,
                  );
                  createFilm(film);

                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  shadowColor: Color.fromARGB(255, 62, 62, 62),
                ),
                child: Text(
                  "Liat Daftar Film",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Get.to(ListFilmUser());
                },
              ),
            ),
          ],
        )),
      ]),
    );
    // ContainerApp(
    //     child: Column(
    //   children: <Widget>[
    //     Padding(
    //         padding: EdgeInsets.symmetric(vertical: 20.0),
    //         child: Text(
    //           "Buat Akun",
    //           style: TextStyle(
    //             color: Colors.black,
    //             fontSize: 25.0,
    //             fontWeight: FontWeight.bold,
    //           ),
    //         )),
    //     TextFormField(
    //       controller: filmControl.ctrljudul,
    //       decoration: InputDecoration(
    //           prefixIcon: Icon(Icons.text_snippet_outlined), hintText: "Judul"),
    //     ),
    //     SizedBox(
    //       height: 20.0,
    //     ),
    //     TextFormField(
    //       controller: filmControl.ctrltahun,
    //       decoration: InputDecoration(
    //           prefixIcon: Icon(Icons.date_range_outlined),
    //           hintText: "Tahun Rilis"),
    //     ),
    //     SizedBox(
    //       height: 20.0,
    //     ),
    //     TextFormField(
    //       controller: filmControl.ctrldeskripsi,
    //       decoration: InputDecoration(
    //           prefixIcon: Icon(Icons.text_snippet_outlined),
    //           hintText: "Detail FIlm"),
    //     ),
    //     SizedBox(
    //       height: 20.0,
    //     ),
    //     TextFormField(
    //       controller: filmControl.ctrlrating,
    //       decoration: InputDecoration(
    //           prefixIcon: Icon(Icons.text_snippet_outlined),
    //           hintText: "Detail FIlm"),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 130.0),
    //       child: ElevatedButton(
    //         style: ElevatedButton.styleFrom(
    //           primary: Colors.grey,
    //           shadowColor: Color.fromARGB(255, 62, 62, 62),
    //         ),
    //         child: Text(
    //           "Buat",
    //           style: TextStyle(
    //             fontSize: 20,
    //           ),
    //         ),
    //         onPressed: () {
    //           final film = Film(
    //             id: docFilm.id,
    //             judul: filmControl.ctrljudul.text,
    //             tahun: filmControl.ctrltahun.text,
    //             deskripsi: filmControl.ctrldeskripsi.text,
    //             rating: filmControl.ctrlrating.text,
    //           );
    //           createFilm(film);

    //           Navigator.pop(context);
    //         },
    //       ),
    //     ),
    //   ],
    // ));
  }
}
