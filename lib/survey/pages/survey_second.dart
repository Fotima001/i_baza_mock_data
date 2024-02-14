import 'package:flutter/material.dart';
import 'package:ibaza_mock_data/core/route_names/survey_route_names.dart';

class SurveySecondPage extends StatelessWidget {
  const SurveySecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(SurveyRouteNames.surveyThird);
          },
          child: const Text(
            'Second Onboarding Screen',
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
