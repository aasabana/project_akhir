import 'package:flutter/material.dart';
import 'package:project_akhir/Page/FilmPage/Create_Film.dart';
import 'package:project_akhir/Page/FilmPage/DetailPageUser.dart';
import 'package:project_akhir/Page/FilmPage/Model/ListFavorite.dart';
import 'package:project_akhir/Page/States/Userapp.dart';
import 'package:project_akhir/utils/AppContainer.dart';
import 'package:project_akhir/Page/FilmPage/ListFilm.dart';
import 'package:project_akhir/Page/HomePage/Home_Page.dart';

Widget myContainer() {
  return Container(
    width: 250,
    height: 250,
    decoration: BoxDecoration(
        image: DecorationImage(
      image: AssetImage("assets/images/Logo.png"),
    )),
  );
}

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    appBar:
    AppBar(
      title: Text('About'),
    );
    return Scaffold(
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
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => MyFavorite()));
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
                      // Navigator.of(context).pushReplacement(MaterialPageRoute(
                      //     builder: (context) => MyFavorite()));
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
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: ListView(children: <Widget>[
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ContainerApp(
            child: Column(
              children: <Widget>[
                myContainer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: <Widget>[
                      Text("Tentang Kami : ",
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[600])),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: Row(
                    children: <Widget>[
                      Text(
                          "Adalah sebuah basis data daring informasi\nyang berkaitan dengan film, acara tv, video\nrumahan, dan series, termasuk daftar\npemeran, ringkasan alur cerita, dan rating\nIMDb.",
                          style: TextStyle(
                              fontSize: 14.5,
                              color: Color.fromARGB(255, 43, 45, 50))),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => FilmForm()));
          },
          child: const Text('Admin', style: TextStyle(fontSize: 15)),
        ),
      ]),
    );
  }
}
