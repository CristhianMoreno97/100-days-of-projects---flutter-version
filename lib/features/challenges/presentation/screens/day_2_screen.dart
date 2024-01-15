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
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(40),
        child: const Center(child: _Card()),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card();

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
          SizedBox(height: 16),
          _CardTag(),
          SizedBox(height: 4),
          _CardPublishedDate(),
          SizedBox(height: 16 ),
          _CardTitle(),
          SizedBox(height: 8),
          _CardCopy(),
          SizedBox(height: 16),
          _CardFooter(),
        ],
      ),
    );
  }
}

class _CardTag extends StatelessWidget {
  const _CardTag();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          color: const Color(0xFFF5D04E),
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Text('Learning',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)));
  }
}

class _CardPublishedDate extends StatelessWidget {
  const _CardPublishedDate();

  @override
  Widget build(BuildContext context) {
    final dateTime = DateTime.parse('2024-01-14');
    final formattedDate = DateFormat.yMMMMd().format(dateTime);
    return Text('Published on $formattedDate',
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600));
  }
}

class _CardTitle extends StatelessWidget {
  const _CardTitle();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'HTML & CSS foundations',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    );
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

class _CardCopy extends StatelessWidget {
  const _CardCopy();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'These languages are backbone of every website, defining structure, content, and presentation.',
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.grey,
      ),
    );
  }
}

class _CardFooter extends StatelessWidget {
  const _CardFooter();

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      _UserAvatar(),
      SizedBox(width: 8),
      _UserName(),
    ]);
  }
}

class _UserAvatar extends StatelessWidget {
  const _UserAvatar();

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 15,
      backgroundImage: AssetImage('assets/images/day_1_card_image.png'),
    );
  }
}

class _UserName extends StatelessWidget {
  const _UserName();

  @override
  Widget build(BuildContext context) {
    return const Flexible(
      child: Text(
        'Cristhian Moreno',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.visible,
        ),
      ),
    );
  }
}
