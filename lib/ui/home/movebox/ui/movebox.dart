import 'package:flutter/material.dart';

class MoveBox extends StatefulWidget {
  const MoveBox({super.key});

  @override
  State<MoveBox> createState() => _MoveBoxState();
}

class _MoveBoxState extends State<MoveBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chuyen hop'),
      ),
    );
  }
}