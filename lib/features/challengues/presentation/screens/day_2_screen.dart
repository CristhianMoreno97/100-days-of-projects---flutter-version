import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class Day2Screen extends StatelessWidget {
  const Day2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Day 2')),
      body: const _MainView(),
      backgroundColor: const Color(0xFFF5D04E),
    );
  }
}

class _MainView extends StatelessWidget {
  const _MainView();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: const Center(child: _BlogCard()),
    );
  }
}

class _BlogCard extends StatelessWidget {
  const _BlogCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      constraints: const BoxConstraints(maxWidth: 300),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.fromBorderSide(
            BorderSide(
              color: Colors.black,
              width: 1,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(8, 8),
              blurRadius: 0.1,
              spreadRadius: 0,
            )
          ]),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _CardImage(),
          SizedBox(height: 8),
          _CardPublishedDate(),
        ],
      ),
    );
  }
}

class _CardPublishedDate extends StatelessWidget {
  const _CardPublishedDate();

  @override
  Widget build(BuildContext context) {
    final dateTime = DateTime.parse('2023-01-13');
    final formattedDate = DateFormat.yMMMMd().format(dateTime);
    return Text('Published on $formattedDate');
  }
}

class _CardImage extends StatelessWidget {
  const _CardImage();

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        child: SvgPicture.asset(
          'assets/images/day_2_illustration-article.svg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
