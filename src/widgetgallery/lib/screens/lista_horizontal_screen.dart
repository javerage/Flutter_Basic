import 'package:flutter/material.dart';
import 'package:widgetgallery/models/student.dart';
import 'package:widgetgallery/themes/app_theme.dart';

class ListaHorizontalScreen extends StatelessWidget {
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

  const ListaHorizontalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista horizontal'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 75,
            width: 330,
            child: ListView(
              children: [
                ...students
                    .map((student) => ConstrainedBox(
                          constraints: const BoxConstraints(
                              maxWidth: 330, minHeight: 75),
                          child: ListTile(
                            title: Text(student.fullName),
                            subtitle: Text('con domicilio en: ${student.city}'),
                            leading: const Icon(Icons.people),
                            trailing: const Icon(Icons.arrow_drop_down),
                          ),
                        ))
                    .toList()
              ],
              scrollDirection: Axis.horizontal,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  clipBehavior: Clip.antiAlias,
                  elevation: 15,
                  color: Colors.amber,
                  shadowColor: AppTheme.primaryColor,
                  child: const Center(child: Text('Hola enfermera :P'))),
            ),
          )
        ],
      ),
    );
  }
}
