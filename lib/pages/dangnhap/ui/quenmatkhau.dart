// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trangtraicua_demo/pages/dangnhap/ui/dangnhap.dart';

class QuenMatKhau extends StatelessWidget {
  const QuenMatKhau({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color.fromARGB(255, 173, 0, 6),
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context) => DangNhap()));
          },
        ),
        title: Text(
          "QUÊN MẬT KHẨU",
          style: TextStyle(
              color: Color.fromARGB(255, 173, 0, 6),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
