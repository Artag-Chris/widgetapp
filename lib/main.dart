import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetapp/config/theme/app_theme.dart';
import 'package:widgetapp/presentation/providers/theme_provider.dart';
import 'config/router/app_router.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context,ref) {

final selectedColor= ref.watch(selectedColorProvider);
final isDarkMode= ref.watch(themeProvider);

    return MaterialApp.router(
      title: "Chris el mejor",
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: selectedColor,isDarkMode: isDarkMode).getTheme(),
    );
  }
}
