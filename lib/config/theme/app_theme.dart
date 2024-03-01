import 'package:flutter/material.dart';




const colorList= <Color>[
  Colors.blue,
  Colors.red,
  Colors.black,
  Colors.white,
  Colors.deepPurple,
  Colors.deepOrangeAccent,
  Colors.yellowAccent,
  Colors.pink,
  Colors.brown
];



class AppTheme{

final int selectedColor;
 bool isDarkMode=false;

  AppTheme({this.selectedColor=0, this.isDarkMode=false})
  :assert(selectedColor>=0, "Selected Colors must be up to 0"),
  assert(selectedColor<colorList.length, "Selected Color must be less or equal to ${colorList.length-1}");

  ThemeData getTheme()=>ThemeData(
    useMaterial3: true,
    brightness: isDarkMode? Brightness.dark: Brightness.light,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: true,
    )
  );


}