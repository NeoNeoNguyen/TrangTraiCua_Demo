import 'package:flutter/material.dart';

class NhapCua extends StatefulWidget {
  const NhapCua({super.key});

  @override
  State<NhapCua> createState() => _NhapCuaState();
}

class _NhapCuaState extends State<NhapCua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nhap Cua'),
      ),
    );
  }
}