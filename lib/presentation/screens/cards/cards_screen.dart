import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {"elevation": 0.0, "label": "Elevation 0"},
  {"elevation": 1.0, "label": "Elevation 1"},
  {"elevation": 2.0, "label": "Elevation 2"},
  {"elevation": 3.0, "label": "Elevation 3"},
  {"elevation": 4.0, "label": "Elevation 4"},
  {"elevation": 5.0, "label": "Elevation 5"},
];

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});
  static const name = 'cards_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: const _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map((card) =>
              _CardType1(elevation: card['elevation'], label: card["label"])),
          ...cards.map((card) =>
              _CardType1(elevation: card['elevation'], label: card["label"])),
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  const _CardType1({required this.elevation, required this.label});

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
            )
          ],
        ),
      ),
    );
  }
}
