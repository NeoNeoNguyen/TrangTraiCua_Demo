// ignore_for_file: prefer_final_fields, unused_field, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:trangtraicua_demo/styles/app_colors.dart';
import 'package:trangtraicua_demo/ui/check/ui/check.dart';
import 'package:trangtraicua_demo/ui/exportcrab/ui/exportcrab.dart';
import 'package:trangtraicua_demo/ui/home/ui/home.dart';
import 'package:trangtraicua_demo/ui/importcrab/ui/importcrab.dart';
import 'package:trangtraicua_demo/widgets/button/costom_elevent_button.dart';
import 'package:trangtraicua_demo/widgets/nav/bottomnavigation.dart';
import 'package:trangtraicua_demo/widgets/text/number_hotline.dart';

class Accout extends StatefulWidget {
  const Accout({Key? key});

  @override
  State<Accout> createState() => _AccoutState();
}

class _AccoutState extends State<Accout> {
  int _selectedIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'TÀI KHOẢN',
          style: TextStyle(
            color: Color.fromARGB(255, 173, 0, 6),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: NaviBar(
        selectedIndex: _selectedIndex,
        onItemTapped: (index) {
          setState(() {
            _selectedIndex = index;
          });
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
                MaterialPageRoute(builder: (context) => Check()),
              );
              break;
            case 2:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Importcrab()),
              );
              break;
            case 3:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Exportcrab()),
              );
              break;
            case 4:
              break;
          }
        },
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      'assets/images/user.png',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Tên người dùng',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  CustomElevatedButton(
                    onPressed: () {
                      //
                    },
                    buttonText: 'Thông tin cá nhân',
                    leadingIcon: Icons.person_outline,
                    trailingIcon: Icons.arrow_forward_ios_rounded,
                  ),
                  SizedBox(height: 10),
                  CustomElevatedButton(
                    onPressed: () {
                      //
                    },
                    buttonText: 'Đổi mật khẩu',
                    leadingIcon: Icons.password,
                    trailingIcon: Icons.arrow_forward_ios_rounded,
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      //
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.phone,
                            color: Colors.black,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Liên hệ',
                            style: TextStyle(color: Colors.black),
                          ),
                          Spacer(),
                          HotLine(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: TextButton(
                onPressed: () {
                  // Xử lý sự kiện đăng xuất
                },
                child: Text(
                  'Đăng xuất',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
