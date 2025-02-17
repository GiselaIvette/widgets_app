import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_ithem.dart';


class HomeScreen extends StatelessWidget {
  static const String name = 'home_string';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter + material 3'),
      ),
      body: const _HomeView(),
    );
  }
}

//widget para el menu
// Vista principal que muestra la lista de elementos del menú
class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: appMenuItems.length, // Número de elementos en el menú
        itemBuilder: (contex, index) {
          final menuIthem = appMenuItems[index]; // se obtiene el item
          return _CustomListTitle(menuIthem: menuIthem); //se crea la tarjeta
        });
  }
}

// Widget personalizado para cada elemento del menú
class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.menuIthem,
  });

  final MenuIthem menuIthem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuIthem.icon, color: colors.primary), //icono
      trailing: Icon(Icons.arrow_forward_ios_outlined, color: colors.primary),
      title: Text(menuIthem.title),
      subtitle: Text(menuIthem.subTitle),
      onTap: () {
        //   Navigator.of(context).push(
        //     MaterialPageRoute(builder: (context) => ButtonsScreen()),
        //  );

        // Navega a la pantalla correspondiente usando el nombre de ruta
        //Navigator.pushNamed(context,menuIthem.link);
        //context.push(CardsScreen.name);
        context.push(menuIthem.link);
      },
    );
  }
}
