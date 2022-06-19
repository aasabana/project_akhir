import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project_akhir/Page/FilmPage/Create_Film.dart';
import 'package:project_akhir/Page/FilmPage/DetailPageAdmin.dart';
import 'package:project_akhir/Page/FilmPage/MethodFilm.dart';
import 'package:project_akhir/utils/AppContainer.dart';
import 'package:get/get.dart';

class ListFilmUser extends StatefulWidget {
  const ListFilmUser({Key? key}) : super(key: key);

  @override
  State<ListFilmUser> createState() => _ListFilmUserState();
}

class _ListFilmUserState extends State<ListFilmUser> {
  Stream<List<Film>> readFilm() => FirebaseFirestore.instance
      .collection('datafilm')
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => Film.fromJson(doc.data())).toList());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Film'),
      ),
      body: Column(
        children: [
          SizedBox(height: 50.0),
          // ElevatedButton.icon(
          //   icon: Icon(Icons.add),
          //   label: Text("Buat Data Film"),
          //   style: ElevatedButton.styleFrom(primary: Colors.grey[600]),
          //   // child: Text("Edit", style: TextStyle(color: Colors.white)),
          //   onPressed: () {
          //     Get.to(FilmForm());
          //     // Navigator.of(context).pushReplacement(
          //     //     MaterialPageRoute(builder: (context) => FilmForm()));
          //   },
          // ),
          StreamBuilder(
            stream: readFilm(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasError) {
                return Text("Error! ${snapshot.error}");
              } else if (snapshot.hasData) {
                final films = snapshot.data!;
                return ListView(
                  children: films.map<Widget>(buildFilm).toList(),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ],
      ),
    );
  }

  Widget buildFilm(Film film) {
    return ContainerApp(
      // leading: CircleAvatar(child: Text('${film.tahun}')),
      // title: Text(film.judul),
      // subtitle: Text(film.deskripsi),

      child: Column(
        children: <Widget>[
          Text(
            film.judul,
            style: TextStyle(fontSize: 30, color: Colors.grey[600]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              children: <Widget>[
                Text("Tahun Rilis : ",
                    style: TextStyle(fontSize: 15, color: Colors.grey[600])),
                Text('${film.tahun}',
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 43, 45, 50))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0),
            child: Row(
              children: <Widget>[
                Text("IMDb Rating : ",
                    style: TextStyle(fontSize: 15, color: Colors.grey[600])),
                Text('${film.rating} / 10',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 43, 45, 50),
                    )),
                Icon(
                  Icons.star_rounded,
                  color: Colors.amber,
                  size: 18,
                ),
              ],
            ),
          ),
          ElevatedButton(
            child: Text("Detail", style: TextStyle(color: Colors.white)),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => (DetailPageAdmin(
                        id: film.id,
                        judul: film.judul,
                        tahun: film.tahun,
                        deskripsi: film.deskripsi,
                        rating: film.rating,
                      ))));
            },
          ),
        ],
      ),
    );
  }
}
