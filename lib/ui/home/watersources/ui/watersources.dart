import 'package:flutter/material.dart';

class WaterSources extends StatefulWidget {
  const WaterSources({super.key});

  @override
  State<WaterSources> createState() => _WaterSourcesState();
}

class _WaterSourcesState extends State<WaterSources> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nguon Nuoc'),
      ),
    );
  }
}