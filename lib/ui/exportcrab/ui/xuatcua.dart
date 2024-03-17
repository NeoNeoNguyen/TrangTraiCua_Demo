import 'package:flutter/material.dart';

class XuatCua extends StatefulWidget {
  const XuatCua({super.key});

  @override
  State<XuatCua> createState() => _XuatCuaState();
}

class _XuatCuaState extends State<XuatCua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Xuat Cua'),
      ),
    );
  }
}