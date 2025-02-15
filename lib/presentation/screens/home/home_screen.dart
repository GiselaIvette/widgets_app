import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_ithem.dart';

class HomeScreen extends StatelessWidget {
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

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: appMenuItems.length,
        itemBuilder: (contex, index) {
          final menuIthem = appMenuItems[index];
          return _CustomListTitle(menuIthem: menuIthem);
        });
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.menuIthem,
  });

  final MenuIthem menuIthem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme; 

    return ListTile(
      leading: Icon(menuIthem.icon, color:colors.primary ),
      trailing: Icon(Icons.arrow_forward_ios_outlined, color: colors.primary),
      title: Text(menuIthem.title),
      subtitle: Text(menuIthem.subTitle),
      onTap: (){
        //TODO : NAVEGAR A OTRAS PANTAS
      },
    );
  }
}
