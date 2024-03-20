// ignore_for_file: prefer_const_constructors, deprecated_member_use, library_private_types_in_public_api, unnecessary_import, prefer_const_literals_to_create_immutables
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trangtraicua_demo/ui/check/filter/bloc/fliter_bloc.dart';
import 'package:trangtraicua_demo/ui/check/unit/ui/unit.dart';
import 'package:trangtraicua_demo/widgets/button/primary_button.dart';
import 'package:trangtraicua_demo/widgets/text/title_top_textbox.dart';
import 'package:trangtraicua_demo/widgets/textbox/dropdown_box.dart';

class KiemTraLoc extends StatefulWidget {
  const KiemTraLoc({Key? key}) : super(key: key);

  @override
  _KiemTraLocState createState() => _KiemTraLocState();
}

class _KiemTraLocState extends State<KiemTraLoc> {
  String loaiCua = 'Cua tiêu';
  String soLanKiemTra = '0';
  String soLanChoAn = '0';
  String hinhDang = 'Khỏe';
  String tinhTrangCua = 'Ăn 50%';
  String tinhTrangHop = 'Rỗng';

  final LocBloc locBloc = LocBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocBloc, LocState>(
        bloc: locBloc,
        listener: (context, state) {
          if (state is ClickBackState) {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => Unit1()));
          }
        },
        builder: (BuildContext context, LocState state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                color: Color.fromARGB(255, 173, 0, 6),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              title: Text(
                "LỌC",
                style: TextStyle(
                    color: Color.fromARGB(255, 173, 0, 6),
                    fontWeight: FontWeight.bold),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TitleWithAsterisk(title: 'Loại cua'),
                    SizedBox(
                      height: 8,
                    ),
                    DropdownText(
                      value: loaiCua,
                      items: ['Cua tiêu', '...'],
                      onChanged: (newValue) {
                        setState(() {
                          loaiCua = newValue;
                        });
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TitleWithAsterisk(title: 'Số lần kiểm tra'),
                    SizedBox(
                      height: 8,
                    ),
                    DropdownText(
                      value: soLanKiemTra,
                      items: ['0', '...'],
                      onChanged: (newValue) {
                        setState(() {
                          soLanKiemTra = newValue;
                        });
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TitleWithAsterisk(title: 'Số lần cho ăn'),
                    SizedBox(
                      height: 8,
                    ),
                    DropdownText(
                      value: soLanChoAn,
                      items: ['0', '...'],
                      onChanged: (newValue) {
                        setState(() {
                          soLanChoAn = newValue;
                        });
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TitleWithAsterisk(title: 'Hình dạng'),
                    SizedBox(
                      height: 8,
                    ),
                    DropdownText(
                      value: hinhDang,
                      items: ['Khỏe', '...'],
                      onChanged: (newValue) {
                        setState(() {
                          hinhDang = newValue;
                        });
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TitleWithAsterisk(title: 'Tình trạng cua'),
                    SizedBox(
                      height: 8,
                    ),
                    DropdownText(
                      value: tinhTrangCua,
                      items: ['Ăn 50%', 'Ăn 25%', 'Ăn 30%'],
                      onChanged: (newValue) {
                        setState(() {
                          tinhTrangCua = newValue;
                        });
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TitleWithAsterisk(title: 'Tình trạng hộp'),
                    SizedBox(
                      height: 8,
                    ),
                    DropdownText(
                      value: tinhTrangHop,
                      items: ['Rỗng', '...'],
                      onChanged: (newValue) {
                        setState(() {
                          tinhTrangHop = newValue;
                        });
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    PrimaryButton(
                        onTap: () {
                          locBloc.add(ClickBackEvent());
                        },
                        text: 'ÁP DỤNG'),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
