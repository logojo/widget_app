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
      title: 'Animated',
      subtitle: 'Un contenedor Animado',
      link: '/animated',
      icon: Icons.animation),
  MenuItem(
      title: 'Tutorial',
      subtitle: 'Tutorial',
      link: '/tutorial',
      icon: Icons.video_collection_outlined),
  MenuItem(
      title: 'Infinite Scroll',
      subtitle: 'un contenedor con Infinite Scroll',
      link: '/infinite',
      icon: Icons.pages),
  MenuItem(
      title: 'Snackbar',
      subtitle: 'snackbar para mensajes',
      link: '/snackbar',
      icon: Icons.branding_watermark_sharp),
  MenuItem(
      title: 'UiControls',
      subtitle: 'UiControls',
      link: '/ui',
      icon: Icons.control_point_duplicate)
];
