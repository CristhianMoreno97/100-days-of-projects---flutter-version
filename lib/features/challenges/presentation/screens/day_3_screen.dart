import 'package:flutter/material.dart';

class Day3Screen extends StatelessWidget {
  const Day3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Day 4')),
      body: const _MainView(),
    );
  }
}

class _MainView extends StatelessWidget {
  const _MainView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: const _Card(),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const Column(
            children: [
              _CardImage(),
              _CardDetails(),
            ],
          );
        } else {
          return const Row(
            children: [
              _CardImage(),
              _CardDetails(),
            ],
          );
        }
      }),
    );
  }
}

class _CardImage extends StatelessWidget {
  const _CardImage();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _CardDetails extends StatelessWidget {
  const _CardDetails();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _Tag(),
        _Title(),
        _OldPrice(),
        _NewPrice(),
        _Description(),
        _AddToCartButton(),
        _Stock(),
        _ActionButtons(),
      ],
    );
  }
}

class _Tag extends StatelessWidget {
  const _Tag();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _OldPrice extends StatelessWidget {
  const _OldPrice();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _NewPrice extends StatelessWidget {
  const _NewPrice();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _Description extends StatelessWidget {
  const _Description();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _AddToCartButton extends StatelessWidget {
  const _AddToCartButton();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _Stock extends StatelessWidget {
  const _Stock();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _ActionButtons extends StatelessWidget {
  const _ActionButtons();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
