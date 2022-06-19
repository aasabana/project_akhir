import 'package:flutter/material.dart';
import 'package:project_akhir/utils/AppContainer.dart';

void main() => runApp(const Rumah());

class Rumah extends StatefulWidget {
  const Rumah({Key? key}) : super(key: key);

  @override
  State<Rumah> createState() => _RumahState();
}

// class LogOut extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         body: StreamBuilder<User?>(
//           stream: FirebaseAuth.instance.authStateChanges(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return Rumah();
//             } else {
//               return LoginPage();
//             }
//           },
//         ),
//       );
// }

class _RumahState extends State<Rumah> {
  // void _LogOut(BuildContext context) async {
  //   Userapp _currenuser = Provider.of<Userapp>(context, listen: false);
  //   String _returnString = await _currenuser.LogOut();
  //   if (_returnString == "Success") {
  //     Navigator.pushAndRemoveUntil(
  //       context,
  //       MaterialPageRoute(
  //         builder: (_) => LoginPage(),
  //       ),
  //       (route) => false,
  //     );
  //   }
  // }

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
                //     MaterialPageRoute(builder: (context) => Rumah()));
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
              Text(
                "Jurassic World Dominion",
                style: TextStyle(fontSize: 25, color: Colors.grey[600]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Text("Genre: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("Action, Adventure, Sci-Fi",
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
                    Text("Produksi: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("Universal Pictures",
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
                    Text("Rilis: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("Juni 2022",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 43, 45, 50))),
                  ],
                ),
              ),
              ElevatedButton(
                child: Text("Detail", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  // Navigator.of(context).pushReplacement(
                  //     MaterialPageRoute(builder: (context) => DetailScreen()));
                },
              )
            ],
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ContainerApp(
              child: Column(
            children: <Widget>[
              Text(
                "KKN di Desa Penari",
                style: TextStyle(fontSize: 30, color: Colors.grey[600]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Text("Genre: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("Horror",
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
                    Text("Produksi: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("MD Pictures, Pic House Films",
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
                    Text("Rilis: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("30 April 2022",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 43, 45, 50))),
                  ],
                ),
              ),
              ElevatedButton(
                child: Text("Detail", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  // Navigator.of(context).pushReplacement(
                  //     MaterialPageRoute(builder: (context) => DetailScreen2()));
                },
              )
            ],
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ContainerApp(
              child: Column(
            children: <Widget>[
              Text(
                "Top Gun: Maverick",
                style: TextStyle(fontSize: 30, color: Colors.grey[600]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Text("Genre: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("Action, Drama",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 43, 45, 50))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: <Widget>[
                    Text("Produksi: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("Paramount Pictures",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 43, 45, 50))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: <Widget>[
                    Text("Rilis: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("24 Mei 2022",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 43, 45, 50))),
                  ],
                ),
              ),
              ElevatedButton(
                child: Text("Detail", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  // Navigator.of(context).pushReplacement(
                  //     MaterialPageRoute(builder: (context) => DetailScreen3()));
                },
              )
            ],
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ContainerApp(
              child: Column(
            children: <Widget>[
              Text(
                "Doctor Strange in the\nMultiverse of Madness",
                style: TextStyle(fontSize: 26, color: Colors.grey[600]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Text("Genre: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("Action, Adventure, Fantasy",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 43, 45, 50))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: <Widget>[
                    Text("Produksi: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("Walt Disney Pictures",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 43, 45, 50))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: <Widget>[
                    Text("Rilis: ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                    Text("5 Mei 2022",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 43, 45, 50))),
                  ],
                ),
              ),
              ElevatedButton(
                child: Text("Detail", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  // Navigator.of(context).pushReplacement(
                  //     MaterialPageRoute(builder: (context) => DetailScreen4()));
                },
              )
            ],
          )),
        ),
      ]),
    );
  }
}
