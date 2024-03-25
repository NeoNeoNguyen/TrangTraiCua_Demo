// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:trangtraicua_demo/router/app_router_config.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      title: 'TrangTraiCua',
      routerConfig: TrangTraiCuaRouter().router
    );
  }
}
