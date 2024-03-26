import 'dart:convert';
import 'package:crypto/crypto.dart';

class PasswordHasher {
  static String hashPassword(String password) {
    final hashedPassword = sha256.convert(utf8.encode(password)).toString();
    return hashedPassword;
  }
}
