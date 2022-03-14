import 'dart:convert';

import 'package:widgetgallery/models/account.dart';

class Student {
  final int id;
  final String firstName;
  final String lastName;
  final String city;
  final String phone;
  final String email;
  final String language;
  final String profile;
  final Account? account;

  Student(
      {this.id = 0,
      required this.firstName,
      required this.lastName,
      required this.phone,
      required this.email,
      required this.language,
      this.account,
      this.profile = '',
      required this.city});

  String get fullName => '$firstName $lastName';

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
        firstName: json['firstName'],
        lastName: json['lastName'],
        phone: json['phone'],
        email: json['email'],
        language: json['language'],
        account: Account.fromJson(json),
        profile: json['profile'],
        city: '');
  }

  static List<Student> studentFromJson(String str) =>
      List<Student>.from(json.decode(str).map((x) => Student.fromJson(x)));

  static String studentToJson(List<Student> data) =>
      json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "phone": phone,
        "email": email,
        "password": account?.password,
        "language": language,
        "profile": profile,
      };
}
