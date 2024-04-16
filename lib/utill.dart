import 'dart:typed_data';

import 'package:flutter/material.dart';

class FestivalModel {
  String? image, name;

  FestivalModel({this.image, this.name});

  factory FestivalModel.fromMap(Map m1) {
    FestivalModel q1 = FestivalModel(image: m1['image'], name: m1['name']);
    return q1;
  }
}

class festivalCategoryModel {
  String? name, image;

  festivalCategoryModel({this.name, this.image});
}

class Global {
  static Global g1 = Global();

  List<festivalCategoryModel> festivalList = [
    festivalCategoryModel(name: "New year", image: "images/New year.png"),
    festivalCategoryModel(name: "Lohri", image: "images/lohri.png"),
    festivalCategoryModel(name: "Uttarayan", image: "images/uttarayan.png"),
    festivalCategoryModel(
        name: "Republic Day", image: "images/republic day.png"),
    festivalCategoryModel(
        name: "Mahashivratri", image: "images/Mahashivratri.png"),
    festivalCategoryModel(
        name: "Holika Dahan", image: "images/holika dahan.png"),
    festivalCategoryModel(name: "Holi", image: "images/holi.png"),
    festivalCategoryModel(name: "Ram Navami", image: "images/ram novami.png"),
    festivalCategoryModel(
        name: "Hanuman jayanti", image: "images/hanuman jayanti.png"),
    festivalCategoryModel(
        name: "Guru Purnima", image: "images/guru purnima.png"),
    festivalCategoryModel(
        name: "Independence", image: "images/idepandence.png"),
    festivalCategoryModel(
        name: "Raksha Bandhan", image: "images/rakash bandhan.png"),
    festivalCategoryModel(name: "Janmashtami", image: "images/janmashtami.png"),
    festivalCategoryModel(name: "Ganesh chaturthi", image: "images/ganesh.png"),
    festivalCategoryModel(name: "Gandhi jayanti", image: "images/gandhi.png"),
    festivalCategoryModel(name: "Navratri", image: "images/navratri.png"),
    festivalCategoryModel(name: "Dhanteras", image: "images/dhanteras.png"),
    festivalCategoryModel(name: "Diwali", image: "images/divali.png"),
    festivalCategoryModel(name: "Bhai Dooj", image: "images/bhai dooj.png"),
  ];

  List<Map> festivalsList = [
    {"image": "images/new1.jpg", "name": "New year"},
    {"image": "images/new2.jpg", "name": "New year"},
    {"image": "images/new3.jpg", "name": "New year"},
    {"image": "images/lohri1.jpg", "name": "Lohri"},
    {"image": "images/lohri2.jpg", "name": "Lohri"},
    {"image": "images/lohri3.jpg", "name": "Lohri"},
    {"image": "images/Uttarayan1.jpg", "name": "Uttarayan"},
    {"image": "images/Uttarayan2.jpg", "name": "Uttarayan"},
    {"image": "images/Uttarayan3.jpg", "name": "Uttarayan"},
    {"image": "images/Republic1.jpg", "name": "Republic Day"},
    {"image": "images/Republic2.jpg", "name": "Republic Day"},
    {"image": "images/Republic3.jpg", "name": "Republic Day"},
    {"image": "images/Mahashivratri1.jpg", "name": "Mahashivratri"},
    {"image": "images/Mahashivratri3.jpg", "name": "Mahashivratri"},
    {"image": "images/Mahashivratri4.jpg", "name": "Mahashivratri"},
    {"image": "images/Holika Dahan1.jpg", "name": "Holika Dahan"},
    {"image": "images/Holika Dahan2.jpg", "name": "Holika Dahan"},
    {"image": "images/Holika Dahan3.jpg", "name": "Holika Dahan"},
    {"image": "images/Holi1.jpg", "name": "Holi"},
    {"image": "images/Holi2.jpg", "name": "Holi"},
    {"image": "images/Holi3.jpg", "name": "Holi"},
    {"image": "images/Ram1.jpg", "name": "Ram Navami"},
    {"image": "images/Ram2.jpg", "name": "Ram Navami"},
    {"image": "images/Ram3.jpg", "name": "Ram Navami"},
    {"image": "images/Hanuman1.jpg", "name": "Hanuman jayanti"},
    {"image": "images/Hanuman2.jpg", "name": "Hanuman jayanti"},
    {"image": "images/Hanuman3.jpg", "name": "Hanuman jayanti"},
    {"image": "images/Guru1.jpg", "name": "Guru Purnima"},
    {"image": "images/Guru2.jpg", "name": "Guru Purnima"},
    {"image": "images/Guru3.jpg", "name": "Guru Purnima"},
    {"image": "images/Independence1.jpg", "name": "Independence"},
    {"image": "images/Independence2.jpg", "name": "Independence"},
    {"image": "images/Independence3.jpg", "name": "Independence"},
    {"image": "images/Raksha1.jpg", "name": "Raksha Bandhan"},
    {"image": "images/Raksha2.jpg", "name": "Raksha Bandhan"},
    {"image": "images/Raksha3.jpg", "name": "Raksha Bandhan"},
    {"image": "images/Janmashtami1.jpg", "name": "Janmashtami"},
    {"image": "images/Janmashtami2.jpg", "name": "Janmashtami"},
    {"image": "images/Janmashtami3.jpg", "name": "Janmashtami"},
    {"image": "images/Ganesh2.jpg", "name": "Ganesh chaturthi"},
    {"image": "images/Ganesh3.jpg", "name": "Ganesh chaturthi"},
    {"image": "images/Ganesh4.jpg", "name": "Ganesh chaturthi"},
    {"image": "images/Navratri2.jpg", "name": "Navratri"},
    {"image": "images/Navratri3.jpg", "name": "Navratri"},
    {"image": "images/Navratri4.jpg", "name": "Navratri"},
    {"image": "images/Dhanteras1.jpg", "name": "Dhanteras"},
    {"image": "images/Dhanteras2.jpg", "name": "Dhanteras"},
    {"image": "images/Dhanteras3.jpg", "name": "Dhanteras"},
    {"image": "images/Diwali1.jpg", "name": "Diwali"},
    {"image": "images/Diwali2.jpg", "name": "Diwali"},
    {"image": "images/Diwali3.jpg", "name": "Diwali"},
    {"image": "images/Bhai1.jpg", "name": "Bhai Dooj"},
    {"image": "images/Bhai2.jpg", "name": "Bhai Dooj"},
    {"image": "images/Bhai3.jpg", "name": "Bhai Dooj"},
    {"image": "images/Gandhi1.jpg", "name": "Gandhi jayanti"},
    {"image": "images/Gandhi2.jpg", "name": "Gandhi jayanti"},
    {"image": "images/Gandhi3.jpg", "name": "Gandhi jayantij"},
  ];
  List<FestivalModel> modelList = [];

  TextEditingController nametxt = TextEditingController();

  String? festivalname;
}

List<Color> colorbg = [Colors.black, Colors.white, ...Colors.primaries];

List fontsList = ["Domine", "Poppins", "YoungSerif"];
Uint8List? savedImg;
