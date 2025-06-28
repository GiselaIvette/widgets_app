import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

void main() {
  runApp(ProviderScope(
      child: MainApp())); //se agrega esto para poder utilizar riverpod
}
//con providerScope, riverpod sabrra donde buscar cada uno de los providers(hablando de riverpod) que se vayan creando

class MainApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
   // final isDarkMode = ref.watch(isDarkModeProvider);
    //final selectColor = ref.watch(selectedColorProvider);
    final AppTheme appTheme = ref.watch(themeNotifierProvider);

    return MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme()
      //theme: AppTheme(selectedColor: selectColor, isDarkMode: isDarkMode) .getTheme(),
    );
  }
}
