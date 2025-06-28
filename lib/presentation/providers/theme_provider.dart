import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

//listado de colores inmutables (que nunca va a cambiar)

final colorsProvider = Provider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 0); //es un entero

//objeto de tipo apptheme (custom)
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

//EL QUE CONTROLA ES ThemeNotifier Y EL ESTADO ES UNA INTANCIA DE AppTheme

class ThemeNotifier extends StateNotifier<AppTheme> {
  //ThemeNotifier(super.state);
  //State = estado  = new  aooTheme();
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMde() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}

/**
 *Provider: Se usa para exponer valores inmutables (como una constante o lista fija). ALGO QUE NO CAMBIA 

StateProvider: Para mantener una pieza de estado simple que puede cambiar (bool, int, String, etc.).

StateNotifierProvider: Para manejar estados más complejos o personalizados a través de clases que extienden StateNotifier
 */
