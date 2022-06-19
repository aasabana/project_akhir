import 'package:flutter/material.dart';
import 'package:project_akhir/utils/AppContainer.dart';

Widget myContainer() {
  return Container(
    width: 250,
    height: 330,
    decoration: BoxDecoration(
        image: DecorationImage(
      image: AssetImage("assets/poster/jurassicworld.jpg"),
    )),
  );
}

Widget myContainer2() {
  return Container(
    width: 250,
    height: 330,
    decoration: BoxDecoration(
        image: DecorationImage(
      image: AssetImage("assets/poster/kkn.jpg"),
    )),
  );
}

Widget myContainer3() {
  return Container(
    width: 250,
    height: 330,
    decoration: BoxDecoration(
        image: DecorationImage(
      image: AssetImage("assets/poster/topgun.jpg"),
    )),
  );
}

Widget myContainer4() {
  return Container(
    width: 250,
    height: 330,
    decoration: BoxDecoration(
        image: DecorationImage(
      image: AssetImage("assets/poster/drs2.jpg"),
    )),
  );
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: EdgeInsets.all(40.0),
              child: Image.asset("assets/images/Logo.png"),
            ),
            ListTile(
              leading: Icon(Icons.home, size: 30),
              title: const Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigator.of(context).pushReplacement(
                //     MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.search, size: 30),
              title: const Text(
                "Film",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigator.of(context).pushReplacement(
                //     MaterialPageRoute(builder: (context) => ListFilmUser()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person, size: 30),
              title: const Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigator.of(context).pushReplacement(
                //     MaterialPageRoute(builder: (context) => myProfile()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.question_mark_rounded,
                size: 30,
              ),
              title: const Text(
                "About",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
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
              Text(
                "Jurassic World Dominion",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey[600],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Text("IMDb Rating\t: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("6.0 ",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 231, 12, 12))),
                    Text("/ 10",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Text("Rilis\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("Juni 2022",
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
                    Text("Pemeran\t\t\t\t\t\t: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("Chris Pratt\nBryce Dallas Howard\nLaura Dern",
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
                    Text("Sutradara\t\t\t\t\t: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("Colin Trevorrow",
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
                    Text("Sinopsis : ",
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
                        "Empat tahun setelah kehancuran pulau\nNublar, dinosaurus sekarang hidup dan\nberburu bersama manusia di seluruh dunia.\nKeseimbangan yang rapuh ini akan\nmenentukan, apakah manusia akan tetap\nmenjadi berada di puncak rantai makanan\nketika berbagi wilayah dengan makhluk\npaling menakutkan dalam sejarah bumi.",
                        style: TextStyle(
                            fontSize: 14.5,
                            color: Color.fromARGB(255, 43, 45, 50))),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: Text("Kembali", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  // Navigator.of(context).pushReplacement(
                  //     MaterialPageRoute(builder: (context) => HomePage()));
                },
              )
            ],
          )),
        ),
      ]),
    );
  }
}

class DetailScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: EdgeInsets.all(40.0),
              child: Image.asset("assets/images/Logo.png"),
            ),
            ListTile(
              leading: Icon(Icons.home, size: 30),
              title: const Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigator.of(context).pushReplacement(
                //     MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.search, size: 30),
              title: const Text(
                "Film",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigator.of(context).pushReplacement(
                //     MaterialPageRoute(builder: (context) => ListFilmUser()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person, size: 30),
              title: const Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigator.of(context).pushReplacement(
                //     MaterialPageRoute(builder: (context) => myProfile()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.question_mark_rounded,
                size: 30,
              ),
              title: const Text(
                "About",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
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
              myContainer2(),
              Text(
                "KKN di Desa Penari",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey[600],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Text("IMDb Rating\t: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("6.3 ",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 231, 12, 12))),
                    Text("/ 10",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Text("Rilis\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("30 April 2022",
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
                    Text("Produser\t\t\t\t\t\t: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("Manoj Punjabi",
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
                    Text("Pemeran\t\t\t\t\t\t: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("Tissa Biani Azzahra\nAdinda Thomas\nAchmad Megantara",
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
                    Text("Sutradara\t\t\t\t\t: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("Awi Suryadi",
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
                    Text("Sinopsis : ",
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
                        "Enam mahasiswa yang harus melak-\nsanakan KKN di desa terpencil\ndiperingatkan untuk tidak melewati\nbatas gerbang terlarang yang menuju\nke tempat misterius yang mungkin\nterkait dengan sosok penari cantik\nyang mulai mengganggu mereka.",
                        style: TextStyle(
                            fontSize: 14.5,
                            color: Color.fromARGB(255, 43, 45, 50))),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: Text("Kembali", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  // Navigator.of(context).pushReplacement(
                  //     MaterialPageRoute(builder: (context) => HomePage()));
                },
              )
            ],
          )),
        ),
      ]),
    );
  }
}

class DetailScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: EdgeInsets.all(40.0),
              child: Image.asset("assets/images/Logo.png"),
            ),
            ListTile(
              leading: Icon(Icons.home, size: 30),
              title: const Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigator.of(context).pushReplacement(
                //     MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.search, size: 30),
              title: const Text(
                "Film",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigator.of(context).pushReplacement(
                //     MaterialPageRoute(builder: (context) => ListFilmUser()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person, size: 30),
              title: const Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigator.of(context).pushReplacement(
                //     MaterialPageRoute(builder: (context) => myProfile()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.question_mark_rounded,
                size: 30,
              ),
              title: const Text(
                "About",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
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
              myContainer3(),
              Text(
                "Top Gun: Maverick",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey[600],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Text("IMDb Rating\t: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("8.6 ",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 235, 219, 7))),
                    Text("/ 10",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Text("Rilis\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("24 Mei 2022",
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
                    Text("Produser\t\t\t\t\t\t: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text(
                        "Jerry Bruckheimer\nTom Cruise\nDavid Ellison\nChristopher McQuarrie",
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
                    Text("Pemeran\t\t\t\t\t\t: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text(
                        "Tom Cruise\nJennifer Connelly\nMiles Tiller\nLewis Pullman",
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
                    Text("Sutradara\t\t\t\t\t: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("Joseph Konsinski",
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
                    Text("Sinopsis : ",
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
                        "Setelah lebih dari tiga puluh tahun\nmengabdi sebagai salah satu pener-\nbang top Angkatan Laut, Pete Mitchell\nadalah tempatnya, mendorong amplop\nsebagai pilot uji yang berani dan\nmenghindari kenaikan pangkat yang\nakan menjatuhkannya.",
                        style: TextStyle(
                            fontSize: 14.5,
                            color: Color.fromARGB(255, 43, 45, 50))),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: Text("Kembali", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  // Navigator.of(context).pushReplacement(
                  //     MaterialPageRoute(builder: (context) => HomePage()));
                },
              )
            ],
          )),
        ),
      ]),
    );
  }
}

class DetailScreen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: EdgeInsets.all(40.0),
              child: Image.asset("assets/images/Logo.png"),
            ),
            ListTile(
              leading: Icon(Icons.home, size: 30),
              title: const Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigator.of(context).pushReplacement(
                //     MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.search, size: 30),
              title: const Text(
                "Film",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigator.of(context).pushReplacement(
                //     MaterialPageRoute(builder: (context) => ListFilmUser()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person, size: 30),
              title: const Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigator.of(context).pushReplacement(
                //     MaterialPageRoute(builder: (context) => myProfile()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.question_mark_rounded,
                size: 30,
              ),
              title: const Text(
                "About",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
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
              myContainer4(),
              Text(
                "Doctor Strange in the\nMultiverse of Madness",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey[600],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Text("IMDb Rating\t: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("7.3 ",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 228, 152, 10))),
                    Text("/ 10",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Text("Rilis\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("5 Mei 2022",
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
                    Text("Produser\t\t\t\t\t\t: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("Kevin Feige",
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
                    Text("Pemeran\t\t\t\t\t\t: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text(
                        "Benedict Cumberbatch\nElizabeth Olsen\nBenedict Wong\nXochitl Gomez\nRachel McAdams",
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
                    Text("Sutradara\t\t\t\t\t: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("Sam Raimi",
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
                    Text("Sinopsis : ",
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
                        "Setelah Doctor Strange mengucapkan\nmantra terlarang yang membuka pintu\nke multiverse, keseimbangan semesta\nberada dalam kekacauan. Mahluk dari\ndimensi lain mulai datang termasuk versi\nlain dari dirinya yang menjadi ancaman\nterbesar.",
                        style: TextStyle(
                            fontSize: 14.5,
                            color: Color.fromARGB(255, 43, 45, 50))),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: Text("Kembali", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  // Navigator.of(context).pushReplacement(
                  //     MaterialPageRoute(builder: (context) => HomePage()));
                },
              )
            ],
          )),
        ),
      ]),
    );
  }
}
