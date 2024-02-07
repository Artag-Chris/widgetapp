import 'package:flutter/material.dart';
import 'package:widgetapp/config/theme/app_theme.dart';
import 'package:widgetapp/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgetapp/presentation/screens/cards/card_screen.dart';
import 'package:widgetapp/presentation/screens/home/home_screen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).getTheme(),
      home:  const HomeScreen(),
      routes: {
        "/botones": (context) => const ButtonsScreen(),
        "/card": (context) => const CardsScreen(),
      },
    );
  } 
}
