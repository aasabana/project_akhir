import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_akhir/Page/FilmPage/ListFilm.dart';

import 'MethodFilm.dart';

class AddUserPage extends GetView<AddWidgetController> {
  @override
  final AddWidgetController tc = Get.put(AddWidgetController());
  final AddWidgetController gt = Get.find();

  Future<dynamic> CustomAlert(BuildContext context, String pesan1) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Success"),
          backgroundColor: Colors.white,
          content: Container(
            child: Column(
              children: [
                Text("User berhasil ditambahkan"),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(ListFilmUser()),
                      child: Text("OK")),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference datawidget = firestore.collection("widget");

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 52, 85),
      body: ListView(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 1.4,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 208, 208, 208),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: 25,
                        margin: const EdgeInsets.only(
                          top: 5,
                        ),
                        child: const Center(
                            child: Text(
                          "Tambah User",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        )),
                      ),
                      Inputtextfield(context, "Email User", tc.emailCtrl),
                      SizedBox(height: 30),
                      SizedBox(
                        width: 150,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            CreateDoc(email: gt.emailCtrl.text);
                            CustomAlert(context, gt.emailCtrl.text);
                            gt.emailCtrl.text = "";
                          },
                          child: const Text("Buat"),
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 2, 100, 33)),
                        ),
                      ),
                    ]),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}

Widget Inputtextfield(context, String txt, final isi) {
  return Container(
    width: MediaQuery.of(context).size.width / 1.2,
    height: 50,
    margin: const EdgeInsets.only(
      top: 30,
    ),
    child: TextField(
      controller: isi,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: txt,
        fillColor: const Color(0xFFecf1f7),
        filled: true,
      ),
    ),
  );
}

Future CreateDoc({required String email}) async {
  final doc = FirebaseFirestore.instance.collection("sembarang").doc(email);

  final json = {"email": email};

  await doc.set(json);
}
