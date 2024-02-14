import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibaza_mock_data/core/route_names/app_route_names.dart';
import '../route_names/survey_route_names.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}
class _SplashPageState extends State<SplashPage> {
  @override
  void initState(){

    Timer(const Duration(seconds: 3),() {
      Navigator.of(context).pushNamedAndRemoveUntil(AppRouteNames.home, (_) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: CupertinoActivityIndicator(),
        )
    );
  }
}
