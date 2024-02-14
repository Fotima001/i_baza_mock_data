import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../authentication/pages/login_page.dart';
import '../../authentication/pages/register_page.dart';
import '../route_names/authentication_route_names.dart';


class AuthenticationRoute{
  static Route? onGenerateRoute(RouteSettings settings) {
    final String routeName = settings.name ??'';
    switch (routeName) {
      case AuthenticationRouteNames.login:
        return CupertinoPageRoute(builder: (context) => const LoginPage());
      case AuthenticationRouteNames.register:
        return CupertinoPageRoute(builder: (context) => const RegisterPage());
      default:
        return CupertinoPageRoute(builder: (context) => const Scaffold());
    }

  }
}