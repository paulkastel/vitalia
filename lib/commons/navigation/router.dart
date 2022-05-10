import 'package:flutter/material.dart';
import 'package:vitalia/commons/constants/app_route.dart';
import 'package:vitalia/control_panel/presentation/profile_page.dart';
import 'package:vitalia/home/presentation/home_page.dart';
import 'package:vitalia/reward/domain/challenge_dto.dart';
import 'package:vitalia/reward/presentation/reward_page.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoute.profile:
      return _createRoute(settings: settings, page: const ProfilePage());
    case AppRoute.reward:
      return _createRoute(
        settings: settings,
        page: RewardPage(settings.arguments! as ChallengeDto),
      );
  }
  return _createRoute(settings: settings, page: const HomePage());
}

PageRoute<Object> _createRoute({required RouteSettings settings, required Widget page}) {
  return MaterialPageRoute<Object>(settings: settings, builder: (context) => page);
}
