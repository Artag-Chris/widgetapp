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

  AppTheme({this.selectedColor=0})
  :assert(selectedColor>=0, "Selected Colors must be up to 0"),
  assert(selectedColor<colorList.length, "Selected Color must be less or equal to ${colorList.length-1}");

  ThemeData getTheme()=>ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: true,
    )
  );


}