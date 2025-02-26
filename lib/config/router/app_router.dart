

import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens.dart';

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
    name: ButtonsScreen.name ,
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
]);
