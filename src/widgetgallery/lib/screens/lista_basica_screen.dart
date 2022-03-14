import 'package:flutter/material.dart';
import 'package:widgetgallery/models/models.dart';

class ListaBasicaScreen extends StatelessWidget {
  static final students = <Student>{
    Student(
        firstName: 'Maria',
        lastName: 'Gonzalez',
        city: 'Oslo',
        email: '',
        language: '',
        phone: ''),
    Student(
        firstName: 'Sandra',
        lastName: 'Ochoa',
        city: 'Paris',
        email: '',
        language: '',
        phone: ''),
    Student(
        firstName: 'Carolina',
        lastName: 'Suarez',
        city: 'Zaragoza',
        email: '',
        language: '',
        phone: ''),
    Student(
        firstName: 'Monica',
        lastName: 'Abud',
        city: 'Montecarlo',
        email: '',
        language: '',
        phone: ''),
    Student(
        firstName: 'Jair',
        lastName: 'Canul',
        city: 'Roma',
        email: '',
        language: '',
        phone: ''),
    Student(
        firstName: 'Julio',
        lastName: 'Ortega',
        city: 'vancouver',
        email: '',
        language: '',
        phone: ''),
    Student(
        firstName: 'Alejandro',
        lastName: 'Trujeque',
        city: 'Guadalajara',
        email: '',
        language: '',
        phone: ''),
    Student(
        firstName: 'Esteban',
        lastName: 'Balam',
        city: 'Monterrey',
        email: '',
        language: '',
        phone: ''),
    Student(
        firstName: 'Patricia',
        lastName: 'Ak',
        city: 'San Francisco',
        email: '',
        language: '',
        phone: ''),
    Student(
        firstName: 'Lucia',
        lastName: 'Solis',
        city: 'New York',
        email: '',
        language: '',
        phone: ''),
  };
  const ListaBasicaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista basica'),
      ),
      body: Center(
          child: ListView(
        children: [
          ...students
              .map((student) => ListTile(
                    title: Text(student.fullName),
                    subtitle: Text('con domicilio en: ${student.city}'),
                    leading: const Icon(Icons.people),
                    trailing: const Icon(Icons.arrow_drop_down),
                  ))
              .toList()
        ],
      )),
    );
  }
}
