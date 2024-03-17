// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trangtraicua_demo/ui/login/bloc/dangnhap_bloc.dart';
import 'package:trangtraicua_demo/ui/login/ui/quenmatkhau.dart';
import 'package:trangtraicua_demo/ui/home/ui/exportcrab.dart';

class DangNhap extends StatefulWidget {
  const DangNhap({super.key});

  @override
  _DangNhapState createState() => _DangNhapState();
}

class _DangNhapState extends State<DangNhap> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscureText = true;

  final DangnhapBloc dangnhapBloc = DangnhapBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DangnhapBloc, DangnhapState>(
        bloc: dangnhapBloc,
        listener: (context, state) {
          if (state is DangnhapClickButtonDangNhapState) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          } else if (state is DangnhapClickQuenMatKhauState) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => QuenMatKhau()));
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/logo.png'),
                    width: 400,
                    height: 150,
                  ),
                  SizedBox(height: 32),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _usernameController,
                          decoration: InputDecoration(
                            labelText: 'Tên đăng nhập',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _passwordController,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            labelText: 'Mật khẩu',
                            //Options hien thi mat khau hoac khong hien thi mat khau
                            suffixIcon: IconButton(
                              icon: Icon(_obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      dangnhapBloc.add(ClickButtonDangNhapEvent());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 173, 0, 6),
                      minimumSize: Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Đăng nhập',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  GestureDetector(
                    onTap: () {
                      dangnhapBloc.add(ClickQuenMatKhauEvent());
                    },
                    child: Text(
                      'Quên mật khẩu?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 173, 0, 6),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
