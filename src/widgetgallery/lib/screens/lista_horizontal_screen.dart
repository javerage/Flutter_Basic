import 'package:flutter/material.dart';
import 'package:widgetgallery/models/student.dart';
import 'package:widgetgallery/themes/app_theme.dart';

class ListaHorizontalScreen extends StatelessWidget {
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
