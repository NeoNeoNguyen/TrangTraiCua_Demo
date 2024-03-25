// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_element, unused_field, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unused_label, dead_code
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trangtraicua_demo/router/app_router_const.dart';
import 'package:trangtraicua_demo/ui/check/bloc/check_bloc.dart';
import 'package:trangtraicua_demo/widgets/image/image_crab_24.dart';
import 'package:trangtraicua_demo/widgets/main/appbar.dart';
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
            GoRouter.of(context).pushNamed(RouteConstants.unitRouteName);
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: MyAppBar(
              title: 'KTRA & VSINH_CHO ĂN',
              showBackButton: false,
            ),
            bottomNavigationBar: NaviBar(
              selectedIndex: _selectedIndex,
              onItemTapped: (index) {
                setState(() {
                  _selectedIndex = index;
                });
                switch (index) {
                  case 0:
                    GoRouter.of(context).pushNamed(RouteConstants.homeRouteName);
                    break;
                  case 1:
                    break;
                  case 2:
                    GoRouter.of(context).pushNamed(RouteConstants.importcrabRouteName);
                    break;
                  case 3:
                    GoRouter.of(context).pushNamed(RouteConstants.exportcrabRouteName);
                    break;
                  case 4:
                    GoRouter.of(context).pushNamed(RouteConstants.accountRouteName);
                    break;
                }
              },
            ),
            body: Padding(
              padding: EdgeInsets.all(10),
              child: ListView.builder(
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
                                              AssetImageWidget(
                                                imagePath:
                                                    'assets/images/ic_crabs_khoe_24dp.png',
                                              ),
                                              SizedBox(width: 4),
                                              Text('x1'),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              AssetImageWidget(
                                                imagePath:
                                                    'assets/images/ic_crabs_bth_24dp.png',
                                              ),
                                              SizedBox(width: 4),
                                              Text('x2'),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              AssetImageWidget(
                                                imagePath:
                                                    'assets/images/ic_crabs_yếu_24dp.png',
                                              ),
                                              SizedBox(width: 4),
                                              Text('x3'),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              AssetImageWidget(
                                                imagePath:
                                                    'assets/images/ic_crabs_chết_24dp.png',
                                              ),
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
            )           
          );
        });
  }
}
