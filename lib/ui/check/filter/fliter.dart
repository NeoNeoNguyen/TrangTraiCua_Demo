// ignore_for_file: prefer_const_constructors, deprecated_member_use, library_private_types_in_public_api, unnecessary_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

  @override
  Widget build(BuildContext context) {
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
              Text(
                'Loại cua',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: loaiCua,
                    isExpanded: true,
                    icon: Icon(Icons.keyboard_arrow_down_rounded),
                    onChanged: (String? newValue) {
                      setState(() {
                        loaiCua = newValue!;
                      });
                    },
                    items: <String>['Cua tiêu', '...']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Số lần kiểm tra',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: soLanKiemTra,
                    isExpanded: true,
                    icon: Icon(Icons.keyboard_arrow_down_rounded),
                    onChanged: (String? newValue) {
                      setState(() {
                        soLanKiemTra = newValue!;
                      });
                    },
                    items: <String>['0', '...']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Số lần cho ăn',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: soLanChoAn,
                    isExpanded: true,
                    icon: Icon(Icons.keyboard_arrow_down_rounded),
                    onChanged: (String? newValue) {
                      setState(() {
                        soLanChoAn = newValue!;
                      });
                    },
                    items: <String>['0', '...']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Hình dạng',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: hinhDang,
                    isExpanded: true,
                    icon: Icon(Icons.keyboard_arrow_down_rounded),
                    onChanged: (String? newValue) {
                      setState(() {
                        hinhDang = newValue!;
                      });
                    },
                    items: <String>['Khỏe', '...']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Tình trạng cua',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: tinhTrangCua,
                    isExpanded: true,
                    icon: Icon(Icons.keyboard_arrow_down_rounded),
                    onChanged: (String? newValue) {
                      setState(() {
                        tinhTrangCua = newValue!;
                      });
                    },
                    items: <String>['Ăn 50%', '...']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Tình trạng hộp',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: tinhTrangHop,
                    isExpanded: true,
                    icon: Icon(Icons.keyboard_arrow_down_rounded),
                    onChanged: (String? newValue) {
                      setState(() {
                        tinhTrangHop = newValue!;
                      });
                    },
                    items: <String>['Rỗng', '...']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 173, 0, 6),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  minimumSize: Size(double.infinity, 48),
                ),
                child: Text(
                  'ÁP DỤNG',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
