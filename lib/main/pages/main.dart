import 'package:flutter/material.dart';
import '../../core/route_names/main_route_names.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
            child:
            GestureDetector(
                onTap: ()
                {
                  Navigator.of(context).pushNamed(MainRouteNames.notifications);
                },
                child: const Text(
                  'Main Page',
                  style:  TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700
                  ),

                )
            )
        )
    );
  }
}
