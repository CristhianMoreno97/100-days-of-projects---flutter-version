import 'package:days_of_projects_flutter_version/config/route/routes.dart';
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
    return SafeArea(
      child: MaterialApp(
        title: '100 Days of Projects',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
          for (final route in ChallengeRoutes.routes)
            route.path: (context) => route.screen,
        },
      ),
    );
  }
}
