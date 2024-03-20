// ignore_for_file: prefer_final_fields, unused_field, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trangtraicua_demo/ui/accout/ui/accout.dart';
import 'package:trangtraicua_demo/ui/check/ui/check.dart';
import 'package:trangtraicua_demo/ui/home/ui/home.dart';
import 'package:trangtraicua_demo/ui/importcrab/ui/importcrab.dart';
import 'package:trangtraicua_demo/widgets/nav/bottomnavigation.dart';

class Exportcrab extends StatefulWidget {
  const Exportcrab({super.key});

  @override
  State<Exportcrab> createState() => _ExportcrabState();
}

class _ExportcrabState extends State<Exportcrab> {
  int _selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'XUẤT CUA',
          style: TextStyle(
              color: Color.fromARGB(255, 173, 0, 6),
              fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: NaviBar(
        selectedIndex: _selectedIndex,
        onItemTapped: (index) {
          setState(() {
            _selectedIndex = index;
          });
          // Điều hướng đến các trang tương ứng khi người dùng chọn một mục trong BottomNavigationBar
          switch (index) {
            case 0:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
              break;
            case 1:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => Check()), // Điều hướng về trang Home
              );
              break;
            case 2:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Importcrab()),
              );
              break;
            case 3:
              break;
            case 4:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Accout()),
              );
              break;
          }
        },
      ),
    );
  }
}
