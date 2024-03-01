import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetapp/presentation/providers/counter_provider.dart';
import 'package:widgetapp/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});
  static const name = 'counter_screen';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickValue = ref.watch(counterProvider);
    final themeValue = ref.watch(themeProvider);

    return Scaffold(
        appBar: AppBar(title: const Text('CounterScreen'), actions: [
          IconButton(
              onPressed: () {
                ref.read(themeProvider.notifier).state = !themeValue;
              },
              icon: themeValue
                  ? const Icon(Icons.dark_mode_outlined)
                  : const Icon(Icons.light_mode_outlined))
        ]),
        body: Center(
          child: Text('Valor : $clickValue',
              style: Theme.of(context).textTheme.titleLarge),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            ref.read(counterProvider.notifier).state++;
          },
        ));
  }
}
