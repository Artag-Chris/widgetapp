import 'package:flutter/material.dart';
import 'package:widgetapp/config/theme/app_theme.dart';
import 'config/router/app_router.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Chris el mejor",
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).getTheme(),
     
    );
  } 
}
