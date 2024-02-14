import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibaza_mock_data/profile/pages/edit_profile.dart';

import '../../profile/pages/profile.dart';
import '../route_names/profile_route_names.dart';

class ProfileRoute{
  static Route? onGenerateRoute(RouteSettings settings) {
    final String routeName = settings.name ??'';
    switch (routeName) {
      case ProfileRouteNames.profile:
        return CupertinoPageRoute(builder: (context) => const ProfilePage());
      case ProfileRouteNames.editProfile:
        return CupertinoPageRoute(builder: (context) => const EditProfilePage());
      default:
        return CupertinoPageRoute(builder: (context) => const Scaffold());

    }

  }
}