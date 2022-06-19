import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:project_akhir/Page/FilmPage/EditDataFilm.dart';
import 'package:project_akhir/Page/FilmPage/MethodFilm.dart';
import 'package:project_akhir/Page/States/Appdataactrl.dart';
import 'package:project_akhir/utils/AppContainer.dart';

class DetailPageUser extends StatefulWidget {
  String id;
  final String judul;
  final String tahun;
  final String deskripsi;
  final String rating;

  final ctrlemail = TextEditingController();
  final ctrllaporan = TextEditingController();
  final ctrlsearch = TextEditingController();

  DetailPageUser({
    Key? key,
    required this.id,
    required this.judul,
    required this.tahun,
    required this.deskripsi,
    required this.rating,
  }) : super(key: key);

  @override
  State<DetailPageUser> createState() => _DetailPageUserState();
}

final acc = Get.find<AuthController>();

class _DetailPageUserState extends State<DetailPageUser> {
  final docFav = FirebaseFirestore.instance.collection('favourite');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Film'),
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
                    icon: Icon(Icons.favorite_rounded),
                    label: Text("Favorite"),
                    style: ElevatedButton.styleFrom(primary: Colors.grey[600]),
                    // child: Text("Edit", style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      docFav.add({
                        'id': widget.id,
                        'email': acc.profemail.text,
                        'deskripsi': widget.deskripsi,
                        'rating': widget.rating,
                        'judul': widget.judul,
                        'tahun': widget.tahun,
                      });
                      // Get.to(DetailPageAdmin(
                      //   id: id
                      // ));
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
