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

const appMenuItems= <MenuIthem>[
MenuIthem(
  title: 'Botones', 
  subTitle: 'Varios Botones en Flutter', 
  link: '/buttons', 
  icon: Icons.smart_button_outlined
  ),


  MenuIthem(
  title: 'Tarjetas', 
  subTitle: 'Un contenedor estilizado', 
  link: '/cards',
  icon: Icons.credit_card
  ),

  MenuIthem(
  title: 'ProgressIndicators', 
  subTitle: 'Generales y controlados ', 
  link: '/progress',
  icon: Icons.refresh_rounded
  ),


  MenuIthem(
  title: 'Snackbar y dialogos ', 
  subTitle: 'indicadores de pantalla ', 
  link: '/snackbars',
  icon: Icons.info_outline
  ),



];


