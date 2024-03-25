import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trangtraicua_demo/router/app_router_const.dart';
import 'package:trangtraicua_demo/ui/account/ui/account.dart';
import 'package:trangtraicua_demo/ui/check/detailcheckbox/ui/detailcheckbox.dart';
import 'package:trangtraicua_demo/ui/check/filter/ui/fliter.dart';
import 'package:trangtraicua_demo/ui/check/ui/check.dart';
import 'package:trangtraicua_demo/ui/check/unit/ui/unit.dart';
import 'package:trangtraicua_demo/ui/exportcrab/ui/exportcrab.dart';
import 'package:trangtraicua_demo/ui/home/Food/ui/food.dart';
import 'package:trangtraicua_demo/ui/home/devices/ui/devices.dart';
import 'package:trangtraicua_demo/ui/home/movebox/ui/movebox.dart';
import 'package:trangtraicua_demo/ui/home/otherwork/ui/otherwork.dart';
import 'package:trangtraicua_demo/ui/home/ui/home.dart';
import 'package:trangtraicua_demo/ui/home/watersources/ui/watersources.dart';
import 'package:trangtraicua_demo/ui/importcrab/ui/importcrab.dart';
import 'package:trangtraicua_demo/ui/login/ui/login.dart';

class TrangTraiCuaRouter {
  GoRouter router = GoRouter(
      routes: [
        GoRoute(
            name: RouteConstants.loginRouteName,
            path: '/',
            pageBuilder: (context, state) {
              return MaterialPage(child: Login());
            }),
        GoRoute(
            name: RouteConstants.homeRouteName,
            path: '/home',
            pageBuilder: (context, state) {
              return MaterialPage(child: Home());
            }),
        GoRoute(
            name: RouteConstants.checkRouteName,
            path: '/check',
            pageBuilder: (context, state) {
              return MaterialPage(child: Check());
            }),
        GoRoute(
            name: RouteConstants.importcrabRouteName,
            path: '/importcrab',
            pageBuilder: (context, state) {
              return MaterialPage(child: Importcrab());
            }),
        GoRoute(
            name: RouteConstants.exportcrabRouteName,
            path: '/exportcrab',
            pageBuilder: (context, state) {
              return MaterialPage(child: Exportcrab());
            }),
        GoRoute(
            name: RouteConstants.accountRouteName,
            path: '/account',
            pageBuilder: (context, state) {
              return MaterialPage(child: Account());
            }),
        GoRoute(
            name: RouteConstants.moveboxRouteName,
            path: '/movebox',
            pageBuilder: (context, state) {
              return MaterialPage(child: MoveBox());
            }),
        GoRoute(
            name: RouteConstants.waterRouteName,
            path: '/water',
            pageBuilder: (context, state) {
              return MaterialPage(child: WaterSources());
            }),
        GoRoute(
            name: RouteConstants.deviceRouteName,
            path: '/device',
            pageBuilder: (context, state) {
              return MaterialPage(child: Devices());
            }),
        GoRoute(
            name: RouteConstants.foodRouteName,
            path: '/food',
            pageBuilder: (context, state) {
              return MaterialPage(child: Food());
            }),
        GoRoute(
            name: RouteConstants.otherworkRouteName,
            path: '/otherwork',
            pageBuilder: (context, state) {
              return MaterialPage(child: OtherWork());
            }),
        GoRoute(
            name: RouteConstants.unitRouteName,
            path: '/unit',
            pageBuilder: (context, state) {
              return MaterialPage(child: Unit1());
            }),
        GoRoute(
            name: RouteConstants.detailboxRouteName,
            path: '/detailbox',
            pageBuilder: (context, state) {
              return MaterialPage(child: ChiTietKiemTraBox());
            }),
        GoRoute(
            name: RouteConstants.checkfilterRouteName,
            path: '/checkfilter',
            pageBuilder: (context, state) {
              return MaterialPage(child: KiemTraLoc());
            }),
      ],
      errorPageBuilder: (context, state) {
        return MaterialPage(
          child: Scaffold(
            appBar: AppBar(
              title: Text('Error'),
            ),
            body: Center(
              child: Text('Page not found!'),
            ),
          ),
        );
      });
}
