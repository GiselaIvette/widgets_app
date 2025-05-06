import 'package:flutter/material.dart';

// Definición de la clase MenuIthem para representar cada opción del menú
class MenuIthem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuIthem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuIthem>[
  MenuIthem(
      title: 'Riverpod counter  ',
      subTitle: 'Introduccion a riverpod',
      link: '/counter-river',
      icon: Icons.add),
  MenuIthem(
      title: 'Botones',
      subTitle: 'Varios Botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuIthem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuIthem(
      title: 'ProgressIndicators',
      subTitle: 'Generales y controlados ',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuIthem(
      title: 'Snackbar y dialogos ',
      subTitle: 'indicadores de pantalla ',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuIthem(
      title: 'Animate Container  ',
      subTitle: 'Stateful Widgets animado',
      link: '/animate',
      icon: Icons.check_box_outline_blank_rounded),
  MenuIthem(
      title: 'UI controls + Tiles',
      subTitle: 'Una serie de controles de Flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuIthem(
      title: 'UI controls + Tiles',
      subTitle: 'Una serie de controles de Flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuIthem(
      title: 'Introduccion a la aplicacion',
      subTitle: 'tutorial para usar la aplicacion',
      link: '/tutorial',
      icon: Icons.accessible_rounded),
  MenuIthem(
      title: 'Infinite scroll y pull ',
      subTitle: 'Listas infinitas y pull to refresh',
      link: '/infinite',
      icon: Icons.list_alt_outlined),
];
