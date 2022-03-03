import 'package:flutter/material.dart';
import 'package:widgetgallery/models/models.dart';

class ListaBasicaScreen extends StatelessWidget {
  static final students = <Student>{
    Student(firstName: 'Maria', lastName: 'Gonzalez', city: 'Oslo'),
    Student(firstName: 'Sandra', lastName: 'Ochoa', city: 'Paris'),
    Student(firstName: 'Carolina', lastName: 'Suarez', city: 'Zaragoza'),
    Student(firstName: 'Monica', lastName: 'Abud', city: 'Montecarlo'),
    Student(firstName: 'Jair', lastName: 'Canul', city: 'Roma'),
    Student(firstName: 'Julio', lastName: 'Ortega', city: 'vancouver'),
    Student(firstName: 'Alejandro', lastName: 'Trujeque', city: 'Guadalajara'),
    Student(firstName: 'Esteban', lastName: 'Balam', city: 'Monterrey'),
    Student(firstName: 'Patricia', lastName: 'Ak', city: 'San Francisco'),
    Student(firstName: 'Lucia', lastName: 'Solis', city: 'New York'),
  };
  const ListaBasicaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista basica'),),
      body: Center(
         child: ListView(
           children: [
             ...students.map((student) => ListTile(
               title: Text(student.fullName),
               subtitle: Text('con domicilio en: ${student.city}'),
               leading: const Icon(Icons.people),
               trailing: const Icon(Icons.arrow_drop_down),)).toList()
           ],
         )
      ),
    );
  }
}