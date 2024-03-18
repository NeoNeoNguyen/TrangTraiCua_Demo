// ignore_for_file: constant_identifier_names, unused_element, prefer_const_constructors, unused_field
import 'package:flutter/material.dart';
import 'package:trangtraicua_demo/ui/accout/ui/accout.dart';
import 'package:trangtraicua_demo/ui/check/ui/check.dart';
import 'package:trangtraicua_demo/ui/exportcrab/ui/exportcrab.dart';
import 'package:trangtraicua_demo/ui/home/ui/home.dart';
import 'package:trangtraicua_demo/ui/importcrab/ui/importcrab.dart';

class NaviBar extends StatefulWidget {
  const NaviBar({super.key});

  @override
  State<NaviBar> createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _WidgetOptions = <Widget>[
    Home(),
    Check(),
    Importcrab(),
    Exportcrab(),
    Accout(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mobile_friendly),
            label: 'Kiểm tra',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.input),
            label: 'Nhập Cua',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.output),
            label: 'Xuất Cua',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Tài Khoản',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 173, 0, 6),
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
      body: Center(
        child: _WidgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
