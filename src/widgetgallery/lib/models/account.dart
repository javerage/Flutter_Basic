class Account {
  final String userName;
  final String password;

  Account({required this.userName, required this.password});

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(userName: json['email'], password: json['password']);
  }
}
