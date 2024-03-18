import 'package:flutter/material.dart';

class Exportcrab extends StatefulWidget {
  const Exportcrab({super.key});

  @override
  State<Exportcrab> createState() => _ExportcrabState();
}

class _ExportcrabState extends State<Exportcrab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        title: const Text('XUẤT CUA',
         style: TextStyle(
              color: Color.fromARGB(255, 173, 0, 6),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}