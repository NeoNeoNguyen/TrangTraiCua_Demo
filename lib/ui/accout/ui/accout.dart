import 'package:flutter/material.dart';

class Accout extends StatefulWidget {
  const Accout({super.key});

  @override
  State<Accout> createState() => _AccoutState();
}

class _AccoutState extends State<Accout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'TÀI KHOẢN',
          style: TextStyle(
              color: Color.fromARGB(255, 173, 0, 6),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
