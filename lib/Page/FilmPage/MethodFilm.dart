import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Film2 {
  String id;
  final String judul;
  final String tahun;
  final String rating;

  final ctrlemail = TextEditingController();
  final ctrllaporan = TextEditingController();
  final ctrlsearch = TextEditingController();

  Film2({
    this.id = "",
    required this.judul,
    required this.tahun,
    required this.rating,
  });

  Map<String, dynamic> toJson() =>
      {'id': id, 'judul': judul, 'tahun': tahun, 'rating': rating};

  static Film2 fromJson(Map<String, dynamic> json) => Film2(
      id: json['id'],
      judul: json['judul'],
      tahun: json['tahun'],
      rating: json['rating']);
}

class Film {
  String id;
  final String judul;
  final String tahun;
  final String deskripsi;
  final String rating;

  final ctrlemail = TextEditingController();
  final ctrllaporan = TextEditingController();
  final ctrlsearch = TextEditingController();

  Film({
    this.id = "",
    required this.judul,
    required this.tahun,
    required this.deskripsi,
    required this.rating,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'judul': judul,
        'tahun': tahun,
        'deskripsi': deskripsi,
        'rating': rating
      };

  static Film fromJson(Map<String, dynamic> json) => Film(
      id: json['id'],
      judul: json['judul'],
      tahun: json['tahun'],
      deskripsi: json['deskripsi'],
      rating: json['rating']);
}

class TextController extends GetxController {}

class CounterController extends GetxController {
  var count = 0.obs;
  increment() => count++;
}

class SwitchController extends GetxController {
  var switchValue = false.obs;
}

class GetxTextController extends GetxController {
  final emailEditingController = TextEditingController();
}

class AddWidgetController extends GetxController {
  final emailCtrl = TextEditingController();
}

class MainpageController extends GetxController {
  final emailCtrl = TextEditingController();
}
