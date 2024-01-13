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
    final challenges = [
      {
        'title': 'Day 1',
        'description': 'Card',
        'route': '/day1',
      },
      {
        'title': 'Day 2',
        'description': 'Card',
        'route': '/day2',
      }
    ];

    return Expanded(
      child: ListView.builder(
        itemCount: challenges.length,
        itemBuilder: (context, index) {
          final challenge = challenges[index];
          const snackBar = SnackBar(content: Text('No route found'));

          return ListTile(
            title: Text(challenge['title'] ?? 'No title'),
            subtitle: Text(challenge['description'] ?? 'No description'),
            onTap: () {
              if (challenge['route'] == null) {
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                return;
              }
              Navigator.pushNamed(context, challenge['route'] ?? '/');
            },
          );
        },
      ),
    );
  }
}
