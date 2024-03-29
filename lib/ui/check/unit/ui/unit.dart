// ignore_for_file: unused_import, sized_box_for_whitespace, avoid_unnecessary_containers, avoid_print, prefer_const_constructors, unnecessary_new, unused_element, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trangtraicua_demo/router/app_router_const.dart';
import 'package:trangtraicua_demo/ui/check/detailcheckbox/ui/detailcheckbox.dart';
import 'package:trangtraicua_demo/ui/check/filter/ui/fliter.dart';
import 'package:trangtraicua_demo/ui/check/ui/check.dart';
import 'package:trangtraicua_demo/ui/check/unit/bloc/unit_bloc.dart';
import 'package:trangtraicua_demo/widgets/button/filter_button.dart';
import 'package:trangtraicua_demo/widgets/main/appbar.dart';

class Unit1 extends StatefulWidget {
  const Unit1({Key? key}) : super(key: key);

  @override
  State<Unit1> createState() => _Unit1State();
}

class _Unit1State extends State<Unit1> {
  final UnitBloc unitBloc = UnitBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UnitBloc, UnitState>(
      bloc: unitBloc,
      listener: (context, state) {
        if (state is UnitClickButtonBackState) {
         GoRouter.of(context).pushNamed(RouteConstants.checkRouteName);
        } else if (state is UnitClickXemThongTinBoxState) {
          GoRouter.of(context).pushNamed(RouteConstants.detailboxRouteName);
        } else if (state is UnitClickButtonLocState) {
          GoRouter.of(context).pushNamed(RouteConstants.checkfilterRouteName);
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: MyAppBar(
            title: 'UNIT 1A',
            showBackButton: true,
            onPressedBack: () {
              Navigator.of(context)
                  .pop(); 
            },
          ),
          body: ListView(
            padding: EdgeInsets.only(left: 15, top: 15),
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FilterButton(
                    onPressed: () {
                      unitBloc.add(UnitClickButtonLocEvent());
                    },
                  )
                ],
              ),
              SizedBox(height: 10.0),
              Container(
                color: Colors.white,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        Container(
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding: const EdgeInsets.only(right: 5.0)),
                              Text('Hàng ${index + 1}',
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.grey),
                                  textAlign: TextAlign.left),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          height: 160.0,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15)),
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
                                            Text('Ngày nhập: 05/08/2023'),
                                            SizedBox(width: 10),
                                            Text('Trọng lượng nhập: 0,005kg'),
                                          ]),
                                      SizedBox(height: 10),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          TextButton(
                                            style: ButtonStyle(
                                              textStyle: MaterialStateProperty
                                                  .all<TextStyle>(
                                                TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold, // In đậm
                                                ),
                                              ),
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                          Color>(
                                                      Color.fromARGB(
                                                          255, 173, 0, 6)),
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.white),
                                              fixedSize:
                                                  MaterialStateProperty.all(
                                                      Size(250, 40)),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                              ),
                                            ),
                                            onPressed: () {
                                              unitBloc.add(
                                                  UnitClickXemThongTinBoxEvent());
                                            },
                                            child:
                                                Text('KIỂM TRA & VỆ SINH | 1'),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
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
      },
    );
  }
}
