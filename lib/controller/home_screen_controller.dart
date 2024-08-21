import 'package:data_conversion/model/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class HomeScreenController with ChangeNotifier {
  // String name = 'Renjima';
  List<Map> details = [
    {'name': 'renj', "place": 'per', 'phone': '98', 'father': 'raj'},
    {
      'name': 'renj2',
      "place": 'perumpilav',
      'phone': '989767',
      'father': 'rajav'
    },
    {
      'name': 'renj3',
      "place": 'peringod',
      'phone': '9845678',
      'father': 'rajani'
    },
    {
      'name': 'renj4',
      "place": 'peringav',
      'phone': '9845678',
      'father': 'rajamma'
    },
  ];
  // Details detailsObj=Details(name: details.name)//The instance member 'details' can't be accessed in an initializer.So created a function and called the object there.
  List<Details> detailsObj = [];
  convertToModel() {
    detailsObj = details
        .map((element) => Details(
            name: element['name'],
            phone: element['phone'],
            place: element['place'],
            father: element['father']))
        .toList();
  }
}
