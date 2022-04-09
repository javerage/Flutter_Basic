//import 'dart:_http';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/models.dart';

class UserProvider extends ChangeNotifier {
  String _host = 'my.api.mockaroo.com';
  String _apiKey = '9a54fc40';
  List<Student> resultStudents = [];

  UserProvider() {
    this.getUsers();
  }

  getUsers() async {
    final Uri url = Uri.https(_host, 'dummy_dmp.json', {'key': _apiKey});
    //var url =
    //    Uri.parse('https://my.api.mockaroo.com/dummy_singup.json?key=9a54fc40');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var students = Student.studentFromJson(response.body);
      resultStudents = students;
      notifyListeners();
    } else {
      print('Te pinto un zorro :P...');
    }
  }

  postUser() {
    
  }
}
