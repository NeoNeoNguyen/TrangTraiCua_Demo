// ignore_for_file: file_names, prefer_final_fields, unused_field, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trangtraicua_demo/router/app_router_const.dart';
import 'package:trangtraicua_demo/ui/importcrab/bloc/importcrab_bloc.dart';
import 'package:trangtraicua_demo/widgets/button/filter_button.dart';
import 'package:trangtraicua_demo/widgets/button/third_button.dart';
import 'package:trangtraicua_demo/widgets/nav/bottomnavigation.dart';

class Importcrab extends StatefulWidget {
  const Importcrab({super.key});

  @override
  State<Importcrab> createState() => _ImportcrabState();
}

class _ImportcrabState extends State<Importcrab> {
  int _selectedIndex = 2;
  final ImportCrabBloc importCrabBloc = ImportCrabBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ImportCrabBloc, ImportCrabState>(
        bloc: importCrabBloc,
        listener: (context, state) {
          if (state is ClickButtonFilterState) {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => FilterImportCrab()));
          }
        },
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                elevation: 0,
                centerTitle: true,
                title: const Text(
                  'NHẬP CUA',
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
                  switch (index) {
                    case 0:
                      GoRouter.of(context)
                          .pushNamed(RouteConstants.homeRouteName);
                      break;
                    case 1:
                      GoRouter.of(context)
                          .pushNamed(RouteConstants.checkRouteName);
                      break;
                    case 2:
                      break;
                    case 3:
                      GoRouter.of(context)
                          .pushNamed(RouteConstants.exportcrabRouteName);
                      break;
                    case 4:
                      GoRouter.of(context)
                          .pushNamed(RouteConstants.accountRouteName);
                      break;
                  }
                },
              ),
              body: Padding(
                padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FilterButton(
                              onPressed: () {},
                            ),
                            ThirdButton(
                              onTap: () {},
                              text: 'NHẬP CUA',
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 234, 251, 255),
                            border: Border.all(
                              color: Color.fromARGB(255, 234, 251, 255),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Wrap(
                                spacing: 20,
                                children: <Widget>[
                                  Text(
                                    'Tổng SL cua: 201',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    'Tổng TL: 33,42kg',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Card(
                            child: ListTile(
                              title: Row(
                                children: [
                                  Text(
                                    'Mã phiếu nhập:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 5),
                                  Text('NC98435'),
                                ],
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Ngày nhập:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 5),
                                      Text('Ngày: 21/02/2024'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Loại cua:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 5),
                                      Text('Loại 1'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Số lượng cua được nhập:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 5),
                                      Text('100'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Tổng trọng lượng nhập:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 5),
                                      Text('50kg'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ));
        });
  }
}
