// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:trangtraicua_demo/ui/home/ui/home.dart';
import 'package:trangtraicua_demo/widgets/button/third_button.dart';
import 'package:trangtraicua_demo/widgets/main/appbar.dart';

class MoveBox extends StatefulWidget {
  const MoveBox({super.key});

  @override
  State<MoveBox> createState() => _MoveBoxState();
}

class _MoveBoxState extends State<MoveBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'DANH SÁCH CHUYỂN HỘP',
        showBackButton: true,
        onPressedBack: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        },
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(children: [
              ThirdButton(
                onTap: () {
                  //Click
                },
                text: 'XUẤT CUA',
              ),
            ]),
          )),
    );
  }
}
