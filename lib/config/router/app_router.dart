import 'package:go_router/go_router.dart';
import 'package:widget_app/presentation/screens/screens.dart';

//Se instalo el paquete go_router del la pub.dev
// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: Home.name,
      path: '/',
      builder: (context, state) => const Home(),
    ),
    GoRoute(
      name: Buttons.name,
      path: '/buttons',
      builder: (context, state) => const Buttons(),
    ),
    GoRoute(
      name: Cards.name,
      path: '/cards',
      builder: (context, state) => const Cards(),
    ),
  ],
);
