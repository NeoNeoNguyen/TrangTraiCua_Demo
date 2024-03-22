// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trangtraicua_demo/widgets/main/appbar.dart';

class FilterImportCrab extends StatefulWidget {
  const FilterImportCrab({super.key});

  @override
  State<FilterImportCrab> createState() => _FilterImportCrabState();
}

class _FilterImportCrabState extends State<FilterImportCrab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:MyAppBar(title: 'LỌC')
    );
  }
}