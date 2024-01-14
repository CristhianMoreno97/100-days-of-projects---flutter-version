import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Day1Screen extends StatelessWidget {
  const Day1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Day 1')),
      body: const _MainView(),
      backgroundColor: const Color(0xFF212020),
    );
  }
}

class _MainView extends StatelessWidget {
  const _MainView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 400),
        decoration: const BoxDecoration(
          color: Color(0xFF242323),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF000000),
              offset: Offset(0, 0),
              blurRadius: 16,
              spreadRadius: -8,
            ),
          ],
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 64),
            _CardImage(),
            SizedBox(height: 16),
            _CardHeader(),
            _CardTag(),
            SizedBox(height: 32),
            _CardCopy(),
            SizedBox(height: 64),
            _CardSocialItems(),
          ],
        ),
      ),
    );
  }
}

class _CardHeader extends StatelessWidget {
  const _CardHeader();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Cristhian Moreno',
      style: TextStyle(
          fontSize: 30, fontWeight: FontWeight.w500, color: Color(0xFFc2c2c2)),
    );
  }
}

class _CardCopy extends StatelessWidget {
  const _CardCopy();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Text(
          'Electrical engineer with experience in developing mobile applications using Flutter. Proficient in the administration and configuration of WordPress and Drupal websites.',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFFc2c2c2))),
    );
  }
}

class _CardTag extends StatelessWidget {
  const _CardTag();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
          color: Color(0xFF1e1d1d),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: const Text(
        'Tunja, Colombia',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xFFc2c2c2),
        ),
      ),
    );
  }
}

class _CardImage extends StatelessWidget {
  const _CardImage();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage('assets/images/day_1_card_image.png'),
            fit: BoxFit.cover),
      ),
    );
  }
}

class _CardSocialItems extends StatelessWidget {
  const _CardSocialItems();

  @override
  Widget build(BuildContext context) {
    return const ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      child: Row(
        children: [
          _SocialItem(
            url: 'https://github.com/CristhianMoreno97',
            icon: FontAwesomeIcons.github,
          ),
          _SocialItem(
            url:
                'https://www.linkedin.com/in/cristhian-fernando-moreno-manrique-7a8483104/',
            icon: FontAwesomeIcons.linkedin,
          ),
        ],
      ),
    );
  }
}

class _SocialItem extends StatelessWidget {
  const _SocialItem({required this.url, required this.icon});

  final String url;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: IconButton.filled(
        style: ButtonStyle(
          shape: const MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 20)),
          backgroundColor: MaterialStateProperty.all(const Color(0xFF1f1e1e)),
        ),
        onPressed: () async {
          final uri = Uri.parse(url);
          if (await canLaunchUrl(uri)) {
            await launchUrl(uri);
          }
        },
        icon: Icon(icon, color: const Color(0xFFc2c2c2)),
      ),
    );
  }
}
