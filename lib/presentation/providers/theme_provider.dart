


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetapp/config/theme/app_theme.dart';

final themeProvider = StateProvider((ref) => false);

//listdado de colores

final colorListProvider= Provider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 0);