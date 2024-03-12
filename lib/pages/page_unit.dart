// ignore_for_file: unused_import, sized_box_for_whitespace, avoid_unnecessary_containers, avoid_print, prefer_const_constructors, unnecessary_new, unused_element, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:trangtraicua_demo/pages/chitietkiemtrabox.dart';

class Unit1 extends StatefulWidget {
  const Unit1({super.key});

  @override
  State<Unit1> createState() => _Unit1State();
}

String _dropdownvalue = 'Lọc';
var items = [
  'Lọc',
  'Item 2',
  'Item 3',
];

class _Unit1State extends State<Unit1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xFF087EBF),
          onPressed: () {
            //event onPressed
          },
        ),
        title: Text(
          "UNIT 1A",
          style:
              TextStyle(color: Color(0xFF087EBF), fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 15, top: 15),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OutlinedButton(
                onPressed: () {
                  //event
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Colors.grey),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Lọc'),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.keyboard_arrow_down_sharp)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Container(
            color: Colors.white,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              physics: ScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(padding: const EdgeInsets.only(right: 5.0)),
                          Text('Hàng ${index + 1}',
                              style:
                                  TextStyle(fontSize: 18.0, color: Colors.grey),
                              textAlign: TextAlign.left),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 205.0,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Card(
                            color: Colors.white,
                            child: Container(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              height: MediaQuery.of(context).size.width / 2,
                              width: 241,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(top: 15)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'U1A - H0${index + 1} - C01',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 10),
                                      Image(
                                        image: AssetImage(
                                            'assets/images/cuado.png'),
                                        width: 24,
                                        height: 24,
                                      ),
                                    ],
                                  ),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            'Ngày nhập: 05/08/2023'), //->do data
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                            'Trọng lượng nhập: 0,005kg'), //->do data
                                      ]),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      TextButton(
                                        style: ButtonStyle(
                                          textStyle: MaterialStateProperty.all<
                                              TextStyle>(
                                            TextStyle(
                                              fontWeight:
                                                  FontWeight.bold, // In đậm
                                            ),
                                          ),
                                          backgroundColor: MaterialStateProperty
                                              .all<Color>(Color(
                                                  0xFF0A7EBF)), // Màu nền của nút Kiểm tra & vệ sinh|1 là blue
                                          foregroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.white),
                                          fixedSize: MaterialStateProperty.all(
                                              Size(250, 40)),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              // Bo tròn viền nút
                                            ),
                                          ), // Màu chữ của nút Kiểm tra & vệ sinh|1 là trắng
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ChiTietKiemTraBox()),
                                          );
                                        },
                                        child: Text('KIỂM TRA & VỆ SINH | 1'),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextButton(
                                        style: ButtonStyle(
                                          textStyle: MaterialStateProperty.all<
                                              TextStyle>(
                                            TextStyle(
                                              fontWeight:
                                                  FontWeight.bold, // In đậm
                                            ),
                                          ),
                                          backgroundColor: MaterialStateProperty
                                              .all<Color>(Colors
                                                  .white), // Màu nền của nút Chuyển Hộp là trắng
                                          foregroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Color(0xFF0A7EBF)),
                                          fixedSize: MaterialStateProperty.all(Size(
                                              250,
                                              40)), // Màu chữ của nút Chuyển Hộp là blue
                                          side: MaterialStateProperty
                                              .all<BorderSide>(BorderSide(
                                                  color: Color(0xFF0A7EBF))),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      5), // Bo tròn viền nút
                                            ),
                                          ), // Viền của nút Chuyển Hộp là blue
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('CHUYỂN HỘP'),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      color: Colors.grey, // Đặt màu xám cho nền của Container
                      child: SizedBox(
// Đặt chiều cao của SizedBox
                          // Các widgets con của SizedBox ở đây
                          ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
