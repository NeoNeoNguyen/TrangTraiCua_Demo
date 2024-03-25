// ignore_for_file: prefer_final_fields, unused_field, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trangtraicua_demo/router/app_router_const.dart';
import 'package:trangtraicua_demo/widgets/button/filter_button.dart';
import 'package:trangtraicua_demo/widgets/button/third_button.dart';
import 'package:trangtraicua_demo/widgets/nav/bottomnavigation.dart';

class Exportcrab extends StatefulWidget {
  const Exportcrab({super.key});

  @override
  State<Exportcrab> createState() => _ExportcrabState();
}

class _ExportcrabState extends State<Exportcrab> {
  int _selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'XUẤT CUA',
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
                GoRouter.of(context).pushNamed(RouteConstants.homeRouteName);
                break;
              case 1:
                GoRouter.of(context).pushNamed(RouteConstants.checkRouteName);
                break;
              case 2:
                GoRouter.of(context).pushNamed(RouteConstants.importcrabRouteName);
                break;
              case 3:
                break;
              case 4:
                GoRouter.of(context).pushNamed(RouteConstants.accountRouteName);
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
                        text: 'XUẤT CUA',
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    'Mã phiếu xuất:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 5),
                                  Text('NC98435'),
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.login),
                              onPressed: () {
                                // Thong tin phieu xuat
                              },
                            ),
                          ],
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Ngày xuất:',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 5),
                                Text('Ngày: 21/02/2024'),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Loại cua:',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 5),
                                Text('Loại 1'),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Tổng trọng lượng ước tính:',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 5),
                                Text('100kg'),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Tổng trọng lượng thực tế:',
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
  }
}
