// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class NaviBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const NaviBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  _NaviBarState createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
      currentIndex: widget.selectedIndex,
      selectedItemColor: const Color.fromARGB(255, 173, 0, 6),
      unselectedItemColor: Colors.black,
      onTap: widget.onItemTapped,
    );
  }
}
