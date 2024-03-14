// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trangtraicua_demo/pages/kiemtra_vesinh_choan/unit/unit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 223, 0, 22), 
      ),
      title:'TrangTraiCua',
      home: Unit1(),
    );
  }
}
