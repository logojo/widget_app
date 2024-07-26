import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Counter Riverpod',
      subtitle: 'Introducción a Riverpod',
      link: '/counter',
      icon: Icons.add),
  MenuItem(
      title: 'Botones',
      subtitle: 'Varios botones en flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subtitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicators',
      subtitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars and Dialogs',
      subtitle: 'Indicadores en pantalla',
      link: '/snackbar',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated Container',
      subtitle: 'Statefull widget animated',
      link: '/animated',
      icon: Icons.animation),
  MenuItem(
      title: 'Ui Controls + Tiles',
      subtitle: 'Una serie de controles en Flutter',
      link: '/ui',
      icon: Icons.control_point_duplicate),
  MenuItem(
      title: 'Introducción a la aplicación',
      subtitle: 'Pequeño tutorial introductorio',
      link: '/tutorial',
      icon: Icons.video_collection_outlined),
  MenuItem(
      title: 'Infinite Scroll y Pull',
      subtitle: 'Lista infinitas y pull to refresh',
      link: '/infinite',
      icon: Icons.pages),
  MenuItem(
      title: 'Theme changer',
      subtitle: 'Tema que cambia con gestor de estado',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined),
];
