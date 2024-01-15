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
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: const Center(
              child: _Card(),
            ),
          ),
        );
      },
    );
  }
}

class _Card extends StatelessWidget {
  const _Card();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      constraints: const BoxConstraints(maxWidth: 700),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black87,
            blurRadius: 40,
            offset: Offset(0, 2),
            spreadRadius: -32,
          ),
        ],
      ),
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
              Expanded(child: _CardImage()),
              Expanded(child: _CardDetails()),
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
    return Image.asset('assets/images/day_3_headphone.png');
  }
}

class _CardDetails extends StatelessWidget {
  const _CardDetails();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Tag(),
        _Title(),
        SizedBox(height: 16),
        _OldPrice(),
        _NewPrice(),
        _Description(),
        SizedBox(height: 32),
        _AddToCartButton(),
        SizedBox(height: 8),
        _Stock(),
        SizedBox(height: 32),
        _ActionButtons(),
      ],
    );
  }
}

class _Tag extends StatelessWidget {
  const _Tag();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Text(
        'Free shipping',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Razer Kraken Kitty Edt Gaming Headset Quartz',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _OldPrice extends StatelessWidget {
  const _OldPrice();

  @override
  Widget build(BuildContext context) {
    return const Text(
      '1 599,-',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.deepPurple,
        decoration: TextDecoration.lineThrough,
      ),
    );
  }
}

class _NewPrice extends StatelessWidget {
  const _NewPrice();

  @override
  Widget build(BuildContext context) {
    return const Text(
      '799,-',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.deepPurple,
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'The offer is valid until April 3 or as long as stock lasts.',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Colors.grey,
      ),
    );
  }
}

class _AddToCartButton extends StatelessWidget {
  const _AddToCartButton();

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Colors.deepPurpleAccent,
              blurRadius: 0,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: FilledButton(
          onPressed: () {},
          style: FilledButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 0,
          ),
          child: const Text(
            'Add to cart',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}

class _Stock extends StatelessWidget {
  const _Stock();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.circle,
          size: 12,
          color: Colors.greenAccent,
        ),
        SizedBox(width: 8),
        Text(
          '50+ pcs. in stock.',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class _ActionButtons extends StatelessWidget {
  const _ActionButtons();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(children: [
        Expanded(
          child: _ActionButton(
            label: 'Share',
            icon: Icons.share,
            onPressed: () {},
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _ActionButton(
            label: 'Favorite',
            icon: Icons.favorite_border,
            onPressed: () {},
          ),
        ),
      ]),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final void Function() onPressed;

  const _ActionButton({
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: FilledButton.icon(
        icon: Icon(icon, size: 16, color: Colors.deepPurple),
        label: Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.deepPurple,
          ),
        ),
        style: FilledButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.deepPurple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: Colors.deepPurple),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
