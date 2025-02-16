

import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    //pantalla principal 
    path: '/',
    builder: (context, state) => HomeScreen(),
  ),

  GoRoute(
    //pantalla para botones 
    path: '/buttons',
    builder: (context, state) => ButtonsScreen(),
  ),


  GoRoute(
    //pantalla para cards 
    path: '/cards',
    builder: (context, state) => CardsScreen(),
  ),
]);
