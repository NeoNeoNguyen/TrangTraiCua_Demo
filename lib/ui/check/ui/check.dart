// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_element, unused_field

import 'package:flutter/material.dart';
class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}


class _CheckState extends State<Check> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        title: Text('KTRA & VSINH_CHO ĂN',
         style: TextStyle(
              color: Color.fromARGB(255, 173, 0, 6),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
