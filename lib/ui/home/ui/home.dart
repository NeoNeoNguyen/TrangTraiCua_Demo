// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field, unused_element, no_leading_underscores_for_local_identifiers, unused_local_variable
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trangtraicua_demo/router/app_router_const.dart';
import 'package:trangtraicua_demo/ui/home/bloc/home_bloc.dart';
import 'package:trangtraicua_demo/widgets/button/costom_elevent_button.dart';
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
            GoRouter.of(context).pushNamed(RouteConstants.checkRouteName);
          } else if (state is ClickMoveBoxState) {
            GoRouter.of(context).pushNamed(RouteConstants.moveboxRouteName);
          } else if (state is ClickCheckWaterSourcesState) {
            GoRouter.of(context).pushNamed(RouteConstants.waterRouteName);
          } else if (state is ClickDevicesState) {
            GoRouter.of(context).pushNamed(RouteConstants.deviceRouteName);
          } else if (state is ClickFoodsState) {
            GoRouter.of(context).pushNamed(RouteConstants.foodRouteName);
          } else if (state is ClickOtherWorkState) {
            GoRouter.of(context).pushNamed(RouteConstants.otherworkRouteName);
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
                  switch (index) {
                    case 0:
                      break;
                    case 1:
                      GoRouter.of(context).pushNamed(RouteConstants.checkRouteName);
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
              body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 234, 251, 255),
                              border: Border.all(
                                color: Color.fromARGB(255, 234, 251, 255),
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
                          SizedBox(height: 10),
                          Image(
                            image: AssetImage(
                                'assets/images/Rectangle 5369@2x.png'),
                          ),
                          SizedBox(height: 10),
                          CustomElevatedButton(
                            onPressed: () {
                              homeBloc.add(ClickCheckCleaningFeedingEvent());
                            },
                            buttonText: 'Kiểm tra & vệ sinh và Cho ăn',
                            leadingIcon: Icons.mobile_friendly,
                            trailingIcon: Icons.arrow_forward_ios_rounded,
                          ),
                          SizedBox(height: 10),
                          CustomElevatedButton(
                            onPressed: () {
                              homeBloc.add(ClickMoveBoxEvent());
                            },
                            buttonText: 'Chuyển hộp',
                            leadingIcon: Icons.move_up,
                            trailingIcon: Icons.arrow_forward_ios_rounded,
                          ),
                          SizedBox(height: 10),
                          Text('Công việc khác',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          CustomElevatedButton(
                            onPressed: () {
                              homeBloc.add(ClickCheckWaterSourcesEvent());
                            },
                            buttonText: 'Liên quan nguồn nước (1)',
                            leadingIcon: Icons.water_drop,
                            trailingIcon: Icons.arrow_forward_ios_rounded,
                          ),
                          SizedBox(height: 10),
                          CustomElevatedButton(
                            onPressed: () {
                              homeBloc.add(ClickDevicesEvent());
                            },
                            buttonText: 'Liên quan đến thiết bị (2)',
                            leadingIcon: Icons.handyman,
                            trailingIcon: Icons.arrow_forward_ios_rounded,
                          ),
                          SizedBox(height: 10),
                          CustomElevatedButton(
                            onPressed: () {
                              homeBloc.add(ClickFoodsEvent());
                            },
                            buttonText: 'Liên quan đến thức ăn (1)',
                            leadingIcon: Icons.set_meal_sharp,
                            trailingIcon: Icons.arrow_forward_ios_rounded,
                          ),
                          SizedBox(height: 10),
                          CustomElevatedButton(
                            onPressed: () {
                              homeBloc.add(ClickOtherWorkEvent());
                            },
                            buttonText: 'Công việc khác (1)',
                            leadingIcon: Icons.playlist_add_outlined,
                            trailingIcon: Icons.arrow_forward_ios_rounded,
                          ),
                        ],
                      ),
                    )),
              ));
        });
  }
}
