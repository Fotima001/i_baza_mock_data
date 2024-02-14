import 'package:flutter/material.dart';
import '../../core/route_names/survey_route_names.dart';

class SurveyFirstPage extends StatelessWidget {
  const SurveyFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(SurveyRouteNames.surveySecond);
          },
          child: const Text(
            'First Onboarding Screen',
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
