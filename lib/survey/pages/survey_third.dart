import 'package:flutter/material.dart';
import '../../core/route_names/authentication_route_names.dart';

class SurveyThirdPage extends StatelessWidget {
  const SurveyThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(AuthenticationRouteNames.login);
          },
          child: const Text(
            'Third Onboarding Screen',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
