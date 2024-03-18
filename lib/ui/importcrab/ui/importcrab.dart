// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Importcrab extends StatefulWidget {
  const Importcrab({super.key});

  @override
  State<Importcrab> createState() => _ImportcrabState();
}

class _ImportcrabState extends State<Importcrab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        title: const Text('NHẬP CUA',
         style: TextStyle(
              color: Color.fromARGB(255, 173, 0, 6),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}