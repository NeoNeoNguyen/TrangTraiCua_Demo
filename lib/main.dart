// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trangtraicua_demo/pages/dangnhap/ui/dangnhap.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      title:'TrangTraiCua',
      home: DangNhap(),
    );
  }
}
