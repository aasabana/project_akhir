import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project_akhir/Page/FilmPage/About.dart';
import 'package:project_akhir/Page/FilmPage/DetailPageAdmin.dart';
import 'package:project_akhir/Page/FilmPage/MethodFilm.dart';
import 'package:project_akhir/Page/HomePage/Home_Page.dart';
import 'package:project_akhir/Page/States/Appdataactrl.dart';
import 'package:project_akhir/Page/States/Userapp.dart';
import 'package:project_akhir/utils/AppContainer.dart';
import 'package:get/get.dart';

class MyFavorite extends StatefulWidget {
  const MyFavorite({Key? key}) : super(key: key);

  @override
  State<MyFavorite> createState() => _MyFavoriteState();
}

class _MyFavoriteState extends State<MyFavorite> {
  final acc = Get.find<AuthController>();
  Stream<List<Film2>> readFilm() => FirebaseFirestore.instance
      .collection('favourite')
      .where('email', isEqualTo: acc.profemail.text)
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => Film2.fromJson(doc.data())).toList());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Favorite'),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 0, 74, 111),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '${acc.profnama.text}',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          Text("${acc.profemail.text}",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
                  ListTile(
                      iconColor: Colors.grey[600],
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      leading: Icon(Icons.home, size: 30),
                      title: Text(
                        'Home',
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => HomePage()));
                      }),
                  ListTile(
                    iconColor: Colors.grey[600],
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    leading: Icon(Icons.favorite_rounded, size: 30),
                    title: Text(
                      'My Favorit',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      // Navigator.of(context).pushReplacement(MaterialPageRoute(
                      //     builder: (context) => MyFavorite()));
                    },
                  ),
                  ListTile(
                    iconColor: Colors.grey[600],
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    leading: Icon(Icons.question_mark_rounded, size: 30),
                    title: Text(
                      'About',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => AboutScreen()));
                    },
                  ),
                ],
              ),
            ),
            Container(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Divider(
                        height: 1,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: IconButton(
                          onPressed: () {
                            Userapp().LogOut();
                            // tc.emailCtrl.text = "";
                            // tc.passwordCtrl.text = "";
                          },
                          icon: Icon(Icons.logout),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: StreamBuilder(
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
    );
  }

  Widget buildFilm(Film2 film) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference datafav = firestore.collection("favourite");
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
            child: Text("Hapus", style: TextStyle(color: Colors.white)),
            onPressed: () {
              ElevatedButton.icon(
                icon:
                    Icon(Icons.delete_outline), //icon data for elevated button
                label: Text("Hapus"), //label text
                style: ElevatedButton.styleFrom(primary: Colors.grey),
                // child: Text("Hapus", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  datafav.doc(film.id).delete();
                  Get.to(MyFavorite());
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
