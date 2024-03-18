import 'package:flutter/material.dart';

class OtherWork extends StatefulWidget {
  const OtherWork({super.key});

  @override
  State<OtherWork> createState() => _OtherWorkState();
}

class _OtherWorkState extends State<OtherWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cong viec khac'),
      ),
    );
  }
}