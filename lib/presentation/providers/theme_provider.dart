import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

//listado de colores inmutables (que nunca va a cambiar)

final colorsProvider = Provider((ref) => colorList);
