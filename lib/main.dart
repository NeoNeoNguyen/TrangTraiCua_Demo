// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trangtraicua_demo/pages/page_unit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TrangTraiCua',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: Unit1(),
    );
  }
}
