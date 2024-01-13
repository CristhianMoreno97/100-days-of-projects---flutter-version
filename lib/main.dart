import 'package:days_of_projects_flutter_version/features/challengues/presentation/screens/day_1_screen.dart';
import 'package:days_of_projects_flutter_version/features/challengues/presentation/screens/day_2_screen.dart';
import 'package:days_of_projects_flutter_version/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '100 Days of Projects',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/day1': (context) => const Day1Screen(),
        '/day2': (context) => const Day2Screen(),
      },
    );
  }
}
