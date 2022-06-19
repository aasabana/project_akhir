import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:project_akhir/Page/FilmPage/EditDataFilm.dart';
import 'package:project_akhir/Page/FilmPage/ListFilm.dart';
import 'package:project_akhir/Page/FilmPage/MethodFilm.dart';
import 'package:project_akhir/utils/AppContainer.dart';

class DetailPageAdmin extends StatefulWidget {
  String id;
  final String judul;
  final String tahun;
  final String deskripsi;
  final String rating;

  final ctrlemail = TextEditingController();
  final ctrllaporan = TextEditingController();
  final ctrlsearch = TextEditingController();

  DetailPageAdmin({
    Key? key,
    required this.id,
    required this.judul,
    required this.tahun,
    required this.deskripsi,
    required this.rating,
  }) : super(key: key);

  @override
  State<DetailPageAdmin> createState() => _DetailPageAdminState();
}

class _DetailPageAdminState extends State<DetailPageAdmin> {
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference datawidget = firestore.collection("datafilm");
    return Scaffold(
      appBar: AppBar(
        title: Text('List Film'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 40.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ContainerApp(
              // leading: CircleAvatar(child: Text('${film.tahun}')),
              // title: Text(film.judul),
              // subtitle: Text(film.deskripsi),

              child: Column(
                children: <Widget>[
                  Text(
                    widget.judul,
                    style: TextStyle(fontSize: 30, color: Colors.grey[600]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: <Widget>[
                        Text("Tahun Rilis: ",
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[600])),
                        Text('${widget.tahun}',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 43, 45, 50))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: <Widget>[
                        Text("IMDb Rating : ",
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[600])),
                        Text('${widget.rating} / 10',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 43, 45, 50))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: <Widget>[
                        SizedBox(height: 30.0),
                        Text("Deskripsi Film: ",
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[600])),
                        Text('${widget.deskripsi}',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 43, 45, 50))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.edit),
                    label: Text("Edit"),
                    style: ElevatedButton.styleFrom(primary: Colors.grey),
                    // child: Text("Edit", style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      Get.to(editForm(
                          id: widget.id,
                          judul: widget.judul,
                          tahun: widget.tahun,
                          deskripsi: widget.deskripsi,
                          rating: widget.rating));
                      // Get.to(DetailPageAdmin(
                      //   id: id
                      // ));
                    },
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: ElevatedButton.icon(
                    icon: Icon(
                        Icons.delete_outline), //icon data for elevated button
                    label: Text("Hapus"), //label text
                    style: ElevatedButton.styleFrom(primary: Colors.grey),
                    // child: Text("Hapus", style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      // print(widget.id);
                      datawidget.doc(widget.id).delete();
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => ListFilmUser()));
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
