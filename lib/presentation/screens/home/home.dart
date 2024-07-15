import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/config/menu/menu_item.dart';

class Home extends StatelessWidget {
  static const name = 'home';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
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
      //modificar el efecto del ListView
      //physics: const BouncingScrollPhysics(),
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return _CustomListTile(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(
        menuItem.icon,
        color: colors.primary,
        size: 35,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: colors.primary,
        size: 30,
      ),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subtitle),
      onTap: () {
        /*  
        *Navegacion desde el boton 
        */
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const Buttons(),
        //   ),
        // );

        /* 
         *Navegacion desde las rutas del main
        */
        //Navigator.pushNamed(context, menuItem.link);

        /* 
        *Naveacion por GoRouter
        */
        context.push(menuItem.link);

        //context.pushNamed(menuItem.title) -> el titulo tendria que ser igual al nombre definido en la variable statica;
      },
    );
  }
}
