import 'package:flutter/material.dart';

class HotLine extends StatelessWidget {
  const HotLine({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '0123456789',
      style: TextStyle(
        color: Color.fromARGB(255, 173, 0, 6),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
