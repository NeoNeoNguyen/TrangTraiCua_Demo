// ignore_for_file: prefer_const_constructors, unused_field

import 'package:flutter/material.dart';
import 'package:trangtraicua_demo/pages/kiemtra/ui/kiemtra.dart';
import 'package:trangtraicua_demo/pages/nhapcua/ui/nhapcua.dart';
import 'package:trangtraicua_demo/pages/xuatcua/ui/xuatcua.dart';
import 'package:trangtraicua_demo/pages/taikhoan/ui/taikhoan.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final List<Widget> _widgetOptions = <Widget>[
    Home(),
    KiemTra(),
    NhapCua(),
    XuatCua(),
    TaiKhoan(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mobile_friendly),
              label: 'Kiem Tra',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.output),
              label: 'Nhap Cua',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.input),
              label: 'Xuat Cua',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_rounded),
              label: 'Tai Khoan',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromARGB(255, 173, 0, 6),
          onTap: _onItemTapped,
        ));
  }
}
