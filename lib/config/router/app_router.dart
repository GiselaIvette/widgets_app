import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens.dart';
import 'package:widgets_app/presentation/screens/counter/counter_screen.dart';
import 'package:widgets_app/presentation/screens/theme_change/theme_changed_screen.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    //pantalla principal
    path: '/',
    name: HomeScreen.name,
    builder: (context, state) => HomeScreen(),
  ),

  GoRoute(
    //pantalla para botones
    path: '/buttons',
    name: ButtonsScreen.name,
    builder: (context, state) => ButtonsScreen(),
  ),

  GoRoute(
    //pantalla para cards
    path: '/cards',
    name: CardsScreen.name,
    builder: (context, state) => CardsScreen(),
  ),

  GoRoute(
    //pantalla para progressindivcators
    path: '/progress',
    name: ProgressScreen.name,
    builder: (context, state) => ProgressScreen(),
  ),

  GoRoute(
    //pantalla para snack
    path: '/snackbars',
    name: SnackbarScreen.name,
    builder: (context, state) => SnackbarScreen(),
  ),

  GoRoute(
    //pantalla para snack
    path: '/animate',
    name: AnimatedScreen.name,
    builder: (context, state) => AnimatedScreen(),
  ),

//checkbox y expansion tile
  GoRoute(
    path: '/ui-controls',
    name: UiControlsScreen.name,
    builder: (context, state) => UiControlsScreen(),
  ),

  GoRoute(
    path: '/tutorial',
    name: AppTutorialScreen.name,
    builder: (context, state) => AppTutorialScreen(),
  ),

  GoRoute(
    path: '/infinite',
    name: InfiniteScrollScreen.name,
    builder: (context, state) => InfiniteScrollScreen(),
  ),

  GoRoute(
    path: '/counter-river',
    name: CounterScreen.name,
    builder: (context, state) => CounterScreen(),
  ),
  GoRoute(
    path: '/theme-changed',
    name: ThemeChangedScreen.name,
    builder: (context, state) => ThemeChangedScreen(),
  ),
]);
