import 'package:days_of_projects_flutter_version/config/route/routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: _HomeView());
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 600),
        child: const Column(
          children: [
            Text('100 Days of Projects'),
            _ChallengesList(),
          ],
        ),
      ),
    );
  }
}

class _ChallengesList extends StatelessWidget {
  const _ChallengesList();

  @override
  Widget build(BuildContext context) {
    final challenges = ChallengeRoutes.routes;
    return Expanded(
      child: ListView.builder(
        itemCount: challenges.length,
        itemBuilder: (context, index) {
          final challenge = challenges[index];

          return ListTile(
            title: Text(challenge.name),
            subtitle: Text(challenge.description ?? ''),
            onTap: () {
              Navigator.pushNamed(context, challenge.path);
            },
          );
        },
      ),
    );
  }
}
