// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_element, unused_field, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unused_label, dead_code
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trangtraicua_demo/ui/accout/ui/accout.dart';
import 'package:trangtraicua_demo/ui/check/bloc/check_bloc.dart';
import 'package:trangtraicua_demo/ui/check/unit/ui/unit.dart';
import 'package:trangtraicua_demo/ui/exportcrab/ui/exportcrab.dart';
import 'package:trangtraicua_demo/ui/home/ui/home.dart';
import 'package:trangtraicua_demo/ui/importcrab/ui/importcrab.dart';
import 'package:trangtraicua_demo/widgets/nav/bottomnavigation.dart';

class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  final CheckBloc checkBloc = CheckBloc();
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CheckBloc, CheckState>(
        bloc: checkBloc,
        listener: (context, state) {
          if (state is ClickUnitState) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Unit1()));
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
              centerTitle: true,
              title: Text(
                'KTRA & VSINH_CHO ĂN',
                style: TextStyle(
                    color: Color.fromARGB(255, 173, 0, 6),
                    fontWeight: FontWeight.bold),
              ),
            ),
            bottomNavigationBar: NaviBar(
              selectedIndex: _selectedIndex,
              onItemTapped: (index) {
                setState(() {
                  _selectedIndex = index;
                });
                // Điều hướng đến các trang tương ứng khi người dùng chọn một mục trong BottomNavigationBar
                switch (index) {
                  case 0:
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Home()), // Điều hướng về trang Home
                    );
                    break;
                  case 1:
                    // Không cần điều hướng khi người dùng chọn trang Check vì chúng ta đã ở trang này
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Accout()),
                    );
                    break;
                }
              },
            ),
            body: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      checkBloc.add(ClickUnitEvent());
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Card(
                        child: Column(
                          children: [
                            ListTile(
                              subtitle: Align(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Unit 1-Block ${index + 1}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(width: 8),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              '200 hộp ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios_rounded,
                                              size: 16,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text('Kiểm tra & vệ sinh: '),
                                        Text('0/2'),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text('Cho ăn: '),
                                        Text('0/1'),
                                      ],
                                    ),
                                    Container(
                                      height: 40,
                                      padding: EdgeInsets.all(8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/ic_crabs_khoe_24dp.png'),
                                              SizedBox(width: 4),
                                              Text('x1'),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/ic_crabs_bth_24dp.png'),
                                              SizedBox(width: 4),
                                              Text('x2'),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/ic_crabs_yếu_24dp.png'),
                                              SizedBox(width: 4),
                                              Text('x3'),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/ic_crabs_chết_24dp.png'),
                                              SizedBox(width: 4),
                                              Text('x4'),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.block),
                                              SizedBox(width: 4),
                                              Text('x0'),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                  'Tổng trọng lượng ước tính: '),
                                              Text('10kg'),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ));
              },
            ),
          );
        });
  }
}
