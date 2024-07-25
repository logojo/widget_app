import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/config/menu/menu_item.dart';

class SideMenu extends StatefulWidget {
  // variable que obtendra scaffoldKeyl
  // con scaffoldKey podemos controlar las acciones(estado) del Scaffold utilizado en el padre
  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    //Con esto sabemos cuanta distancia hay en el top del dispositivo
    final hasNocth = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });

        context.push(appMenuItems[value].link);

        //como estamos dentro de un statefullWidget para accder a sus propiedades
        //se antemone la palabra widget
        //Cerrando el drawer que se encuentra en el padre
        widget.scaffoldKey.currentState?.closeDrawer();
      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNocth ? 10 : 20, 16, 10),
          child: const Text('Menu'),
        ),
        ...appMenuItems.sublist(0, 3).map((item) => NavigationDrawerDestination(
            icon: Icon(item.icon), label: Text(item.title))),
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
          child: Divider(),
        ),
        ...appMenuItems.sublist(3).map((item) => NavigationDrawerDestination(
            icon: Icon(item.icon), label: Text(item.title))),
      ],
    );
  }
}
