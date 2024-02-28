import 'package:flutter/material.dart';




class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});
static const name = 'counter_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
      )
    );
  }
}