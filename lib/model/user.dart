class User {
  final String username;
  final String password;
  final String id;
  final String phone;
  final String email;
  final String fullname;
  final String role;
  final String type;
  final String token;
  final String refreshToken;

  User({
    required this.username,
    required this.password,
    required this.id,
    required this.phone,
    required this.email,
    required this.fullname,
    required this.role,
    required this.type,
    required this.token,
    required this.refreshToken,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      username: json['data']['username'],
      password: json['data']['password'],
      id: json['data']['id'],
      phone: json['data']['phone'],
      email: json['data']['email'],
      fullname: json['data']['fullname'],
      role: json['data']['role'],
      type: json['data']['type'],
      token: json['data']['token'],
      refreshToken: json['data']['token_refesh'],
    );
  }
}
