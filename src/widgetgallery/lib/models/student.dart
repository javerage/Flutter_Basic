class Student{
  final String firstName;
  final String lastName;
  final String city;

  Student({required this.firstName, required this.lastName, required this.city});
  String get fullName  => '$firstName $lastName';
}