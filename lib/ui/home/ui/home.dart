// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field, unused_element, no_leading_underscores_for_local_identifiers, unused_local_variable
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trangtraicua_demo/ui/accout/ui/accout.dart';
import 'package:trangtraicua_demo/ui/check/ui/check.dart';
import 'package:trangtraicua_demo/ui/exportcrab/ui/exportcrab.dart';
import 'package:trangtraicua_demo/ui/home/Food/ui/food.dart';
import 'package:trangtraicua_demo/ui/home/bloc/home_bloc.dart';
import 'package:trangtraicua_demo/ui/home/devices/ui/devices.dart';
import 'package:trangtraicua_demo/ui/home/movebox/ui/movebox.dart';
import 'package:trangtraicua_demo/ui/home/otherwork/ui/otherwork.dart';
import 'package:trangtraicua_demo/ui/home/watersources/ui/watersources.dart';
import 'package:trangtraicua_demo/ui/importcrab/ui/importcrab.dart';
import 'package:trangtraicua_demo/widgets/nav/bottomnavigation.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBloc homeBloc = HomeBloc();

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
        bloc: homeBloc,
        listener: (context, state) {
          if (state is ClickCheckCleaningFeedingState) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Check()));
          } else if (state is ClickMoveBoxState) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MoveBox()));
          } else if (state is ClickCheckWaterSourcesState) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => WaterSources()));
          } else if (state is ClickDevicesState) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Devices()));
          } else if (state is ClickFoodsState) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Food()));
          } else if (state is ClickOtherWorkState) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => OtherWork()));
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'CUA VIỆT',
                  style: TextStyle(
                    color: Color.fromARGB(255, 173, 0, 6),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.notifications_outlined),
                  color: Color.fromARGB(255, 173, 0, 6),
                  iconSize: 30,
                  onPressed: () {
                    //render dialogs
                  },
                ),
              ],
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
                    break;
                  case 1:
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Check()), // Điều hướng về trang Home
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Accout()),
                    );
                    break;
                }
              },
            ),
            body: Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 210, 246, 255),
                          border: Border.all(
                            color: Color.fromARGB(255, 210, 246, 255),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Tên trại: ',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    'Phong Chau',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Wrap(
                                spacing: 20,
                                children: <Widget>[
                                  Text(
                                    'Unit: 10',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    'Hop: 482',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    'Cua: 482',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    'KL: 22195kg',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              )
                            ]),
                      ),
                      SizedBox(height: 15),
                      Image(
                        image:
                            AssetImage('assets/images/Rectangle 5369@2x.png'),
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {
                          homeBloc.add(ClickCheckCleaningFeedingEvent());
                        },
                        style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.all(10)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.mobile_friendly),
                              Text(' Kiểm tra & vệ sinh và Cho ăn'),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios_rounded),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          homeBloc.add(ClickMoveBoxEvent());
                        },
                        style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.all(10)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.move_up),
                              Text(' Chuyển hộp'),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios_rounded),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Text('Công việc khác',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {
                          homeBloc.add(ClickCheckWaterSourcesEvent());
                        },
                        style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.all(10)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.water_drop),
                              Text(' Liên quan nguồn nước (1)'),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios_rounded),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          homeBloc.add(ClickDevicesEvent());
                        },
                        style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.all(10)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.handyman),
                              Text(' Liên quan đến thiết bị (2)'),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios_rounded),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          homeBloc.add(ClickFoodsEvent());
                        },
                        style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.all(10)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.set_meal_sharp),
                              Text(' Liên quan đến thức ăn (1)'),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios_rounded),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          homeBloc.add(ClickOtherWorkEvent());
                        },
                        style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.all(10)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.playlist_add_outlined),
                              Text(' Công việc khác (1)'),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios_rounded),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          );
        });
  }
}
