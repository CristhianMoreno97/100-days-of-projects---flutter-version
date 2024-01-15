import 'package:days_of_projects_flutter_version/features/challenges/presentation/screens/screens.dart';
import 'package:flutter/material.dart';

class ChallengeRoutes {
  static List<RouteInfo> routes = [
    RouteInfo(
      name: 'Day 1',
      path: '/day1',
      screen: const Day1Screen(),
    ),
    RouteInfo(
      name: 'Day 2',
      path: '/day2',
      screen: const Day2Screen(),
    ),
    RouteInfo(
      name: 'Day 3',
      path: '/day3',
      screen: const Day3Screen(),
    ),
  ];
}

class RouteInfo {
  final String name;
  final String path;
  final Widget screen;
  final String? description;

  RouteInfo({
    required this.name,
    required this.path,
    required this.screen,
    this.description,
  });
}
