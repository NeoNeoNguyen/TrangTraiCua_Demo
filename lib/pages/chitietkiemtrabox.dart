// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ChiTietKiemTraBox extends StatefulWidget {
  const ChiTietKiemTraBox({super.key});

  @override
  State<ChiTietKiemTraBox> createState() => _ChiTietKiemTraBoxState();
}

class _ChiTietKiemTraBoxState extends State<ChiTietKiemTraBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xFF087EBF),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "U1A - H01 - C01",
          style:
              TextStyle(color: Color(0xFF087EBF), fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}