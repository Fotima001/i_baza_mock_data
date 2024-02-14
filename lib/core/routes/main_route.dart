import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../main/pages/main.dart';
import '../../main/pages/notifications.dart';
import '../route_names/main_route_names.dart';

class MainRoute{
  static Route? onGenerateRoute(RouteSettings settings) {
    final String routeName = settings.name ??'';
    switch (routeName) {
      case MainRouteNames.main:
        return CupertinoPageRoute(builder: (context) => const MainPage());
      case MainRouteNames.notifications:
        return CupertinoPageRoute(builder: (context) => const NotificationsPage());
      default:
        return CupertinoPageRoute(builder: (context) => const Scaffold());
    }
  }
}